	.text
	.file	"gdevdevn.bc"
	.globl	gray_cs_to_devn_cm
	.align	16, 0x90
	.type	gray_cs_to_devn_cm,@function
gray_cs_to_devn_cm:                     # @gray_cs_to_devn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movslq	100(%rdi), %rax
	testq	%rax, %rax
	jle	.LBB0_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rax
	movl	$1, %edi
	cmovlq	%rax, %rdi
	notq	%rdi
	leaq	(%rdi,%rax), %r11
	cmpq	$-2, %r11
	je	.LBB0_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r11
	movq	%r11, %r9
	andq	$-16, %r9
	xorl	%edi, %edi
	movq	%r11, %r8
	andq	$-16, %r8
	je	.LBB0_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %edi
	cmovlq	%rax, %rdi
	notq	%rdi
	leaq	-14(%rax,%rdi), %r10
	movl	%r10d, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%r14d, %r14d
	testb	$3, %dil
	je	.LBB0_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-16(%rcx,%rax,2), %rbx
	movq	%rax, %r14
	notq	%r14
	cmpq	$-2, %r14
	movl	$-2, %edi
	cmovgl	%r14d, %edi
	leal	-14(%rdi,%rax), %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%r14d, %r14d
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB0_5:                                # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rbx)
	movups	%xmm0, -16(%rbx)
	addq	$16, %r14
	addq	$-32, %rbx
	incq	%rdi
	jne	.LBB0_5
.LBB0_6:                                # %vector.body.preheader.split
	movq	%rax, %r15
	subq	%r9, %r15
	cmpq	$48, %r10
	jb	.LBB0_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rdi
	notq	%rdi
	cmpq	$-3, %rdi
	movq	$-2, %rbx
	cmovgq	%rdi, %rbx
	leaq	2(%rbx,%rax), %rdi
	andq	$-16, %rdi
	subq	%r14, %rdi
	addq	$-8, %rax
	subq	%r14, %rax
	leaq	(%rcx,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB0_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rdi
	jne	.LBB0_8
.LBB0_9:
	movq	%r15, %rax
	movq	%r8, %rdi
.LBB0_10:                               # %middle.block
	cmpq	%rdi, %r11
	je	.LBB0_13
.LBB0_11:                               # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB0_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, -4(%rcx,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB0_12
.LBB0_13:                               # %for.end
	movslq	12(%rsi), %rax
	cmpq	$64, %rax
	je	.LBB0_15
# BB#14:                                # %if.then
	movl	$32760, %esi            # imm = 0x7FF8
	subl	%edx, %esi
	movw	%si, (%rcx,%rax,2)
.LBB0_15:                               # %if.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gray_cs_to_devn_cm, .Lfunc_end0-gray_cs_to_devn_cm
	.cfi_endproc

	.globl	rgb_cs_to_devn_cm
	.align	16, 0x90
	.type	rgb_cs_to_devn_cm,@function
rgb_cs_to_devn_cm:                      # @rgb_cs_to_devn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 80
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rdx, %r10
	movq	%rsi, %r14
	movq	80(%rsp), %rbx
	movslq	100(%rdi), %rax
	testq	%rax, %rax
	jle	.LBB1_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rax
	movl	$1, %edx
	cmovlq	%rax, %rdx
	notq	%rdx
	leaq	(%rdx,%rax), %r13
	cmpq	$-2, %r13
	je	.LBB1_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r13
	movq	%r13, %r12
	andq	$-16, %r12
	xorl	%edx, %edx
	movq	%r13, %r11
	andq	$-16, %r11
	je	.LBB1_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %edx
	cmovlq	%rax, %rdx
	notq	%rdx
	leaq	-14(%rax,%rdx), %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	shrl	$4, %edx
	incl	%edx
	xorl	%esi, %esi
	testb	$3, %dl
	je	.LBB1_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-16(%rbx,%rax,2), %rdx
	movq	%rax, %rsi
	notq	%rsi
	cmpq	$-2, %rsi
	movl	$-2, %ebp
	cmovgl	%esi, %ebp
	leal	-14(%rbp,%rax), %ebp
	shrl	$4, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_5:                                # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdx)
	movups	%xmm0, -16(%rdx)
	addq	$16, %rsi
	addq	$-32, %rdx
	incq	%rbp
	jne	.LBB1_5
.LBB1_6:                                # %vector.body.preheader.split
	movq	%rax, %r15
	subq	%r12, %r15
	cmpq	$48, 8(%rsp)            # 8-byte Folded Reload
	jb	.LBB1_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rbp
	notq	%rbp
	cmpq	$-3, %rbp
	movq	$-2, %rdx
	cmovgq	%rbp, %rdx
	leaq	2(%rdx,%rax), %rbp
	andq	$-16, %rbp
	subq	%rsi, %rbp
	addq	$-8, %rax
	subq	%rsi, %rax
	leaq	(%rbx,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rbp
	jne	.LBB1_8
.LBB1_9:
	movq	%r15, %rax
	movq	%r11, %rdx
.LBB1_10:                               # %middle.block
	cmpq	%rdx, %r13
	je	.LBB1_13
.LBB1_11:                               # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB1_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, -4(%rbx,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB1_12
.LBB1_13:                               # %for.end
	movq	24(%rdi), %rax
	movswl	%cx, %edi
	movswl	%r8w, %esi
	movswl	%r9w, %edx
	leaq	16(%rsp), %r8
	movq	%r10, %rcx
	movq	%rax, %r9
	callq	color_rgb_to_cmyk
	movslq	(%r14), %rax
	cmpq	$64, %rax
	je	.LBB1_15
# BB#14:                                # %if.then
	movw	16(%rsp), %cx
	movw	%cx, (%rbx,%rax,2)
.LBB1_15:                               # %if.end
	movslq	4(%r14), %rax
	cmpq	$64, %rax
	je	.LBB1_17
# BB#16:                                # %if.then.8
	movw	18(%rsp), %cx
	movw	%cx, (%rbx,%rax,2)
.LBB1_17:                               # %if.end.12
	movslq	8(%r14), %rax
	cmpq	$64, %rax
	je	.LBB1_19
# BB#18:                                # %if.then.15
	movw	20(%rsp), %cx
	movw	%cx, (%rbx,%rax,2)
.LBB1_19:                               # %if.end.19
	movslq	12(%r14), %rax
	cmpq	$64, %rax
	je	.LBB1_21
# BB#20:                                # %if.then.22
	movw	22(%rsp), %cx
	movw	%cx, (%rbx,%rax,2)
.LBB1_21:                               # %if.end.26
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rgb_cs_to_devn_cm, .Lfunc_end1-rgb_cs_to_devn_cm
	.cfi_endproc

	.globl	cmyk_cs_to_devn_cm
	.align	16, 0x90
	.type	cmyk_cs_to_devn_cm,@function
cmyk_cs_to_devn_cm:                     # @cmyk_cs_to_devn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 56
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	56(%rsp), %r12
	movslq	100(%rdi), %rdi
	testq	%rdi, %rdi
	jle	.LBB2_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rdi
	movl	$1, %eax
	cmovlq	%rdi, %rax
	notq	%rax
	leaq	(%rax,%rdi), %r10
	cmpq	$-2, %r10
	je	.LBB2_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r10
	movq	%r10, %r15
	andq	$-16, %r15
	xorl	%eax, %eax
	movq	%r10, %r11
	andq	$-16, %r11
	je	.LBB2_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rdi
	movl	$1, %eax
	cmovlq	%rdi, %rax
	notq	%rax
	leaq	-14(%rdi,%rax), %r14
	movl	%r14d, %eax
	shrl	$4, %eax
	incl	%eax
	xorl	%r13d, %r13d
	testb	$3, %al
	je	.LBB2_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-16(%r12,%rdi,2), %rax
	movq	%rdi, %r13
	notq	%r13
	cmpq	$-2, %r13
	movl	$-2, %ebx
	cmovgl	%r13d, %ebx
	leal	-14(%rbx,%rdi), %ebx
	shrl	$4, %ebx
	incl	%ebx
	andl	$3, %ebx
	negq	%rbx
	xorl	%r13d, %r13d
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB2_5:                                # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	addq	$16, %r13
	addq	$-32, %rax
	incq	%rbx
	jne	.LBB2_5
.LBB2_6:                                # %vector.body.preheader.split
	movq	%rdi, %rbp
	subq	%r15, %rbp
	cmpq	$48, %r14
	jb	.LBB2_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rdi, %rbx
	notq	%rbx
	cmpq	$-3, %rbx
	movq	$-2, %rax
	cmovgq	%rbx, %rax
	leaq	2(%rax,%rdi), %rbx
	andq	$-16, %rbx
	subq	%r13, %rbx
	addq	$-8, %rdi
	subq	%r13, %rdi
	leaq	(%r12,%rdi,2), %rdi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB2_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi)
	movups	%xmm0, -16(%rdi)
	movups	%xmm0, -32(%rdi)
	movups	%xmm0, -48(%rdi)
	movups	%xmm0, -64(%rdi)
	movups	%xmm0, -80(%rdi)
	movups	%xmm0, -96(%rdi)
	movups	%xmm0, -112(%rdi)
	addq	$-128, %rdi
	addq	$-64, %rbx
	jne	.LBB2_8
.LBB2_9:
	movq	%rbp, %rdi
	movq	%r11, %rax
.LBB2_10:                               # %middle.block
	cmpq	%rax, %r10
	je	.LBB2_13
.LBB2_11:                               # %for.body.preheader
	incq	%rdi
	.align	16, 0x90
.LBB2_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, -4(%r12,%rdi,2)
	decq	%rdi
	cmpq	$1, %rdi
	jg	.LBB2_12
.LBB2_13:                               # %for.end
	movslq	(%rsi), %rax
	cmpq	$64, %rax
	je	.LBB2_15
# BB#14:                                # %if.then
	movw	%dx, (%r12,%rax,2)
.LBB2_15:                               # %if.end
	movslq	4(%rsi), %rax
	cmpq	$64, %rax
	je	.LBB2_17
# BB#16:                                # %if.then.7
	movw	%cx, (%r12,%rax,2)
.LBB2_17:                               # %if.end.10
	movslq	8(%rsi), %rax
	cmpq	$64, %rax
	je	.LBB2_19
# BB#18:                                # %if.then.13
	movw	%r8w, (%r12,%rax,2)
.LBB2_19:                               # %if.end.16
	movslq	12(%rsi), %rax
	cmpq	$64, %rax
	je	.LBB2_21
# BB#20:                                # %if.then.19
	movw	%r9w, (%r12,%rax,2)
.LBB2_21:                               # %if.end.22
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cmyk_cs_to_devn_cm, .Lfunc_end2-cmyk_cs_to_devn_cm
	.cfi_endproc

	.globl	bpc_to_depth
	.align	16, 0x90
	.type	bpc_to_depth,@function
bpc_to_depth:                           # @bpc_to_depth
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$4, %edi
	jg	.LBB3_3
# BB#1:                                 # %entry
	cmpl	$8, %esi
	jg	.LBB3_3
# BB#2:                                 # %if.then
	decl	%esi
	movslq	%esi, %rax
	decl	%edi
	movslq	%edi, %rcx
	movzbl	bpc_to_depth.depths(%rax,%rcx,8), %esi
	movl	%esi, %eax
	retq
.LBB3_3:                                # %if.else
	imull	%edi, %esi
	addl	$7, %esi
	andl	$-8, %esi
	movl	%esi, %eax
	retq
.Lfunc_end3:
	.size	bpc_to_depth, .Lfunc_end3-bpc_to_depth
	.cfi_endproc

	.globl	check_pcm_and_separation_names
	.align	16, 0x90
	.type	check_pcm_and_separation_names,@function
check_pcm_and_separation_names:         # @check_pcm_and_separation_names
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 64
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, %rbp
	movq	8(%rbp), %r14
	xorl	%r13d, %r13d
	testq	%r14, %r14
	je	.LBB4_6
# BB#1:                                 # %while.cond.preheader
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB4_6
# BB#2:                                 # %while.body.lr.ph
	movslq	%r15d, %r12
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB4_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	strlen
	cmpq	%rax, %r12
	jne	.LBB4_5
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB4_14
.LBB4_5:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	8(%r14,%r13,8), %rbx
	incq	%r13
	testq	%rbx, %rbx
	jne	.LBB4_3
.LBB4_6:                                # %if.end.8
	movslq	32(%rbp), %r12
	testq	%r12, %r12
	jle	.LBB4_7
# BB#8:                                 # %for.body.lr.ph
	movslq	%r15d, %r14
	addq	$48, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB4_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r15d, -8(%rbp)
	jne	.LBB4_11
# BB#10:                                # %land.lhs.true.14
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	(%rbp), %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB4_13
.LBB4_11:                               # %if.end.27
                                        #   in Loop: Header=BB4_9 Depth=1
	incq	%rbx
	addq	$16, %rbp
	cmpq	%r12, %rbx
	jl	.LBB4_9
# BB#12:
	movl	$-1, %r13d
	jmp	.LBB4_14
.LBB4_7:
	movl	$-1, %r13d
	jmp	.LBB4_14
.LBB4_13:                               # %land.lhs.true.14.cleanup.loopexit_crit_edge
	addl	%ebx, %r13d
.LBB4_14:                               # %cleanup
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	check_pcm_and_separation_names, .Lfunc_end4-check_pcm_and_separation_names
	.cfi_endproc

	.globl	devn_get_color_comp_index
	.align	16, 0x90
	.type	devn_get_color_comp_index,@function
devn_get_color_comp_index:              # @devn_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 96
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%r8d, %r13d
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	1064(%rsi), %r14d
	movq	%rbx, %rdx
	movl	%r13d, %ecx
	callq	check_pcm_and_separation_names
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_6
# BB#1:                                 # %if.then
	testl	%r14d, %r14d
	je	.LBB5_3
# BB#2:                                 # %if.then.1
	movslq	%ebp, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	1068(%rcx,%rax,4), %eax
	jmp	.LBB5_18
.LBB5_6:                                # %if.end.5
	movl	$-1, %eax
	cmpl	$1, %r15d
	jne	.LBB5_18
# BB#7:                                 # %if.end.5
	movl	96(%rsp), %r15d
	testl	%r15d, %r15d
	je	.LBB5_18
# BB#8:                                 # %if.end.5
	testl	%r14d, %r14d
	jne	.LBB5_9
# BB#10:                                # %if.end.12
	movl	%r13d, %r14d
	movslq	%r14d, %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	$-1, %eax
	je	.LBB5_18
# BB#11:                                # %if.end.17
	movl	$58, %eax
	cmpl	$1, %r15d
	jne	.LBB5_13
# BB#12:                                # %if.then.20
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	96(%rax), %eax
	subl	16(%rcx), %eax
.LBB5_13:                               # %if.end.23
	movslq	32(%rcx), %r15
	cmpl	%eax, %r15d
	movl	%ebp, %eax
	jge	.LBB5_18
# BB#14:                                # %if.then.26
	leal	1(%r15), %eax
	movl	%eax, 32(%rcx)
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	%r14d, %r13d
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	24(%r14), %rax
	movq	(%rax), %rdi
	movl	$.L.str.1, %edx
	movq	%rcx, %rbx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rax, %rbp
	movq	%rbp, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movq	%r15, %rax
	shlq	$4, %rax
	movl	%r13d, 40(%rbx,%rax)
	movq	%rbp, 48(%rbx,%rax)
	movslq	16(%rbx), %rdx
	addq	%r15, %rdx
	movl	$64, %eax
	cmpl	96(%r14), %edx
	jge	.LBB5_16
# BB#15:                                # %if.else.46
	movl	%edx, 1068(%rbx,%rdx,4)
	movl	%edx, %eax
.LBB5_16:                               # %if.end.50
	testq	%r12, %r12
	je	.LBB5_18
# BB#17:                                # %if.then.53
	leaq	(%r15,%r15,2), %rcx
	movl	$0, 4(%r12,%rcx,4)
	movl	$0, (%r12)
	jmp	.LBB5_18
.LBB5_3:                                # %if.else
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	96(%rax), %ebp
	jl	.LBB5_5
# BB#4:                                 # %select.mid
	movl	$64, %ebp
.LBB5_5:                                # %select.end
	movl	%ebp, %eax
	jmp	.LBB5_18
.LBB5_9:
	movl	$-1, %eax
.LBB5_18:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	devn_get_color_comp_index, .Lfunc_end5-devn_get_color_comp_index
	.cfi_endproc

	.globl	devn_get_params
	.align	16, 0x90
	.type	devn_get_params,@function
devn_get_params:                        # @devn_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$1224, %rsp             # imm = 0x4C8
.Ltmp63:
	.cfi_def_cfa_offset 1280
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$0, 1220(%rsp)
	leaq	(%rsp), %r12
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$1160, %edx             # imm = 0x488
	movq	%r12, %rdi
	callq	memset
	movq	$0, 1200(%rsp)
	movl	$0, 1208(%rsp)
	movl	$0, 1212(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 1184(%rsp)
	testq	%rbx, %rbx
	je	.LBB6_8
# BB#1:                                 # %for.cond.preheader
	movslq	32(%r14), %rax
	testq	%rax, %rax
	jle	.LBB6_8
# BB#2:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
	testb	$1, %al
	movl	$0, %edx
	je	.LBB6_4
# BB#3:                                 # %for.body.prol
	cmpl	$0, 4(%rbx)
	setne	%cl
	movzbl	%cl, %ecx
	movl	%ecx, (%rsp)
	movq	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movdqu	%xmm0, 4(%rsp)
	movl	$1, %edx
	movl	$5, %ecx
.LBB6_4:                                # %for.body.lr.ph.split
	movl	$5, %ebp
	cmpl	$1, %eax
	je	.LBB6_8
# BB#5:                                 # %for.body.lr.ph.split.split
	leaq	(%rdx,%rdx,2), %rsi
	leaq	20(%rbx,%rsi,4), %rsi
	.align	16, 0x90
.LBB6_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%rsi)
	setne	%bl
	movzbl	%bl, %edi
	movl	%edi, (%rsp,%rcx,4)
	movq	-12(%rsi), %xmm0        # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movdqu	%xmm0, 4(%rsp,%rcx,4)
	cmpl	$0, -4(%rsi)
	setne	%bl
	movzbl	%bl, %edi
	movl	%edi, 20(%rsp,%rcx,4)
	movq	(%rsi), %xmm0           # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movdqu	%xmm0, 24(%rsp,%rcx,4)
	addq	$10, %rcx
	addq	$2, %rdx
	addq	$24, %rsi
	cmpq	%rax, %rdx
	jl	.LBB6_6
# BB#7:                                 # %for.cond.if.end.loopexit_crit_edge.unr-lcssa
	movl	%ecx, %ebp
.LBB6_8:                                # %if.end
	movq	%r12, 1168(%rsp)
	movl	%ebp, 1176(%rsp)
	movl	$0, 1180(%rsp)
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	sample_device_crd_get_params
	testl	%eax, %eax
	js	.LBB6_15
# BB#9:                                 # %lor.lhs.false
	leaq	1200(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%r13, %rdi
	callq	param_write_name_array
	testl	%eax, %eax
	js	.LBB6_15
# BB#10:                                # %lor.lhs.false.43
	leaq	1184(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r13, %rdi
	callq	param_write_name_array
	testl	%eax, %eax
	js	.LBB6_15
# BB#11:                                # %lor.lhs.false.47
	leaq	1220(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r13, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB6_15
# BB#12:                                # %lor.lhs.false.51
	leaq	24(%r14), %rdx
	movl	$.L.str.6, %esi
	movq	%r13, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB6_15
# BB#13:                                # %if.end.56
	cmpl	$0, 32(%r14)
	jle	.LBB6_15
# BB#14:                                # %if.then.61
	leaq	1168(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r13, %rdi
	callq	param_write_int_array
.LBB6_15:                               # %cleanup
	addq	$1224, %rsp             # imm = 0x4C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	devn_get_params, .Lfunc_end6-devn_get_params
	.cfi_endproc

	.globl	devn_put_params
	.align	16, 0x90
	.type	devn_put_params,@function
devn_put_params:                        # @devn_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 192
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	16(%r12), %r14d
	movl	32(%r12), %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	1064(%r12), %r13d
	movl	20(%r12), %eax
	movl	%eax, 132(%rsp)
	movl	24(%r12), %eax
	movl	%eax, 128(%rsp)
	leaq	96(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	param_read_name_array
	testl	%eax, %eax
	jne	.LBB7_1
# BB#22:                                # %do.end
	cmpq	$0, 96(%rsp)
	je	.LBB7_4
# BB#23:                                # %land.lhs.true
	cmpl	$65, 104(%rsp)
	jb	.LBB7_4
# BB#24:                                # %if.then.10
	movq	(%rbx), %rax
	movl	$-15, %r14d
	movl	$.L.str.4, %esi
	jmp	.LBB7_25
.LBB7_1:                                # %entry
	cmpl	$1, %eax
	je	.LBB7_3
# BB#2:                                 # %sone
	movq	(%rbx), %rcx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*56(%rcx)
.LBB7_3:                                # %do.end.thread
	movq	$0, 96(%rsp)
.LBB7_4:                                # %do.body.15
	leaq	112(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	param_read_name_array
	testl	%eax, %eax
	jne	.LBB7_5
# BB#26:                                # %do.end.33
	cmpq	$0, 112(%rsp)
	je	.LBB7_8
# BB#27:                                # %land.lhs.true.36
	cmpl	$65, 120(%rsp)
	jb	.LBB7_8
# BB#28:                                # %if.then.39
	movq	(%rbx), %rax
	movl	$-15, %r14d
	movl	$.L.str.3, %esi
.LBB7_25:                               # %cleanup.321
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB7_92
.LBB7_5:                                # %do.body.15
	cmpl	$1, %eax
	je	.LBB7_7
# BB#6:                                 # %scne
	movq	(%rbx), %rcx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*56(%rcx)
.LBB7_7:                                # %do.end.33.thread
	movq	$0, 112(%rsp)
.LBB7_8:                                # %do.body.44
	movl	%r14d, 12(%rsp)         # 4-byte Spill
	leaq	80(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	param_read_int_array
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.LBB7_12
# BB#9:                                 # %do.body.44
	cmpl	$1, %r14d
	je	.LBB7_11
# BB#10:                                # %equiv_cmyk_e
	movq	(%rbx), %rax
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	*56(%rax)
.LBB7_11:                               # %sw.bb.58
	movq	$0, 80(%rsp)
.LBB7_12:                               # %do.end.62
	cmpl	$0, 104(%r15)
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	jne	.LBB7_92
# BB#13:                                # %if.then.64
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	72(%rsp), %r13          # 8-byte Reload
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	112(%rsp), %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	movl	12(%rsp), %ebx          # 4-byte Reload
	je	.LBB7_44
# BB#14:                                # %if.then.67
	movl	120(%rsp), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	32(%r12), %r13d
	testl	%eax, %eax
	jle	.LBB7_43
# BB#15:                                # %for.body.lr.ph
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movq	8(%r12), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r12, 56(%rsp)          # 8-byte Spill
	leaq	8(%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB7_16
	.align	16, 0x90
.LBB7_34:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movq	112(%rsp), %r15
.LBB7_16:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	je	.LBB7_30
# BB#17:                                # %if.then.i
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_30
# BB#18:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	%r14, %rax
	shlq	$4, %rax
	leaq	(%r15,%rax), %r13
	movl	8(%r15,%rax), %ebp
	movq	16(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB7_19:                               # %while.body.i
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	strlen
	cmpq	%rbp, %rax
	jne	.LBB7_29
# BB#20:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB7_19 Depth=2
	movq	(%r13), %rsi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB7_21
.LBB7_29:                               # %if.end.i
                                        #   in Loop: Header=BB7_19 Depth=2
	movq	(%r12), %rbx
	addq	$8, %r12
	testq	%rbx, %rbx
	jne	.LBB7_19
.LBB7_30:                               # %if.then.74
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	%r14, %rbp
	shlq	$4, %rbp
	movl	8(%r15,%rbp), %ebx
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	$.L.str.8, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %r15
	movq	112(%rsp), %rax
	movq	(%rax,%rbp), %rsi
	movslq	%ebx, %rbx
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	72(%rsp), %r13          # 8-byte Reload
	movslq	%r13d, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	48(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	movq	56(%rsp), %r12          # 8-byte Reload
	movl	%ebx, 40(%r12,%rcx)
	movq	%r15, 48(%r12,%rcx)
	je	.LBB7_32
# BB#31:                                # %if.then.98
                                        #   in Loop: Header=BB7_16 Depth=1
	leaq	(%rax,%rax,2), %rax
	movl	$0, 4(%rbp,%rax,4)
	movl	$0, (%rbp)
.LBB7_32:                               # %if.end.101
                                        #   in Loop: Header=BB7_16 Depth=1
	incl	%r13d
.LBB7_33:                               # %for.inc
                                        #   in Loop: Header=BB7_16 Depth=1
	incq	%r14
	cmpl	36(%rsp), %r14d         # 4-byte Folded Reload
	jne	.LBB7_34
	jmp	.LBB7_35
.LBB7_21:                               #   in Loop: Header=BB7_16 Depth=1
	movq	56(%rsp), %r12          # 8-byte Reload
	movq	72(%rsp), %r13          # 8-byte Reload
	movq	48(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB7_33
.LBB7_35:                               # %for.end
	movl	32(%r12), %eax
	movl	%r13d, %edx
	subl	%eax, %edx
	jle	.LBB7_36
# BB#37:                                # %for.body.109.preheader
	leal	-1(%r13), %ecx
	subl	%eax, %ecx
	testb	$3, %dl
	je	.LBB7_38
# BB#39:                                # %for.body.109.prol.preheader
	andl	$3, %edx
	negl	%edx
	movl	12(%rsp), %ebx          # 4-byte Reload
	.align	16, 0x90
.LBB7_40:                               # %for.body.109.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	16(%r12), %esi
	addl	%eax, %esi
	movslq	%esi, %rsi
	movl	%esi, 1068(%r12,%rsi,4)
	incl	%eax
	incl	%edx
	jne	.LBB7_40
	jmp	.LBB7_41
.LBB7_36:
	movl	12(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB7_43
.LBB7_38:
	movl	12(%rsp), %ebx          # 4-byte Reload
.LBB7_41:                               # %for.body.109.preheader.split
	cmpl	$3, %ecx
	jb	.LBB7_43
	.align	16, 0x90
.LBB7_42:                               # %for.body.109
                                        # =>This Inner Loop Header: Depth=1
	movl	16(%r12), %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	movl	%ecx, 1068(%r12,%rcx,4)
	movl	16(%r12), %ecx
	leal	1(%rax,%rcx), %ecx
	movslq	%ecx, %rcx
	movl	%ecx, 1068(%r12,%rcx,4)
	movl	16(%r12), %ecx
	leal	2(%rax,%rcx), %ecx
	movslq	%ecx, %rcx
	movl	%ecx, 1068(%r12,%rcx,4)
	movl	16(%r12), %ecx
	leal	3(%rax,%rcx), %ecx
	movslq	%ecx, %rcx
	movl	%ecx, 1068(%r12,%rcx,4)
	addl	$4, %eax
	cmpl	%eax, %r13d
	jne	.LBB7_42
.LBB7_43:                               # %for.end.117
	movl	%r13d, 32(%r12)
	movl	$1, %eax
.LBB7_44:                               # %if.end.120
	movl	%eax, %r15d
	movq	80(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_51
# BB#45:                                # %for.cond.125.preheader
	movl	88(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB7_51
# BB#46:                                # %for.body.129.lr.ph
	leaq	14(%rbp), %rdx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB7_47:                               # %for.body.129
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax,%rsi,4)
	je	.LBB7_48
# BB#49:                                # %if.else.141
                                        #   in Loop: Header=BB7_47 Depth=1
	movl	$1, -10(%rdx)
	movw	4(%rax,%rsi,4), %di
	movw	%di, -6(%rdx)
	movw	8(%rax,%rsi,4), %di
	movw	%di, -4(%rdx)
	movw	12(%rax,%rsi,4), %di
	movw	%di, -2(%rdx)
	movw	16(%rax,%rsi,4), %di
	movw	%di, (%rdx)
	jmp	.LBB7_50
	.align	16, 0x90
.LBB7_48:                               # %if.then.135
                                        #   in Loop: Header=BB7_47 Depth=1
	movl	$0, -10(%rdx)
	movl	$0, (%rbp)
.LBB7_50:                               # %if.end.178
                                        #   in Loop: Header=BB7_47 Depth=1
	addq	$5, %rsi
	addq	$12, %rdx
	cmpl	%ecx, %esi
	jb	.LBB7_47
.LBB7_51:                               # %if.end.183
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_54
# BB#52:                                # %if.then.187
	movslq	104(%rsp), %rcx
	testq	%rcx, %rcx
	jle	.LBB7_53
# BB#60:                                # %for.body.192.lr.ph
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movq	%r12, %r14
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movl	$1, %ecx
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	callq	*1544(%r12)
	testl	%eax, %eax
	js	.LBB7_65
# BB#61:                                # %if.end.209.preheader
	xorl	%ebp, %ebp
	movl	$1, %ebx
	.align	16, 0x90
.LBB7_62:                               # %if.end.209
                                        # =>This Inner Loop Header: Depth=1
	movl	%r13d, %ecx
	movl	%eax, 1068(%r14,%rbp)
	movl	32(%r14), %r13d
	cmpl	%r13d, %ecx
	movl	$1, %eax
	cmovnel	%eax, %r15d
	cmpq	24(%rsp), %rbx          # 8-byte Folded Reload
	jge	.LBB7_63
# BB#64:                                # %if.end.209.for.body.192_crit_edge
                                        #   in Loop: Header=BB7_62 Depth=1
	movq	96(%rsp), %rax
	movq	16(%rax,%rbp,4), %rsi
	movl	24(%rax,%rbp,4), %edx
	movl	$1, %ecx
	movq	%r12, %rdi
	callq	*1544(%r12)
	addq	$4, %rbp
	incq	%rbx
	testl	%eax, %eax
	jns	.LBB7_62
.LBB7_65:                               # %if.then.205
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	(%rdi), %rax
	movl	$-15, %r14d
	movl	$.L.str.4, %esi
	jmp	.LBB7_66
.LBB7_53:
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	jmp	.LBB7_54
.LBB7_63:
	movq	%r14, %r12
	movl	12(%rsp), %ebx          # 4-byte Reload
.LBB7_54:                               # %if.end.224
	leaq	132(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB7_55
# BB#67:                                # %sw.bb.230
	movl	132(%rsp), %eax
	decl	%eax
	cmpl	$64, %eax
	jb	.LBB7_57
# BB#68:                                # %if.then.235
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	(%rdi), %rax
	movl	$-15, %r14d
	movl	$.L.str.9, %esi
	jmp	.LBB7_66
.LBB7_55:                               # %if.end.224
	cmpl	$1, %eax
	je	.LBB7_57
# BB#56:                                # %sw.default.226
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	(%rdi), %rcx
	movl	$.L.str.9, %esi
	movl	%eax, %edx
	callq	*56(%rcx)
.LBB7_57:                               # %sw.epilog.240
	leaq	128(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	param_read_int
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jne	.LBB7_58
# BB#69:                                # %sw.bb.246
	movl	128(%rsp), %eax
	cmpl	$-2, %eax
	jg	.LBB7_71
# BB#70:                                # %if.then.249
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	(%rdi), %rax
	movl	$-15, %r14d
	movl	$.L.str.6, %esi
.LBB7_66:                               # %cleanup.321
	movl	$-15, %edx
	callq	*56(%rax)
	jmp	.LBB7_92
.LBB7_58:                               # %sw.epilog.240
	cmpl	$1, %r14d
	je	.LBB7_73
# BB#59:                                # %sw.default.242
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	(%rdi), %rax
	movl	$.L.str.6, %esi
	movl	%r14d, %edx
	callq	*56(%rax)
	jmp	.LBB7_73
.LBB7_71:                               # %if.end.253
	cmpl	$59, %eax
	jl	.LBB7_73
# BB#72:                                # %if.then.256
	movl	$58, 128(%rsp)
.LBB7_73:                               # %sw.epilog.258
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 100(%rax)
	jne	.LBB7_75
# BB#74:                                # %if.then.261
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$1, 100(%rax)
.LBB7_75:                               # %if.end.264
	testl	%r15d, %r15d
	je	.LBB7_77
# BB#76:                                # %if.end.264.if.then.278_crit_edge
	movl	132(%rsp), %eax
	movq	24(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB7_81
.LBB7_77:                               # %lor.lhs.false.266
	movl	20(%r12), %ecx
	movl	132(%rsp), %eax
	cmpl	%eax, %ecx
	movq	24(%rsp), %rdx          # 8-byte Reload
	jne	.LBB7_81
# BB#78:                                # %lor.lhs.false.270
	cmpl	%edx, 1064(%r12)
	jne	.LBB7_79
# BB#80:                                # %lor.lhs.false.274
	movl	24(%r12), %eax
	cmpl	128(%rsp), %eax
	movl	%ecx, %eax
	je	.LBB7_92
	jmp	.LBB7_81
.LBB7_79:
	movl	%ecx, %eax
.LBB7_81:                               # %if.then.278
	movl	%r13d, 32(%r12)
	movl	%edx, 1064(%r12)
	movl	%eax, 20(%r12)
	movl	128(%rsp), %ecx
	movl	%ecx, 24(%r12)
	testl	%eax, %eax
	je	.LBB7_83
# BB#82:                                # %if.then.286
	movq	40(%rsp), %rsi          # 8-byte Reload
	movl	%eax, 96(%rsi)
.LBB7_83:                               # %if.end.288
	testl	%edx, %edx
	jne	.LBB7_87
# BB#84:                                # %cond.false
	testl	%ecx, %ecx
	js	.LBB7_86
# BB#85:                                # %cond.true.292
	addl	%ebx, %r13d
	addl	%ecx, %r13d
	movl	%r13d, %edx
	jmp	.LBB7_87
.LBB7_86:                               # %cond.false.295
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	96(%rax), %edx
.LBB7_87:                               # %cond.end.298
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	96(%rcx), %eax
	cmpl	%eax, %edx
	cmovgl	%eax, %edx
	movl	%edx, 100(%rcx)
	movq	%rcx, %rsi
	movslq	(%r12), %rax
	cmpq	$8, %rax
	jg	.LBB7_90
# BB#88:                                # %cond.end.298
	cmpl	$4, %edx
	jg	.LBB7_90
# BB#89:                                # %if.then.i.142
	decl	%edx
	movslq	%edx, %rcx
	movzbl	bpc_to_depth.depths-1(%rax,%rcx,8), %edx
	jmp	.LBB7_91
.LBB7_90:                               # %if.else.i
	imull	%eax, %edx
	addl	$7, %edx
	andl	$-8, %edx
.LBB7_91:                               # %bpc_to_depth.exit
	movw	%dx, 108(%rsi)
.LBB7_92:                               # %cleanup.321
	movl	%r14d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	devn_put_params, .Lfunc_end7-devn_put_params
	.cfi_endproc

	.globl	devn_free_params
	.align	16, 0x90
	.type	devn_free_params,@function
devn_free_params:                       # @devn_free_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp87:
	.cfi_def_cfa_offset 48
.Ltmp88:
	.cfi_offset %rbx, -40
.Ltmp89:
	.cfi_offset %r12, -32
.Ltmp90:
	.cfi_offset %r14, -24
.Ltmp91:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	callq	*1624(%r14)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB8_8
# BB#1:                                 # %for.cond.preheader
	cmpl	$0, 32(%r15)
	jle	.LBB8_4
# BB#2:                                 # %for.body.lr.ph
	leaq	48(%r15), %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB8_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdi
	movq	(%rbx), %rsi
	movl	$.L.str.10, %edx
	callq	*24(%rdi)
	movq	$0, (%rbx)
	incq	%r12
	movslq	32(%r15), %rax
	addq	$16, %rbx
	cmpq	%rax, %r12
	jl	.LBB8_3
.LBB8_4:                                # %for.end
	movq	1352(%r15), %rdi
	callq	free_compressed_color_list
	movq	$0, 1352(%r15)
	cmpl	$0, 1368(%r15)
	jle	.LBB8_7
# BB#5:                                 # %for.body.14.lr.ph
	movq	%r15, %rbx
	addq	$1384, %rbx             # imm = 0x568
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB8_6:                                # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdi
	movq	(%rbx), %rsi
	movl	$.L.str.10, %edx
	callq	*24(%rdi)
	movq	$0, (%rbx)
	incq	%r12
	movslq	1368(%r15), %rax
	addq	$16, %rbx
	cmpq	%rax, %r12
	jl	.LBB8_6
.LBB8_7:                                # %for.end.31
	movq	1360(%r15), %rdi
	callq	free_compressed_color_list
	movq	$0, 1360(%r15)
.LBB8_8:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	devn_free_params, .Lfunc_end8-devn_free_params
	.cfi_endproc

	.globl	free_compressed_color_list
	.align	16, 0x90
	.type	free_compressed_color_list,@function
free_compressed_color_list:             # @free_compressed_color_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp94:
	.cfi_def_cfa_offset 32
.Ltmp95:
	.cfi_offset %rbx, -24
.Ltmp96:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB9_5
# BB#1:                                 # %for.cond.preheader
	cmpl	$0, 12(%r14)
	jle	.LBB9_4
# BB#2:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB9_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14,%rbx,8), %rdi
	callq	free_compressed_color_list
	movq	$0, 24(%r14,%rbx,8)
	incq	%rbx
	movslq	12(%r14), %rax
	cmpq	%rax, %rbx
	jl	.LBB9_3
.LBB9_4:                                # %for.end
	movq	(%r14), %rax
	movq	(%rax), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.20, %edx
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB9_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	free_compressed_color_list, .Lfunc_end9-free_compressed_color_list
	.cfi_endproc

	.globl	devn_copy_params
	.align	16, 0x90
	.type	devn_copy_params,@function
devn_copy_params:                       # @devn_copy_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp103:
	.cfi_def_cfa_offset 80
.Ltmp104:
	.cfi_offset %rbx, -56
.Ltmp105:
	.cfi_offset %r12, -48
.Ltmp106:
	.cfi_offset %r13, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%r15, 16(%rsp)          # 8-byte Spill
	callq	*1624(%rdi)
	movq	%rax, %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%r15, %rdi
	callq	*1624(%r15)
	movq	%rax, %r12
	movl	(%rbx), %ecx
	movl	%ecx, (%r12)
	movl	20(%rbx), %ecx
	movl	%ecx, 20(%r12)
	movl	1064(%rbx), %ecx
	movl	%ecx, 1064(%r12)
	movl	16(%rbx), %ecx
	movl	%ecx, 16(%r12)
	movl	24(%rbx), %ecx
	movl	%ecx, 24(%r12)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%r12)
	movl	32(%rbx), %ecx
	movl	%ecx, 32(%r12)
	testl	%ecx, %ecx
	jle	.LBB10_3
# BB#1:                                 # %for.body.lr.ph
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	48(%rcx), %rbx
	leaq	48(%r12), %rbp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbx), %r13d
	movq	24(%r15), %rcx
	movq	(%rcx), %rdi
	movl	$.L.str.11, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rax, %r15
	movq	(%rbx), %rsi
	movslq	%r13d, %r13
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	memcpy
	movl	%r13d, -8(%rbp)
	movq	%r15, (%rbp)
	movq	16(%rsp), %r15          # 8-byte Reload
	incq	%r14
	movslq	32(%r12), %rcx
	addq	$16, %rbx
	addq	$16, %rbp
	cmpq	%rcx, %r14
	jl	.LBB10_2
.LBB10_3:                               # %for.end
	leaq	1068(%r12), %rdi
	movq	8(%rsp), %rbx           # 8-byte Reload
	leaq	1068(%rbx), %rsi
	movl	$280, %edx              # imm = 0x118
	callq	memcpy
	movq	1352(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB10_7
# BB#4:                                 # %if.then
	movq	(%rbx), %r14
	movq	(%r14), %rdi
	movl	$st_compressed_color_list, %esi
	movl	$.L.str.19, %edx
	callq	*72(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB10_6
# BB#5:                                 # %if.then.i
	xorl	%esi, %esi
	movl	$6168, %edx             # imm = 0x1818
	movq	%rbp, %rdi
	callq	memset
	movq	(%r14), %rax
	movq	%rax, (%rbp)
	movl	$7, 8(%rbp)
	movl	$256, 16(%rbp)          # imm = 0x100
.LBB10_6:                               # %alloc_compressed_color_list_elem.exit
	movl	16(%rbx), %eax
	movl	%eax, 16(%rbp)
	movl	12(%rbx), %eax
	movl	%eax, 12(%rbp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	copy_color_list
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movq	%rbp, 1352(%r12)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else
	movq	$0, 1352(%r12)
	movl	$0, 4(%rsp)             # 4-byte Folded Spill
.LBB10_8:                               # %if.end
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	1368(%rax), %eax
	movl	%eax, 1368(%r12)
	testl	%eax, %eax
	jle	.LBB10_11
# BB#9:                                 # %for.body.54.lr.ph
	movq	8(%rsp), %r15           # 8-byte Reload
	addq	$1384, %r15             # imm = 0x568
	movq	%r12, %r13
	addq	$1384, %r13             # imm = 0x568
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_10:                              # %for.body.54
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%r15), %ebx
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	movl	$.L.str.11, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %r14
	movq	(%r15), %rsi
	movslq	%ebx, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movl	%ebx, -8(%r13)
	movq	%r14, (%r13)
	incq	%rbp
	movslq	1368(%r12), %rax
	addq	$16, %r15
	addq	$16, %r13
	cmpq	%rax, %rbp
	jl	.LBB10_10
.LBB10_11:                              # %for.end.88
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	1360(%rax), %r14
	testq	%r14, %r14
	je	.LBB10_15
# BB#12:                                # %if.then.91
	movq	(%r14), %rbx
	movq	(%rbx), %rdi
	movl	$st_compressed_color_list, %esi
	movl	$.L.str.19, %edx
	callq	*72(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB10_14
# BB#13:                                # %if.then.i.91
	xorl	%esi, %esi
	movl	$6168, %edx             # imm = 0x1818
	movq	%rbp, %rdi
	callq	memset
	movq	(%rbx), %rax
	movq	%rax, (%rbp)
	movl	$7, 8(%rbp)
	movl	$256, 16(%rbp)          # imm = 0x100
.LBB10_14:                              # %alloc_compressed_color_list_elem.exit92
	movl	16(%r14), %eax
	movl	%eax, 16(%rbp)
	movl	12(%r14), %eax
	movl	%eax, 12(%rbp)
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	copy_color_list
	movq	%rbp, 1360(%r12)
	jmp	.LBB10_16
.LBB10_15:                              # %if.end.103
	movq	$0, 1360(%r12)
	movl	4(%rsp), %eax           # 4-byte Reload
.LBB10_16:                              # %if.end.103
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	devn_copy_params, .Lfunc_end10-devn_copy_params
	.cfi_endproc

	.globl	alloc_compressed_color_list_elem
	.align	16, 0x90
	.type	alloc_compressed_color_list_elem,@function
alloc_compressed_color_list_elem:       # @alloc_compressed_color_list_elem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 32
.Ltmp113:
	.cfi_offset %rbx, -32
.Ltmp114:
	.cfi_offset %r14, -24
.Ltmp115:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movl	$st_compressed_color_list, %esi
	movl	$.L.str.19, %edx
	callq	*72(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB11_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movl	$6168, %edx             # imm = 0x1818
	movq	%rbp, %rdi
	callq	memset
	movq	(%rbx), %rax
	movq	%rax, (%rbp)
	movl	%r14d, 8(%rbp)
	movl	$256, 16(%rbp)          # imm = 0x100
.LBB11_2:                               # %if.end
	movq	%rbp, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	alloc_compressed_color_list_elem, .Lfunc_end11-alloc_compressed_color_list_elem
	.cfi_endproc

	.align	16, 0x90
	.type	copy_color_list,@function
copy_color_list:                        # @copy_color_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp119:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp120:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp122:
	.cfi_def_cfa_offset 64
.Ltmp123:
	.cfi_offset %rbx, -56
.Ltmp124:
	.cfi_offset %r12, -48
.Ltmp125:
	.cfi_offset %r13, -40
.Ltmp126:
	.cfi_offset %r14, -32
.Ltmp127:
	.cfi_offset %r15, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movslq	12(%r15), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	testq	%rax, %rax
	jle	.LBB12_5
# BB#1:                                 # %for.body.lr.ph
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB12_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r13
	movl	8(%r14), %ebp
	movq	(%r13), %rdi
	movl	$st_compressed_color_list, %esi
	movl	$.L.str.19, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB12_4
# BB#3:                                 # %alloc_compressed_color_list_elem.exit.thread
                                        #   in Loop: Header=BB12_2 Depth=1
	decl	%ebp
	xorl	%esi, %esi
	movl	$6168, %edx             # imm = 0x1818
	movq	%rbx, %rdi
	callq	memset
	movq	(%r13), %rax
	movq	%rax, (%rbx)
	movl	%ebp, 8(%rbx)
	movl	$256, 16(%rbx)          # imm = 0x100
	movq	%rbx, 24(%r14,%r12,8)
	movq	24(%r15,%r12,8), %rdi
	movl	16(%rdi), %eax
	movl	%eax, 16(%rbx)
	movl	12(%rdi), %eax
	movl	%eax, 12(%rbx)
	movq	%rbx, %rsi
	callq	copy_color_list
	incq	%r12
	cmpq	(%rsp), %r12            # 8-byte Folded Reload
	jl	.LBB12_2
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	addq	$24, %r14
	addq	$24, %r15
	movl	$6144, %edx             # imm = 0x1800
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
.LBB12_6:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_4:                               # %alloc_compressed_color_list_elem.exit
	shlq	$32, %r12
	sarq	$29, %r12
	movq	$0, 24(%r14,%r12)
	movl	$.L__func__.copy_color_list, %edi
	movl	$.L.str.12, %esi
	movl	$612, %edx              # imm = 0x264
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.31, %r9d
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end12:
	.size	copy_color_list, .Lfunc_end12-copy_color_list
	.cfi_endproc

	.globl	devn_printer_put_params
	.align	16, 0x90
	.type	devn_printer_put_params,@function
devn_printer_put_params:                # @devn_printer_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp131:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp132:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp133:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 56
	subq	$3896, %rsp             # imm = 0xF38
.Ltmp135:
	.cfi_def_cfa_offset 3952
.Ltmp136:
	.cfi_offset %rbx, -56
.Ltmp137:
	.cfi_offset %r12, -48
.Ltmp138:
	.cfi_offset %r13, -40
.Ltmp139:
	.cfi_offset %r14, -32
.Ltmp140:
	.cfi_offset %r15, -24
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	96(%r12), %rbx
	leaq	3176(%rsp), %rdi
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbx, %rsi
	callq	memcpy
	leaq	776(%rsp), %rdi
	movl	$2400, %edx             # imm = 0x960
	movq	%r14, %rsi
	callq	memcpy
	testq	%r13, %r13
	je	.LBB13_2
# BB#1:                                 # %if.then
	leaq	(%rsp), %rdi
	movl	$772, %edx              # imm = 0x304
	movq	%r13, %rsi
	callq	memcpy
.LBB13_2:                               # %if.end
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%r13, %rcx
	callq	devn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_4
# BB#3:                                 # %if.end.4
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_4
# BB#6:                                 # %if.end.11
	leaq	3176(%rsp), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB13_17
# BB#7:                                 # %lor.lhs.false
	leaq	776(%rsp), %rsi
	movl	$2400, %edx             # imm = 0x960
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB13_17
# BB#8:                                 # %lor.lhs.false.16
	testq	%r13, %r13
	je	.LBB13_18
# BB#9:                                 # %land.lhs.true
	movl	(%r13), %eax
	cmpl	(%rsp), %eax
	jne	.LBB13_17
# BB#10:                                # %for.body.i.preheader
	leaq	14(%rsp), %rax
	addq	$14, %r13
	xorl	%ecx, %ecx
.LBB13_12:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-10(%r13), %edx
	cmpl	-10(%rax), %edx
	jne	.LBB13_17
# BB#13:                                # %if.end.9.i
                                        #   in Loop: Header=BB13_12 Depth=1
	movzwl	-6(%rax), %edx
	movzwl	-6(%r13), %esi
	cmpl	%edx, %esi
	jne	.LBB13_17
# BB#14:                                # %if.end.21.i
                                        #   in Loop: Header=BB13_12 Depth=1
	movzwl	-4(%rax), %edx
	movzwl	-4(%r13), %esi
	cmpl	%edx, %esi
	jne	.LBB13_17
# BB#15:                                # %if.end.34.i
                                        #   in Loop: Header=BB13_12 Depth=1
	movzwl	-2(%rax), %edx
	movzwl	-2(%r13), %esi
	cmpl	%edx, %esi
	jne	.LBB13_17
# BB#16:                                # %if.end.47.i
                                        #   in Loop: Header=BB13_12 Depth=1
	movzwl	(%rax), %edx
	movzwl	(%r13), %esi
	cmpl	%edx, %esi
	jne	.LBB13_17
# BB#11:                                # %for.cond.i
                                        #   in Loop: Header=BB13_12 Depth=1
	incq	%rcx
	addq	$12, %rax
	addq	$12, %r13
	cmpq	$63, %rcx
	jle	.LBB13_12
	jmp	.LBB13_18
.LBB13_4:                               # %if.then.6
	leaq	3176(%rsp), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbx, %rdi
	callq	memcpy
	leaq	776(%rsp), %rsi
	movl	$2400, %edx             # imm = 0x960
	movq	%r14, %rdi
	callq	memcpy
	testq	%r13, %r13
	je	.LBB13_19
# BB#5:                                 # %if.then.9
	leaq	(%rsp), %rsi
	movl	$772, %edx              # imm = 0x304
	movq	%r13, %rdi
	callq	memcpy
	jmp	.LBB13_19
.LBB13_17:                              # %if.then.20
	movq	%r12, %rdi
	callq	gs_closedevice
	movq	%r12, %rdi
	callq	set_linear_color_bits_mask_shift
.LBB13_18:                              # %if.end.22
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	pdf14_put_devn_params
	movl	%eax, %ebp
.LBB13_19:                              # %cleanup
	movl	%ebp, %eax
	addq	$3896, %rsp             # imm = 0xF38
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	devn_printer_put_params, .Lfunc_end13-devn_printer_put_params
	.cfi_endproc

	.globl	print_compressed_color_list
	.align	16, 0x90
	.type	print_compressed_color_list,@function
print_compressed_color_list:            # @print_compressed_color_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp143:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp145:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp146:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp148:
	.cfi_def_cfa_offset 96
.Ltmp149:
	.cfi_offset %rbx, -56
.Ltmp150:
	.cfi_offset %r12, -48
.Ltmp151:
	.cfi_offset %r13, -40
.Ltmp152:
	.cfi_offset %r14, -32
.Ltmp153:
	.cfi_offset %r15, -24
.Ltmp154:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %r15
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	testq	%r15, %r15
	je	.LBB14_22
# BB#1:                                 # %if.end
	movl	8(%r15), %eax
	movl	$7, %ecx
	cmpl	%eax, %ecx
	jle	.LBB14_4
# BB#2:                                 # %for.body.preheader
	movl	$8, %ebx
	subl	%eax, %ebx
	.align	16, 0x90
.LBB14_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.12, %esi
	movl	$865, %edx              # imm = 0x361
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	errprintf
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB14_3
.LBB14_4:                               # %for.end
	movl	$.L.str.12, %esi
	movl	$866, %edx              # imm = 0x362
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	movl	8(%r15), %edx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	errprintf
	cmpl	$255, 16(%r15)
	jg	.LBB14_19
# BB#5:                                 # %for.body.6.lr.ph
	leal	-1(%r12), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$255, %ebp
	.align	16, 0x90
.LBB14_6:                               # %for.body.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_8 Depth 2
                                        #     Child Loop BB14_11 Depth 2
                                        #     Child Loop BB14_16 Depth 2
	movl	8(%r15), %eax
	movl	$7, %ecx
	cmpl	%eax, %ecx
	jle	.LBB14_9
# BB#7:                                 # %for.body.11.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	$8, %ebx
	subl	%eax, %ebx
	.align	16, 0x90
.LBB14_8:                               # %for.body.11
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.12, %esi
	movl	$874, %edx              # imm = 0x36A
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	errprintf
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB14_8
.LBB14_9:                               # %for.end.15
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	$.L.str.12, %esi
	movl	$877, %edx              # imm = 0x36D
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	leaq	(%rbp,%rbp,2), %r14
	movswl	24(%r15,%r14,8), %ecx
	movswl	26(%r15,%r14,8), %r8d
	movl	28(%r15,%r14,8), %r9d
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	errprintf
	testl	%r12d, %r12d
	jle	.LBB14_23
# BB#10:                                # %for.body.23.lr.ph
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	leaq	32(%rbp,%r14,8), %r15
	movq	16(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB14_11:                              # %for.body.23
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rbp
	movb	%bl, %cl
	shrq	%cl, %rbp
	andl	$1, %ebp
	movl	$.L.str.12, %esi
	movl	$880, %edx              # imm = 0x370
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	errprintf
	testb	$7, %bl
	jne	.LBB14_13
# BB#12:                                # %if.then.29
                                        #   in Loop: Header=BB14_11 Depth=2
	movl	$.L.str.12, %esi
	movl	$882, %edx              # imm = 0x372
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	errprintf
.LBB14_13:                              # %for.inc.32
                                        #   in Loop: Header=BB14_11 Depth=2
	decq	%rbx
	decl	%r12d
	jg	.LBB14_11
# BB#14:                                # %for.end.34
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	$.L.str.12, %esi
	movl	$884, %edx              # imm = 0x374
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	errprintf
	movq	8(%rsp), %r12           # 8-byte Reload
	testl	%r12d, %r12d
	jle	.LBB14_24
# BB#15:                                # %for.body.40.lr.ph
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	40(%rax,%r14,8), %r14
	movl	%r12d, %r15d
	movq	16(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB14_16:                              # %for.body.40
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r14), %rbp
	movb	%bl, %cl
	shrq	%cl, %rbp
	andl	$1, %ebp
	movl	$.L.str.12, %esi
	movl	$887, %edx              # imm = 0x377
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	errprintf
	testb	$7, %bl
	jne	.LBB14_18
# BB#17:                                # %if.then.49
                                        #   in Loop: Header=BB14_16 Depth=2
	movl	$.L.str.12, %esi
	movl	$889, %edx              # imm = 0x379
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	errprintf
.LBB14_18:                              # %for.inc.52
                                        #   in Loop: Header=BB14_16 Depth=2
	decq	%rbx
	decl	%r15d
	jg	.LBB14_16
	jmp	.LBB14_24
	.align	16, 0x90
.LBB14_23:                              # %for.end.54.critedge
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	$.L.str.12, %esi
	movl	$884, %edx              # imm = 0x374
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	errprintf
.LBB14_24:                              # %for.end.54
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	$.L.str.12, %esi
	movl	$891, %edx              # imm = 0x37B
	movq	%r13, %rdi
	callq	dmprintf_file_and_line
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	errprintf
	movq	24(%rsp), %r15          # 8-byte Reload
	movslq	16(%r15), %rax
	movq	32(%rsp), %rbp          # 8-byte Reload
	cmpq	%rax, %rbp
	leaq	-1(%rbp), %rbp
	jg	.LBB14_6
.LBB14_19:                              # %for.cond.59.preheader
	cmpl	$0, 12(%r15)
	jle	.LBB14_22
# BB#20:                                # %for.body.62.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB14_21:                              # %for.body.62
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r15,%rbx,8), %rsi
	movq	%r13, %rdi
	movl	%r12d, %edx
	callq	print_compressed_color_list
	incq	%rbx
	movslq	12(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB14_21
.LBB14_22:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	print_compressed_color_list, .Lfunc_end14-print_compressed_color_list
	.cfi_endproc

	.globl	free_separation_names
	.align	16, 0x90
	.type	free_separation_names,@function
free_separation_names:                  # @free_separation_names
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp157:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp158:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp159:
	.cfi_def_cfa_offset 48
.Ltmp160:
	.cfi_offset %rbx, -40
.Ltmp161:
	.cfi_offset %r12, -32
.Ltmp162:
	.cfi_offset %r14, -24
.Ltmp163:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpl	$0, (%r15)
	jle	.LBB15_3
# BB#1:                                 # %for.body.lr.ph
	leaq	16(%r15), %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB15_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	(%rbx), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	movq	$0, (%rbx)
	movl	$0, -8(%rbx)
	incq	%r12
	movslq	(%r15), %rax
	addq	$16, %rbx
	cmpq	%rax, %r12
	jl	.LBB15_2
.LBB15_3:                               # %for.end
	movl	$0, (%r15)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	free_separation_names, .Lfunc_end15-free_separation_names
	.cfi_endproc

	.globl	devn_encode_compressed_color
	.align	16, 0x90
	.type	devn_encode_compressed_color,@function
devn_encode_compressed_color:           # @devn_encode_compressed_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp165:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp166:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp167:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp168:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 56
	subq	$600, %rsp              # imm = 0x258
.Ltmp170:
	.cfi_def_cfa_offset 656
.Ltmp171:
	.cfi_offset %rbx, -56
.Ltmp172:
	.cfi_offset %r12, -48
.Ltmp173:
	.cfi_offset %r13, -40
.Ltmp174:
	.cfi_offset %r14, -32
.Ltmp175:
	.cfi_offset %r15, -24
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r8
	movabsq	$4294967296, %r10       # imm = 0x100000000
	movl	100(%rdi), %edx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 560(%rsp)
	movq	$0, 576(%rsp)
	xorl	%r15d, %r15d
	testl	%edx, %edx
	movl	$0, %r13d
	movl	$0, %r14d
	jle	.LBB16_6
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB16_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	sarq	$31, %rax
	movzwl	(%r8,%rax), %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB16_5
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	$1, %ebp
	shlq	%cl, %rbp
	orq	%rbp, %rsi
	movq	%rsi, 568(%rsp)
	incl	%r13d
	movzwl	%ax, %eax
	cmpl	$65281, %eax            # imm = 0xFF01
	jb	.LBB16_5
# BB#4:                                 # %if.then.8
                                        #   in Loop: Header=BB16_2 Depth=1
	orq	%rbp, %r9
	movq	%r9, 576(%rsp)
	incl	%r14d
.LBB16_5:                               # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=1
	incq	%rcx
	addq	%r10, %rbx
	cmpl	%ecx, %edx
	jne	.LBB16_2
.LBB16_6:                               # %for.end
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movw	%r13w, 560(%rsp)
	movl	%r13d, %ebx
	subl	%r14d, %ebx
	movw	%bx, 562(%rsp)
	movswl	%bx, %eax
	cmpl	$8, %eax
	jl	.LBB16_7
# BB#8:                                 # %for.end
	movq	%r8, %rbp
	movl	%r13d, %eax
	shrl	$31, %eax
	leal	(%rax,%r13), %eax
	sarl	%eax
	cmpl	%eax, %r14d
	jge	.LBB16_9
# BB#10:                                # %if.then.25
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leaq	32(%rsp), %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$512, %edx              # imm = 0x200
	callq	memset
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB16_11
# BB#12:
	movq	%rbp, %r8
	movq	%r8, %rcx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB16_13:                              # %for.body.29
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edx
	shrl	$8, %edx
	movzwl	32(%rsp,%rdx,2), %esi
	incl	%esi
	movw	%si, 32(%rsp,%rdx,2)
	movswl	%si, %esi
	cmpl	%r12d, %esi
	cmovgl	%edx, %r15d
	cmovgel	%esi, %r12d
	addq	$2, %rcx
	decl	%eax
	jne	.LBB16_13
	jmp	.LBB16_14
.LBB16_7:
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	jmp	.LBB16_22
.LBB16_9:
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rbp, %r8
	jmp	.LBB16_22
.LBB16_11:
	xorl	%r15d, %r15d
	movq	%rbp, %r8
.LBB16_14:                              # %for.end.49
	incl	%r14d
	cmpl	%r14d, %r12d
	jle	.LBB16_22
# BB#15:                                # %land.lhs.true.52
	subl	%r12d, %r13d
	cmpl	$13, %r13d
	jg	.LBB16_22
# BB#16:                                # %if.then.56
	leaq	576(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	movq	%r8, %rbp
	callq	memset
	movq	%rbp, %r8
	movq	24(%rsp), %rsi          # 8-byte Reload
	testl	%esi, %esi
	movabsq	$4294967296, %rbx       # imm = 0x100000000
	jle	.LBB16_21
# BB#17:                                # %for.body.61.preheader
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB16_18:                              # %for.body.61
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	sarq	$31, %rdx
	movzbl	1(%r8,%rdx), %edx
	cmpl	%r15d, %edx
	jne	.LBB16_20
# BB#19:                                # %if.then.68
                                        #   in Loop: Header=BB16_18 Depth=1
	movl	$1, %edx
	shlq	%cl, %rdx
	orq	%rdx, 576(%rsp)
.LBB16_20:                              # %for.inc.74
                                        #   in Loop: Header=BB16_18 Depth=1
	incq	%rcx
	addq	%rbx, %rax
	cmpl	%ecx, %esi
	jne	.LBB16_18
.LBB16_21:                              # %for.end.76
	movl	$1, 564(%rsp)
	incl	%r13d
	movw	%r13w, 562(%rsp)
	movw	%r13w, %bx
.LBB16_22:                              # %if.end.82
	movswl	%bx, %eax
	movq	$-2, %r12
	cmpl	$14, %eax
	jg	.LBB16_41
# BB#23:                                # %if.end.88
	movq	%r8, %rbp
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	1352(%rax), %rbx
	testq	%rbx, %rbx
	jne	.LBB16_26
# BB#24:                                # %if.then.91
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	24(%rax), %rax
	movq	(%rax), %r14
	movq	(%r14), %rdi
	movl	$st_compressed_color_list, %esi
	movl	$.L.str.19, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB16_42
# BB#25:                                # %init_compressed_color_list.exit.thread
	xorl	%esi, %esi
	movl	$6168, %edx             # imm = 0x1818
	movq	%rbx, %rdi
	callq	memset
	movq	(%r14), %rax
	movq	%rax, (%rbx)
	movl	$7, 8(%rbx)
	movl	$256, 16(%rbx)          # imm = 0x100
	leaq	32(%rsp), %r14
	xorl	%esi, %esi
	movl	$24, %edx
	movq	%r14, %rdi
	callq	memset
	orb	$127, 40(%rsp)
	movl	$458759, 32(%rsp)       # imm = 0x70007
	leaq	592(%rsp), %r13
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	add_compressed_color_list
	xorl	%esi, %esi
	movl	$24, %edx
	movq	%r14, %rdi
	callq	memset
	orq	$2032, 40(%rsp)         # imm = 0x7F0
	movl	$458759, 32(%rsp)       # imm = 0x70007
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	add_compressed_color_list
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbx, 1352(%rax)
.LBB16_26:                              # %if.end.99
	leaq	560(%rsp), %rsi
	leaq	544(%rsp), %rdx
	leaq	552(%rsp), %rcx
	movq	%rbx, %rdi
	callq	search_compressed_color_list
	testl	%eax, %eax
	je	.LBB16_28
# BB#27:                                # %if.end.99.if.end.110_crit_edge
	movq	552(%rsp), %r14
	jmp	.LBB16_30
.LBB16_28:                              # %if.then.102
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	1352(%rax), %rsi
	leaq	560(%rsp), %r14
	leaq	544(%rsp), %rdx
	movq	%r14, %rdi
	callq	add_compressed_color_list
	testl	%eax, %eax
	je	.LBB16_41
# BB#29:                                # %if.end.109
	movq	%r14, 552(%rsp)
.LBB16_30:                              # %if.end.110
	movq	%rbp, %r10
	movq	24(%rsp), %rbx          # 8-byte Reload
	movswq	2(%r14), %rax
	movl	num_comp_bits(,%rax,4), %r11d
	xorl	%edx, %edx
	cmpl	$0, 4(%r14)
	movl	$0, %r12d
	je	.LBB16_32
# BB#31:                                # %if.then.116
	movl	$8, %ecx
	subl	%r11d, %ecx
	sarl	%cl, %r15d
	movslq	%r15d, %r12
	movl	%r11d, %edx
.LBB16_32:                              # %do.body
	movl	$1, %r8d
	movl	$1, %eax
	movb	%r11b, %cl
	shll	%cl, %eax
	decl	%eax
	movl	$16, %ecx
	subl	%r11d, %ecx
	shll	%cl, %eax
	movl	$31, %ecx
	subl	%r11d, %ecx
	shll	%cl, %r8d
	testl	%ebx, %ebx
	jle	.LBB16_38
# BB#33:                                # %for.body.136.lr.ph
	incl	%eax
	movl	$32, %r9d
	subl	%r11d, %r9d
	movq	8(%r14), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB16_34:                              # %for.body.136
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %ebp
	movb	%dil, %cl
	shlq	%cl, %rbp
	btq	%rdi, %rsi
	jae	.LBB16_37
# BB#35:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB16_34 Depth=1
	testq	16(%r14), %rbp
	jne	.LBB16_37
# BB#36:                                # %if.then.149
                                        #   in Loop: Header=BB16_34 Depth=1
	movzwl	(%r10,%rdi,2), %ebp
	imull	%eax, %ebp
	addl	%r8d, %ebp
	movb	%r9b, %cl
	shrl	%cl, %ebp
	movb	%dl, %cl
	shlq	%cl, %rbp
	orq	%rbp, %r12
	addl	%r11d, %edx
.LBB16_37:                              # %for.inc.161
                                        #   in Loop: Header=BB16_34 Depth=1
	incq	%rdi
	cmpl	%edi, %ebx
	jne	.LBB16_34
.LBB16_38:                              # %for.end.163
	orq	544(%rsp), %r12
	cmpq	$-1, %r12
	je	.LBB16_40
# BB#39:                                # %for.end.163
	cmpq	$-2, %r12
	jne	.LBB16_41
.LBB16_40:                              # %if.then.171
	movq	$-3, %r12
	jmp	.LBB16_41
.LBB16_42:                              # %init_compressed_color_list.exit
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	$0, 1352(%rax)
.LBB16_41:                              # %cleanup
	movq	%r12, %rax
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	devn_encode_compressed_color, .Lfunc_end16-devn_encode_compressed_color
	.cfi_endproc

	.align	16, 0x90
	.type	search_compressed_color_list,@function
search_compressed_color_list:           # @search_compressed_color_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp177:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp178:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp179:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp180:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp181:
	.cfi_def_cfa_offset 48
.Ltmp182:
	.cfi_offset %rbx, -48
.Ltmp183:
	.cfi_offset %r12, -40
.Ltmp184:
	.cfi_offset %r13, -32
.Ltmp185:
	.cfi_offset %r14, -24
.Ltmp186:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r12
	movslq	16(%r12), %rcx
	cmpq	$255, %rcx
	jg	.LBB17_9
# BB#1:                                 # %for.body.lr.ph
	movl	4(%r13), %edx
	leaq	6160(%r12), %rsi
	movl	$256, %eax              # imm = 0x100
	.align	16, 0x90
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	decq	%rax
	cmpl	-12(%rsi), %edx
	jne	.LBB17_7
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	8(%r13), %rdi
	movq	-8(%rsi), %rbx
	andq	%rdi, %rbx
	cmpq	%rdi, %rbx
	jne	.LBB17_7
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	(%rsi), %rdi
	movq	16(%r13), %rbx
	andq	%rdi, %rbx
	cmpq	%rdi, %rbx
	je	.LBB17_5
.LBB17_7:                               # %for.inc
                                        #   in Loop: Header=BB17_2 Depth=1
	addq	$-24, %rsi
	cmpq	%rcx, %rax
	jg	.LBB17_2
# BB#8:                                 # %for.cond.for.end.loopexit_crit_edge
	leaq	(%rax,%rax,2), %rax
	leaq	24(%r12,%rax,8), %rax
	movq	%rax, (%r15)
.LBB17_9:                               # %for.end
	movswl	2(%r13), %ecx
	xorl	%eax, %eax
	cmpl	%ecx, 8(%r12)
	jle	.LBB17_16
# BB#10:                                # %for.cond.26.preheader
	cmpl	$0, 12(%r12)
	jle	.LBB17_16
# BB#11:                                # %for.body.29.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB17_13:                              # %for.body.29
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r12,%rbx,8), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	search_compressed_color_list
	testl	%eax, %eax
	jne	.LBB17_14
# BB#12:                                # %for.cond.26
                                        #   in Loop: Header=BB17_13 Depth=1
	incq	%rbx
	movslq	12(%r12), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rbx
	jl	.LBB17_13
	jmp	.LBB17_16
.LBB17_14:                              # %if.then.33
	movq	(%r14), %rax
	shldq	$56, %rax, %rbx
	movq	%rbx, (%r14)
	jmp	.LBB17_15
.LBB17_5:                               # %if.then.10
	leaq	(%rax,%rax,2), %rcx
	leaq	24(%r12,%rcx,8), %rdx
	movq	%rdx, (%r15)
	movswq	(%r13), %rdx
	movl	num_comp_bits(,%rdx,4), %edx
	movswq	24(%r12,%rcx,8), %rcx
	cmpl	num_comp_bits(,%rcx,4), %edx
	jg	.LBB17_9
# BB#6:                                 # %if.end.19
	shlq	$56, %rax
	movq	%rax, (%r14)
.LBB17_15:                              # %cleanup
	movl	$1, %eax
.LBB17_16:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	search_compressed_color_list, .Lfunc_end17-search_compressed_color_list
	.cfi_endproc

	.align	16, 0x90
	.type	add_compressed_color_list,@function
add_compressed_color_list:              # @add_compressed_color_list
	.cfi_startproc
# BB#0:                                 # %entry
	movswl	(%rdi), %r8d
	movswl	2(%rdi), %r9d
	cmpl	$5, %r9d
	setl	%al
	cmpl	$4, %r9d
	jg	.LBB18_7
# BB#1:                                 # %entry
	movl	%r8d, %r10d
	subl	%r9d, %r10d
	testl	%r10d, %r10d
	jle	.LBB18_7
# BB#2:                                 # %while.body.lr.ph
	movq	16(%rdi), %r11
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB18_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	shlq	%cl, %rax
	btq	%rcx, %r11
	jae	.LBB18_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB18_3 Depth=1
	notq	%rax
	andq	%rax, %r11
	movq	%r11, 16(%rdi)
	decl	%r10d
	incl	%r9d
.LBB18_5:                               # %if.end
                                        #   in Loop: Header=BB18_3 Depth=1
	cmpl	$5, %r9d
	setl	%al
	cmpl	$4, %r9d
	jg	.LBB18_7
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB18_3 Depth=1
	incq	%rcx
	testl	%r10d, %r10d
	jg	.LBB18_3
.LBB18_7:                               # %while.end
	testb	%al, %al
	je	.LBB18_13
# BB#8:                                 # %while.end
	movswl	%r8w, %eax
	cmpl	$4, %eax
	jg	.LBB18_13
# BB#9:                                 # %for.body.lr.ph
	movq	8(%rdi), %r10
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB18_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	shlq	%cl, %rax
	btq	%rcx, %r10
	jb	.LBB18_12
# BB#11:                                # %if.then.22
                                        #   in Loop: Header=BB18_10 Depth=1
	orq	%rax, %r10
	movq	%r10, 8(%rdi)
	incl	%r9d
	incl	%r8d
.LBB18_12:                              # %for.inc
                                        #   in Loop: Header=BB18_10 Depth=1
	incq	%rcx
	cmpl	$5, %r8d
	jl	.LBB18_10
.LBB18_13:                              # %if.end.30
	movw	%r8w, (%rdi)
	movw	%r9w, 2(%rdi)
	jmp	sub_level_add_compressed_color_list # TAILCALL
.Lfunc_end18:
	.size	add_compressed_color_list, .Lfunc_end18-add_compressed_color_list
	.cfi_endproc

	.globl	find_bit_map
	.align	16, 0x90
	.type	find_bit_map,@function
find_bit_map:                           # @find_bit_map
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	shrq	$56, %rax
	cmpl	12(%rsi), %eax
	jge	.LBB19_2
	.align	16, 0x90
.LBB19_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi,%rax,8), %rsi
	movq	%rdi, %rcx
	shlq	$8, %rcx
	shrq	$48, %rdi
	movzbl	%dil, %eax
	cmpl	12(%rsi), %eax
	movq	%rcx, %rdi
	jl	.LBB19_1
.LBB19_2:                               # %while.end
	leaq	(%rax,%rax,2), %rax
	leaq	24(%rsi,%rax,8), %rax
	retq
.Lfunc_end19:
	.size	find_bit_map, .Lfunc_end19-find_bit_map
	.cfi_endproc

	.globl	devn_decode_compressed_color
	.align	16, 0x90
	.type	devn_decode_compressed_color,@function
devn_decode_compressed_color:           # @devn_decode_compressed_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp187:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp188:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp189:
	.cfi_def_cfa_offset 32
.Ltmp190:
	.cfi_offset %rbx, -32
.Ltmp191:
	.cfi_offset %r14, -24
.Ltmp192:
	.cfi_offset %r15, -16
	movl	100(%rdi), %r15d
	cmpq	$-2, %rsi
	jne	.LBB20_13
# BB#1:                                 # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB20_26
# BB#2:                                 # %for.body.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%r15), %ecx
	incq	%rcx
	xorl	%eax, %eax
	movq	%rcx, %rsi
	andq	%r8, %rsi
	je	.LBB20_10
# BB#3:                                 # %vector.body.preheader
	leal	-1(%r15), %edi
	incq	%rdi
	andq	%r8, %rdi
	addq	$-16, %rdi
	movl	%edi, %eax
	shrl	$4, %eax
	incl	%eax
	xorl	%ebx, %ebx
	testb	$3, %al
	je	.LBB20_6
# BB#4:                                 # %vector.body.prol.preheader
	movl	%r15d, %eax
	andl	$48, %eax
	addl	$-16, %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%ebx, %ebx
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB20_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rdx,%rbx,2)
	movdqu	%xmm0, 16(%rdx,%rbx,2)
	addq	$16, %rbx
	incq	%rax
	jne	.LBB20_5
.LBB20_6:                               # %vector.body.preheader.split
	cmpq	$48, %rdi
	jb	.LBB20_9
# BB#7:                                 # %vector.body.preheader.split.split
	leal	-1(%r15), %eax
	incq	%rax
	andq	%r8, %rax
	subq	%rbx, %rax
	leaq	112(%rdx,%rbx,2), %rdi
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB20_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rdi)
	movdqu	%xmm0, -96(%rdi)
	movdqu	%xmm0, -80(%rdi)
	movdqu	%xmm0, -64(%rdi)
	movdqu	%xmm0, -48(%rdi)
	movdqu	%xmm0, -32(%rdi)
	movdqu	%xmm0, -16(%rdi)
	movdqu	%xmm0, (%rdi)
	subq	$-128, %rdi
	addq	$-64, %rax
	jne	.LBB20_8
.LBB20_9:
	movq	%rsi, %rax
.LBB20_10:                              # %middle.block
	cmpq	%rax, %rcx
	je	.LBB20_26
# BB#11:                                # %for.body.preheader53
	leaq	(%rdx,%rax,2), %rcx
	subl	%eax, %r15d
	.align	16, 0x90
.LBB20_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$-1, (%rcx)
	addq	$2, %rcx
	decl	%r15d
	jne	.LBB20_12
	jmp	.LBB20_26
.LBB20_13:                              # %if.end
	movq	1352(%rcx), %rdi
	movq	%rsi, %rax
	shrq	$56, %rax
	cmpl	12(%rdi), %eax
	jge	.LBB20_16
# BB#14:
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB20_15:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rdi,%rax,8), %rdi
	movq	%rcx, %rbx
	shlq	$8, %rbx
	shrq	$48, %rcx
	movzbl	%cl, %eax
	cmpl	12(%rdi), %eax
	movq	%rbx, %rcx
	jl	.LBB20_15
.LBB20_16:                              # %find_bit_map.exit
	leaq	(%rax,%rax,2), %r14
	movswq	26(%rdi,%r14,8), %rax
	movl	num_comp_bits(,%rax,4), %r8d
	movl	$1, %r9d
	movb	%r8b, %cl
	shll	%cl, %r9d
	decl	%r9d
	movl	comp_bit_factor(,%rax,4), %r10d
	movw	$-1, %r11w
	cmpl	$0, 28(%rdi,%r14,8)
	je	.LBB20_18
# BB#17:                                # %if.then.7
	movl	%r9d, %r11d
	andl	%esi, %r11d
	imull	%r10d, %r11d
	shrl	$8, %r11d
	movb	%r8b, %cl
	shrq	%cl, %rsi
.LBB20_18:                              # %for.cond.11.preheader
	testl	%r15d, %r15d
	jle	.LBB20_26
# BB#19:                                # %for.body.14.lr.ph
	movq	32(%rdi,%r14,8), %rbx
	leaq	40(%rdi,%r14,8), %r14
	xorl	%edi, %edi
	.align	16, 0x90
.LBB20_20:                              # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movb	%dil, %cl
	shlq	%cl, %rax
	btq	%rdi, %rbx
	jae	.LBB20_24
# BB#21:                                # %if.then.20
                                        #   in Loop: Header=BB20_20 Depth=1
	testq	(%r14), %rax
	je	.LBB20_23
# BB#22:                                # %if.then.26
                                        #   in Loop: Header=BB20_20 Depth=1
	movw	%r11w, (%rdx,%rdi,2)
	jmp	.LBB20_25
	.align	16, 0x90
.LBB20_24:                              # %if.else.39
                                        #   in Loop: Header=BB20_20 Depth=1
	movw	$0, (%rdx,%rdi,2)
	jmp	.LBB20_25
	.align	16, 0x90
.LBB20_23:                              # %if.else
                                        #   in Loop: Header=BB20_20 Depth=1
	movl	%esi, %eax
	andl	%r9d, %eax
	imull	%r10d, %eax
	shrl	$8, %eax
	movw	%ax, (%rdx,%rdi,2)
	movb	%r8b, %cl
	shrq	%cl, %rsi
.LBB20_25:                              # %for.inc.43
                                        #   in Loop: Header=BB20_20 Depth=1
	incq	%rdi
	cmpl	%edi, %r15d
	jne	.LBB20_20
.LBB20_26:                              # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	devn_decode_compressed_color, .Lfunc_end20-devn_decode_compressed_color
	.cfi_endproc

	.globl	devn_unpack_row
	.align	16, 0x90
	.type	devn_unpack_row,@function
devn_unpack_row:                        # @devn_unpack_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp194:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp195:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp196:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp197:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp198:
	.cfi_def_cfa_offset 56
.Ltmp199:
	.cfi_offset %rbx, -56
.Ltmp200:
	.cfi_offset %r12, -48
.Ltmp201:
	.cfi_offset %r13, -40
.Ltmp202:
	.cfi_offset %r14, -32
.Ltmp203:
	.cfi_offset %r15, -24
.Ltmp204:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movl	%r13d, -28(%rsp)        # 4-byte Spill
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	movq	%rsi, -48(%rsp)         # 8-byte Spill
	movabsq	$8589934560, %r14       # imm = 0x1FFFFFFE0
	cmpq	$0, 1352(%rdx)
	je	.LBB21_18
# BB#1:                                 # %for.cond.11.preheader
	xorl	%eax, %eax
	testl	%r13d, %r13d
	jle	.LBB21_55
# BB#2:                                 # %for.body.14.lr.ph
	leal	-1(%rsi), %eax
	incq	%rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	andq	%rax, %r14
	movq	%r14, -40(%rsp)         # 8-byte Spill
	leaq	-32(%r14), %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	shrl	$5, %eax
	incl	%eax
	andl	$3, %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movl	%esi, %r15d
	leal	-32(%r14), %eax
	shrl	$5, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB21_3:                               # %for.body.14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_40 Depth 2
                                        #     Child Loop BB21_46 Depth 2
                                        #     Child Loop BB21_8 Depth 2
                                        #     Child Loop BB21_11 Depth 2
                                        #     Child Loop BB21_15 Depth 2
	movzbl	(%r8), %ecx
	movq	%rcx, %rdx
	shlq	$56, %rdx
	movzbl	1(%r8), %edi
	shlq	$48, %rdi
	orq	%rdx, %rdi
	movzbl	2(%r8), %edx
	shlq	$40, %rdx
	orq	%rdi, %rdx
	movzbl	3(%r8), %edi
	shlq	$32, %rdi
	orq	%rdx, %rdi
	movzbl	4(%r8), %edx
	shlq	$24, %rdx
	orq	%rdi, %rdx
	movzbl	5(%r8), %edi
	shlq	$16, %rdi
	orq	%rdx, %rdi
	movzbl	6(%r8), %edx
	shlq	$8, %rdx
	orq	%rdi, %rdx
	movzbl	7(%r8), %r12d
	orq	%rdx, %r12
	cmpq	$-2, %r12
	jne	.LBB21_39
# BB#4:                                 # %for.cond.30.preheader
                                        #   in Loop: Header=BB21_3 Depth=1
	testl	%esi, %esi
	jle	.LBB21_17
# BB#5:                                 # %overflow.checked
                                        #   in Loop: Header=BB21_3 Depth=1
	xorl	%edx, %edx
	testq	%r14, %r14
	movq	%r9, %rcx
	movl	$0, %edi
	je	.LBB21_13
# BB#6:                                 # %vector.body.preheader
                                        #   in Loop: Header=BB21_3 Depth=1
	cmpq	$0, -64(%rsp)           # 8-byte Folded Reload
	movl	$0, %edx
	je	.LBB21_9
# BB#7:                                 # %vector.body.prol.preheader
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-72(%rsp), %rcx         # 8-byte Reload
	xorl	%edx, %edx
	.align	16, 0x90
.LBB21_8:                               # %vector.body.prol
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, (%r9,%rdx)
	movups	%xmm0, 16(%r9,%rdx)
	addq	$32, %rdx
	incq	%rcx
	jne	.LBB21_8
.LBB21_9:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB21_3 Depth=1
	leaq	(%r9,%r14), %rcx
	cmpq	$96, -56(%rsp)          # 8-byte Folded Reload
	jb	.LBB21_12
# BB#10:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	%r14, %rdi
	subq	%rdx, %rdi
	leaq	112(%r9,%rdx), %rdx
	.align	16, 0x90
.LBB21_11:                              # %vector.body
                                        #   Parent Loop BB21_3 Depth=1
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
	addq	$-128, %rdi
	jne	.LBB21_11
.LBB21_12:                              #   in Loop: Header=BB21_3 Depth=1
	movq	%r14, %rdx
	movl	%r14d, %edi
.LBB21_13:                              # %middle.block
                                        #   in Loop: Header=BB21_3 Depth=1
	cmpq	%rdx, -16(%rsp)         # 8-byte Folded Reload
	je	.LBB21_16
# BB#14:                                # %for.body.33.preheader
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	%esi, %edx
	subl	%edi, %edx
	.align	16, 0x90
.LBB21_15:                              # %for.body.33
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rcx)
	incq	%rcx
	decl	%edx
	jne	.LBB21_15
.LBB21_16:                              # %for.cond.30.for.end.37_crit_edge
                                        #   in Loop: Header=BB21_3 Depth=1
	addq	-16(%rsp), %r9          # 8-byte Folded Reload
.LBB21_17:                              # %for.end.37
                                        #   in Loop: Header=BB21_3 Depth=1
	incl	%eax
	jmp	.LBB21_54
	.align	16, 0x90
.LBB21_39:                              # %if.else.39
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	%ebp, -8(%rsp)          # 4-byte Spill
	movq	-24(%rsp), %rdx         # 8-byte Reload
	movq	1352(%rdx), %rdi
	cmpl	12(%rdi), %ecx
	movq	%r12, %rdx
	jge	.LBB21_41
	.align	16, 0x90
.LBB21_40:                              # %while.body.i
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rdi,%rcx,8), %rdi
	movq	%rdx, %rbp
	shlq	$8, %rbp
	shrq	$48, %rdx
	movzbl	%dl, %ecx
	cmpl	12(%rdi), %ecx
	movq	%rbp, %rdx
	jl	.LBB21_40
.LBB21_41:                              # %find_bit_map.exit
                                        #   in Loop: Header=BB21_3 Depth=1
	leaq	(%rcx,%rcx,2), %rbx
	movswq	26(%rdi,%rbx,8), %rdx
	movl	num_comp_bits(,%rdx,4), %r11d
	movl	$1, %r14d
	movb	%r11b, %cl
	shll	%cl, %r14d
	decl	%r14d
	movl	comp_bit_factor(,%rdx,4), %r10d
	movl	$65535, %ebp            # imm = 0xFFFF
	cmpl	$0, 28(%rdi,%rbx,8)
	je	.LBB21_43
# BB#42:                                # %if.then.46
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	%r14d, %ebp
	andl	%r12d, %ebp
	imull	%r10d, %ebp
	sarl	$8, %ebp
	movb	%r11b, %cl
	shrq	%cl, %r12
.LBB21_43:                              # %if.end
                                        #   in Loop: Header=BB21_3 Depth=1
	testl	%esi, %esi
	jle	.LBB21_44
# BB#45:                                # %for.body.55.lr.ph
                                        #   in Loop: Header=BB21_3 Depth=1
	leaq	32(%rdi,%rbx,8), %rdx
	leaq	40(%rdi,%rbx,8), %r13
	shrl	$8, %ebp
	xorl	%edi, %edi
	.align	16, 0x90
.LBB21_46:                              # %for.body.55
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %rsi
	movl	$1, %ebx
	movb	%dil, %cl
	shlq	%cl, %rbx
	btq	%rdi, %rsi
	jae	.LBB21_50
# BB#47:                                # %if.then.61
                                        #   in Loop: Header=BB21_46 Depth=2
	testq	(%r13), %rbx
	je	.LBB21_49
# BB#48:                                # %if.then.67
                                        #   in Loop: Header=BB21_46 Depth=2
	movb	%bpl, (%r9,%rdi)
	jmp	.LBB21_51
	.align	16, 0x90
.LBB21_50:                              # %if.else.82
                                        #   in Loop: Header=BB21_46 Depth=2
	movb	$0, (%r9,%rdi)
	jmp	.LBB21_51
	.align	16, 0x90
.LBB21_49:                              # %if.else.72
                                        #   in Loop: Header=BB21_46 Depth=2
	movl	%r12d, %ecx
	andl	%r14d, %ecx
	imull	%r10d, %ecx
	shrl	$16, %ecx
	movb	%cl, (%r9,%rdi)
	movb	%r11b, %cl
	shrq	%cl, %r12
.LBB21_51:                              # %for.inc.85
                                        #   in Loop: Header=BB21_46 Depth=2
	incq	%rdi
	cmpl	%edi, %r15d
	jne	.LBB21_46
# BB#52:                                # %for.cond.52.if.end.88.loopexit_crit_edge
                                        #   in Loop: Header=BB21_3 Depth=1
	addq	-16(%rsp), %r9          # 8-byte Folded Reload
	movl	-28(%rsp), %r13d        # 4-byte Reload
	movq	-48(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB21_53
.LBB21_44:                              #   in Loop: Header=BB21_3 Depth=1
	movl	-28(%rsp), %r13d        # 4-byte Reload
.LBB21_53:                              # %if.end.88
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-40(%rsp), %r14         # 8-byte Reload
	movl	-8(%rsp), %ebp          # 4-byte Reload
.LBB21_54:                              # %if.end.88
                                        #   in Loop: Header=BB21_3 Depth=1
	addq	$8, %r8
	incl	%ebp
	cmpl	%r13d, %ebp
	jne	.LBB21_3
	jmp	.LBB21_55
.LBB21_18:                              # %if.then
	xorl	%eax, %eax
	testl	%r13d, %r13d
	jle	.LBB21_55
# BB#19:                                # %for.cond.3.preheader.lr.ph
	movzwl	108(%rdi), %eax
	shrl	$3, %eax
	subl	%esi, %eax
	movslq	%eax, %r10
	leal	-1(%rsi), %r15d
	leaq	1(%r15), %r12
	andq	%r12, %r14
	leaq	-32(%r14), %rax
	shrq	$5, %rax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB21_20:                              # %for.cond.3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_28 Depth 2
                                        #     Child Loop BB21_33 Depth 2
                                        #     Child Loop BB21_36 Depth 2
	testl	%esi, %esi
	jle	.LBB21_38
# BB#21:                                # %for.body.6.lr.ph
                                        #   in Loop: Header=BB21_20 Depth=1
	xorl	%edx, %edx
	testq	%r14, %r14
	movq	%r8, %rax
	movq	%r9, %rbp
	movl	$0, %ecx
	je	.LBB21_30
# BB#22:                                # %vector.memcheck
                                        #   in Loop: Header=BB21_20 Depth=1
	leaq	(%r8,%r15), %rax
	xorl	%edx, %edx
	cmpq	%rax, %r9
	ja	.LBB21_24
# BB#23:                                # %vector.memcheck
                                        #   in Loop: Header=BB21_20 Depth=1
	leaq	(%r9,%r15), %rax
	cmpq	%rax, %r8
	movq	%r8, %rax
	movq	%r9, %rbp
	movl	$0, %ecx
	jbe	.LBB21_30
.LBB21_24:                              # %vector.body163.preheader
                                        #   in Loop: Header=BB21_20 Depth=1
	movq	%rsi, %rdi
	cmpq	$0, -16(%rsp)           # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB21_26
# BB#25:                                # %vector.body163.prol
                                        #   in Loop: Header=BB21_20 Depth=1
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm0, (%r9)
	movups	%xmm1, 16(%r9)
	movl	$32, %esi
.LBB21_26:                              # %vector.body163.preheader.split
                                        #   in Loop: Header=BB21_20 Depth=1
	leaq	(%r8,%r14), %rax
	leaq	(%r9,%r14), %rbp
	cmpq	$0, -8(%rsp)            # 8-byte Folded Reload
	je	.LBB21_29
# BB#27:                                # %vector.body163.preheader.split.split
                                        #   in Loop: Header=BB21_20 Depth=1
	movq	%r14, %rcx
	subq	%rsi, %rcx
	leaq	48(%r9,%rsi), %rdx
	leaq	48(%r8,%rsi), %rsi
	.align	16, 0x90
.LBB21_28:                              # %vector.body163
                                        #   Parent Loop BB21_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rsi), %xmm0
	movups	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rdx)
	movups	%xmm1, -32(%rdx)
	movups	-16(%rsi), %xmm0
	movups	(%rsi), %xmm1
	movups	%xmm0, -16(%rdx)
	movups	%xmm1, (%rdx)
	addq	$64, %rdx
	addq	$64, %rsi
	addq	$-64, %rcx
	jne	.LBB21_28
.LBB21_29:                              #   in Loop: Header=BB21_20 Depth=1
	movq	%r14, %rdx
	movl	%r14d, %ecx
	movq	%rdi, %rsi
.LBB21_30:                              # %middle.block164
                                        #   in Loop: Header=BB21_20 Depth=1
	cmpq	%rdx, %r12
	je	.LBB21_37
# BB#31:                                # %for.body.6.preheader
                                        #   in Loop: Header=BB21_20 Depth=1
	movl	%esi, %edi
	movq	%rsi, %r11
	subl	%ecx, %edi
	movl	%r15d, %esi
	subl	%ecx, %esi
	testb	$7, %dil
	je	.LBB21_34
# BB#32:                                # %for.body.6.prol.preheader
                                        #   in Loop: Header=BB21_20 Depth=1
	andl	$7, %edi
	negl	%edi
	.align	16, 0x90
.LBB21_33:                              # %for.body.6.prol
                                        #   Parent Loop BB21_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rax), %dl
	incq	%rax
	movb	%dl, (%rbp)
	incq	%rbp
	incl	%ecx
	incl	%edi
	jne	.LBB21_33
.LBB21_34:                              # %for.body.6.preheader.split
                                        #   in Loop: Header=BB21_20 Depth=1
	cmpl	$7, %esi
	movq	%r11, %rsi
	jb	.LBB21_37
# BB#35:                                # %for.body.6.preheader.split.split
                                        #   in Loop: Header=BB21_20 Depth=1
	movl	%esi, %edx
	subl	%ecx, %edx
	.align	16, 0x90
.LBB21_36:                              # %for.body.6
                                        #   Parent Loop BB21_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rax), %cl
	movb	%cl, (%rbp)
	movb	1(%rax), %cl
	movb	%cl, 1(%rbp)
	movb	2(%rax), %cl
	movb	%cl, 2(%rbp)
	movb	3(%rax), %cl
	movb	%cl, 3(%rbp)
	movb	4(%rax), %cl
	movb	%cl, 4(%rbp)
	movb	5(%rax), %cl
	movb	%cl, 5(%rbp)
	movb	6(%rax), %cl
	movb	%cl, 6(%rbp)
	movb	7(%rax), %cl
	movb	%cl, 7(%rbp)
	addq	$8, %rax
	addq	$8, %rbp
	addl	$-8, %edx
	jne	.LBB21_36
.LBB21_37:                              # %for.cond.3.for.end_crit_edge
                                        #   in Loop: Header=BB21_20 Depth=1
	addq	%r12, %r9
	addq	%r12, %r8
.LBB21_38:                              # %for.end
                                        #   in Loop: Header=BB21_20 Depth=1
	addq	%r10, %r8
	incl	%ebx
	xorl	%eax, %eax
	cmpl	%r13d, %ebx
	jne	.LBB21_20
.LBB21_55:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	devn_unpack_row, .Lfunc_end21-devn_unpack_row
	.cfi_endproc

	.globl	gx_devn_prn_device_finalize
	.align	16, 0x90
	.type	gx_devn_prn_device_finalize,@function
gx_devn_prn_device_finalize:            # @gx_devn_prn_device_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp205:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp206:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp207:
	.cfi_def_cfa_offset 32
.Ltmp208:
	.cfi_offset %rbx, -24
.Ltmp209:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	devn_free_params
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gx_device_finalize      # TAILCALL
.Lfunc_end22:
	.size	gx_devn_prn_device_finalize, .Lfunc_end22-gx_devn_prn_device_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gx_devn_prn_device_enum_ptrs,@function
gx_devn_prn_device_enum_ptrs:           # @gx_devn_prn_device_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18504(%rsi), %eax
	cmpl	%ecx, %eax
	jle	.LBB23_2
# BB#1:                                 # %cleanup
	movslq	%ecx, %rax
	shlq	$4, %rax
	movq	18520(%rsi,%rax), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB23_2:                               # %if.end
	subl	%eax, %ecx
	movl	$st_device_printer, %r9d
	jmpq	*st_device_printer+32(%rip) # TAILCALL
.Lfunc_end23:
	.size	gx_devn_prn_device_enum_ptrs, .Lfunc_end23-gx_devn_prn_device_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gx_devn_prn_device_reloc_ptrs,@function
gx_devn_prn_device_reloc_ptrs:          # @gx_devn_prn_device_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp210:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp211:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp212:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp213:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp214:
	.cfi_def_cfa_offset 48
.Ltmp215:
	.cfi_offset %rbx, -40
.Ltmp216:
	.cfi_offset %r12, -32
.Ltmp217:
	.cfi_offset %r14, -24
.Ltmp218:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdi, %r14
	movl	$st_device_printer, %edx
	callq	*st_device_printer+40(%rip)
	cmpl	$0, 18504(%r14)
	jle	.LBB24_3
# BB#1:                                 # %for.body.lr.ph
	leaq	18520(%r14), %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB24_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movq	(%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	incq	%r12
	movslq	18504(%r14), %rax
	addq	$16, %rbx
	cmpq	%rax, %r12
	jl	.LBB24_2
.LBB24_3:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end24:
	.size	gx_devn_prn_device_reloc_ptrs, .Lfunc_end24-gx_devn_prn_device_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	static_gx_devn_prn_device_finalize,@function
static_gx_devn_prn_device_finalize:     # @static_gx_devn_prn_device_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp219:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp220:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp221:
	.cfi_def_cfa_offset 32
.Ltmp222:
	.cfi_offset %rbx, -24
.Ltmp223:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	devn_free_params
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gx_device_finalize      # TAILCALL
.Lfunc_end25:
	.size	static_gx_devn_prn_device_finalize, .Lfunc_end25-static_gx_devn_prn_device_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	spotcmyk_print_page,@function
spotcmyk_print_page:                    # @spotcmyk_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp225:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp226:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp227:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp228:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp229:
	.cfi_def_cfa_offset 56
	subq	$872, %rsp              # imm = 0x368
.Ltmp230:
	.cfi_def_cfa_offset 928
.Ltmp231:
	.cfi_offset %rbx, -56
.Ltmp232:
	.cfi_offset %r12, -48
.Ltmp233:
	.cfi_offset %r13, -40
.Ltmp234:
	.cfi_offset %r14, -32
.Ltmp235:
	.cfi_offset %r15, -24
.Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	movq	%r13, 32(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebx
	movq	24(%r13), %rdi
	movl	$.L.str.33, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %rbp
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	24(%r13), %rdi
	leal	3(%rbx), %esi
	movl	$.L.str.34, %edx
	callq	*64(%rdi)
	movq	%rax, %r12
	movl	18488(%r13), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	100(%r13), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movzwl	108(%r13), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	18504(%r13), %r15d
	movl	18472(%r13), %r14d
	movl	836(%r13), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	832(%r13), %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	leaq	352(%rsp), %rdi
	xorl	%esi, %esi
	movl	$512, %edx              # imm = 0x200
	callq	memset
	movq	24(%r13), %rdi
	movl	$4096, %esi             # imm = 0x1000
	movl	$.L.str.35, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbp, %rbp
	movl	$-25, %eax
	je	.LBB26_32
# BB#1:                                 # %entry
	testq	%r12, %r12
	je	.LBB26_32
# BB#2:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB26_32
# BB#3:                                 # %for.cond.preheader
	movl	68(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	jle	.LBB26_7
# BB#4:                                 # %for.body.lr.ph
	movslq	%edx, %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB26_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	19540(%r13,%rcx,4), %ecx
	jne	.LBB26_8
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB26_6 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB26_6
.LBB26_7:                               # %lor.lhs.false.33.critedge
	cmpl	%edx, 24(%rsp)          # 4-byte Folded Reload
	jge	.LBB26_9
.LBB26_8:                               # %if.then.36
	xorl	%edx, %edx
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r15d
.LBB26_9:                               # %if.end.37
	movq	%r12, %rbp
	movl	%edx, 68(%rsp)          # 4-byte Spill
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	testl	%r15d, %r15d
	jle	.LBB26_13
# BB#10:                                # %for.body.41.lr.ph
	leaq	13056(%r13), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %r15
	xorl	%ebx, %ebx
	movq	16(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB26_11:                              # %for.body.41
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	movl	%ebx, %ecx
	callq	gs_sprintf
	movl	$.L.str.37, %esi
	movq	%r12, %rdi
	callq	gp_fopen
	movq	%rax, 352(%rsp,%rbx,8)
	testq	%rax, %rax
	je	.LBB26_46
# BB#12:                                # %for.cond.38
                                        #   in Loop: Header=BB26_11 Depth=1
	incq	%rbx
	cmpq	%r15, %rbx
	jl	.LBB26_11
.LBB26_13:                              # %for.cond.55.preheader
	movl	$0, 4(%rsp)             # 4-byte Folded Spill
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	movq	48(%rsp), %r15          # 8-byte Reload
	jle	.LBB26_20
# BB#14:                                # %for.body.58.lr.ph
	leal	-1(%r15), %edx
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	24(%rsp), %ecx          # 4-byte Reload
	subl	%eax, %ecx
	imull	%r14d, %ecx
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	imull	%r14d, %eax
	movl	%eax, (%rsp)            # 4-byte Spill
	imull	%r14d, %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movl	$0, 4(%rsp)             # 4-byte Folded Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB26_15:                              # %for.body.58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_18 Depth 2
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	%r13, %rdi
	movl	%eax, %esi
	movq	56(%rsp), %rdx          # 8-byte Reload
	leaq	88(%rsp), %rcx
	callq	gdev_prn_get_bits
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB26_17
# BB#16:                                # %if.then.60
                                        #   in Loop: Header=BB26_15 Depth=1
	movq	88(%rsp), %rdi
	movq	%rbp, %rsi
	movl	84(%rsp), %edx          # 4-byte Reload
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	(%rsp), %r8d            # 4-byte Reload
	movl	80(%rsp), %r9d          # 4-byte Reload
	callq	repack_data
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	fwrite
.LBB26_17:                              # %if.end.65
                                        #   in Loop: Header=BB26_15 Depth=1
	testl	%r15d, %r15d
	movl	%r15d, %ebx
	leaq	352(%rsp), %r13
	leaq	96(%rsp), %r12
	movl	28(%rsp), %r15d         # 4-byte Reload
	jle	.LBB26_19
	.align	16, 0x90
.LBB26_18:                              # %for.body.69
                                        #   Parent Loop BB26_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	88(%rsp), %rdi
	movq	%rbp, %rsi
	movl	84(%rsp), %edx          # 4-byte Reload
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movl	80(%rsp), %r9d          # 4-byte Reload
	callq	repack_data
	movl	%eax, (%r12)
	movslq	%eax, %rdx
	movq	(%r13), %rcx
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	fwrite
	subl	%r14d, %r15d
	addq	$4, %r12
	addq	$8, %r13
	decl	%ebx
	jne	.LBB26_18
.LBB26_19:                              # %for.inc.85
                                        #   in Loop: Header=BB26_15 Depth=1
	movl	72(%rsp), %eax          # 4-byte Reload
	incl	%eax
	cmpl	44(%rsp), %eax          # 4-byte Folded Reload
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	48(%rsp), %r15          # 8-byte Reload
	jne	.LBB26_15
.LBB26_20:                              # %for.cond.88.preheader
	testl	%r15d, %r15d
	leaq	352(%rsp), %r12
	jle	.LBB26_23
# BB#21:
	movl	%r15d, %ebx
	.align	16, 0x90
.LBB26_22:                              # %for.body.91
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rdi
	callq	fclose
	movq	$0, (%r12)
	addq	$8, %r12
	decl	%ebx
	jne	.LBB26_22
.LBB26_23:                              # %for.end.99
	leaq	13056(%r13), %r12
	xorl	%eax, %eax
	movl	68(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	je	.LBB26_26
# BB#24:                                # %if.then.101
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%r14d, %ecx
	movl	4(%rsp), %r8d           # 4-byte Reload
	callq	devn_write_pcx_file
	testl	%eax, %eax
	js	.LBB26_25
.LBB26_26:                              # %for.cond.109.preheader
	movl	%r14d, 84(%rsp)         # 4-byte Spill
	movq	%r12, %r14
	movl	%eax, 80(%rsp)          # 4-byte Spill
	testl	%r15d, %r15d
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbp, %r12
	jle	.LBB26_39
# BB#27:                                # %for.body.112.lr.ph
	movq	%r12, %rbp
	movq	%r15, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rbx, %r15
	movq	%r13, %r12
	movslq	%eax, %r13
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB26_28:                              # %for.body.112
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	gs_sprintf
	movl	96(%rsp,%rbx,4), %r8d
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	84(%rsp), %ecx          # 4-byte Reload
	callq	devn_write_pcx_file
	testl	%eax, %eax
	js	.LBB26_30
# BB#29:                                # %for.body.112
                                        #   in Loop: Header=BB26_28 Depth=1
	incq	%rbx
	cmpq	%r13, %rbx
	jl	.LBB26_28
.LBB26_30:
	movq	%r12, %r13
	movq	%r15, %rbx
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB26_31
.LBB26_46:
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	%rbp, %r12
	movl	$-25, %eax
	jmp	.LBB26_32
.LBB26_25:
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB26_31:                              # %prn_done
	movq	%rbp, %r12
.LBB26_32:                              # %prn_done
	testl	%r15d, %r15d
	jle	.LBB26_33
# BB#34:
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movq	%rbx, %rbp
	leaq	352(%rsp), %rbx
	.align	16, 0x90
.LBB26_35:                              # %for.body.129
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB26_37
# BB#36:                                # %if.then.134
                                        #   in Loop: Header=BB26_35 Depth=1
	callq	fclose
.LBB26_37:                              # %for.inc.139
                                        #   in Loop: Header=BB26_35 Depth=1
	addq	$8, %rbx
	decl	%r15d
	jne	.LBB26_35
# BB#38:
	movq	%rbp, %rbx
	jmp	.LBB26_39
.LBB26_33:
	movl	%eax, 80(%rsp)          # 4-byte Spill
.LBB26_39:                              # %for.end.141
	movq	56(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB26_41
# BB#40:                                # %if.then.144
	movq	24(%r13), %rdi
	movl	$.L.str.33, %edx
	callq	*24(%rdi)
.LBB26_41:                              # %if.end.148
	testq	%r12, %r12
	je	.LBB26_43
# BB#42:                                # %if.then.151
	movq	24(%r13), %rdi
	movl	$.L.str.34, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB26_43:                              # %if.end.156
	testq	%rbx, %rbx
	je	.LBB26_45
# BB#44:                                # %if.then.159
	movq	24(%r13), %rdi
	movl	$.L.str.35, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB26_45:                              # %if.end.164
	movl	80(%rsp), %eax          # 4-byte Reload
	addq	$872, %rsp              # imm = 0x368
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	spotcmyk_print_page, .Lfunc_end26-spotcmyk_print_page
	.cfi_endproc

	.globl	gx_devn_prn_get_color_mapping_procs
	.align	16, 0x90
	.type	gx_devn_prn_get_color_mapping_procs,@function
gx_devn_prn_get_color_mapping_procs:    # @gx_devn_prn_get_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$spotCMYK_procs, %eax
	retq
.Lfunc_end27:
	.size	gx_devn_prn_get_color_mapping_procs, .Lfunc_end27-gx_devn_prn_get_color_mapping_procs
	.cfi_endproc

	.globl	gx_devn_prn_encode_color
	.align	16, 0x90
	.type	gx_devn_prn_encode_color,@function
gx_devn_prn_encode_color:               # @gx_devn_prn_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18472(%rdi), %r9d
	movl	100(%rdi), %edi
	movl	$1, %r8d
	movl	$1, %r11d
	movb	%r9b, %cl
	shll	%cl, %r11d
	decl	%r11d
	movl	$16, %ecx
	subl	%r9d, %ecx
	shll	%cl, %r11d
	movl	$31, %ecx
	subl	%r9d, %ecx
	shll	%cl, %r8d
	xorl	%edx, %edx
	testl	%edi, %edi
	jle	.LBB28_6
# BB#1:                                 # %for.body.lr.ph
	incl	%r11d
	movl	$32, %r10d
	subl	%r9d, %r10d
	xorl	%ecx, %ecx
	testb	$1, %dil
	movl	$0, %edx
	je	.LBB28_3
# BB#2:                                 # %for.body.prol
	movzwl	(%rsi), %edx
	imull	%r11d, %edx
	addl	%r8d, %edx
	movb	%r10b, %cl
	shrl	%cl, %edx
	movl	$1, %ecx
.LBB28_3:                               # %for.body.lr.ph.split
	cmpl	$1, %edi
	je	.LBB28_6
# BB#4:                                 # %for.body.lr.ph.split.split
	subl	%ecx, %edi
	leaq	2(%rsi,%rcx,2), %rsi
	.align	16, 0x90
.LBB28_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%r9b, %cl
	shlq	%cl, %rdx
	movzwl	-2(%rsi), %eax
	imull	%r11d, %eax
	addl	%r8d, %eax
	movb	%r10b, %cl
	shrl	%cl, %eax
	orq	%rdx, %rax
	movb	%r9b, %cl
	shlq	%cl, %rax
	movzwl	(%rsi), %edx
	imull	%r11d, %edx
	addl	%r8d, %edx
	movb	%r10b, %cl
	shrl	%cl, %edx
	orq	%rax, %rdx
	addq	$4, %rsi
	addl	$-2, %edi
	jne	.LBB28_5
.LBB28_6:                               # %for.end
	cmpq	$-1, %rdx
	sete	%al
	movzbl	%al, %eax
	xorq	%rdx, %rax
	retq
.Lfunc_end28:
	.size	gx_devn_prn_encode_color, .Lfunc_end28-gx_devn_prn_encode_color
	.cfi_endproc

	.globl	gx_devn_prn_decode_color
	.align	16, 0x90
	.type	gx_devn_prn_decode_color,@function
gx_devn_prn_decode_color:               # @gx_devn_prn_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbx, -16
	movq	%rdx, %r8
	movslq	18472(%rdi), %rcx
	movl	%ecx, %r9d
	movl	$1, %r10d
	shll	%cl, %r10d
	movl	100(%rdi), %edi
	movl	$16, %eax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rcx, %rax
	subq	%rdx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r11
	testl	%edi, %edi
	jle	.LBB29_6
# BB#1:                                 # %for.body.lr.ph
	decl	%r10d
	leaq	(%rcx,%rcx), %rax
	movzbl	.L.str.30(%rcx,%rcx), %ecx
	shll	$8, %ecx
	orl	$1, %eax
	cltq
	movzbl	.L.str.30(%rax), %edx
	orl	%ecx, %edx
	leal	-1(%rdi), %eax
	xorl	%ecx, %ecx
	testb	$1, %dil
	je	.LBB29_3
# BB#2:                                 # %for.body.prol
	movl	%esi, %ecx
	andl	%r10d, %ecx
	imull	%edx, %ecx
	movzwl	%cx, %edi
	movb	%r11b, %cl
	shrl	%cl, %edi
	movslq	%eax, %rcx
	movw	%di, (%r8,%rcx,2)
	movb	%r9b, %cl
	shrq	%cl, %rsi
	movl	$1, %ecx
.LBB29_3:                               # %for.body.lr.ph.split
	testl	%eax, %eax
	je	.LBB29_6
# BB#4:                                 # %for.body.lr.ph.split.split
	movl	%eax, %edi
	subl	%ecx, %edi
	incl	%ecx
	subl	%ecx, %eax
	.align	16, 0x90
.LBB29_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	andl	%r10d, %ecx
	imull	%edx, %ecx
	movzwl	%cx, %ebx
	movb	%r11b, %cl
	shrl	%cl, %ebx
	movslq	%edi, %rdi
	movw	%bx, (%r8,%rdi,2)
	movb	%r9b, %cl
	shrq	%cl, %rsi
	movl	%esi, %ecx
	andl	%r10d, %ecx
	imull	%edx, %ecx
	movzwl	%cx, %ebx
	movb	%r11b, %cl
	shrl	%cl, %ebx
	cltq
	movw	%bx, (%r8,%rax,2)
	movb	%r9b, %cl
	shrq	%cl, %rsi
	addl	$-2, %edi
	addl	$-2, %eax
	cmpl	$-1, %edi
	jne	.LBB29_5
.LBB29_6:                               # %for.end
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end29:
	.size	gx_devn_prn_decode_color, .Lfunc_end29-gx_devn_prn_decode_color
	.cfi_endproc

	.globl	gx_devn_prn_get_params
	.align	16, 0x90
	.type	gx_devn_prn_get_params,@function
gx_devn_prn_get_params:                 # @gx_devn_prn_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp239:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp240:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp241:
	.cfi_def_cfa_offset 32
.Ltmp242:
	.cfi_offset %rbx, -24
.Ltmp243:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB30_1
# BB#2:                                 # %if.end
	leaq	18472(%rbx), %rdx
	leaq	20872(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	devn_get_params         # TAILCALL
.LBB30_1:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end30:
	.size	gx_devn_prn_get_params, .Lfunc_end30-gx_devn_prn_get_params
	.cfi_endproc

	.globl	gx_devn_prn_put_params
	.align	16, 0x90
	.type	gx_devn_prn_put_params,@function
gx_devn_prn_put_params:                 # @gx_devn_prn_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	18472(%rdi), %rdx
	leaq	20872(%rdi), %rcx
	jmp	devn_printer_put_params # TAILCALL
.Lfunc_end31:
	.size	gx_devn_prn_put_params, .Lfunc_end31-gx_devn_prn_put_params
	.cfi_endproc

	.globl	gx_devn_prn_ret_devn_params
	.align	16, 0x90
	.type	gx_devn_prn_ret_devn_params,@function
gx_devn_prn_ret_devn_params:            # @gx_devn_prn_ret_devn_params
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	18472(%rdi), %rax
	retq
.Lfunc_end32:
	.size	gx_devn_prn_ret_devn_params, .Lfunc_end32-gx_devn_prn_ret_devn_params
	.cfi_endproc

	.globl	gx_devn_prn_update_spot_equivalent_colors
	.align	16, 0x90
	.type	gx_devn_prn_update_spot_equivalent_colors,@function
gx_devn_prn_update_spot_equivalent_colors: # @gx_devn_prn_update_spot_equivalent_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp244:
	.cfi_def_cfa_offset 16
	leaq	18472(%rdi), %rdx
	leaq	20872(%rdi), %rcx
	callq	update_spot_equivalent_cmyk_colors
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end33:
	.size	gx_devn_prn_update_spot_equivalent_colors, .Lfunc_end33-gx_devn_prn_update_spot_equivalent_colors
	.cfi_endproc

	.globl	gx_devn_prn_get_color_comp_index
	.align	16, 0x90
	.type	gx_devn_prn_get_color_comp_index,@function
gx_devn_prn_get_color_comp_index:       # @gx_devn_prn_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp245:
	.cfi_def_cfa_offset 16
	movl	%ecx, %r9d
	movl	%edx, %eax
	movq	%rsi, %rcx
	movl	$1, (%rsp)
	leaq	18472(%rdi), %rsi
	leaq	20872(%rdi), %rdx
	movl	%eax, %r8d
	callq	devn_get_color_comp_index
	popq	%rdx
	retq
.Lfunc_end34:
	.size	gx_devn_prn_get_color_comp_index, .Lfunc_end34-gx_devn_prn_get_color_comp_index
	.cfi_endproc

	.globl	repack_data
	.align	16, 0x90
	.type	repack_data,@function
repack_data:                            # @repack_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp247:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp248:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp249:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp250:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp251:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp252:
	.cfi_def_cfa_offset 80
.Ltmp253:
	.cfi_offset %rbx, -56
.Ltmp254:
	.cfi_offset %r12, -48
.Ltmp255:
	.cfi_offset %r13, -40
.Ltmp256:
	.cfi_offset %r14, -32
.Ltmp257:
	.cfi_offset %r15, -24
.Ltmp258:
	.cfi_offset %rbp, -16
	movl	%r9d, -36(%rsp)         # 4-byte Spill
	movl	%r8d, -20(%rsp)         # 4-byte Spill
	movl	%ecx, %ebp
	movl	%edx, -32(%rsp)         # 4-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r11
	movl	$1, %r14d
	movb	%r8b, %cl
	shlq	%cl, %r14
	testl	%r9d, %r9d
	movq	%r15, %rax
	jle	.LBB35_30
# BB#1:                                 # %for.body.lr.ph
	movl	%edx, %r12d
	sarl	$3, %r12d
	movq	%r12, -56(%rsp)         # 8-byte Spill
	movl	%r8d, %ebx
	sarl	$3, %ebx
	movq	%rbx, -16(%rsp)         # 8-byte Spill
	movl	$8, %ecx
	movl	$8, %r10d
	subl	%edx, %r10d
	movl	%r10d, -28(%rsp)        # 4-byte Spill
	subl	%r8d, %ecx
	movl	%r8d, -20(%rsp)         # 4-byte Spill
	movl	%ecx, -24(%rsp)         # 4-byte Spill
	decq	%r14
	movq	%r14, -48(%rsp)         # 8-byte Spill
	movl	%ebp, %esi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	leal	-8(,%rbx,8), %esi
	movq	%rsi, (%rsp)            # 8-byte Spill
	leal	-2(%r12), %esi
	movq	%rsi, -64(%rsp)         # 8-byte Spill
	leaq	2(%rsi), %rsi
	movq	%rsi, -72(%rsp)         # 8-byte Spill
	leal	-2(%rbx), %esi
	movq	%rsi, -80(%rsp)         # 8-byte Spill
	leaq	2(%rsi), %rsi
	movq	%rsi, -88(%rsp)         # 8-byte Spill
	leal	3(%r12), %edi
	leal	3(%rbx), %eax
	movl	%eax, %ebp
	andl	$3, %ebp
	movl	%ebp, -92(%rsp)         # 4-byte Spill
	movl	%edi, %ebp
	andl	$3, %ebp
	movl	%ebp, -96(%rsp)         # 4-byte Spill
	andl	$3, %edi
	leal	(,%rbx,8), %ebp
	movl	%ebp, -116(%rsp)        # 4-byte Spill
	andl	$3, %eax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	leal	-16(,%rbx,8), %ebp
	movl	%ebp, -100(%rsp)        # 4-byte Spill
	xorl	%r8d, %r8d
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movl	%r10d, 8(%rsp)          # 4-byte Spill
	movq	%r15, %rax
	movq	%r15, -128(%rsp)        # 8-byte Spill
	.align	16, 0x90
.LBB35_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_8 Depth 2
                                        #     Child Loop BB35_12 Depth 2
                                        #     Child Loop BB35_20 Depth 2
                                        #     Child Loop BB35_24 Depth 2
	testl	%r12d, %r12d
	movzbl	(%r11), %r10d
	je	.LBB35_31
# BB#3:                                 # %for.cond.12.preheader
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	1(%r11), %r13
	cmpl	$2, %r12d
	jl	.LBB35_4
# BB#5:                                 # %for.body.15.preheader
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$1, %ebp
	cmpl	$0, -96(%rsp)           # 4-byte Folded Reload
	je	.LBB35_6
# BB#7:                                 # %for.body.15.prol.preheader
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	%rbx, %r15
	leaq	1(%r11), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB35_8:                               # %for.body.15.prol
                                        #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbp
	movq	%r10, %rcx
	shlq	$8, %rcx
	movzbl	(%rax,%rbp), %r10d
	orq	%rcx, %r10
	leaq	1(%rbp), %rcx
	cmpl	%ecx, %edi
	jne	.LBB35_8
# BB#9:                                 #   in Loop: Header=BB35_2 Depth=1
	leaq	1(%rax,%rbp), %r13
	leal	1(%rcx), %ebp
	jmp	.LBB35_10
	.align	16, 0x90
.LBB35_31:                              # %if.then
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	8(%rsp), %ecx           # 4-byte Reload
	shrq	%cl, %r10
	leaq	1(%r11), %rsi
	subl	%edx, %ecx
	cmovsq	%rsi, %r11
	cmovsl	-28(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	jmp	.LBB35_14
	.align	16, 0x90
.LBB35_4:                               #   in Loop: Header=BB35_2 Depth=1
	movq	%r13, %r11
	jmp	.LBB35_14
.LBB35_6:                               #   in Loop: Header=BB35_2 Depth=1
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	%rbx, %r15
.LBB35_10:                              # %for.body.15.preheader.split
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-64(%rsp), %rcx         # 8-byte Reload
	cmpl	$3, %ecx
	jb	.LBB35_13
# BB#11:                                # %for.body.15.preheader.split.split
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	%r12d, %ecx
	subl	%ebp, %ecx
	.align	16, 0x90
.LBB35_12:                              # %for.body.15
                                        #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %r10
	movzbl	(%r13), %ebp
	orq	%r10, %rbp
	shlq	$8, %rbp
	movzbl	1(%r13), %ebx
	orq	%rbp, %rbx
	shlq	$8, %rbx
	movzbl	2(%r13), %ebp
	orq	%rbx, %rbp
	shlq	$8, %rbp
	movzbl	3(%r13), %r10d
	orq	%rbp, %r10
	addq	$4, %r13
	addl	$-4, %ecx
	jne	.LBB35_12
.LBB35_13:                              # %for.cond.12.if.end.19.loopexit_crit_edge
                                        #   in Loop: Header=BB35_2 Depth=1
	addq	-72(%rsp), %r11         # 8-byte Folded Reload
	movq	%r15, %rbx
	movq	-8(%rsp), %rax          # 8-byte Reload
.LBB35_14:                              # %if.end.19
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	shrq	%cl, %r10
	andq	%r14, %r10
	testl	%ebx, %ebx
	je	.LBB35_15
# BB#16:                                # %if.else.39
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%r10, %rbp
	movq	(%rsp), %rcx            # 8-byte Reload
	shrq	%cl, %rbp
	movb	%bpl, (%rax)
	leaq	1(%rax), %r13
	cmpl	$2, %ebx
	jl	.LBB35_17
# BB#18:                                # %for.body.48.preheader
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%r11, -8(%rsp)          # 8-byte Spill
	cmpl	$0, -92(%rsp)           # 4-byte Folded Reload
	movl	$1, %ebx
	je	.LBB35_22
# BB#19:                                # %for.body.48.prol.preheader
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	1(%rax), %rsi
	movl	-100(%rsp), %ecx        # 4-byte Reload
	xorl	%ebp, %ebp
	movq	-112(%rsp), %rdx        # 8-byte Reload
	.align	16, 0x90
.LBB35_20:                              # %for.body.48.prol
                                        #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rbx
	movq	%r10, %rbp
	shrq	%cl, %rbp
	movb	%bpl, (%rsi,%rbx)
	leaq	1(%rbx), %rbp
	addl	$-8, %ecx
	cmpl	%ebp, %edx
	jne	.LBB35_20
# BB#21:                                #   in Loop: Header=BB35_2 Depth=1
	leaq	1(%rsi,%rbx), %r13
	addq	$2, %rbx
.LBB35_22:                              # %for.body.48.preheader.split
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-80(%rsp), %rcx         # 8-byte Reload
	cmpl	$3, %ecx
	jb	.LBB35_25
# BB#23:                                # %for.body.48.preheader.split.split
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-16(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %r11d
	subl	%ebx, %r11d
	leal	24(,%rbx,8), %ecx
	movl	-116(%rsp), %ebp        # 4-byte Reload
	movl	%ebp, %r9d
	subl	%ecx, %r9d
	leal	16(,%rbx,8), %ecx
	movl	%ebp, %r14d
	subl	%ecx, %r14d
	movl	%ebx, %ecx
	shll	$3, %ecx
	movl	%ebp, %r15d
	subl	%ecx, %r15d
	leal	8(,%rbx,8), %ecx
	movl	%ebp, %r12d
	subl	%ecx, %r12d
	.align	16, 0x90
.LBB35_24:                              # %for.body.48
                                        #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-8(%r15), %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	movb	%bl, (%r13)
	leal	-8(%r12), %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	movb	%bl, 1(%r13)
	leal	-8(%r14), %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	movb	%bl, 2(%r13)
	leal	-8(%r9), %ecx
	movq	%r10, %rbx
	shrq	%cl, %rbx
	movb	%bl, 3(%r13)
	addl	$-32, %r9d
	addl	$-32, %r14d
	addl	$-32, %r15d
	addl	$-32, %r12d
	addq	$4, %r13
	addl	$-4, %r11d
	jne	.LBB35_24
.LBB35_25:                              # %for.cond.45.for.inc.60.loopexit_crit_edge
                                        #   in Loop: Header=BB35_2 Depth=1
	addq	-88(%rsp), %rax         # 8-byte Folded Reload
	movl	-36(%rsp), %r9d         # 4-byte Reload
	movl	-32(%rsp), %edx         # 4-byte Reload
	movq	-48(%rsp), %r14         # 8-byte Reload
	movq	-8(%rsp), %r11          # 8-byte Reload
	movq	-56(%rsp), %r12         # 8-byte Reload
	movq	-16(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB35_26
	.align	16, 0x90
.LBB35_15:                              # %if.then.23
                                        #   in Loop: Header=BB35_2 Depth=1
	movzbl	(%rax), %esi
	movq	%r14, %rbp
	movl	12(%rsp), %ecx          # 4-byte Reload
	shlq	%cl, %rbp
	notl	%ebp
	andl	%esi, %ebp
	shlq	%cl, %r10
	orl	%ebp, %r10d
	movb	%r10b, (%rax)
	leaq	1(%rax), %rsi
	subl	-20(%rsp), %ecx         # 4-byte Folded Reload
	cmovsq	%rsi, %rax
	cmovsl	-24(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	jmp	.LBB35_26
	.align	16, 0x90
.LBB35_17:                              #   in Loop: Header=BB35_2 Depth=1
	movq	%r13, %rax
.LBB35_26:                              # %for.inc.60
                                        #   in Loop: Header=BB35_2 Depth=1
	incl	%r8d
	cmpl	%r9d, %r8d
	jne	.LBB35_2
# BB#27:                                # %for.end.62
	movl	12(%rsp), %ecx          # 4-byte Reload
	cmpl	-24(%rsp), %ecx         # 4-byte Folded Reload
	je	.LBB35_29
# BB#28:                                # %if.then.65
	movzbl	(%rax), %edx
	movl	$-1, %esi
	shll	%cl, %esi
	andl	%edx, %esi
	movb	%sil, (%rax)
	incq	%rax
.LBB35_29:                              # %if.end.71
	movq	-128(%rsp), %r15        # 8-byte Reload
.LBB35_30:                              # %if.end.71
	subl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	repack_data, .Lfunc_end35-repack_data
	.cfi_endproc

	.align	16, 0x90
	.type	compressed_color_list_enum_ptrs,@function
compressed_color_list_enum_ptrs:        # @compressed_color_list_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	%ecx, 12(%rsi)
	jle	.LBB36_2
# BB#1:                                 # %if.then
	movslq	%ecx, %rax
	movq	24(%rsi,%rax,8), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB36_2:                               # %cleanup
	retq
.Lfunc_end36:
	.size	compressed_color_list_enum_ptrs, .Lfunc_end36-compressed_color_list_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	compressed_color_list_reloc_ptrs,@function
compressed_color_list_reloc_ptrs:       # @compressed_color_list_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp259:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp260:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp261:
	.cfi_def_cfa_offset 32
.Ltmp262:
	.cfi_offset %rbx, -32
.Ltmp263:
	.cfi_offset %r14, -24
.Ltmp264:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %r15
	cmpl	$0, 12(%r15)
	jle	.LBB37_3
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB37_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	24(%r15,%rbx,8), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 24(%r15,%rbx,8)
	incq	%rbx
	movslq	12(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB37_2
.LBB37_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end37:
	.size	compressed_color_list_reloc_ptrs, .Lfunc_end37-compressed_color_list_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	sub_level_add_compressed_color_list,@function
sub_level_add_compressed_color_list:    # @sub_level_add_compressed_color_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp265:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp266:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp267:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp268:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp269:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp270:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp271:
	.cfi_def_cfa_offset 80
.Ltmp272:
	.cfi_offset %rbx, -56
.Ltmp273:
	.cfi_offset %r12, -48
.Ltmp274:
	.cfi_offset %r13, -40
.Ltmp275:
	.cfi_offset %r14, -32
.Ltmp276:
	.cfi_offset %r15, -24
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movswl	2(%r15), %eax
	cmpl	8(%rbx), %eax
	jge	.LBB38_5
# BB#1:                                 # %for.cond.preheader
	movl	12(%rbx), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	movl	$0, %ebp
	jle	.LBB38_10
# BB#2:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB38_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx,%rbp,8), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	sub_level_add_compressed_color_list
	testl	%eax, %eax
	jne	.LBB38_4
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB38_3 Depth=1
	incq	%rbp
	movslq	12(%rbx), %r13
	cmpq	%r13, %rbp
	jl	.LBB38_3
# BB#9:                                 # %for.cond.for.end_crit_edge
	shlq	$56, %rbp
.LBB38_10:                              # %for.end
	cmpl	16(%rbx), %r13d
	jge	.LBB38_15
# BB#11:                                # %if.then.24
	movq	(%rbx), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	8(%rbx), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	(%rcx), %rdi
	movl	$st_compressed_color_list, %esi
	movl	$.L.str.19, %edx
	callq	*72(%rdi)
	testq	%rax, %rax
	je	.LBB38_16
# BB#12:                                # %alloc_compressed_color_list_elem.exit.thread
	decl	20(%rsp)                # 4-byte Folded Spill
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$6168, %edx             # imm = 0x1818
	movq	%rax, %rdi
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	memset
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, (%rcx)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rcx)
	movl	$256, 16(%rcx)          # imm = 0x100
	movslq	%r13d, %rax
	movq	%rcx, 24(%rbx,%rax,8)
	incl	12(%rbx)
	movq	24(%rbx,%rax,8), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	sub_level_add_compressed_color_list
	testl	%eax, %eax
	je	.LBB38_15
# BB#13:                                # %if.then.48
	movq	(%r14), %rax
	shrq	$8, %rax
	orq	%rbp, %rax
	movq	%rax, (%r14)
	jmp	.LBB38_14
.LBB38_5:                               # %if.then
	movslq	16(%rbx), %rbp
	decq	%rbp
	xorl	%r12d, %r12d
	cmpl	12(%rbx), %ebp
	jle	.LBB38_15
# BB#6:                                 # %if.then.5
	leaq	(%rbp,%rbp,2), %rax
	leaq	24(%rbx,%rax,8), %rdi
	movl	$24, %edx
	movq	%r15, %rsi
	callq	memcpy
	movl	%ebp, 16(%rbx)
	shlq	$56, %rbp
	movq	%rbp, (%r14)
	jmp	.LBB38_14
.LBB38_4:                               # %if.then.16
	movq	(%r14), %rax
	shldq	$56, %rax, %rbp
	movq	%rbp, (%r14)
.LBB38_14:                              # %cleanup
	movl	$1, %r12d
.LBB38_15:                              # %cleanup
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB38_16:                              # %alloc_compressed_color_list_elem.exit
	movslq	%r13d, %rax
	movq	$0, 24(%rbx,%rax,8)
	jmp	.LBB38_15
.Lfunc_end38:
	.size	sub_level_add_compressed_color_list, .Lfunc_end38-sub_level_add_compressed_color_list
	.cfi_endproc

	.align	16, 0x90
	.type	spotcmyk_prn_open,@function
spotcmyk_prn_open:                      # @spotcmyk_prn_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp278:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp279:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp280:
	.cfi_def_cfa_offset 32
.Ltmp281:
	.cfi_offset %rbx, -24
.Ltmp282:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	gdev_prn_open
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	set_linear_color_bits_mask_shift
	movl	$1, 136(%rbx)
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end39:
	.size	spotcmyk_prn_open, .Lfunc_end39-spotcmyk_prn_open
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_spotcmyk_cm,@function
gray_cs_to_spotcmyk_cm:                 # @gray_cs_to_spotcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp283:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp284:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp285:
	.cfi_def_cfa_offset 32
.Ltmp286:
	.cfi_offset %rbx, -32
.Ltmp287:
	.cfi_offset %r14, -24
.Ltmp288:
	.cfi_offset %r15, -16
	movslq	100(%rdi), %rax
	testq	%rax, %rax
	jle	.LBB40_13
# BB#1:                                 # %for.body.lr.ph.i
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	(%rcx,%rax), %r11
	cmpq	$-2, %r11
	je	.LBB40_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r11
	movq	%r11, %r9
	andq	$-16, %r9
	xorl	%ecx, %ecx
	movq	%r11, %r8
	andq	$-16, %r8
	je	.LBB40_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	-14(%rax,%rcx), %r10
	movl	%r10d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%r14d, %r14d
	testb	$3, %cl
	je	.LBB40_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-16(%rdx,%rax,2), %rbx
	movq	%rax, %r14
	notq	%r14
	cmpq	$-2, %r14
	movl	$-2, %ecx
	cmovgl	%r14d, %ecx
	leal	-14(%rcx,%rax), %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%r14d, %r14d
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB40_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rbx)
	movups	%xmm0, -16(%rbx)
	addq	$16, %r14
	addq	$-32, %rbx
	incq	%rcx
	jne	.LBB40_5
.LBB40_6:                               # %vector.body.preheader.split
	movq	%rax, %r15
	subq	%r9, %r15
	cmpq	$48, %r10
	jb	.LBB40_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rbx
	cmovgq	%rcx, %rbx
	leaq	2(%rbx,%rax), %rcx
	andq	$-16, %rcx
	subq	%r14, %rcx
	addq	$-8, %rax
	subq	%r14, %rax
	leaq	(%rdx,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB40_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rcx
	jne	.LBB40_8
.LBB40_9:
	movq	%r15, %rax
	movq	%r8, %rcx
.LBB40_10:                              # %middle.block
	cmpq	%rcx, %r11
	je	.LBB40_13
.LBB40_11:                              # %for.body.i.preheader
	incq	%rax
	.align	16, 0x90
.LBB40_12:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, -4(%rdx,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB40_12
.LBB40_13:                              # %for.end.i
	movslq	19552(%rdi), %rax
	cmpq	$64, %rax
	je	.LBB40_15
# BB#14:                                # %if.then.i
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%esi, %ecx
	movw	%cx, (%rdx,%rax,2)
.LBB40_15:                              # %gray_cs_to_devn_cm.exit
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end40:
	.size	gray_cs_to_spotcmyk_cm, .Lfunc_end40-gray_cs_to_spotcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_spotcmyk_cm,@function
rgb_cs_to_spotcmyk_cm:                  # @rgb_cs_to_spotcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp290:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp291:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp292:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp293:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp294:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp295:
	.cfi_def_cfa_offset 64
.Ltmp296:
	.cfi_offset %rbx, -56
.Ltmp297:
	.cfi_offset %r12, -48
.Ltmp298:
	.cfi_offset %r13, -40
.Ltmp299:
	.cfi_offset %r14, -32
.Ltmp300:
	.cfi_offset %r15, -24
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%rsi, %r10
	movq	%rdi, %r14
	movslq	100(%r14), %rsi
	testq	%rsi, %rsi
	jle	.LBB41_13
# BB#1:                                 # %for.body.lr.ph.i
	cmpq	$2, %rsi
	movl	$1, %eax
	cmovlq	%rsi, %rax
	notq	%rax
	leaq	(%rax,%rsi), %r12
	cmpq	$-2, %r12
	je	.LBB41_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r12
	movq	%r12, %r15
	andq	$-16, %r15
	xorl	%eax, %eax
	movq	%r12, %r9
	andq	$-16, %r9
	je	.LBB41_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rsi
	movl	$1, %eax
	cmovlq	%rsi, %rax
	notq	%rax
	leaq	-14(%rsi,%rax), %r11
	movl	%r11d, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%eax, %eax
	testb	$3, %dil
	je	.LBB41_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-16(%r13,%rsi,2), %rdi
	movq	%rsi, %rax
	notq	%rax
	cmpq	$-2, %rax
	movl	$-2, %ebx
	cmovgl	%eax, %ebx
	leal	-14(%rbx,%rsi), %ebx
	shrl	$4, %ebx
	incl	%ebx
	andl	$3, %ebx
	negq	%rbx
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB41_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi)
	movups	%xmm0, -16(%rdi)
	addq	$16, %rax
	addq	$-32, %rdi
	incq	%rbx
	jne	.LBB41_5
.LBB41_6:                               # %vector.body.preheader.split
	movq	%rsi, %rbp
	subq	%r15, %rbp
	cmpq	$48, %r11
	jb	.LBB41_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rsi, %rbx
	notq	%rbx
	cmpq	$-3, %rbx
	movq	$-2, %rdi
	cmovgq	%rbx, %rdi
	leaq	2(%rdi,%rsi), %rbx
	andq	$-16, %rbx
	subq	%rax, %rbx
	addq	$-8, %rsi
	subq	%rax, %rsi
	leaq	(%r13,%rsi,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB41_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rbx
	jne	.LBB41_8
.LBB41_9:
	movq	%rbp, %rsi
	movq	%r9, %rax
.LBB41_10:                              # %middle.block
	cmpq	%rax, %r12
	je	.LBB41_13
.LBB41_11:                              # %for.body.i.preheader
	incq	%rsi
	.align	16, 0x90
.LBB41_12:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, -4(%r13,%rsi,2)
	decq	%rsi
	cmpq	$1, %rsi
	jg	.LBB41_12
.LBB41_13:                              # %for.end.i
	movq	24(%r14), %r9
	movswl	%dx, %edi
	movswl	%cx, %esi
	movswl	%r8w, %edx
	leaq	(%rsp), %r8
	movq	%r10, %rcx
	callq	color_rgb_to_cmyk
	movslq	19540(%r14), %rax
	cmpq	$64, %rax
	je	.LBB41_15
# BB#14:                                # %if.then.i
	movw	(%rsp), %cx
	movw	%cx, (%r13,%rax,2)
.LBB41_15:                              # %if.end.i
	movslq	19544(%r14), %rax
	cmpq	$64, %rax
	je	.LBB41_17
# BB#16:                                # %if.then.8.i
	movw	2(%rsp), %cx
	movw	%cx, (%r13,%rax,2)
.LBB41_17:                              # %if.end.12.i
	movslq	19548(%r14), %rax
	cmpq	$64, %rax
	je	.LBB41_19
# BB#18:                                # %if.then.15.i
	movw	4(%rsp), %cx
	movw	%cx, (%r13,%rax,2)
.LBB41_19:                              # %if.end.19.i
	movslq	19552(%r14), %rax
	cmpq	$64, %rax
	je	.LBB41_21
# BB#20:                                # %if.then.22.i
	movw	6(%rsp), %cx
	movw	%cx, (%r13,%rax,2)
.LBB41_21:                              # %rgb_cs_to_devn_cm.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	rgb_cs_to_spotcmyk_cm, .Lfunc_end41-rgb_cs_to_spotcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_spotcmyk_cm,@function
cmyk_cs_to_spotcmyk_cm:                 # @cmyk_cs_to_spotcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp302:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp303:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp304:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp305:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp306:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp307:
	.cfi_def_cfa_offset 56
.Ltmp308:
	.cfi_offset %rbx, -56
.Ltmp309:
	.cfi_offset %r12, -48
.Ltmp310:
	.cfi_offset %r13, -40
.Ltmp311:
	.cfi_offset %r14, -32
.Ltmp312:
	.cfi_offset %r15, -24
.Ltmp313:
	.cfi_offset %rbp, -16
	movslq	100(%rdi), %rax
	testq	%rax, %rax
	jle	.LBB42_13
# BB#1:                                 # %for.body.lr.ph.i
	cmpq	$2, %rax
	movl	$1, %ebx
	cmovlq	%rax, %rbx
	notq	%rbx
	leaq	(%rbx,%rax), %r10
	cmpq	$-2, %r10
	je	.LBB42_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r10
	movq	%r10, %r15
	andq	$-16, %r15
	xorl	%ebx, %ebx
	movq	%r10, %r11
	andq	$-16, %r11
	je	.LBB42_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %ebx
	cmovlq	%rax, %rbx
	notq	%rbx
	leaq	-14(%rax,%rbx), %r14
	movl	%r14d, %ebx
	shrl	$4, %ebx
	incl	%ebx
	xorl	%r12d, %r12d
	testb	$3, %bl
	je	.LBB42_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-16(%r9,%rax,2), %rbp
	movq	%rax, %r12
	notq	%r12
	cmpq	$-2, %r12
	movl	$-2, %ebx
	cmovgl	%r12d, %ebx
	leal	-14(%rbx,%rax), %r13d
	shrl	$4, %r13d
	incl	%r13d
	andl	$3, %r13d
	negq	%r13
	xorl	%r12d, %r12d
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB42_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rbp)
	movups	%xmm0, -16(%rbp)
	addq	$16, %r12
	addq	$-32, %rbp
	incq	%r13
	jne	.LBB42_5
.LBB42_6:                               # %vector.body.preheader.split
	movq	%rax, %r13
	subq	%r15, %r13
	cmpq	$48, %r14
	jb	.LBB42_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rbx
	notq	%rbx
	cmpq	$-3, %rbx
	movq	$-2, %rbp
	cmovgq	%rbx, %rbp
	leaq	2(%rbp,%rax), %rbx
	andq	$-16, %rbx
	subq	%r12, %rbx
	addq	$-8, %rax
	subq	%r12, %rax
	leaq	(%r9,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB42_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rbx
	jne	.LBB42_8
.LBB42_9:
	movq	%r13, %rax
	movq	%r11, %rbx
.LBB42_10:                              # %middle.block
	cmpq	%rbx, %r10
	je	.LBB42_13
.LBB42_11:                              # %for.body.i.preheader
	incq	%rax
	.align	16, 0x90
.LBB42_12:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, -4(%r9,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB42_12
.LBB42_13:                              # %for.end.i
	movslq	19540(%rdi), %rax
	cmpq	$64, %rax
	je	.LBB42_15
# BB#14:                                # %if.then.i
	movw	%si, (%r9,%rax,2)
.LBB42_15:                              # %if.end.i
	movslq	19544(%rdi), %rax
	cmpq	$64, %rax
	je	.LBB42_17
# BB#16:                                # %if.then.7.i
	movw	%dx, (%r9,%rax,2)
.LBB42_17:                              # %if.end.10.i
	movslq	19548(%rdi), %rax
	cmpq	$64, %rax
	je	.LBB42_19
# BB#18:                                # %if.then.13.i
	movw	%cx, (%r9,%rax,2)
.LBB42_19:                              # %if.end.16.i
	movslq	19552(%rdi), %rax
	cmpq	$64, %rax
	je	.LBB42_21
# BB#20:                                # %if.then.19.i
	movw	%r8w, (%r9,%rax,2)
.LBB42_21:                              # %cmyk_cs_to_devn_cm.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	cmyk_cs_to_spotcmyk_cm, .Lfunc_end42-cmyk_cs_to_spotcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	devn_write_pcx_file,@function
devn_write_pcx_file:                    # @devn_write_pcx_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp314:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp315:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp316:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp317:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp318:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp319:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp320:
	.cfi_def_cfa_offset 336
.Ltmp321:
	.cfi_offset %rbx, -56
.Ltmp322:
	.cfi_offset %r12, -48
.Ltmp323:
	.cfi_offset %r13, -40
.Ltmp324:
	.cfi_offset %r14, -32
.Ltmp325:
	.cfi_offset %r15, -24
.Ltmp326:
	.cfi_offset %rbp, -16
	movq	%r8, 88(%rsp)           # 8-byte Spill
	movl	%ecx, %r15d
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	24(%r13), %rdi
	movl	$4096, %esi             # imm = 0x1000
	movl	$.L.str.38, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	cmpl	$4, %ebp
	jg	.LBB43_3
# BB#1:                                 # %entry
	cmpl	$8, %r15d
	jg	.LBB43_3
# BB#2:                                 # %if.then.i
	leal	-1(%r15), %eax
	cltq
	leal	-1(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	bpc_to_depth.depths(%rax,%rcx,8), %eax
	jmp	.LBB43_4
.LBB43_3:                               # %if.else.i
	movl	%r15d, %eax
	imull	%ebp, %eax
	addl	$7, %eax
	andl	$-8, %eax
.LBB43_4:                               # %bpc_to_depth.exit
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	$-25, %r12d
	testq	%rbx, %rbx
	je	.LBB43_60
# BB#5:                                 # %if.end
	movl	$.L.str.39, %esi
	movq	%r14, %rdi
	callq	gp_fopen
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$-9, %r12d
	testq	%rax, %rax
	je	.LBB43_6
# BB#7:                                 # %if.end.5
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gs_sprintf
	movl	$.L.str.37, %esi
	movq	%rbx, %rdi
	callq	gp_fopen
	movq	%rax, 128(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB43_8
# BB#9:                                 # %if.end.10
	movups	pcx_header_prototype+112(%rip), %xmm0
	movaps	%xmm0, 256(%rsp)
	movups	pcx_header_prototype+96(%rip), %xmm0
	movaps	%xmm0, 240(%rsp)
	movups	pcx_header_prototype+80(%rip), %xmm0
	movaps	%xmm0, 224(%rsp)
	movups	pcx_header_prototype+64(%rip), %xmm0
	movaps	%xmm0, 208(%rsp)
	movups	pcx_header_prototype+48(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	movups	pcx_header_prototype+32(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movups	pcx_header_prototype+16(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movups	pcx_header_prototype(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movb	%r15b, 147(%rsp)
	movb	%bpl, 209(%rsp)
	movl	$1, 80(%rsp)            # 4-byte Folded Spill
	cmpl	$4, %ebp
	je	.LBB43_22
# BB#10:                                # %if.end.10
	cmpl	$3, %ebp
	jne	.LBB43_11
# BB#19:                                # %sw.bb.13.i
	cmpl	$8, %r15d
	jne	.LBB43_20
# BB#21:                                # %sw.bb.14.i
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movb	$5, 145(%rsp)
	movw	$1, 212(%rsp)
	jmp	.LBB43_25
.LBB43_6:
	movq	%rbx, %rsi
	jmp	.LBB43_59
.LBB43_8:                               # %if.end.20.thread
	movq	96(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB43_57
.LBB43_22:                              # %sw.bb.18.i
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	cmpl	$1, %r15d
	jne	.LBB43_25
# BB#23:                                # %sw.bb.19.i
	movb	$2, 145(%rsp)
	leaq	160(%rsp), %rdi
	movl	$pcx_cmyk_palette, %esi
	movl	$48, %edx
	callq	memcpy
	movb	$4, 147(%rsp)
	movb	$1, 209(%rsp)
	jmp	.LBB43_24
.LBB43_11:                              # %if.end.10
	cmpl	$1, %ebp
	jne	.LBB43_12
# BB#13:                                # %sw.bb.i
	cmpl	$8, %r15d
	je	.LBB43_18
# BB#14:                                # %sw.bb.i
	cmpl	$4, %r15d
	jne	.LBB43_15
# BB#17:                                # %sw.bb.3.i
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movb	$2, 145(%rsp)
	leaq	160(%rsp), %rdi
	movl	$pcx_ega_palette, %esi
	movl	$48, %edx
	callq	memcpy
	jmp	.LBB43_25
.LBB43_20:
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	jmp	.LBB43_25
.LBB43_12:
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	jmp	.LBB43_25
.LBB43_18:                              # %sw.bb.8.i
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movb	$5, 145(%rsp)
	movw	$2, 212(%rsp)
	jmp	.LBB43_24
.LBB43_15:                              # %sw.bb.i
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	cmpl	$1, %r15d
	jne	.LBB43_25
# BB#16:                                # %sw.bb.2.i
	movb	$2, 145(%rsp)
	movw	$2, 212(%rsp)
	leaq	160(%rsp), %rdi
	movl	$.L.str.42, %esi
	movl	$6, %edx
	callq	memcpy
.LBB43_24:                              # %devn_setup_pcx_header.exit
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
.LBB43_25:                              # %devn_setup_pcx_header.exit
	movzbl	147(%rsp), %ebx
	imull	832(%r13), %ebx
	addl	$7, %ebx
	sarl	$3, %ebx
	incl	%ebx
	andl	$-2, %ebx
	movl	836(%r13), %r14d
	movq	88(%rsp), %rbp          # 8-byte Reload
	leal	(%rbx,%rbp), %esi
	movq	24(%r13), %rdi
	movl	$.L.str.43, %edx
	callq	*64(%rdi)
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB43_56
# BB#26:                                # %if.end.i
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movl	$65535, %eax            # imm = 0xFFFF
	addl	832(%r13), %eax
	movw	%ax, 152(%rsp)
	leal	65535(%r14), %eax
	movq	%r14, 72(%rsp)          # 8-byte Spill
	movw	%ax, 154(%rsp)
	cvttss2si	884(%r13), %eax
	movw	%ax, 156(%rsp)
	cvttss2si	888(%r13), %eax
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movw	%ax, 158(%rsp)
	movl	%ebp, %eax
	andl	$1, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leal	(%rax,%rbp), %eax
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	cmovnew	%bx, %ax
	cmpl	$1, 108(%rsp)           # 4-byte Folded Reload
	cmovew	%bx, %ax
	movw	%ax, 210(%rsp)
	leaq	144(%rsp), %rdi
	movl	$1, %esi
	movl	$128, %edx
	movq	128(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
	movl	$-12, %r12d
	cmpq	$128, %rax
	jb	.LBB43_50
# BB#27:                                # %for.cond.preheader.i
	xorl	%r12d, %r12d
	movq	72(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB43_50
# BB#28:                                # %for.body.lr.ph.i
	movslq	%ebp, %r14
	movq	136(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%r14), %r13
	movl	%ebx, %eax
	leaq	(%rax,%r13), %r15
	leaq	1(%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	4(%rdx), %rax
	cmpq	%rax, %r13
	cmovaq	%r13, %rax
	movq	%rdx, %rcx
	notq	%rcx
	addq	%rax, %rcx
	shrq	$2, %rcx
	leaq	(%r14,%rcx), %rax
	leaq	1(%r14,%rcx), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leaq	1(%rdx,%rax), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	1(%rdx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	addq	$2, %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB43_29:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_42 Depth 2
                                        #       Child Loop BB43_44 Depth 3
	movl	$1, %esi
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	movq	96(%rsp), %rcx          # 8-byte Reload
	callq	fread
	movq	%rax, %r12
	testl	%r12d, %r12d
	js	.LBB43_50
# BB#30:                                # %if.end.34.i
                                        #   in Loop: Header=BB43_29 Depth=1
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	je	.LBB43_31
# BB#34:                                # %if.else.i.41
                                        #   in Loop: Header=BB43_29 Depth=1
	xorl	%r12d, %r12d
	cmpl	$4, 108(%rsp)           # 4-byte Folded Reload
	movq	%rbp, %rbx
	jne	.LBB43_35
	.align	16, 0x90
.LBB43_42:                              # %for.body.49.i
                                        #   Parent Loop BB43_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB43_44 Depth 3
	movl	$1, %ebp
	movb	%r12b, %cl
	shll	%cl, %ebp
	testl	%ebx, %ebx
	movq	%r14, %rcx
	movq	%r13, %rdx
	jle	.LBB43_46
# BB#43:                                #   in Loop: Header=BB43_42 Depth=2
	movq	%rbx, %r8
	movl	%ebp, %ecx
	shll	$4, %ecx
	movq	%r13, %rdx
	movq	136(%rsp), %rsi         # 8-byte Reload
	.align	16, 0x90
.LBB43_44:                              # %for.body.54.i
                                        #   Parent Loop BB43_29 Depth=1
                                        #     Parent Loop BB43_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rsi), %edi
	testl	%ecx, %edi
	setne	%bl
	shlb	$7, %bl
	testl	%ebp, %edi
	setne	%al
	shlb	$6, %al
	orb	%bl, %al
	movzbl	1(%rsi), %edi
	testl	%ecx, %edi
	setne	%bl
	shlb	$5, %bl
	orb	%al, %bl
	testl	%ebp, %edi
	setne	%al
	shlb	$4, %al
	orb	%bl, %al
	movzbl	2(%rsi), %edi
	testl	%ecx, %edi
	setne	%bl
	shlb	$3, %bl
	orb	%al, %bl
	testl	%ebp, %edi
	setne	%al
	shlb	$2, %al
	orb	%bl, %al
	movzbl	3(%rsi), %edi
	testl	%ecx, %edi
	setne	%bl
	addb	%bl, %bl
	orb	%al, %bl
	testl	%ebp, %edi
	setne	%al
	orb	%bl, %al
	movb	%al, (%rdx)
	incq	%rdx
	addq	$4, %rsi
	cmpq	%r13, %rsi
	jb	.LBB43_44
# BB#45:                                #   in Loop: Header=BB43_42 Depth=2
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	%r8, %rbx
.LBB43_46:                              # %for.end.i
                                        #   in Loop: Header=BB43_42 Depth=2
	cmpq	%r15, %rdx
	jae	.LBB43_48
# BB#47:                                # %if.then.106.i
                                        #   in Loop: Header=BB43_42 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	movb	-1(%rax,%rcx), %al
	movb	%al, (%rdx)
.LBB43_48:                              # %if.end.108.i
                                        #   in Loop: Header=BB43_42 Depth=2
	movl	$1, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	128(%rsp), %rcx         # 8-byte Reload
	callq	devn_pcx_write_rle
	incl	%r12d
	cmpl	$4, %r12d
	jne	.LBB43_42
	jmp	.LBB43_49
	.align	16, 0x90
.LBB43_31:                              # %if.then.38.i
                                        #   in Loop: Header=BB43_29 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	%r13, %rsi
	je	.LBB43_33
# BB#32:                                # %if.then.41.i
                                        #   in Loop: Header=BB43_29 Depth=1
	movb	-1(%r13), %al
	movb	%al, (%r13)
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB43_33:                              # %if.end.43.i
                                        #   in Loop: Header=BB43_29 Depth=1
	movl	$1, %edx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
	callq	devn_pcx_write_rle
	movq	%rbp, %rbx
	jmp	.LBB43_49
.LBB43_35:                              # %if.else.i.41
                                        #   in Loop: Header=BB43_29 Depth=1
	movl	$-15, %r12d
	cmpl	$24, 108(%rsp)          # 4-byte Folded Reload
	jne	.LBB43_50
# BB#36:                                # %for.cond.112.preheader.i
                                        #   in Loop: Header=BB43_29 Depth=1
	movl	$3, %edx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	128(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rcx
	callq	devn_pcx_write_rle
	movq	56(%rsp), %rbx          # 8-byte Reload
	testb	$1, 832(%rbx)
	je	.LBB43_38
# BB#37:                                # %if.then.123.i
                                        #   in Loop: Header=BB43_29 Depth=1
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
.LBB43_38:                              # %for.inc.126.i
                                        #   in Loop: Header=BB43_29 Depth=1
	movl	$3, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbp, %rcx
	callq	devn_pcx_write_rle
	testb	$1, 832(%rbx)
	je	.LBB43_40
# BB#39:                                # %if.then.123.1.i
                                        #   in Loop: Header=BB43_29 Depth=1
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
.LBB43_40:                              # %for.inc.126.1.i
                                        #   in Loop: Header=BB43_29 Depth=1
	movl	$3, %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbp, %rcx
	callq	devn_pcx_write_rle
	testb	$1, 832(%rbx)
	movq	88(%rsp), %rbx          # 8-byte Reload
	je	.LBB43_49
# BB#41:                                # %if.then.123.2.i
                                        #   in Loop: Header=BB43_29 Depth=1
	xorl	%edi, %edi
	movq	128(%rsp), %rsi         # 8-byte Reload
	callq	fputc
	.align	16, 0x90
.LBB43_49:                              # %for.inc.131.i
                                        #   in Loop: Header=BB43_29 Depth=1
	movq	%rbx, %rbp
	movl	84(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	xorl	%r12d, %r12d
	movq	72(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB43_29
.LBB43_50:                              # %devn_pcx_write_page.exit
	movq	56(%rsp), %r13          # 8-byte Reload
	movq	24(%r13), %rdi
	movl	$.L.str.43, %edx
	movq	136(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	testl	%r12d, %r12d
	movq	32(%rsp), %rax          # 8-byte Reload
	js	.LBB43_56
# BB#51:                                # %if.then.14
	xorl	%r12d, %r12d
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmpl	$1, %ecx
	jne	.LBB43_56
# BB#52:                                # %if.then.14
	cmpl	$8, %eax
	jne	.LBB43_56
# BB#53:                                # %sw.bb.1.i
	movq	%r13, %r15
	movl	$12, %edi
	movq	128(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	callq	fputc
	movl	$256, %r14d             # imm = 0x100
	movl	$8388608, %ebp          # imm = 0x800000
	.align	16, 0x90
.LBB43_54:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebx
	shrl	$24, %ebx
	movl	%ebx, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	%ebx, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	%ebx, %edi
	movq	%r13, %rsi
	callq	fputc
	addl	$16711936, %ebp         # imm = 0xFF0100
	decl	%r14d
	jne	.LBB43_54
# BB#55:
	movq	%r15, %r13
.LBB43_56:                              # %if.end.20
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	fclose
	movq	128(%rsp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB43_58
.LBB43_57:                              # %if.then.22
	callq	fclose
.LBB43_58:                              # %if.then.26
	movq	64(%rsp), %rsi          # 8-byte Reload
.LBB43_59:                              # %if.then.26
	movq	24(%r13), %rdi
	movl	$.L.str.41, %edx
	callq	*24(%rdi)
.LBB43_60:                              # %if.end.30
	movl	%r12d, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end43:
	.size	devn_write_pcx_file, .Lfunc_end43-devn_write_pcx_file
	.cfi_endproc

	.align	16, 0x90
	.type	devn_pcx_write_rle,@function
devn_pcx_write_rle:                     # @devn_pcx_write_rle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp328:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp329:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp330:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp331:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp332:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp333:
	.cfi_def_cfa_offset 80
.Ltmp334:
	.cfi_offset %rbx, -56
.Ltmp335:
	.cfi_offset %r12, -48
.Ltmp336:
	.cfi_offset %r13, -40
.Ltmp337:
	.cfi_offset %r14, -32
.Ltmp338:
	.cfi_offset %r15, -24
.Ltmp339:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rsi, %r14
	cmpq	%r14, %rdi
	jae	.LBB44_18
# BB#1:                                 # %while.body.lr.ph
	leal	(%rdx,%rdx,4), %eax
	leal	(%rax,%rax,2), %eax
	movslq	%edx, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movslq	%eax, %rbx
	leaq	(%rcx,%rcx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB44_2:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_6 Depth 2
                                        #     Child Loop BB44_13 Depth 2
	leaq	(%rdi,%rcx), %r13
	movzbl	(%rdi), %ebp
	cmpq	%r14, %r13
	je	.LBB44_8
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB44_2 Depth=1
	movzbl	(%rdi,%rcx), %eax
	cmpl	%eax, %ebp
	jne	.LBB44_8
# BB#4:                                 # %while.cond.10.preheader
                                        #   in Loop: Header=BB44_2 Depth=1
	cmpq	%r14, %r13
	movq	%r13, %r15
	jae	.LBB44_13
# BB#5:                                 # %while.body.17.preheader
                                        #   in Loop: Header=BB44_2 Depth=1
	addq	8(%rsp), %rdi           # 8-byte Folded Reload
	.align	16, 0x90
.LBB44_6:                               # %while.body.17
                                        #   Parent Loop BB44_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %rdi
	jae	.LBB44_7
# BB#11:                                # %while.body.17.land.rhs_crit_edge
                                        #   in Loop: Header=BB44_6 Depth=2
	movzbl	(%rdi), %eax
	cmpl	%ebp, %eax
	movq	%rdi, %r15
	leaq	(%rdi,%rcx), %rdi
	je	.LBB44_6
	jmp	.LBB44_13
	.align	16, 0x90
.LBB44_8:                               # %if.then
                                        #   in Loop: Header=BB44_2 Depth=1
	cmpl	$192, %ebp
	jb	.LBB44_9
# BB#10:                                # %if.then.9
                                        #   in Loop: Header=BB44_2 Depth=1
	movl	$193, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movq	%r13, %r15
	jmp	.LBB44_17
	.align	16, 0x90
.LBB44_9:                               #   in Loop: Header=BB44_2 Depth=1
	movq	%r13, %r15
	jmp	.LBB44_17
.LBB44_7:                               #   in Loop: Header=BB44_2 Depth=1
	movq	%rdi, %r15
	jmp	.LBB44_13
	.align	16, 0x90
.LBB44_12:                              # %while.body.24
                                        #   in Loop: Header=BB44_13 Depth=2
	movl	$207, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	%ebp, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	addq	%rbx, %r13
.LBB44_13:                              # %while.body.24
                                        #   Parent Loop BB44_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	cmpq	%rbx, %rax
	jge	.LBB44_12
# BB#14:                                # %while.end.30
                                        #   in Loop: Header=BB44_2 Depth=1
	cmpl	$191, %ebp
	ja	.LBB44_16
# BB#15:                                # %while.end.30
                                        #   in Loop: Header=BB44_2 Depth=1
	cmpq	%r13, %r15
	jbe	.LBB44_17
.LBB44_16:                              # %if.then.37
                                        #   in Loop: Header=BB44_2 Depth=1
	cqto
	idivq	16(%rsp)                # 8-byte Folded Reload
	leal	193(%rax), %edi
	movq	%r12, %rsi
	callq	_IO_putc
.LBB44_17:                              # %if.end.45
                                        #   in Loop: Header=BB44_2 Depth=1
	movl	%ebp, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	cmpq	%r14, %r15
	movq	%r15, %rdi
	movq	16(%rsp), %rcx          # 8-byte Reload
	jb	.LBB44_2
.LBB44_18:                              # %while.end.48
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	devn_pcx_write_rle, .Lfunc_end44-devn_pcx_write_rle
	.cfi_endproc

	.type	bpc_to_depth.depths,@object # @bpc_to_depth.depths
	.section	.rodata,"a",@progbits
	.align	16
bpc_to_depth.depths:
	.ascii	"\001\002\000\004\b\000\000\b"
	.ascii	"\002\004\000\b\020\000\000\020"
	.ascii	"\004\b\000\020\020\000\000\030"
	.ascii	"\004\b\000\020 \000\000 "
	.size	bpc_to_depth.depths, 32

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"None"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"devn_get_color_comp_index"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"CRDDefault"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"SeparationColorNames"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"SeparationOrder"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Separations"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"PageSpotColors"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	".EquivCMYKColors"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"devicen_put_params_no_sep_order"
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"MaxSeparations"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"devn_free_params"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"devn_copy_params"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"./base/gdevdevn.c"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"    "
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"List level = %d\n"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%3d%4d%4d %d "
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%d"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	" "
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\n"
	.size	.L.str.18, 2

	.type	st_compressed_color_list,@object # @st_compressed_color_list
	.section	.rodata,"a",@progbits
	.align	8
st_compressed_color_list:
	.long	6168                    # 0x1818
	.zero	4
	.quad	.L.str.32
	.quad	0
	.quad	0
	.quad	compressed_color_list_enum_ptrs
	.quad	compressed_color_list_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_compressed_color_list, 64

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"alloc_compressed_color_list"
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"free_compressed_color_list"
	.size	.L.str.20, 27

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"free_separation_names"
	.size	.L.str.21, 22

	.type	num_comp_bits,@object   # @num_comp_bits
	.data
	.globl	num_comp_bits
	.align	16
num_comp_bits:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.size	num_comp_bits, 60

	.type	comp_bit_factor,@object # @comp_bit_factor
	.globl	comp_bit_factor
	.align	16
comp_bit_factor:
	.long	65793                   # 0x10101
	.long	65793                   # 0x10101
	.long	65793                   # 0x10101
	.long	65793                   # 0x10101
	.long	65793                   # 0x10101
	.long	65793                   # 0x10101
	.long	65793                   # 0x10101
	.long	65793                   # 0x10101
	.long	132104                  # 0x20408
	.long	266305                  # 0x41041
	.long	541200                  # 0x84210
	.long	541200                  # 0x84210
	.long	1118481                 # 0x111111
	.long	1118481                 # 0x111111
	.long	1118481                 # 0x111111
	.size	comp_bit_factor, 60

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"gx_devn_prn_device"
	.size	.L.str.22, 19

	.type	st_gx_devn_prn_device,@object # @st_gx_devn_prn_device
	.section	.rodata,"a",@progbits
	.globl	st_gx_devn_prn_device
	.align	8
st_gx_devn_prn_device:
	.long	21648                   # 0x5490
	.zero	4
	.quad	.L.str.22
	.quad	0
	.quad	0
	.quad	gx_devn_prn_device_enum_ptrs
	.quad	gx_devn_prn_device_reloc_ptrs
	.quad	static_gx_devn_prn_device_finalize
	.quad	0
	.size	st_gx_devn_prn_device, 64

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"Cyan"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Magenta"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Yellow"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Black"
	.size	.L.str.26, 6

	.type	DeviceCMYKComponents,@object # @DeviceCMYKComponents
	.data
	.globl	DeviceCMYKComponents
	.align	16
DeviceCMYKComponents:
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	0
	.size	DeviceCMYKComponents, 40

	.type	spot_cmyk_procs,@object # @spot_cmyk_procs
	.section	.rodata,"a",@progbits
	.align	8
spot_cmyk_procs:
	.quad	spotcmyk_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_devn_prn_get_params
	.quad	gx_devn_prn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_devn_prn_get_color_mapping_procs
	.quad	gx_devn_prn_get_color_comp_index
	.quad	gx_devn_prn_encode_color
	.quad	gx_devn_prn_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_devn_prn_update_spot_equivalent_colors
	.quad	gx_devn_prn_ret_devn_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	spot_cmyk_procs, 584

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"spotcmyk"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"DeviceCMYK"
	.size	.L.str.28, 11

	.type	gs_spotcmyk_device,@object # @gs_spotcmyk_device
	.section	.rodata,"a",@progbits
	.globl	gs_spotcmyk_device
	.align	8
gs_spotcmyk_device:
	.long	21648                   # 0x5490
	.zero	4
	.quad	spot_cmyk_procs
	.quad	.L.str.27
	.quad	0
	.quad	st_gx_devn_prn_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	4                       # 0x4
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.28
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	spotcmyk_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.zero	4
	.quad	DeviceCMYKComponents
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.zero	1032
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	1032
	.zero	772
	.zero	4
	.size	gs_spotcmyk_device, 21648

	.type	devicen_procs,@object   # @devicen_procs
	.align	8
devicen_procs:
	.quad	spotcmyk_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_devn_prn_get_params
	.quad	gx_devn_prn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_devn_prn_get_color_mapping_procs
	.quad	gx_devn_prn_get_color_comp_index
	.quad	gx_devn_prn_encode_color
	.quad	gx_devn_prn_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_devn_prn_update_spot_equivalent_colors
	.quad	gx_devn_prn_ret_devn_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	devicen_procs, 584

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"devicen"
	.size	.L.str.29, 8

	.type	gs_devicen_device,@object # @gs_devicen_device
	.section	.rodata,"a",@progbits
	.globl	gs_devicen_device
	.align	8
gs_devicen_device:
	.long	21648                   # 0x5490
	.zero	4
	.quad	devicen_procs
	.quad	.L.str.29
	.quad	0
	.quad	st_gx_devn_prn_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.28
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	spotcmyk_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	8                       # 0x8
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.zero	1032
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	1032
	.zero	772
	.zero	4
	.size	gs_devicen_device, 21648

	.type	spotCMYK_procs,@object  # @spotCMYK_procs
	.align	8
spotCMYK_procs:
	.quad	gray_cs_to_spotcmyk_cm
	.quad	rgb_cs_to_spotcmyk_cm
	.quad	cmyk_cs_to_spotcmyk_cm
	.size	spotCMYK_procs, 24

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\000\000\377\377UU\222I\021\021\204!\020A@\201\001\001\002\001\004\001\b\001\020\001 \001@\001\200\001"
	.size	.L.str.30, 33

	.type	.L__func__.copy_color_list,@object # @__func__.copy_color_list
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.copy_color_list:
	.asciz	"copy_color_list"
	.size	.L__func__.copy_color_list, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"copy_color_list allocation error"
	.size	.L.str.31, 33

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"encode color list"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"spotcmyk_print_page(in)"
	.size	.L.str.33, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"spotcmyk_print_page(buf)"
	.size	.L.str.34, 25

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"spotcmyk_print_page(spotname)"
	.size	.L.str.35, 30

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%ss%d"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"wb"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"devn_write_pcx_file(outname)"
	.size	.L.str.38, 29

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"rb"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%s.pcx"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"spotcmyk_print_page(outname)"
	.size	.L.str.41, 29

	.type	pcx_header_prototype,@object # @pcx_header_prototype
	.section	.rodata,"a",@progbits
	.align	2
pcx_header_prototype:
	.byte	10                      # 0xa
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	48
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	58
	.size	pcx_header_prototype, 128

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\000\000\000\377\377\377"
	.size	.L.str.42, 7

	.type	pcx_ega_palette,@object # @pcx_ega_palette
	.align	16
pcx_ega_palette:
	.ascii	"\000\000\000\000\000\252\000\252\000\000\252\252\252\000\000\252\000\252\252\252\000\252\252\252UUUUU\377U\377UU\377\377\377UU\377U\377\377\377U\377\377\377"
	.size	pcx_ega_palette, 48

	.type	pcx_cmyk_palette,@object # @pcx_cmyk_palette
	.align	16
pcx_cmyk_palette:
	.ascii	"\377\377\377\000\000\000\377\377\000\017\017\000\377\000\377\017\000\017\377\000\000\017\000\000\000\377\377\000\017\017\000\377\000\000\017\000\000\000\377\000\000\017\037\037\037\017\017\017"
	.size	pcx_cmyk_palette, 48

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"pcx file buffer"
	.size	.L.str.43, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
