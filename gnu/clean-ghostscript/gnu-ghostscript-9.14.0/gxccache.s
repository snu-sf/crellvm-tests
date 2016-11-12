	.text
	.file	"gxccache.bc"
	.globl	gx_compute_char_matrix
	.align	16, 0x90
	.type	gx_compute_char_matrix,@function
gx_compute_char_matrix:                 # @gx_compute_char_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rcx, %r10
	movb	(%rsi), %cl
	movb	4(%rsi), %r11b
	movl	$1, %esi
	movl	$1, %eax
	shll	%cl, %eax
	movb	%r11b, %cl
	shll	%cl, %esi
	cvtsi2ssl	%eax, %xmm0
	movss	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	mulss	4(%rdi), %xmm0
	movss	%xmm0, (%r10)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%r8)
	mulss	12(%rdi), %xmm0
	movss	%xmm0, (%r9)
	retq
.Lfunc_end0:
	.size	gx_compute_char_matrix, .Lfunc_end0-gx_compute_char_matrix
	.cfi_endproc

	.globl	gx_compute_ccache_key
	.align	16, 0x90
	.type	gx_compute_ccache_key,@function
gx_compute_ccache_key:                  # @gx_compute_ccache_key
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rsp), %r10
	movq	8(%rsp), %r11
	testl	%ecx, %ecx
	je	.LBB1_4
# BB#1:                                 # %land.lhs.true
	movl	128(%rdi), %eax
	cmpl	$42, %eax
	je	.LBB1_3
# BB#2:                                 # %land.lhs.true
	cmpl	$11, %eax
	jne	.LBB1_4
.LBB1_3:                                # %if.then
	movl	$0, (%r10)
	movl	$0, (%r11)
	movl	$0, (%r9)
	movl	$0, (%r8)
	retq
.LBB1_4:                                # %if.else
	movb	(%rdx), %cl
	movb	4(%rdx), %al
	movl	$1, %edx
	movl	$1, %edi
	shll	%cl, %edi
	movb	%al, %cl
	shll	%cl, %edx
	cvtsi2ssl	%edi, %xmm0
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%r8)
	mulss	4(%rsi), %xmm0
	movss	%xmm0, (%r9)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	8(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%r11)
	mulss	12(%rsi), %xmm0
	movss	%xmm0, (%r10)
	retq
.Lfunc_end1:
	.size	gx_compute_ccache_key, .Lfunc_end1-gx_compute_ccache_key
	.cfi_endproc

	.globl	gx_lookup_fm_pair
	.align	16, 0x90
	.type	gx_lookup_fm_pair,@function
gx_lookup_fm_pair:                      # @gx_lookup_fm_pair
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
	subq	$88, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 144
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
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movq	%rdi, %r13
	movabsq	$9223372036854775807, %r8 # imm = 0x7FFFFFFFFFFFFFFF
	movq	24(%r13), %r14
	movl	24(%r14), %r12d
	movl	40(%r14), %eax
	imulq	$112, %rax, %rbx
	addq	32(%r14), %rbx
	testl	%ecx, %ecx
	movl	128(%r13), %eax
	je	.LBB2_4
# BB#1:                                 # %land.lhs.true.i
	xorps	%xmm0, %xmm0
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	cmpl	$11, %eax
	jne	.LBB2_3
# BB#2:
	xorps	%xmm0, %xmm0
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	movss	%xmm0, 56(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	movss	%xmm0, 60(%rsp)         # 4-byte Spill
	jmp	.LBB2_5
.LBB2_3:                                # %land.lhs.true.i
	cmpl	$42, %eax
	xorps	%xmm0, %xmm0
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	movss	%xmm0, 56(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	movss	%xmm0, 60(%rsp)         # 4-byte Spill
	je	.LBB2_5
.LBB2_4:                                # %gx_compute_ccache_key.exit
	movb	(%rdx), %cl
	movb	4(%rdx), %r9b
	movl	$1, %edi
	movl	$1, %ebp
	shll	%cl, %ebp
	movb	%r9b, %cl
	shll	%cl, %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 60(%rsp)         # 4-byte Spill
	mulss	4(%rsi), %xmm0
	movss	%xmm0, 56(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movss	8(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 52(%rsp)         # 4-byte Spill
	mulss	12(%rsi), %xmm0
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	je	.LBB2_6
.LBB2_5:                                # %lor.lhs.false
	cmpl	$0, 152(%r13)
	je	.LBB2_7
.LBB2_6:                                # %if.then
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%r8, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	%r13, %rbp
	jmp	.LBB2_9
.LBB2_7:                                # %if.else
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movups	408(%r13), %xmm0
	movaps	%xmm0, 64(%rsp)
	cmpq	%r8, 64(%rsp)
	movq	%r13, %rbp
	je	.LBB2_9
# BB#8:                                 # %select.mid
	xorl	%ebp, %ebp
.LBB2_9:                                # %for.cond.preheader
	testl	%r12d, %r12d
	je	.LBB2_14
# BB#10:                                # %for.body.lr.ph
	leaq	64(%rsp), %r15
	.align	16, 0x90
.LBB2_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB2_15
# BB#12:                                # %if.then.10
                                        #   in Loop: Header=BB2_11 Depth=1
	cmpq	%rbp, (%rbx)
	jne	.LBB2_13
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_15:                               # %if.else.15
                                        #   in Loop: Header=BB2_11 Depth=1
	leaq	8(%rbx), %rdi
	movq	%r15, %rsi
	callq	uid_equal
	testl	%eax, %eax
	je	.LBB2_13
# BB#16:                                # %lor.lhs.false.18
                                        #   in Loop: Header=BB2_11 Depth=1
	movl	24(%rbx), %eax
	cmpl	128(%r13), %eax
	jne	.LBB2_13
.LBB2_17:                               # %if.end.24
                                        #   in Loop: Header=BB2_11 Depth=1
	movss	32(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	60(%rsp), %xmm0         # 4-byte Folded Reload
	jne	.LBB2_13
	jp	.LBB2_13
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_11 Depth=1
	movss	36(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	56(%rsp), %xmm0         # 4-byte Folded Reload
	jne	.LBB2_13
	jp	.LBB2_13
# BB#19:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB2_11 Depth=1
	movss	40(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	52(%rsp), %xmm0         # 4-byte Folded Reload
	jne	.LBB2_13
	jp	.LBB2_13
# BB#20:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB2_11 Depth=1
	movss	44(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	44(%rsp), %xmm0         # 4-byte Folded Reload
	jne	.LBB2_13
	jp	.LBB2_13
# BB#21:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB2_11 Depth=1
	movl	48(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, 96(%rbx)
	je	.LBB2_22
	.align	16, 0x90
.LBB2_13:                               # %for.inc
                                        #   in Loop: Header=BB2_11 Depth=1
	decl	%r12d
	movl	104(%rbx), %eax
	imulq	$112, %rax, %rbx
	addq	32(%r14), %rbx
	testl	%r12d, %r12d
	jne	.LBB2_11
.LBB2_14:                               # %for.end
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	leaq	64(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	movl	48(%rsp), %r9d          # 4-byte Reload
	callq	gx_add_fm_pair
.LBB2_27:                               # %cleanup.62
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_22:                               # %if.then.38
	cmpq	$0, (%rbx)
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	jne	.LBB2_24
# BB#23:                                # %if.then.41
	movq	%r13, (%rbx)
.LBB2_24:                               # %if.end.47
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_touch_fm_pair
	testl	%eax, %eax
	js	.LBB2_27
# BB#25:                                # %if.end.51
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	movq	%r15, %r8
	movl	48(%rsp), %r9d          # 4-byte Reload
	callq	gx_provide_fm_pair_attributes
	testl	%eax, %eax
	js	.LBB2_27
# BB#26:                                # %if.end.55
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbx, (%rax)
	xorl	%eax, %eax
	jmp	.LBB2_27
.Lfunc_end2:
	.size	gx_lookup_fm_pair, .Lfunc_end2-gx_lookup_fm_pair
	.cfi_endproc

	.globl	gx_lookup_cached_char
	.align	16, 0x90
	.type	gx_lookup_cached_char,@function
gx_lookup_cached_char:                  # @gx_lookup_cached_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	24(%rdi), %rax
	imull	$59, %edx, %edi
	imull	$73, 28(%rsi), %ebx
	leal	(%rdi,%rbx), %edi
	movl	104(%rax), %r10d
	andl	%r10d, %edi
	movq	96(%rax), %r11
	movq	(%r11,%rdi,8), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB3_9
# BB#1:                                 # %while.body.lr.ph
	imull	$59, %edx, %eax
	leal	1(%rbx,%rax), %ebx
	.align	16, 0x90
.LBB3_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, 40(%rdi)
	jne	.LBB3_8
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpq	%rsi, 24(%rdi)
	jne	.LBB3_8
# BB#4:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	72(%rdi), %eax
	cmpl	(%r9), %eax
	jne	.LBB3_8
# BB#5:                                 # %land.lhs.true.15
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	76(%rdi), %eax
	cmpl	4(%r9), %eax
	jne	.LBB3_8
# BB#6:                                 # %land.lhs.true.20
                                        #   in Loop: Header=BB3_2 Depth=1
	movzbl	48(%rdi), %eax
	cmpl	%ecx, %eax
	jne	.LBB3_8
# BB#7:                                 # %land.lhs.true.25
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	%r8d, 4(%rdi)
	movq	%rdi, %rax
	je	.LBB3_9
	.align	16, 0x90
.LBB3_8:                                # %if.end
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	%r10d, %eax
	andl	%ebx, %eax
	movq	(%r11,%rax,8), %rdi
	incl	%ebx
	testq	%rdi, %rdi
	movl	$0, %eax
	jne	.LBB3_2
.LBB3_9:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end3:
	.size	gx_lookup_cached_char, .Lfunc_end3-gx_lookup_cached_char
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4643211215818981376     # double 256
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gx_image_cached_char
	.align	16, 0x90
	.type	gx_image_cached_char,@function
gx_image_cached_char:                   # @gx_image_cached_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$4824, %rsp             # imm = 0x12D8
.Ltmp21:
	.cfi_def_cfa_offset 4880
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	movq	%rdi, %r13
	movq	%r13, 120(%rsp)         # 8-byte Spill
	movq	456(%r13), %r14
	movq	%r14, 152(%rsp)         # 8-byte Spill
	movq	88(%r13), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	96(%r13), %rax
	testq	%rax, %rax
	cmoveq	%rcx, %rax
	cmpl	$0, 168(%r14)
	je	.LBB4_1
# BB#2:                                 # %if.end.lr.ph
	movq	1760(%r14), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	80(%rbp), %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	%rax, %r12
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB4_3:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movsd	176(%r14), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %r15d
	movsd	184(%r14), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI4_0(%rip), %xmm0
	addsd	.LCPI4_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ebx
	subl	$-128, %r15d
	subl	96(%rbp), %r15d
	subl	72(%rbp), %r15d
	sarl	$8, %r15d
	addl	516(%r13), %r15d
	subl	$-128, %ebx
	subl	100(%rbp), %ebx
	subl	76(%rbp), %ebx
	sarl	$8, %ebx
	addl	520(%r13), %ebx
	movzwl	8(%rbp), %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movzwl	10(%rbp), %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	cmpl	484(%r13), %r15d
	jl	.LBB4_7
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r15), %eax
	cmpl	492(%r13), %eax
	jg	.LBB4_7
# BB#5:                                 # %lor.lhs.false.48
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	488(%r13), %ebx
	jl	.LBB4_7
# BB#6:                                 # %lor.lhs.false.54
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	(%rbx,%rax), %eax
	cmpl	496(%r13), %eax
	jle	.LBB4_14
	.align	16, 0x90
.LBB4_7:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_3 Depth=1
	leaq	2968(%rsp), %rax
	cmpq	%rax, %r12
	je	.LBB4_15
# BB#8:                                 # %if.then.63
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%r12, %rbp
	xorl	%r12d, %r12d
	cmpl	508(%r13), %r15d
	jge	.LBB4_58
# BB#9:                                 # %lor.lhs.false.68
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r15), %eax
	cmpl	500(%r13), %eax
	jle	.LBB4_58
# BB#10:                                # %lor.lhs.false.75
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	512(%r13), %ebx
	jge	.LBB4_58
# BB#11:                                # %lor.lhs.false.81
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	(%rbx,%rax), %eax
	cmpl	504(%r13), %eax
	jle	.LBB4_58
# BB#12:                                # %if.end.89
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%r14, %rdi
	leaq	176(%rsp), %rsi
	callq	gx_effective_clip_path
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB4_58
# BB#13:                                # %cleanup
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	176(%rsp), %rsi
	leaq	2968(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	gx_make_clip_device_on_stack
.LBB4_14:                               # %if.end.95
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%r12, %rax
.LBB4_15:                               # %if.end.95
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	%r15, 96(%rsp)          # 8-byte Spill
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	1760(%r14), %rax
	movl	$gx_dc_type_data_none, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB4_17
# BB#16:                                # %cond.end.104
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	gx_remap_color
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jne	.LBB4_58
.LBB4_17:                               # %if.end.109
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	$-1, 160(%rsp)          # 8-byte Folded Reload
	movq	112(%rsp), %rbp         # 8-byte Reload
	je	.LBB4_27
# BB#18:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	24(%rbp), %rax
	movq	56(%rax), %r13
	testq	%r13, %r13
	je	.LBB4_27
# BB#19:                                # %if.then.115
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	96(%rbp), %r14d
	movl	100(%rbp), %r15d
	sarl	$8, %r14d
	sarl	$8, %r15d
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	1760(%rax), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB4_22
# BB#20:                                # %land.lhs.true.130
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	212(%rax), %eax
	movl	$563, %ecx              # imm = 0x233
	andl	%ecx, %eax
	cmpl	$48, %eax
	jne	.LBB4_22
# BB#21:                                # %if.then.133
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	(%r14,%rax), %ecx
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%r15,%rax), %r8d
	movq	(%r13), %rax
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	8(%rdx), %r9
	movl	$0, (%rsp)
	movq	%r13, %rdi
	movq	160(%rsp), %rsi         # 8-byte Reload
	movq	136(%rsp), %rdx         # 8-byte Reload
	callq	*24(%rax)
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB4_58
	.align	16, 0x90
.LBB4_22:                               # %if.end.142
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	$0, 16(%rbp)
	jne	.LBB4_27
# BB#23:                                # %if.then.145
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rsi
	leaq	176(%rsp), %rbx
	movq	%rbx, %rdi
	movq	136(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rdx
	callq	gs_make_mem_mono_device
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_open_cache_device
	movq	(%r13), %rax
	movl	$1, (%rsp)
	movl	$1, %r9d
	movq	%r13, %rdi
	movq	160(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	movl	%r15d, %r8d
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB4_24
# BB#25:                                # %cleanup.162
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdi
	movl	$scale_log2_1, %edx
	movq	%rbp, %rsi
	callq	gx_add_char_bits
	movq	$-1, 160(%rsp)          # 8-byte Folded Spill
	movq	152(%rsp), %r14         # 8-byte Reload
	cmpl	$0, 168(%r14)
	movq	120(%rsp), %r13         # 8-byte Reload
	jne	.LBB4_3
# BB#26:
	movl	$-14, %r12d
	jmp	.LBB4_58
.LBB4_1:
	movl	$-14, %r12d
	jmp	.LBB4_58
.LBB4_27:                               # %if.end.166
	leaq	104(%rbp), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	4(%rbp), %eax
	cmpl	$3, %eax
	movl	$2, %r12d
	cmovnel	%eax, %r12d
	movl	$gx_default_fill_mask, %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	cmpq	%rax, 1352(%rcx)
	movq	152(%rsp), %rbx         # 8-byte Reload
	jne	.LBB4_29
# BB#28:                                # %lor.lhs.false.179
	movl	$563, %eax              # imm = 0x233
	andl	212(%rbx), %eax
	cmpl	$48, %eax
	jne	.LBB4_29
# BB#38:                                # %if.else
	movq	%rbp, %r13
	movq	1760(%rbx), %rax
	movq	%rbx, %rbp
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB4_34
# BB#39:                                # %if.then.220
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rbp
	cmpl	$2, %r12d
	movq	160(%rsp), %rbx         # 8-byte Reload
	jl	.LBB4_42
# BB#40:                                # %if.then.226
	movzwl	14(%r13), %ecx
	movq	16(%r13), %r8
	movq	%r13, %rbx
	movl	%r12d, 32(%rsp)
	movq	%rbp, 24(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, (%rsp)
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	160(%rsp), %rsi         # 8-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*1312(%rdi)
	testl	%eax, %eax
	jns	.LBB4_58
# BB#41:                                # %if.end.235
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	144(%rax), %rax
	movq	200(%rax), %rsi
	movq	%rbx, %rdi
	callq	compress_alpha_bits
	movq	%rax, %rbx
	movl	$1, %r12d
	testq	%rbx, %rbx
	je	.LBB4_58
.LBB4_42:                               # %cleanup.247
	movq	144(%rsp), %rax         # 8-byte Reload
	leal	63(%rax), %ecx
	shrl	$3, %ecx
	andl	$16376, %ecx            # imm = 0x3FF8
	movq	%rbp, 32(%rsp)
	movq	128(%rsp), %rdx         # 8-byte Reload
	movl	%edx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, (%rsp)
	movq	$-1, 24(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*1216(%rdi)
	movl	%eax, %r14d
	jmp	.LBB4_55
.LBB4_29:                               # %if.then.184
	movq	%rcx, %r14
	movq	120(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB4_31
# BB#30:                                # %if.then.187
	movl	$0, 584(%rcx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 568(%rcx)
	movq	88(%rbp), %rax
	movq	%rax, 560(%rcx)
.LBB4_31:                               # %if.end.192
	leaq	176(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_effective_clip_path
	testl	%eax, %eax
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	js	.LBB4_33
# BB#32:                                # %if.then.196
	movzwl	14(%rbp), %ecx
	movq	16(%rbp), %r8
	movl	212(%rbx), %eax
	movq	176(%rsp), %rdx
	movq	%rdx, 48(%rsp)
	movl	%eax, 40(%rsp)
	movl	%r12d, 32(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%esi, (%rsp)
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	160(%rsp), %rsi         # 8-byte Reload
	callq	gx_image_fill_masked
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB4_57
.LBB4_33:                               # %cleanup.206.thread
	movq	%rbp, %r13
	movq	%rbx, %rbp
.LBB4_34:                               # %if.end.249
	cmpl	$2, %r12d
	movq	160(%rsp), %rbx         # 8-byte Reload
	jl	.LBB4_36
# BB#35:                                # %if.then.252
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	144(%rax), %rax
	movq	200(%rax), %rsi
	movq	%r13, %rdi
	callq	compress_alpha_bits
	movq	%rax, %rbx
	movl	$1, %r12d
	testq	%rbx, %rbx
	je	.LBB4_58
.LBB4_36:                               # %if.end.260
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	144(%rax), %rax
	movq	200(%rax), %rdi
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movl	$.L.str, %esi
	callq	gs_image_enum_alloc
	movq	%rax, %r14
	cmpq	160(%rsp), %rbx         # 8-byte Folded Reload
	je	.LBB4_37
# BB#43:                                # %cond.false.271
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movzwl	8(%r13), %r12d
	addl	$63, %r12d
	shrl	$3, %r12d
	andl	$16376, %r12d           # imm = 0x3FF8
	jmp	.LBB4_44
.LBB4_24:                               # %cleanup.162.thread196
	movl	$1, %r12d
	jmp	.LBB4_58
.LBB4_37:                               # %cond.true.268
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movzwl	14(%r13), %r12d
.LBB4_44:                               # %cond.end.277
	movq	%rbp, %r15
	movq	96(%rsp), %rbp          # 8-byte Reload
	testq	%r14, %r14
	movq	88(%rsp), %rbx          # 8-byte Reload
	je	.LBB4_45
# BB#48:                                # %if.end.288
	leaq	176(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	gs_image_t_init_mask_adjust
	negl	%ebp
	cvtsi2sdl	%ebp, %xmm0
	negl	%ebx
	cvtsi2sdl	%ebx, %xmm1
	leaq	184(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_make_translation
	leaq	132(%r15), %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	gs_matrix_multiply
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, 208(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, 212(%rsp)
	movl	$0, 764(%rsp)
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	movq	%r14, %rdi
	leaq	176(%rsp), %rsi
	movq	%r15, %rcx
	callq	gs_image_init
	cmpl	$1, %eax
	je	.LBB4_54
# BB#49:                                # %if.end.288
	testl	%eax, %eax
	movl	%eax, %r13d
	jne	.LBB4_54
# BB#50:                                # %for.cond.preheader
	xorl	%r13d, %r13d
	movq	128(%rsp), %rax         # 8-byte Reload
	testw	%ax, %ax
	je	.LBB4_54
# BB#51:                                # %for.body.lr.ph
	movq	144(%rsp), %r15         # 8-byte Reload
	addl	$7, %r15d
	shrl	$3, %r15d
	xorl	%ebp, %ebp
	movl	$1, %ebx
	.align	16, 0x90
.LBB4_52:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	136(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	%r14, %rdi
	movl	%r15d, %edx
	leaq	172(%rsp), %rcx
	callq	gs_image_next
	movl	%eax, %r13d
	movq	128(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	jge	.LBB4_54
# BB#53:                                # %for.body
                                        #   in Loop: Header=BB4_52 Depth=1
	addl	%r12d, %ebp
	incl	%ebx
	testl	%r13d, %r13d
	jns	.LBB4_52
.LBB4_54:                               # %cleanup.316
	movq	%r14, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	callq	gs_image_cleanup_and_free_enum
	movl	%eax, %r14d
	testl	%r14d, %r14d
	cmovnsl	%r13d, %r14d
	testl	%r13d, %r13d
	cmovsl	%r13d, %r14d
	movq	136(%rsp), %rbx         # 8-byte Reload
.LBB4_55:                               # %done
	cmpq	160(%rsp), %rbx         # 8-byte Folded Reload
	je	.LBB4_57
# BB#56:                                # %if.then.329
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	144(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.1, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB4_57:                               # %if.end.336
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	cmovlel	%r14d, %r12d
	jmp	.LBB4_58
.LBB4_45:                               # %if.then.281
	movq	136(%rsp), %rsi         # 8-byte Reload
	cmpq	160(%rsp), %rsi         # 8-byte Folded Reload
	je	.LBB4_47
# BB#46:                                # %if.then.285
	movl	$.L.str.1, %edx
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	*24(%rdi)
.LBB4_47:                               # %cleanup.316.thread
	movl	$1, %r12d
.LBB4_58:                               # %cleanup.341
	movl	%r12d, %eax
	addq	$4824, %rsp             # imm = 0x12D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gx_image_cached_char, .Lfunc_end4-gx_image_cached_char
	.cfi_endproc

	.align	16, 0x90
	.type	compress_alpha_bits,@function
compress_alpha_bits:                    # @compress_alpha_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 128
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movzwl	8(%rbx), %r14d
	movzwl	10(%rbx), %r15d
	movl	4(%rbx), %ecx
	cmpl	$3, %ecx
	movl	$2, %ebp
	cmovnel	%ecx, %ebp
	movzwl	14(%rbx), %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	leal	63(%r14), %r12d
	movq	%r12, 16(%rsp)          # 8-byte Spill
	shrl	$6, %r12d
	leal	(,%r12,8), %r13d
	movl	%r13d, %esi
	imull	%r15d, %esi
	movl	$.L.str.1, %edx
	movq	%rax, %rdi
	callq	*64(%rax)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB5_30
# BB#1:                                 # %for.cond.preheader
	testw	%r15w, %r15w
	je	.LBB5_2
# BB#3:                                 # %for.cond.17.preheader.lr.ph
	addq	$104, %rbx
	movl	%ebp, %ecx
	imull	%r14d, %ecx
	addl	$7, %ecx
	shrl	$3, %ecx
	movl	68(%rsp), %edx          # 4-byte Reload
	subl	%ecx, %edx
	leal	7(%r14), %r11d
	shrl	$3, %r11d
	movl	%r13d, %ecx
	subl	%r11d, %ecx
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	movl	%edx, %esi
	leal	-1(%r13), %edx
	subl	%r11d, %edx
	incq	%rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	leal	-1(,%r12,8), %edx
	subl	%r11d, %edx
	incq	%rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	leal	-1(,%r12,8), %edi
	subl	%r11d, %edi
	incq	%rdi
	movabsq	$8589934560, %r12       # imm = 0x1FFFFFFE0
	andq	%r12, %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leaq	-32(%rdi), %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	shrl	$5, %edi
	incl	%edi
	andq	%rdx, %r12
	subl	%r12d, %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	andl	$3, %edi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	%r14d, %ecx
	negl	%ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movq	16(%rsp), %rcx          # 8-byte Reload
	shrl	$3, %ecx
	andl	$120, %ecx
	decl	%ecx
	subl	%r11d, %ecx
	incl	%ecx
	andl	$96, %ecx
	addl	$-32, %ecx
	shrl	$5, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movq	%rdi, (%rsp)            # 8-byte Spill
	.align	16, 0x90
.LBB5_4:                                # %for.cond.17.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #     Child Loop BB5_20 Depth 2
                                        #     Child Loop BB5_23 Depth 2
                                        #     Child Loop BB5_26 Depth 2
	movb	$-128, %r9b
	testw	%r14w, %r14w
	je	.LBB5_5
# BB#6:                                 #   in Loop: Header=BB5_4 Depth=1
	xorl	%r8d, %r8d
	movl	68(%rsp), %r10d         # 4-byte Reload
	movb	$-128, %cl
	.align	16, 0x90
.LBB5_7:                                # %for.body.19
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%cl, %edx
	movb	(%rbx), %al
	andb	%dl, %al
	je	.LBB5_9
# BB#8:                                 # %for.body.19
                                        #   in Loop: Header=BB5_7 Depth=2
	movb	%r9b, %al
.LBB5_9:                                # %for.body.19
                                        #   in Loop: Header=BB5_7 Depth=2
	movb	%bpl, %cl
	shrl	%cl, %edx
	leaq	1(%rbx), %rcx
	testb	%dl, %dl
	cmoveq	%rcx, %rbx
	movb	$-128, %cl
	je	.LBB5_11
# BB#10:                                # %for.body.19
                                        #   in Loop: Header=BB5_7 Depth=2
	movb	%dl, %cl
.LBB5_11:                               # %for.body.19
                                        #   in Loop: Header=BB5_7 Depth=2
	addb	%al, %r8b
	shrb	%r9b
	jne	.LBB5_13
# BB#12:                                # %if.then.39
                                        #   in Loop: Header=BB5_7 Depth=2
	movb	%r8b, (%rdi)
	incq	%rdi
	movb	$-128, %r9b
	xorl	%r8d, %r8d
.LBB5_13:                               # %for.inc
                                        #   in Loop: Header=BB5_7 Depth=2
	incl	%r10d
	jne	.LBB5_7
# BB#14:                                # %for.end
                                        #   in Loop: Header=BB5_4 Depth=1
	movzbl	%r9b, %eax
	cmpl	$128, %eax
	je	.LBB5_16
# BB#15:                                # %if.then.45
                                        #   in Loop: Header=BB5_4 Depth=1
	movb	%r8b, (%rdi)
	incq	%rdi
	jmp	.LBB5_16
	.align	16, 0x90
.LBB5_5:                                #   in Loop: Header=BB5_4 Depth=1
	movb	$-128, %cl
.LBB5_16:                               # %for.cond.48.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	cmpl	%r11d, %r13d
	je	.LBB5_28
# BB#17:                                # %overflow.checked
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	%rsi, %r8
	testq	%r12, %r12
	movl	64(%rsp), %edx          # 4-byte Reload
	movq	%rdi, %rax
	movl	$0, %esi
	je	.LBB5_25
# BB#18:                                # %vector.body.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	je	.LBB5_21
# BB#19:                                # %vector.body.prol.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	xorl	%edx, %edx
	.align	16, 0x90
.LBB5_20:                               # %vector.body.prol
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, (%rdi,%rdx)
	movups	%xmm0, 16(%rdi,%rdx)
	addq	$32, %rdx
	incq	%rax
	jne	.LBB5_20
.LBB5_21:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB5_4 Depth=1
	leaq	(%rdi,%r12), %rax
	cmpq	$96, 40(%rsp)           # 8-byte Folded Reload
	jb	.LBB5_24
# BB#22:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	8(%rsp), %rsi           # 8-byte Reload
	subq	%rdx, %rsi
	leaq	112(%rdi,%rdx), %rdx
	.align	16, 0x90
.LBB5_23:                               # %vector.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, -112(%rdx)
	movups	%xmm0, -96(%rdx)
	movups	%xmm0, -80(%rdx)
	movups	%xmm0, -64(%rdx)
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, (%rdx)
	subq	$-128, %rdx
	addq	$-128, %rsi
	jne	.LBB5_23
.LBB5_24:                               #   in Loop: Header=BB5_4 Depth=1
	movl	28(%rsp), %edx          # 4-byte Reload
	movq	%r12, %rsi
.LBB5_25:                               # %middle.block
                                        #   in Loop: Header=BB5_4 Depth=1
	cmpq	%rsi, 48(%rsp)          # 8-byte Folded Reload
	je	.LBB5_27
	.align	16, 0x90
.LBB5_26:                               # %for.body.51
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rax)
	incq	%rax
	decl	%edx
	jne	.LBB5_26
.LBB5_27:                               # %for.cond.48.for.end.55_crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	addq	56(%rsp), %rdi          # 8-byte Folded Reload
	movq	%r8, %rsi
.LBB5_28:                               # %for.end.55
                                        #   in Loop: Header=BB5_4 Depth=1
	movzbl	%cl, %eax
	leaq	1(%rbx), %rcx
	cmpl	$128, %eax
	cmoveq	%rbx, %rcx
	addq	%rsi, %rcx
	decl	%r15d
	movq	%rcx, %rbx
	jne	.LBB5_4
# BB#29:
	movq	(%rsp), %rcx            # 8-byte Reload
	jmp	.LBB5_30
.LBB5_2:
	movq	%rax, %rcx
.LBB5_30:                               # %cleanup
	movq	%rcx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	compress_alpha_bits, .Lfunc_end5-compress_alpha_bits
	.cfi_endproc

	.type	scale_log2_1,@object    # @scale_log2_1
	.section	.rodata,"a",@progbits
	.align	4
scale_log2_1:
	.zero	8
	.size	scale_log2_1, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image_char(image_enum)"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"compress_alpha_bits"
	.size	.L.str.1, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
