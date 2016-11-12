	.text
	.file	"gimp-transform-resize.bc"
	.globl	gimp_transform_resize_boundary
	.align	16, 0x90
	.type	gimp_transform_resize_boundary,@function
gimp_transform_resize_boundary:         # @gimp_transform_resize_boundary
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	%rbx, -48(%rbp)
	movq	%r11, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_resize_boundary, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_25
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movl	-24(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-28(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-32(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-36(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$1, -20(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %if.then.2
	jmp	.LBB0_25
.LBB0_7:                                # %if.end.3
	leaq	-80(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-24(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	callq	gimp_matrix3_transform_point
	leaq	-88(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	callq	gimp_matrix3_transform_point
	leaq	-96(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-24(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	callq	gimp_matrix3_transform_point
	leaq	-104(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	callq	gimp_matrix3_transform_point
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	je	.LBB0_15
# BB#8:                                 # %lor.lhs.false
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	je	.LBB0_15
# BB#9:                                 # %lor.lhs.false.13
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	je	.LBB0_15
# BB#10:                                # %lor.lhs.false.16
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	je	.LBB0_15
# BB#11:                                # %lor.lhs.false.19
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	je	.LBB0_15
# BB#12:                                # %lor.lhs.false.22
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	je	.LBB0_15
# BB#13:                                # %lor.lhs.false.25
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %lor.lhs.false.28
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	jne	.LBB0_16
.LBB0_15:                               # %if.then.31
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB0_25
.LBB0_16:                               # %if.end.32
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	ja	.LBB0_21
# BB#26:                                # %if.end.32
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_17:                               # %sw.bb
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-120(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-136(%rbp), %xmm7       # xmm7 = mem[0],zero
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	gimp_transform_resize_adjust
	jmp	.LBB0_21
.LBB0_18:                               # %sw.bb.33
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-120(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-128(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # xmm7 = mem[0],zero
	movsd	-136(%rbp), %xmm8       # xmm8 = mem[0],zero
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	movaps	%xmm7, %xmm6
	movaps	%xmm8, %xmm7
	movsd	-160(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, (%rsp)
	callq	gimp_transform_resize_crop
	jmp	.LBB0_21
.LBB0_19:                               # %sw.bb.34
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-120(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-136(%rbp), %xmm7       # xmm7 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm8
	cvtsi2sdl	-24(%rbp), %xmm9
	subsd	%xmm9, %xmm8
	movl	-36(%rbp), %eax
	subl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm9
	divsd	%xmm9, %xmm8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movsd	%xmm8, (%rsp)
	callq	gimp_transform_resize_crop
	jmp	.LBB0_21
.LBB0_20:                               # %sw.bb.39
	jmp	.LBB0_21
.LBB0_21:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-64(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB0_23
# BB#22:                                # %if.then.42
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB0_23:                               # %if.end.43
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-72(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB0_25
# BB#24:                                # %if.then.46
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB0_25:                               # %if.end.48
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_transform_resize_boundary, .Lfunc_end0-gimp_transform_resize_boundary
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_17
	.quad	.LBB0_20
	.quad	.LBB0_18
	.quad	.LBB0_19

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB1_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_resize_adjust,@function
gimp_transform_resize_adjust:           # @gimp_transform_resize_adjust
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	%xmm5, -48(%rbp)
	movsd	%xmm6, -56(%rbp)
	movsd	%xmm7, -64(%rbp)
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_2
# BB#1:                                 # %cond.true
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB2_3:                                # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jbe	.LBB2_5
# BB#4:                                 # %cond.true.2
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false.3
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB2_6:                                # %cond.end.4
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_11
# BB#7:                                 # %cond.true.7
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_9
# BB#8:                                 # %cond.true.9
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false.10
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB2_10:                               # %cond.end.11
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB2_15
.LBB2_11:                               # %cond.false.13
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_13
# BB#12:                                # %cond.true.15
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB2_14
.LBB2_13:                               # %cond.false.16
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB2_14:                               # %cond.end.17
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB2_15:                               # %cond.end.19
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_17
# BB#16:                                # %cond.true.23
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB2_18
.LBB2_17:                               # %cond.false.24
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB2_18:                               # %cond.end.25
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jbe	.LBB2_20
# BB#19:                                # %cond.true.29
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB2_21
.LBB2_20:                               # %cond.false.30
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB2_21:                               # %cond.end.31
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_26
# BB#22:                                # %cond.true.35
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_24
# BB#23:                                # %cond.true.38
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB2_25
.LBB2_24:                               # %cond.false.39
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
.LBB2_25:                               # %cond.end.40
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB2_30
.LBB2_26:                               # %cond.false.42
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_28
# BB#27:                                # %cond.true.45
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB2_29
.LBB2_28:                               # %cond.false.46
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB2_29:                               # %cond.end.47
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB2_30:                               # %cond.end.49
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB2_32
# BB#31:                                # %cond.true.55
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB2_33
.LBB2_32:                               # %cond.false.56
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB2_33:                               # %cond.end.57
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-56(%rbp), %xmm1
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jbe	.LBB2_35
# BB#34:                                # %cond.true.61
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB2_36
.LBB2_35:                               # %cond.false.62
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB2_36:                               # %cond.end.63
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_41
# BB#37:                                # %cond.true.67
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB2_39
# BB#38:                                # %cond.true.70
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB2_40
.LBB2_39:                               # %cond.false.71
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB2_40:                               # %cond.end.72
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB2_45
.LBB2_41:                               # %cond.false.74
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB2_43
# BB#42:                                # %cond.true.77
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB2_44
.LBB2_43:                               # %cond.false.78
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB2_44:                               # %cond.end.79
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB2_45:                               # %cond.end.81
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB2_47
# BB#46:                                # %cond.true.87
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB2_48
.LBB2_47:                               # %cond.false.88
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB2_48:                               # %cond.end.89
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-64(%rbp), %xmm1
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jbe	.LBB2_50
# BB#49:                                # %cond.true.93
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jmp	.LBB2_51
.LBB2_50:                               # %cond.false.94
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
.LBB2_51:                               # %cond.end.95
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_56
# BB#52:                                # %cond.true.99
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB2_54
# BB#53:                                # %cond.true.102
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB2_55
.LBB2_54:                               # %cond.false.103
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB2_55:                               # %cond.end.104
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB2_60
.LBB2_56:                               # %cond.false.106
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB2_58
# BB#57:                                # %cond.true.109
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB2_59
.LBB2_58:                               # %cond.false.110
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB2_59:                               # %cond.end.111
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB2_60:                               # %cond.end.113
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_transform_resize_adjust, .Lfunc_end2-gimp_transform_resize_adjust
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4611686018427387904     # double 2
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
.LCPI3_2:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI3_3:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	gimp_transform_resize_crop,@function
gimp_transform_resize_crop:             # @gimp_transform_resize_crop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movsd	16(%rbp), %xmm8         # xmm8 = mem[0],zero
	xorps	%xmm9, %xmm9
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	%xmm5, -48(%rbp)
	movsd	%xmm6, -56(%rbp)
	movsd	%xmm7, -64(%rbp)
	movsd	%xmm8, -72(%rbp)
	movq	%rdi, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%rcx, -104(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm9, -288(%rbp)
	movsd	%xmm9, -280(%rbp)
	movl	$0, -292(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -292(%rbp)
	jge	.LBB3_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-176(%rbp), %rax
	movslq	-292(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-176(%rbp), %rax
	movslq	-292(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)
.LBB3_4:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-176(%rbp), %rax
	movslq	-292(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_6
# BB#5:                                 # %if.then.29
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-176(%rbp), %rax
	movslq	-292(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)
.LBB3_6:                                # %if.end.34
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB3_1
.LBB3_8:                                # %for.end
	movl	$0, -292(%rbp)
.LBB3_9:                                # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -292(%rbp)
	jge	.LBB3_12
# BB#10:                                # %for.body.37
                                        #   in Loop: Header=BB3_9 Depth=1
	leaq	-176(%rbp), %rax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	mulsd	%xmm0, %xmm1
	movslq	-292(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	addsd	(%rdx), %xmm1
	movsd	%xmm1, (%rdx)
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	mulsd	%xmm0, %xmm1
	movslq	-292(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addsd	8(%rax), %xmm1
	movsd	%xmm1, 8(%rax)
# BB#11:                                # %for.inc.49
                                        #   in Loop: Header=BB3_9 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB3_9
.LBB3_12:                               # %for.end.51
	movl	$0, -300(%rbp)
	movl	$0, -292(%rbp)
.LBB3_13:                               # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -292(%rbp)
	jge	.LBB3_18
# BB#14:                                # %for.body.54
                                        #   in Loop: Header=BB3_13 Depth=1
	leaq	-176(%rbp), %rax
	movslq	-292(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movslq	-300(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_16
# BB#15:                                # %if.then.62
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	-292(%rbp), %eax
	movl	%eax, -300(%rbp)
.LBB3_16:                               # %if.end.63
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_17
.LBB3_17:                               # %for.inc.64
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB3_13
.LBB3_18:                               # %for.end.66
	leaq	-176(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movslq	-300(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	%rcx, -176(%rbp)
	movq	8(%rdx), %rcx
	movq	%rcx, -168(%rbp)
	movslq	-300(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	-272(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-264(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	$1, -292(%rbp)
.LBB3_19:                               # %for.cond.73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_21 Depth 2
	cmpl	$3, -292(%rbp)
	jge	.LBB3_33
# BB#20:                                # %for.body.75
                                        #   in Loop: Header=BB3_19 Depth=1
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero
	movl	$3, -324(%rbp)
	movsd	%xmm1, -312(%rbp)
	movsd	%xmm0, -320(%rbp)
	movl	-292(%rbp), %eax
	movl	%eax, -296(%rbp)
.LBB3_21:                               # %for.cond.76
                                        #   Parent Loop BB3_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -296(%rbp)
	jge	.LBB3_31
# BB#22:                                # %for.body.78
                                        #   in Loop: Header=BB3_21 Depth=2
	xorps	%xmm0, %xmm0
	leaq	-176(%rbp), %rax
	movslq	-296(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movl	-292(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	subsd	8(%rdx), %xmm1
	movsd	%xmm1, -344(%rbp)
	movslq	-296(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movl	-292(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	subsd	(%rax), %xmm1
	movsd	%xmm1, -352(%rbp)
	movsd	-352(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_25
	jp	.LBB3_25
# BB#23:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_21 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_25
	jp	.LBB3_25
# BB#24:                                # %if.then.97
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	-296(%rbp), %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB3_31
.LBB3_25:                               # %if.end.98
                                        #   in Loop: Header=BB3_21 Depth=2
	movsd	-344(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-352(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	atan2
	movsd	%xmm0, -336(%rbp)
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-352(%rbp), %xmm0
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-344(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -360(%rbp)
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-312(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB3_28
# BB#26:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_21 Depth=2
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-312(%rbp), %xmm0
	jne	.LBB3_29
	jp	.LBB3_29
# BB#27:                                # %land.lhs.true.106
                                        #   in Loop: Header=BB3_21 Depth=2
	movsd	-360(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-320(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_29
.LBB3_28:                               # %if.then.108
                                        #   in Loop: Header=BB3_21 Depth=2
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)
	movsd	-360(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)
	movl	-296(%rbp), %eax
	movl	%eax, -324(%rbp)
.LBB3_29:                               # %if.end.109
                                        #   in Loop: Header=BB3_21 Depth=2
	jmp	.LBB3_30
.LBB3_30:                               # %for.inc.110
                                        #   in Loop: Header=BB3_21 Depth=2
	movl	-296(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -296(%rbp)
	jmp	.LBB3_21
.LBB3_31:                               # %for.end.112
                                        #   in Loop: Header=BB3_19 Depth=1
	leaq	-176(%rbp), %rax
	movslq	-292(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	%rcx, -272(%rbp)
	movq	8(%rdx), %rcx
	movq	%rcx, -264(%rbp)
	movslq	-292(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movslq	-324(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%rdx)
	movslq	-324(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	-272(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-264(%rbp), %rcx
	movq	%rcx, 8(%rax)
# BB#32:                                # %for.inc.121
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB3_19
.LBB3_33:                               # %for.end.123
	xorps	%xmm0, %xmm0
	movq	-176(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
	movsd	%xmm0, -192(%rbp)
	movsd	%xmm0, -200(%rbp)
	movsd	%xmm0, -208(%rbp)
	movsd	%xmm0, -216(%rbp)
	movsd	%xmm0, -224(%rbp)
	movsd	%xmm0, -232(%rbp)
	movsd	%xmm0, -240(%rbp)
	movsd	%xmm0, -248(%rbp)
	movsd	%xmm0, -256(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -184(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_34
	jp	.LBB3_34
	jmp	.LBB3_39
.LBB3_34:                               # %if.then.147
	movl	$0, -292(%rbp)
.LBB3_35:                               # %for.cond.148
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -292(%rbp)
	jge	.LBB3_38
# BB#36:                                # %for.body.150
                                        #   in Loop: Header=BB3_35 Depth=1
	leaq	-256(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	movl	-292(%rbp), %edx
	callq	find_maximum_aspect_rectangle
# BB#37:                                # %for.inc.151
                                        #   in Loop: Header=BB3_35 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB3_35
.LBB3_38:                               # %for.end.153
	jmp	.LBB3_44
.LBB3_39:                               # %if.else
	movl	$0, -292(%rbp)
.LBB3_40:                               # %for.cond.154
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -292(%rbp)
	jge	.LBB3_43
# BB#41:                                # %for.body.156
                                        #   in Loop: Header=BB3_40 Depth=1
	leaq	-256(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	movl	-292(%rbp), %edx
	callq	find_three_point_rectangle
	leaq	-256(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	movl	-292(%rbp), %edx
	callq	find_three_point_rectangle_corner
	leaq	-256(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	movl	-292(%rbp), %edx
	callq	find_two_point_rectangle
	leaq	-256(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	movl	-292(%rbp), %edx
	callq	find_three_point_rectangle_triangle
# BB#42:                                # %for.inc.161
                                        #   in Loop: Header=BB3_40 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB3_40
.LBB3_43:                               # %for.end.163
	jmp	.LBB3_44
.LBB3_44:                               # %if.end.164
	xorps	%xmm0, %xmm0
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_46
	jp	.LBB3_46
# BB#45:                                # %if.then.167
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-56(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rcx
	callq	gimp_transform_resize_adjust
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB3_47
.LBB3_46:                               # %if.else.168
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	-256(%rbp), %xmm2
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -376(%rbp)       # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-248(%rbp), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-104(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-80(%rbp), %rcx
	cvtsi2sdl	(%rcx), %xmm0
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	movsd	-368(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-88(%rbp), %rcx
	cvtsi2sdl	(%rcx), %xmm0
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-96(%rbp), %rcx
	cvtsi2sdl	(%rcx), %xmm0
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-104(%rbp), %rcx
	cvtsi2sdl	(%rcx), %xmm0
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-104(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB3_47:                               # %return
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_transform_resize_crop, .Lfunc_end3-gimp_transform_resize_crop
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	find_maximum_aspect_rectangle,@function
find_maximum_aspect_rectangle:          # @find_maximum_aspect_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	-104(%rbp), %rax
	movl	$4, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -40(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -56(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movl	-20(%rbp), %edx
	addl	$2, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -72(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	movl	-20(%rbp), %edx
	addl	$3, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -88(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -80(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB4_14
# BB#1:                                 # %if.then
	leaq	-136(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	72(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_3
# BB#2:                                 # %if.then.18
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_3:                                # %if.end
	leaq	-136(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_5
# BB#4:                                 # %if.then.21
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_5:                                # %if.end.22
	leaq	-136(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_7
# BB#6:                                 # %if.then.25
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_7:                                # %if.end.26
	leaq	-136(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	72(%rax), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_9
# BB#8:                                 # %if.then.36
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_9:                                # %if.end.37
	leaq	-136(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_11
# BB#10:                                # %if.then.40
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_11:                               # %if.end.41
	leaq	-136(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_13
# BB#12:                                # %if.then.44
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_13:                               # %if.end.45
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.46
	leaq	-104(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB4_28
# BB#15:                                # %if.then.49
	leaq	-136(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	72(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_17
# BB#16:                                # %if.then.60
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_17:                               # %if.end.61
	leaq	-136(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_19
# BB#18:                                # %if.then.64
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_19:                               # %if.end.65
	leaq	-136(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_21
# BB#20:                                # %if.then.68
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_21:                               # %if.end.69
	leaq	-136(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	72(%rax), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_23
# BB#22:                                # %if.then.80
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_23:                               # %if.end.81
	leaq	-136(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_25
# BB#24:                                # %if.then.84
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_25:                               # %if.end.85
	leaq	-136(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_27
# BB#26:                                # %if.then.88
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_27:                               # %if.end.89
	jmp	.LBB4_28
.LBB4_28:                               # %if.end.90
	leaq	-104(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB4_42
# BB#29:                                # %if.then.93
	leaq	-136(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	72(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_31
# BB#30:                                # %if.then.104
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_31:                               # %if.end.105
	leaq	-136(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_33
# BB#32:                                # %if.then.108
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_33:                               # %if.end.109
	leaq	-136(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_35
# BB#34:                                # %if.then.112
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_35:                               # %if.end.113
	leaq	-136(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	72(%rax), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_37
# BB#36:                                # %if.then.124
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_37:                               # %if.end.125
	leaq	-136(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_39
# BB#38:                                # %if.then.128
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_39:                               # %if.end.129
	leaq	-136(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_41
# BB#40:                                # %if.then.132
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_41:                               # %if.end.133
	jmp	.LBB4_42
.LBB4_42:                               # %if.end.134
	leaq	-104(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB4_56
# BB#43:                                # %if.then.137
	leaq	-136(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	72(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_45
# BB#44:                                # %if.then.148
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_45:                               # %if.end.149
	leaq	-136(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_47
# BB#46:                                # %if.then.152
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_47:                               # %if.end.153
	leaq	-136(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_49
# BB#48:                                # %if.then.156
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_49:                               # %if.end.157
	leaq	-136(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	72(%rax), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_51
# BB#50:                                # %if.then.168
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_51:                               # %if.end.169
	leaq	-136(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_53
# BB#52:                                # %if.then.172
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_53:                               # %if.end.173
	leaq	-136(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	intersect
	cmpl	$0, %eax
	je	.LBB4_55
# BB#54:                                # %if.then.176
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB4_55:                               # %if.end.177
	jmp	.LBB4_56
.LBB4_56:                               # %if.end.178
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	find_maximum_aspect_rectangle, .Lfunc_end4-find_maximum_aspect_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	find_three_point_rectangle,@function
find_three_point_rectangle:             # @find_three_point_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	-104(%rbp), %rax
	movl	$4, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -40(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -56(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movl	-20(%rbp), %edx
	addl	$2, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -72(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	movl	-20(%rbp), %edx
	addl	$3, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -88(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -80(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB5_4
# BB#1:                                 # %land.lhs.true
	leaq	-120(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB5_4
# BB#2:                                 # %land.lhs.true.14
	leaq	-136(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-120(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-112(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-96(%rbp), %xmm7        # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB5_4:                                # %if.end
	leaq	-104(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB5_8
# BB#5:                                 # %land.lhs.true.19
	leaq	-120(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true.22
	leaq	-136(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-120(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-112(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB5_8
# BB#7:                                 # %if.then.25
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-96(%rbp), %xmm7        # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB5_8:                                # %if.end.26
	leaq	-104(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB5_12
# BB#9:                                 # %land.lhs.true.29
	leaq	-120(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB5_12
# BB#10:                                # %land.lhs.true.32
	leaq	-136(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-120(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-112(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB5_12
# BB#11:                                # %if.then.35
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-96(%rbp), %xmm7        # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB5_12:                               # %if.end.36
	leaq	-104(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB5_16
# BB#13:                                # %land.lhs.true.39
	leaq	-120(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB5_16
# BB#14:                                # %land.lhs.true.42
	leaq	-136(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-120(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-112(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB5_16
# BB#15:                                # %if.then.45
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-96(%rbp), %xmm7        # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB5_16:                               # %if.end.46
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	find_three_point_rectangle, .Lfunc_end5-find_three_point_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	find_three_point_rectangle_corner,@function
find_three_point_rectangle_corner:      # @find_three_point_rectangle_corner
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-104(%rbp), %rax
	movl	$4, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -40(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -56(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movl	-20(%rbp), %edx
	addl	$2, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -72(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	movl	-20(%rbp), %edx
	addl	$3, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -88(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -80(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB6_3
# BB#1:                                 # %land.lhs.true
	leaq	-120(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB6_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB6_3:                                # %if.end
	leaq	-104(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true.16
	leaq	-120(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB6_6
# BB#5:                                 # %if.then.19
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB6_6:                                # %if.end.20
	leaq	-104(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB6_9
# BB#7:                                 # %land.lhs.true.23
	leaq	-120(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB6_9
# BB#8:                                 # %if.then.26
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB6_9:                                # %if.end.27
	leaq	-104(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB6_12
# BB#10:                                # %land.lhs.true.30
	leaq	-120(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB6_12
# BB#11:                                # %if.then.33
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB6_12:                               # %if.end.34
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	find_three_point_rectangle_corner, .Lfunc_end6-find_three_point_rectangle_corner
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	find_two_point_rectangle,@function
find_two_point_rectangle:               # @find_two_point_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$4, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-140(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -40(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -56(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movl	-20(%rbp), %edx
	addl	$2, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -72(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	movl	-20(%rbp), %edx
	addl	$3, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -88(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-72(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	callq	add_rectangle
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-88(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-80(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-80(%rbp), %xmm7        # xmm7 = mem[0],zero
	callq	add_rectangle
	leaq	-104(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB7_3
# BB#1:                                 # %land.lhs.true
	leaq	-120(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB7_3
# BB#2:                                 # %if.then
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-120(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-112(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-128(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB7_3:                                # %if.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	find_two_point_rectangle, .Lfunc_end7-find_two_point_rectangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	find_three_point_rectangle_triangle,@function
find_three_point_rectangle_triangle:    # @find_three_point_rectangle_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	-104(%rbp), %rax
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movl	$4, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -40(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -56(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movl	-20(%rbp), %edx
	addl	$2, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -72(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	movl	-20(%rbp), %edx
	addl	$3, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -88(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -80(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-48(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB8_3
# BB#1:                                 # %land.lhs.true
	leaq	-120(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB8_3:                                # %if.end
	leaq	-104(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true.23
	leaq	-120(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.26
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB8_6:                                # %if.end.27
	leaq	-104(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB8_9
# BB#7:                                 # %land.lhs.true.30
	leaq	-120(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB8_9
# BB#8:                                 # %if.then.33
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB8_9:                                # %if.end.34
	leaq	-104(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_y
	cmpl	$0, %eax
	je	.LBB8_12
# BB#10:                                # %land.lhs.true.37
	leaq	-120(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	callq	intersect_x
	cmpl	$0, %eax
	je	.LBB8_12
# BB#11:                                # %if.then.40
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	add_rectangle
.LBB8_12:                               # %if.end.41
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	find_three_point_rectangle_triangle, .Lfunc_end8-find_three_point_rectangle_triangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	intersect_x,@function
intersect_x:                            # @intersect_x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movsd	.LCPI9_0, %xmm6         # xmm6 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -40(%rbp)
	movq	%rdi, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	addsd	-64(%rbp), %xmm6
	movsd	%xmm6, -64(%rbp)
	movq	-56(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-72(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	callq	intersect
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	intersect_x, .Lfunc_end9-intersect_x
	.cfi_endproc

	.align	16, 0x90
	.type	intersect,@function
intersect:                              # @intersect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	pushq	%rax
	xorps	%xmm8, %xmm8
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -56(%rbp)
	movsd	%xmm5, -48(%rbp)
	movsd	%xmm6, -72(%rbp)
	movsd	%xmm7, -64(%rbp)
	movq	%rdi, -80(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm8, %xmm0
	jne	.LBB10_2
	jp	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-128(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	divsd	-136(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	divsd	-136(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	$1, -4(%rbp)
.LBB10_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$8, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	intersect, .Lfunc_end10-intersect
	.cfi_endproc

	.align	16, 0x90
	.type	add_rectangle,@function
add_rectangle:                          # @add_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -40(%rbp)
	movsd	%xmm6, -64(%rbp)
	movsd	%xmm7, -56(%rbp)
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_2
# BB#1:                                 # %cond.true
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB11_3:                               # %cond.end
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jbe	.LBB11_5
# BB#4:                                 # %cond.true.7
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB11_6
.LBB11_5:                               # %cond.false.9
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB11_6:                               # %cond.end.11
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_11
# BB#7:                                 # %cond.true.14
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_9
# BB#8:                                 # %cond.true.18
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB11_10
.LBB11_9:                               # %cond.false.20
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB11_10:                              # %cond.end.22
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB11_15
.LBB11_11:                              # %cond.false.24
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_13
# BB#12:                                # %cond.true.28
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB11_14
.LBB11_13:                              # %cond.false.30
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB11_14:                              # %cond.end.32
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
.LBB11_15:                              # %cond.end.34
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB11_17
# BB#16:                                # %cond.true.39
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB11_18
.LBB11_17:                              # %cond.false.41
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB11_18:                              # %cond.end.43
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-64(%rbp), %xmm1
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jbe	.LBB11_20
# BB#19:                                # %cond.true.48
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB11_21
.LBB11_20:                              # %cond.false.50
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB11_21:                              # %cond.end.52
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_26
# BB#22:                                # %cond.true.55
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB11_24
# BB#23:                                # %cond.true.59
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB11_25
.LBB11_24:                              # %cond.false.61
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB11_25:                              # %cond.end.63
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB11_30
.LBB11_26:                              # %cond.false.65
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB11_28
# BB#27:                                # %cond.true.69
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB11_29
.LBB11_28:                              # %cond.false.71
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB11_29:                              # %cond.end.73
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB11_30:                              # %cond.end.75
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_32
# BB#31:                                # %cond.true.79
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB11_33
.LBB11_32:                              # %cond.false.81
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB11_33:                              # %cond.end.83
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jbe	.LBB11_35
# BB#34:                                # %cond.true.88
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB11_36
.LBB11_35:                              # %cond.false.90
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB11_36:                              # %cond.end.92
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_41
# BB#37:                                # %cond.true.95
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_39
# BB#38:                                # %cond.true.99
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jmp	.LBB11_40
.LBB11_39:                              # %cond.false.101
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
.LBB11_40:                              # %cond.end.103
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB11_45
.LBB11_41:                              # %cond.false.105
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_43
# BB#42:                                # %cond.true.109
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB11_44
.LBB11_43:                              # %cond.false.111
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB11_44:                              # %cond.end.113
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB11_45:                              # %cond.end.115
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB11_47
# BB#46:                                # %cond.true.120
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB11_48
.LBB11_47:                              # %cond.false.122
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB11_48:                              # %cond.end.124
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-56(%rbp), %xmm1
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jbe	.LBB11_50
# BB#49:                                # %cond.true.129
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB11_51
.LBB11_50:                              # %cond.false.131
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB11_51:                              # %cond.end.133
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_56
# BB#52:                                # %cond.true.136
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB11_54
# BB#53:                                # %cond.true.140
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	jmp	.LBB11_55
.LBB11_54:                              # %cond.false.142
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
.LBB11_55:                              # %cond.end.144
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB11_60
.LBB11_56:                              # %cond.false.146
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB11_58
# BB#57:                                # %cond.true.150
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB11_59
.LBB11_58:                              # %cond.false.152
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
.LBB11_59:                              # %cond.end.154
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB11_60:                              # %cond.end.156
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-104(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-120(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-72(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	callq	in_poly
	cmpl	$0, %eax
	je	.LBB11_67
# BB#61:                                # %land.lhs.true
	movq	-72(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	in_poly
	cmpl	$0, %eax
	je	.LBB11_67
# BB#62:                                # %land.lhs.true.169
	movq	-72(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	in_poly
	cmpl	$0, %eax
	je	.LBB11_67
# BB#63:                                # %land.lhs.true.172
	movq	-72(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	in_poly
	cmpl	$0, %eax
	je	.LBB11_67
# BB#64:                                # %if.then
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-96(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movq	-80(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB11_66
# BB#65:                                # %if.then.177
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 64(%rax)
.LBB11_66:                              # %if.end
	jmp	.LBB11_67
.LBB11_67:                              # %if.end.203
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end11:
	.size	add_rectangle, .Lfunc_end11-add_rectangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	intersect_y,@function
intersect_y:                            # @intersect_y
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movsd	.LCPI12_0, %xmm6        # xmm6 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -40(%rbp)
	movq	%rdi, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	addsd	-72(%rbp), %xmm6
	movsd	%xmm6, -72(%rbp)
	movq	-56(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-72(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	callq	intersect
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	intersect_y, .Lfunc_end12-intersect_y
	.cfi_endproc

	.align	16, 0x90
	.type	in_poly,@function
in_poly:                                # @in_poly
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdi), %rax
	movq	%rax, -40(%rbp)
	movl	$1, -72(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -72(%rbp)
	jg	.LBB13_24
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$4, %eax
	movl	-72(%rbp), %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-32(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jbe	.LBB13_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB13_5
.LBB13_4:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB13_5:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_22
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-56(%rbp), %xmm1
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jbe	.LBB13_8
# BB#7:                                 # %cond.true.12
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false.14
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB13_9:                               # %cond.end.16
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB13_21
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-64(%rbp), %xmm1
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jbe	.LBB13_12
# BB#11:                                # %cond.true.23
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB13_13
.LBB13_12:                              # %cond.false.25
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB13_13:                              # %cond.end.27
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB13_20
# BB#14:                                # %if.then.30
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jne	.LBB13_15
	jp	.LBB13_15
	jmp	.LBB13_19
.LBB13_15:                              # %if.then.34
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB13_16
	jp	.LBB13_16
	jmp	.LBB13_17
.LBB13_16:                              # %lor.lhs.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB13_18
.LBB13_17:                              # %if.then.49
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
.LBB13_18:                              # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_19
.LBB13_19:                              # %if.end.50
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.51
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_21
.LBB13_21:                              # %if.end.52
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_22
.LBB13_22:                              # %if.end.53
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB13_1
.LBB13_24:                              # %for.end
	movq	-32(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	point_on_border
	cmpl	$0, %eax
	je	.LBB13_26
# BB#25:                                # %if.then.55
	movl	$1, -4(%rbp)
	jmp	.LBB13_27
.LBB13_26:                              # %if.end.56
	movl	$2, %eax
	movl	-68(%rbp), %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-140(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%edx, -4(%rbp)
.LBB13_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	in_poly, .Lfunc_end13-in_poly
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4487126258331716666     # double 1.0E-8
	.text
	.align	16, 0x90
	.type	point_on_border,@function
point_on_border:                        # @point_on_border
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$24, %rsp
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -36(%rbp)
	jg	.LBB14_25
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	xorps	%xmm0, %xmm0
	movl	$4, %eax
	movl	-36(%rbp), %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-108(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-32(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -56(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	-32(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -72(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -96(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-16(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-104(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-104(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB14_5:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_23
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_8
# BB#7:                                 # %cond.true.25
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB14_9
.LBB14_8:                               # %cond.false.27
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB14_9:                               # %cond.end.29
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_23
# BB#10:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB14_12
# BB#11:                                # %cond.true.37
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB14_13
.LBB14_12:                              # %cond.false.39
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB14_13:                              # %cond.end.41
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB14_23
# BB#14:                                # %land.lhs.true.45
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_16
# BB#15:                                # %cond.true.49
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB14_17
.LBB14_16:                              # %cond.false.51
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB14_17:                              # %cond.end.53
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_23
# BB#18:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB14_20
# BB#19:                                # %cond.true.61
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB14_21
.LBB14_20:                              # %cond.false.63
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB14_21:                              # %cond.end.65
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jb	.LBB14_23
# BB#22:                                # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB14_26
.LBB14_23:                              # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_24
.LBB14_24:                              # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB14_1
.LBB14_25:                              # %for.end
	movl	$0, -4(%rbp)
.LBB14_26:                              # %return
	movl	-4(%rbp), %eax
	addq	$24, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	point_on_border, .Lfunc_end14-point_on_border
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_transform_resize_boundary,@object # @__func__.gimp_transform_resize_boundary
.L__func__.gimp_transform_resize_boundary:
	.asciz	"gimp_transform_resize_boundary"
	.size	.L__func__.gimp_transform_resize_boundary, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"inv != NULL"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"invalid transform matrix"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"no rectangle found by algorithm, no cropping done"
	.size	.L.str.3, 50


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
