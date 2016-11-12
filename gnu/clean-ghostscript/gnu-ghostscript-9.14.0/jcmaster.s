	.text
	.file	"jcmaster.bc"
	.globl	jpeg_calc_jpeg_dimensions
	.align	16, 0x90
	.type	jpeg_calc_jpeg_dimensions,@function
jpeg_calc_jpeg_dimensions:              # @jpeg_calc_jpeg_dimensions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$16777215, 48(%rbx)     # imm = 0xFFFFFF
	ja	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$16777216, 52(%rbx)     # imm = 0x1000000
	jb	.LBB0_3
.LBB0_2:                                # %if.then
	movq	(%rbx), %rax
	movl	$42, 40(%rax)
	movl	$65500, 44(%rax)        # imm = 0xFFDC
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_3:                                # %if.end
	movl	72(%rbx), %edx
	movslq	476(%rbx), %rax
	movl	76(%rbx), %ecx
	imull	%eax, %ecx
	cmpl	%ecx, %edx
	jae	.LBB0_4
# BB#5:                                 # %if.else
	leal	(%rdx,%rdx), %esi
	cmpl	%ecx, %esi
	jae	.LBB0_6
# BB#7:                                 # %if.else.39
	leal	(%rdx,%rdx,2), %edi
	cmpl	%ecx, %edi
	jae	.LBB0_8
# BB#9:                                 # %if.else.66
	leal	(,%rdx,4), %r8d
	cmpl	%ecx, %r8d
	jae	.LBB0_10
# BB#11:                                # %if.else.93
	leal	(%rdx,%rdx,4), %edi
	cmpl	%ecx, %edi
	jae	.LBB0_12
# BB#13:                                # %if.else.120
	leal	(%rsi,%rsi,2), %edi
	cmpl	%ecx, %edi
	jae	.LBB0_14
# BB#15:                                # %if.else.147
	imull	$7, %edx, %edi
	cmpl	%ecx, %edi
	jae	.LBB0_16
# BB#17:                                # %if.else.174
	leal	(,%rdx,8), %edi
	cmpl	%ecx, %edi
	jae	.LBB0_18
# BB#19:                                # %if.else.201
	leal	(%rdx,%rdx,8), %edi
	cmpl	%ecx, %edi
	jae	.LBB0_20
# BB#21:                                # %if.else.228
	leal	(%rsi,%rsi,4), %esi
	cmpl	%ecx, %esi
	jae	.LBB0_22
# BB#23:                                # %if.else.255
	imull	$11, %edx, %esi
	cmpl	%ecx, %esi
	jae	.LBB0_24
# BB#25:                                # %if.else.282
	leal	(%r8,%r8,2), %esi
	cmpl	%ecx, %esi
	jae	.LBB0_26
# BB#27:                                # %if.else.309
	imull	$13, %edx, %esi
	cmpl	%ecx, %esi
	jae	.LBB0_28
# BB#29:                                # %if.else.336
	imull	$14, %edx, %esi
	cmpl	%ecx, %esi
	jae	.LBB0_30
# BB#31:                                # %if.else.363
	leal	(%rdx,%rdx,4), %edx
	leal	(%rdx,%rdx,2), %edx
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	cmpl	%ecx, %edx
	jae	.LBB0_32
# BB#33:                                # %if.else.390
	movl	$16, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$16, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$16, 360(%rbx)
	movl	$16, 364(%rbx)
	popq	%rbx
	retq
.LBB0_4:                                # %if.then.7
	movl	48(%rbx), %ecx
	imull	%eax, %ecx
	movl	%ecx, 80(%rbx)
	imull	52(%rbx), %eax
	movl	%eax, 84(%rbx)
	movl	$1, 360(%rbx)
	movl	$1, 364(%rbx)
	popq	%rbx
	retq
.LBB0_6:                                # %if.then.21
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$2, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$2, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$2, 360(%rbx)
	movl	$2, 364(%rbx)
	popq	%rbx
	retq
.LBB0_8:                                # %if.then.47
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$3, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$3, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$3, 360(%rbx)
	movl	$3, 364(%rbx)
	popq	%rbx
	retq
.LBB0_10:                               # %if.then.74
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$4, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$4, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$4, 360(%rbx)
	movl	$4, 364(%rbx)
	popq	%rbx
	retq
.LBB0_12:                               # %if.then.101
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$5, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$5, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$5, 360(%rbx)
	movl	$5, 364(%rbx)
	popq	%rbx
	retq
.LBB0_14:                               # %if.then.128
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$6, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$6, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$6, 360(%rbx)
	movl	$6, 364(%rbx)
	popq	%rbx
	retq
.LBB0_16:                               # %if.then.155
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$7, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$7, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$7, 360(%rbx)
	movl	$7, 364(%rbx)
	popq	%rbx
	retq
.LBB0_18:                               # %if.then.182
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$8, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$8, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$8, 360(%rbx)
	movl	$8, 364(%rbx)
	popq	%rbx
	retq
.LBB0_20:                               # %if.then.209
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$9, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$9, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$9, 360(%rbx)
	movl	$9, 364(%rbx)
	popq	%rbx
	retq
.LBB0_22:                               # %if.then.236
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$10, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$10, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$10, 360(%rbx)
	movl	$10, 364(%rbx)
	popq	%rbx
	retq
.LBB0_24:                               # %if.then.263
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$11, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$11, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$11, 360(%rbx)
	movl	$11, 364(%rbx)
	popq	%rbx
	retq
.LBB0_26:                               # %if.then.290
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$12, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$12, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$12, 360(%rbx)
	movl	$12, 364(%rbx)
	popq	%rbx
	retq
.LBB0_28:                               # %if.then.317
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$13, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$13, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$13, 360(%rbx)
	movl	$13, 364(%rbx)
	popq	%rbx
	retq
.LBB0_30:                               # %if.then.344
	movl	48(%rbx), %edi
	imulq	%rax, %rdi
	movl	$14, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$14, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$14, 360(%rbx)
	movl	$14, 364(%rbx)
	popq	%rbx
	retq
.LBB0_32:                               # %if.then.371
	movl	$15, %esi
	callq	jdiv_round_up
	movl	%eax, 80(%rbx)
	movl	52(%rbx), %eax
	movslq	476(%rbx), %rdi
	imulq	%rax, %rdi
	movl	$15, %esi
	callq	jdiv_round_up
	movl	%eax, 84(%rbx)
	movl	$15, 360(%rbx)
	movl	$15, 364(%rbx)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	jpeg_calc_jpeg_dimensions, .Lfunc_end0-jpeg_calc_jpeg_dimensions
	.cfi_endproc

	.globl	jinit_c_master_control
	.align	16, 0x90
	.type	jinit_c_master_control,@function
jinit_c_master_control:                 # @jinit_c_master_control
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 64
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r13
	movq	8(%r13), %rax
	movl	$1, %esi
	movl	$48, %edx
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 496(%r13)
	movl	$pass_startup, %eax
	movd	%rax, %xmm0
	movl	$prepare_for_pass, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, (%r14)
	movq	$finish_pass_master, 16(%r14)
	movl	$0, 28(%r14)
	testl	%r15d, %r15d
	je	.LBB1_4
# BB#1:                                 # %if.then.i
	movl	360(%r13), %eax
	cmpl	364(%r13), %eax
	je	.LBB1_3
# BB#2:                                 # %if.then.i.i
	movq	(%r13), %rcx
	movl	$7, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	364(%r13), %eax
	movl	%eax, 48(%rcx)
	movq	%r13, %rdi
	callq	*(%rcx)
	movl	360(%r13), %eax
.LBB1_3:                                # %jpeg_calc_trans_dimensions.exit.i
	movl	%eax, 476(%r13)
	jmp	.LBB1_5
.LBB1_4:                                # %if.else.i
	movq	%r13, %rdi
	callq	jpeg_calc_jpeg_dimensions
	movl	476(%r13), %eax
.LBB1_5:                                # %if.end.i
	leal	-1(%rax), %ecx
	cmpl	$16, %ecx
	jb	.LBB1_7
# BB#6:                                 # %if.then.3.i
	movq	(%r13), %rcx
	movl	$7, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	476(%r13), %eax
	movl	%eax, 48(%rcx)
	movq	%r13, %rdi
	callq	*(%rcx)
	movl	476(%r13), %eax
.LBB1_7:                                # %if.end.12.i
	addl	$-2, %eax
	cmpl	$5, %eax
	jbe	.LBB1_8
# BB#15:                                # %sw.default.i
	movq	$jpeg_natural_order, 480(%r13)
.LBB1_16:                               # %sw.epilog.i
	movl	476(%r13), %eax
	movl	%eax, %ecx
	imull	%ecx, %ecx
	decl	%ecx
	cmpl	$8, %eax
	movl	$63, %eax
	cmovll	%ecx, %eax
	movl	%eax, 488(%r13)
	movl	84(%r13), %eax
	testl	%eax, %eax
	je	.LBB1_19
# BB#17:                                # %lor.lhs.false.30.i
	cmpl	$0, 80(%r13)
	je	.LBB1_19
# BB#18:                                # %lor.lhs.false.32.i
	cmpl	$0, 92(%r13)
	jg	.LBB1_20
.LBB1_19:                               # %if.then.34.i
	movq	(%r13), %rax
	movl	$33, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	movl	84(%r13), %eax
.LBB1_20:                               # %if.end.39.i
	cmpl	$65500, %eax            # imm = 0xFFDC
	ja	.LBB1_22
# BB#21:                                # %lor.lhs.false.43.i
	cmpl	$65501, 80(%r13)        # imm = 0xFFDD
	jb	.LBB1_23
.LBB1_22:                               # %if.then.48.i
	movq	(%r13), %rax
	movl	$42, 40(%rax)
	movl	$65500, 44(%rax)        # imm = 0xFFDC
	movq	%r13, %rdi
	callq	*(%rax)
.LBB1_23:                               # %if.end.57.i
	movl	88(%r13), %eax
	leal	-8(%rax), %ecx
	cmpl	$5, %ecx
	jb	.LBB1_25
# BB#24:                                # %if.then.64.i
	movq	(%r13), %rcx
	movl	$16, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r13, %rdi
	callq	*(%rcx)
.LBB1_25:                               # %if.end.74.i
	movl	92(%r13), %r8d
	cmpl	$11, %r8d
	jl	.LBB1_27
# BB#26:                                # %if.then.78.i
	movq	(%r13), %rcx
	movl	$27, 40(%rcx)
	movl	%r8d, 44(%rcx)
	movl	$10, 48(%rcx)
	movq	%r13, %rdi
	callq	*(%rcx)
	movl	92(%r13), %r8d
.LBB1_27:                               # %if.end.92.i
	movabsq	$4294967297, %rcx       # imm = 0x100000001
	movq	%rcx, 352(%r13)
	movl	$1, %ecx
	testl	%r8d, %r8d
	jle	.LBB1_51
# BB#28:                                # %for.body.lr.ph.i
	movq	104(%r13), %rbp
	addq	$12, %rbp
	xorl	%ebx, %ebx
	movl	$1, %ecx
	movl	$1, %esi
	.align	16, 0x90
.LBB1_29:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %edx
	leal	-1(%rdx), %edi
	cmpl	$3, %edi
	ja	.LBB1_31
# BB#30:                                # %lor.lhs.false.102.i
                                        #   in Loop: Header=BB1_29 Depth=1
	movl	(%rbp), %edi
	leal	-1(%rdi), %eax
	cmpl	$4, %eax
	jb	.LBB1_32
.LBB1_31:                               # %if.then.109.i
                                        #   in Loop: Header=BB1_29 Depth=1
	movq	(%r13), %rax
	movl	$19, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	movl	92(%r13), %r8d
	movl	352(%r13), %esi
	movl	-4(%rbp), %edx
	movl	(%rbp), %edi
	movl	356(%r13), %ecx
.LBB1_32:                               # %if.end.114.i
                                        #   in Loop: Header=BB1_29 Depth=1
	movl	%ecx, %eax
	cmpl	%edx, %esi
	cmovgel	%esi, %edx
	movl	%edx, 352(%r13)
	cmpl	%edi, %eax
	movl	%edi, %ecx
	cmovgel	%eax, %ecx
	movl	%ecx, 356(%r13)
	incl	%ebx
	addq	$96, %rbp
	cmpl	%r8d, %ebx
	movl	%edx, %esi
	jl	.LBB1_29
# BB#33:                                # %for.end.i
	testl	%r8d, %r8d
	jle	.LBB1_51
# BB#34:                                # %for.body.142.lr.ph.i
	movl	%r15d, 4(%rsp)          # 4-byte Spill
	movq	104(%r13), %r15
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_35:                               # %for.body.142.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_43 Depth 2
	movl	%r12d, 4(%r15)
	movl	360(%r13), %r8d
	movl	$8, %esi
	cmpl	$0, 304(%r13)
	jne	.LBB1_37
# BB#36:                                # %select.mid
                                        #   in Loop: Header=BB1_35 Depth=1
	movl	$4, %esi
.LBB1_37:                               # %select.end
                                        #   in Loop: Header=BB1_35 Depth=1
	movl	$1, %ebx
	cmpl	%esi, %r8d
	movl	$1, %edi
	jg	.LBB1_41
# BB#38:                                # %land.rhs.lr.ph.i
                                        #   in Loop: Header=BB1_35 Depth=1
	movl	352(%r13), %r9d
	movl	8(%r15), %r10d
	movl	$1, %ecx
	.align	16, 0x90
.LBB1_39:                               # %land.rhs.i
                                        #   Parent Loop BB1_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edi
	leal	(%rdi,%rdi), %ecx
	movl	%ecx, %ebp
	imull	%r10d, %ebp
	movl	%r9d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.LBB1_41
# BB#40:                                # %while.body.i
                                        #   in Loop: Header=BB1_39 Depth=2
	movl	%ecx, %eax
	imull	%r8d, %eax
	cmpl	%esi, %eax
	movl	%ecx, %edi
	jle	.LBB1_39
.LBB1_41:                               # %while.end.i
                                        #   in Loop: Header=BB1_35 Depth=1
	imull	%r8d, %edi
	movl	%edi, 36(%r15)
	movl	364(%r13), %r10d
	cmpl	%esi, %r10d
	jg	.LBB1_45
# BB#42:                                # %land.rhs.164.lr.ph.i
                                        #   in Loop: Header=BB1_35 Depth=1
	movl	356(%r13), %r8d
	movl	12(%r15), %r9d
	movl	$1, %ecx
	.align	16, 0x90
.LBB1_43:                               # %land.rhs.164.i
                                        #   Parent Loop BB1_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %ebx
	leal	(%rbx,%rbx), %ecx
	movl	%ecx, %ebp
	imull	%r9d, %ebp
	movl	%r8d, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.LBB1_45
# BB#44:                                # %while.body.173.i
                                        #   in Loop: Header=BB1_43 Depth=2
	movl	%ecx, %eax
	imull	%r10d, %eax
	cmpl	%esi, %eax
	movl	%ecx, %ebx
	jle	.LBB1_43
.LBB1_45:                               # %while.end.175.i
                                        #   in Loop: Header=BB1_35 Depth=1
	imull	%r10d, %ebx
	movl	%ebx, 40(%r15)
	leal	(%rbx,%rbx), %eax
	cmpl	%eax, %edi
	jle	.LBB1_47
# BB#46:                                # %if.then.183.i
                                        #   in Loop: Header=BB1_35 Depth=1
	movl	%eax, 36(%r15)
	jmp	.LBB1_49
	.align	16, 0x90
.LBB1_47:                               # %if.else.187.i
                                        #   in Loop: Header=BB1_35 Depth=1
	addl	%edi, %edi
	cmpl	%edi, %ebx
	jle	.LBB1_49
# BB#48:                                # %if.then.193.i
                                        #   in Loop: Header=BB1_35 Depth=1
	movl	%edi, 40(%r15)
.LBB1_49:                               # %if.end.198.i
                                        #   in Loop: Header=BB1_35 Depth=1
	movl	80(%r13), %eax
	movslq	8(%r15), %rdi
	imulq	%rax, %rdi
	movslq	476(%r13), %rax
	movslq	352(%r13), %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 28(%r15)
	movl	84(%r13), %eax
	movslq	12(%r15), %rdi
	imulq	%rax, %rdi
	movslq	476(%r13), %rax
	movslq	356(%r13), %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 32(%r15)
	movl	80(%r13), %eax
	movslq	36(%r15), %rcx
	movslq	8(%r15), %rdi
	imulq	%rcx, %rdi
	imulq	%rax, %rdi
	movslq	476(%r13), %rax
	movslq	352(%r13), %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 44(%r15)
	movl	84(%r13), %eax
	movslq	40(%r15), %rcx
	movslq	12(%r15), %rdi
	imulq	%rcx, %rdi
	imulq	%rax, %rdi
	movslq	476(%r13), %rax
	movslq	356(%r13), %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 48(%r15)
	movl	$0, 52(%r15)
	incl	%r12d
	addq	$96, %r15
	cmpl	92(%r13), %r12d
	jl	.LBB1_35
# BB#50:                                # %for.cond.138.for.end.249_crit_edge.i
	movl	356(%r13), %ecx
	movl	4(%rsp), %r15d          # 4-byte Reload
.LBB1_51:                               # %initial_setup.exit
	movl	84(%r13), %edi
	movslq	476(%r13), %rax
	movslq	%ecx, %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 368(%r13)
	cmpq	$0, 280(%r13)
	je	.LBB1_53
# BB#52:                                # %if.then
	movq	(%r13), %rax
	movl	$49, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	jmp	.LBB1_54
.LBB1_8:                                # %if.end.12.i
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_9:                                # %sw.bb.i
	movq	$jpeg_natural_order2, 480(%r13)
	jmp	.LBB1_16
.LBB1_53:                               # %if.else
	movl	$0, 348(%r13)
	movl	$1, 272(%r13)
.LBB1_54:                               # %if.end
	movl	296(%r13), %eax
	testl	%eax, %eax
	je	.LBB1_56
# BB#55:                                # %if.then.10
	movl	$0, 292(%r13)
	jmp	.LBB1_60
.LBB1_56:                               # %if.else.11
	xorl	%eax, %eax
	cmpl	$0, 292(%r13)
	jne	.LBB1_60
# BB#57:                                # %land.lhs.true
	cmpl	$0, 348(%r13)
	jne	.LBB1_59
# BB#58:                                # %lor.lhs.false
	movl	476(%r13), %ecx
	addl	$-2, %ecx
	cmpl	$5, %ecx
	ja	.LBB1_60
.LBB1_59:                               # %if.then.20
	movl	$1, 296(%r13)
	movl	$1, %eax
.LBB1_60:                               # %if.end.23
	testl	%r15d, %r15d
	je	.LBB1_64
# BB#61:                                # %if.then.25
	testl	%eax, %eax
	je	.LBB1_63
# BB#62:                                # %if.then.28
	movl	$1, 32(%r14)
	jmp	.LBB1_65
.LBB1_64:                               # %if.else.32
	movl	$0, 32(%r14)
	jmp	.LBB1_65
.LBB1_63:                               # %if.else.29
	movl	$2, 32(%r14)
.LBB1_65:                               # %if.end.34
	movl	$0, 44(%r14)
	movl	$0, 36(%r14)
	testl	%eax, %eax
	movl	272(%r13), %eax
	je	.LBB1_67
# BB#66:                                # %if.then.37
	addl	%eax, %eax
.LBB1_67:                               # %if.else.39
	movl	%eax, 40(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_10:                               # %sw.bb.14.i
	movq	$jpeg_natural_order3, 480(%r13)
	jmp	.LBB1_16
.LBB1_11:                               # %sw.bb.16.i
	movq	$jpeg_natural_order4, 480(%r13)
	jmp	.LBB1_16
.LBB1_12:                               # %sw.bb.18.i
	movq	$jpeg_natural_order5, 480(%r13)
	jmp	.LBB1_16
.LBB1_13:                               # %sw.bb.20.i
	movq	$jpeg_natural_order6, 480(%r13)
	jmp	.LBB1_16
.LBB1_14:                               # %sw.bb.22.i
	movq	$jpeg_natural_order7, 480(%r13)
	jmp	.LBB1_16
.Lfunc_end1:
	.size	jinit_c_master_control, .Lfunc_end1-jinit_c_master_control
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_9
	.quad	.LBB1_10
	.quad	.LBB1_11
	.quad	.LBB1_12
	.quad	.LBB1_13
	.quad	.LBB1_14

	.text
	.align	16, 0x90
	.type	prepare_for_pass,@function
prepare_for_pass:                       # @prepare_for_pass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	496(%rbx), %r14
	movl	32(%r14), %eax
	cmpl	$2, %eax
	jne	.LBB2_1
# BB#14:                                # %sw.bb.17
	cmpl	$0, 296(%rbx)
	jne	.LBB2_21
# BB#15:                                # %if.then.20
	movl	92(%rbx), %eax
	cmpl	$5, %eax
	jl	.LBB2_17
# BB#16:                                # %if.then.i.55
	movq	(%rbx), %rcx
	movl	$27, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	$4, 48(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
	movl	92(%rbx), %eax
.LBB2_17:                               # %if.end.i.58
	movl	%eax, 372(%rbx)
	testl	%eax, %eax
	jle	.LBB2_20
# BB#18:                                # %for.body.lr.ph.i.60
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_19:                               # %for.body.i.66
                                        # =>This Inner Loop Header: Depth=1
	movq	104(%rbx), %rdx
	addq	%rax, %rdx
	movq	%rdx, 376(%rbx,%rcx,8)
	incq	%rcx
	movslq	92(%rbx), %rdx
	addq	$96, %rax
	cmpq	%rdx, %rcx
	jl	.LBB2_19
.LBB2_20:                               # %select_scan_parameters.exit74
	movl	$0, 460(%rbx)
	movl	476(%rbx), %eax
	imull	%eax, %eax
	decl	%eax
	movl	%eax, 464(%rbx)
	movl	$0, 468(%rbx)
	movl	$0, 472(%rbx)
	movq	%rbx, %rdi
	callq	per_scan_setup
.LBB2_21:                               # %if.end.21
	movq	560(%rbx), %rax
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	520(%rbx), %rax
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
	cmpl	$0, 44(%r14)
	jne	.LBB2_23
# BB#22:                                # %if.then.27
	movq	528(%rbx), %rax
	movq	%rbx, %rdi
	callq	*8(%rax)
.LBB2_23:                               # %if.end.29
	movq	528(%rbx), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
	movl	$0, 24(%r14)
	jmp	.LBB2_25
.LBB2_1:                                # %entry
	testl	%eax, %eax
	jne	.LBB2_24
# BB#2:                                 # %sw.bb
	movl	92(%rbx), %eax
	cmpl	$5, %eax
	jl	.LBB2_4
# BB#3:                                 # %if.then.i
	movq	(%rbx), %rcx
	movl	$27, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	$4, 48(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
	movl	92(%rbx), %eax
.LBB2_4:                                # %if.end.i
	movl	%eax, 372(%rbx)
	testl	%eax, %eax
	jle	.LBB2_7
# BB#5:                                 # %for.body.lr.ph.i
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	104(%rbx), %rdx
	addq	%rax, %rdx
	movq	%rdx, 376(%rbx,%rcx,8)
	incq	%rcx
	movslq	92(%rbx), %rdx
	addq	$96, %rax
	cmpq	%rdx, %rcx
	jl	.LBB2_6
.LBB2_7:                                # %select_scan_parameters.exit
	movl	$0, 460(%rbx)
	movl	476(%rbx), %eax
	imull	%eax, %eax
	decl	%eax
	movl	%eax, 464(%rbx)
	movl	$0, 468(%rbx)
	movl	$0, 472(%rbx)
	movq	%rbx, %rdi
	callq	per_scan_setup
	cmpl	$0, 288(%rbx)
	jne	.LBB2_9
# BB#8:                                 # %if.then
	movq	536(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	544(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	512(%rbx), %rax
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB2_9:                                # %if.end
	movq	552(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	560(%rbx), %rax
	movl	296(%rbx), %esi
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	520(%rbx), %rax
	movq	(%rax), %rax
	movl	$3, %esi
	cmpl	$1, 40(%r14)
	jg	.LBB2_11
# BB#10:                                # %select.mid
	xorl	%esi, %esi
.LBB2_11:                               # %select.end
	movq	%rbx, %rdi
	callq	*%rax
	movq	504(%rbx), %rax
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
	cmpl	$0, 296(%rbx)
	je	.LBB2_13
# BB#12:                                # %if.then.13
	movl	$0, 24(%r14)
	jmp	.LBB2_25
.LBB2_24:                               # %sw.default
	movq	(%rbx), %rax
	movl	$49, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	jmp	.LBB2_25
.LBB2_13:                               # %if.else
	movl	$1, 24(%r14)
.LBB2_25:                               # %sw.epilog
	movl	36(%r14), %eax
	movl	40(%r14), %ecx
	leal	-1(%rcx), %edx
	cmpl	%edx, %eax
	sete	%dl
	movzbl	%dl, %edx
	movl	%edx, 28(%r14)
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB2_27
# BB#26:                                # %if.then.40
	movl	%eax, 24(%rdx)
	movl	%ecx, 28(%rdx)
.LBB2_27:                               # %if.end.46
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	prepare_for_pass, .Lfunc_end2-prepare_for_pass
	.cfi_endproc

	.align	16, 0x90
	.type	pass_startup,@function
pass_startup:                           # @pass_startup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	496(%rbx), %rax
	movl	$0, 24(%rax)
	movq	528(%rbx), %rax
	callq	*8(%rax)
	movq	528(%rbx), %rax
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*16(%rax)               # TAILCALL
.Lfunc_end3:
	.size	pass_startup, .Lfunc_end3-pass_startup
	.cfi_endproc

	.align	16, 0x90
	.type	finish_pass_master,@function
finish_pass_master:                     # @finish_pass_master
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 32
.Ltmp25:
	.cfi_offset %rbx, -24
.Ltmp26:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	496(%rbx), %r14
	movq	560(%rbx), %rax
	callq	*16(%rax)
	movl	32(%r14), %eax
	cmpl	$2, %eax
	je	.LBB4_5
# BB#1:                                 # %entry
	cmpl	$1, %eax
	jne	.LBB4_2
# BB#4:                                 # %sw.bb.4
	movl	$2, 32(%r14)
	jmp	.LBB4_8
.LBB4_5:                                # %sw.bb.6
	cmpl	$0, 296(%rbx)
	je	.LBB4_7
# BB#6:                                 # %if.then.9
	movl	$1, 32(%r14)
	jmp	.LBB4_7
.LBB4_2:                                # %entry
	testl	%eax, %eax
	jne	.LBB4_8
# BB#3:                                 # %sw.bb
	movl	$2, 32(%r14)
	cmpl	$0, 296(%rbx)
	jne	.LBB4_8
.LBB4_7:                                # %if.end.11
	incl	44(%r14)
.LBB4_8:                                # %sw.epilog
	incl	36(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	finish_pass_master, .Lfunc_end4-finish_pass_master
	.cfi_endproc

	.align	16, 0x90
	.type	per_scan_setup,@function
per_scan_setup:                         # @per_scan_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 32
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	372(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB5_5
# BB#1:                                 # %if.then
	movq	376(%rbx), %rcx
	movl	28(%rcx), %eax
	movl	%eax, 408(%rbx)
	movl	32(%rcx), %eax
	movl	%eax, 412(%rbx)
	movabsq	$4294967297, %rdx       # imm = 0x100000001
	movq	%rdx, 56(%rcx)
	movl	$1, 64(%rcx)
	movl	36(%rcx), %edx
	movl	%edx, 68(%rcx)
	movl	$1, 72(%rcx)
	movl	12(%rcx), %esi
	xorl	%edx, %edx
	divl	%esi
	testl	%edx, %edx
	cmovel	%esi, %edx
	movl	%edx, 76(%rcx)
	movq	$1, 416(%rbx)
	jmp	.LBB5_2
.LBB5_5:                                # %if.else
	leal	-1(%rax), %ecx
	cmpl	$4, %ecx
	jb	.LBB5_7
# BB#6:                                 # %if.then.11
	movq	(%rbx), %rcx
	movl	$27, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	$4, 48(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB5_7:                                # %if.end.20
	movl	80(%rbx), %edi
	movslq	476(%rbx), %rax
	movslq	352(%rbx), %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 408(%rbx)
	movl	84(%rbx), %edi
	movslq	476(%rbx), %rax
	movslq	356(%rbx), %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 412(%rbx)
	movl	$0, 416(%rbx)
	cmpl	$0, 372(%rbx)
	jle	.LBB5_2
# BB#8:                                 # %for.body.lr.ph
	xorl	%r8d, %r8d
	xorl	%r14d, %r14d
	jmp	.LBB5_9
	.align	16, 0x90
.LBB5_15:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	416(%rbx), %r8d
.LBB5_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_13 Depth 2
	movq	376(%rbx,%r14,8), %rsi
	movl	8(%rsi), %edi
	movl	%edi, 56(%rsi)
	movl	12(%rsi), %ecx
	movl	%ecx, 60(%rsi)
	movl	%ecx, %ebp
	imull	%edi, %ebp
	movl	%ebp, 64(%rsi)
	movl	36(%rsi), %eax
	imull	%edi, %eax
	movl	%eax, 68(%rsi)
	movl	28(%rsi), %eax
	xorl	%edx, %edx
	divl	%edi
	testl	%edx, %edx
	cmovel	%edi, %edx
	movl	%edx, 72(%rsi)
	movl	32(%rsi), %eax
	xorl	%edx, %edx
	divl	%ecx
	testl	%edx, %edx
	cmovel	%ecx, %edx
	movl	%edx, 76(%rsi)
	addl	%ebp, %r8d
	cmpl	$11, %r8d
	jl	.LBB5_11
# BB#10:                                # %if.then.70
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	(%rbx), %rax
	movl	$14, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB5_11:                               # %while.cond.preheader
                                        #   in Loop: Header=BB5_9 Depth=1
	testl	%ebp, %ebp
	jle	.LBB5_14
# BB#12:                                # %while.body.preheader
                                        #   in Loop: Header=BB5_9 Depth=1
	incl	%ebp
	.align	16, 0x90
.LBB5_13:                               # %while.body
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	416(%rbx), %rax
	leal	1(%rax), %ecx
	movl	%ecx, 416(%rbx)
	movl	%r14d, 420(%rbx,%rax,4)
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB5_13
.LBB5_14:                               # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=1
	incq	%r14
	movslq	372(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB5_15
.LBB5_2:                                # %if.end.83
	movslq	320(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB5_4
# BB#3:                                 # %if.then.86
	movl	408(%rbx), %ecx
	imulq	%rax, %rcx
	cmpq	$65535, %rcx            # imm = 0xFFFF
	movl	$65535, %eax            # imm = 0xFFFF
	cmovll	%ecx, %eax
	movl	%eax, 316(%rbx)
.LBB5_4:                                # %if.end.96
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	per_scan_setup, .Lfunc_end5-per_scan_setup
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
