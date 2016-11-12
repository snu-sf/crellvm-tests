	.text
	.file	"gxdevndi.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	gx_render_device_DeviceN
	.align	16, 0x90
	.type	gx_render_device_DeviceN,@function
gx_render_device_DeviceN:               # @gx_render_device_DeviceN
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
	subq	$904, %rsp              # imm = 0x388
.Ltmp6:
	.cfi_def_cfa_offset 960
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
	movq	%r8, %r12
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	100(%r14), %esi
	testl	%esi, %esi
	jle	.LBB0_33
# BB#1:                                 # %for.body.lr.ph
	movzbl	110(%r14), %r8d
	leaq	120(%r14), %r10
	leaq	124(%r14), %rcx
	xorl	%ebp, %ebp
	testb	$1, %sil
	je	.LBB0_3
# BB#2:                                 # %for.body.prol
	testb	%r8b, %r8b
	movq	%rcx, %rax
	cmoveq	%r10, %rax
	movl	(%rax), %eax
	decl	%eax
	movl	%eax, 640(%rsp)
	movl	$1, %ebp
.LBB0_3:                                # %for.body.lr.ph.split
	cmpl	$1, %esi
	je	.LBB0_6
# BB#4:                                 # %for.body.lr.ph.split.split
	movl	%r8d, %eax
	subl	%ebp, %eax
	leaq	4(,%rbp,4), %r9
	leaq	640(%rsp), %rbx
	orq	%r9, %rbx
	.align	16, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	movq	%rcx, %rdx
	cmoveq	%r10, %rdx
	movl	(%rdx), %edx
	decl	%edx
	movl	%edx, -4(%rbx)
	leal	1(%rbp), %edx
	cmpl	%edx, %r8d
	movq	%rcx, %rdx
	cmoveq	%r10, %rdx
	movl	(%rdx), %edx
	decl	%edx
	movl	%edx, (%rbx)
	addq	$2, %rbp
	addl	$-2, %eax
	addq	$8, %rbx
	cmpl	%esi, %ebp
	jne	.LBB0_5
.LBB0_6:                                # %for.cond.7.preheader
	testl	%esi, %esi
	jle	.LBB0_33
# BB#7:                                 # %for.body.10.lr.ph
	xorl	%ebp, %ebp
	movl	$14, %r9d
	movabsq	$3941491667408409, %r8  # imm = 0xE00C40AB89619
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_8:                                # %for.body.10
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	testq	%r13, %r13
	je	.LBB0_10
# BB#9:                                 # %cond.true.11
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	200(%r13), %rax
	movl	(%rax,%r9,4), %eax
.LBB0_10:                               # %cond.end.15
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	%eax, %r10d
	movl	640(%rsp,%rbp,4), %r11d
	movq	%r11, %rax
	imulq	%r10, %rax
	incq	%rax
	movswq	(%rdi,%rbp,2), %rcx
	imulq	%rax, %rcx
	movq	%rcx, %rax
	mulq	%r8
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$14, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%r10
	movl	%ebx, %ecx
	orl	%edx, %ecx
	cmpq	$31, %r11
	movl	%eax, 384(%rsp,%rbp,4)
	movl	%edx, (%rsp,%rbp,4)
	cmovbw	%cx, %bx
	incq	%rbp
	addq	$42, %r9
	cmpl	%ebp, %esi
	jne	.LBB0_8
# BB#11:                                # %for.end.42
	testw	%bx, %bx
	je	.LBB0_27
# BB#12:                                # %for.cond.88.preheader
	testl	%esi, %esi
	jle	.LBB0_25
# BB#13:                                # %for.body.91.preheader
	leal	-1(%rsi), %ecx
	leaq	1(%rcx), %rax
	xorl	%edx, %edx
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	movq	%rax, %rdi
	andq	%r8, %rdi
	je	.LBB0_19
# BB#14:                                # %vector.memcheck
	leaq	18(%r15), %rbx
	leaq	84(%r15,%rcx,4), %rbp
	xorl	%edx, %edx
	cmpq	%rbp, %rbx
	ja	.LBB0_16
# BB#15:                                # %vector.memcheck
	leaq	18(%rcx,%r15), %rbp
	leaq	84(%r15), %rbx
	cmpq	%rbp, %rbx
	jbe	.LBB0_19
.LBB0_16:                               # %vector.body.preheader
	incq	%rcx
	andq	%r8, %rcx
	xorl	%edx, %edx
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [255,255,255,255]
	.align	16, 0x90
.LBB0_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	384(%rsp,%rdx,4), %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movdqa	400(%rsp,%rdx,4), %xmm2
	pand	%xmm0, %xmm2
	movd	%xmm1, 18(%r15,%rdx)
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, 22(%r15,%rdx)
	movaps	(%rsp,%rdx,4), %xmm1
	movaps	16(%rsp,%rdx,4), %xmm2
	movups	%xmm1, 84(%r15,%rdx,4)
	movups	%xmm2, 100(%r15,%rdx,4)
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_17
# BB#18:
	movq	%rdi, %rdx
.LBB0_19:                               # %middle.block
	cmpq	%rdx, %rax
	je	.LBB0_25
# BB#20:                                # %for.body.91.preheader97
	leal	1(%rsi), %ecx
	movl	%edx, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB0_22
# BB#21:                                # %for.body.91.prol
	movb	384(%rsp,%rdx,4), %cl
	movb	%cl, 18(%r15,%rdx)
	movl	(%rsp,%rdx,4), %ecx
	movl	%ecx, 84(%r15,%rdx,4)
	orq	$1, %rdx
.LBB0_22:                               # %for.body.91.preheader97.split
	cmpl	%eax, %esi
	je	.LBB0_25
# BB#23:                                # %for.body.91.preheader97.split.split
	movl	%esi, %r8d
	subl	%edx, %r8d
	leaq	388(%rsp,%rdx,4), %rcx
	leaq	4(%rsp,%rdx,4), %rdi
	leaq	19(%rdx,%r15), %rbp
	leaq	88(%r15,%rdx,4), %rdx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_24:                               # %for.body.91
                                        # =>This Inner Loop Header: Depth=1
	movb	-4(%rcx,%rbx,4), %al
	movb	%al, -1(%rbp,%rbx)
	movl	-4(%rdi,%rbx,4), %eax
	movl	%eax, -4(%rdx,%rbx,4)
	movb	(%rcx,%rbx,4), %al
	movb	%al, (%rbp,%rbx)
	movl	(%rdi,%rbx,4), %eax
	movl	%eax, (%rdx,%rbx,4)
	addq	$2, %rbx
	cmpl	%ebx, %r8d
	jne	.LBB0_24
.LBB0_25:                               # %for.end.106
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	gx_complete_halftone
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	subl	(%r12), %edi
	movl	216(%r13), %esi
	callq	imod
	movl	%eax, 352(%r15)
	subl	4(%r12), %ebp
	movl	220(%r13), %esi
	movl	%ebp, %edi
	callq	imod
	movl	%eax, 356(%r15)
	movq	344(%r15), %rcx
	leaq	-1(%rcx), %rdx
	movl	$1, %eax
	testq	%rcx, %rdx
	jne	.LBB0_34
# BB#26:                                # %if.then.121
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gx_devn_reduce_colored_halftone
	jmp	.LBB0_34
.LBB0_27:                               # %for.cond.45.preheader
	testl	%esi, %esi
	jle	.LBB0_33
# BB#28:
	leaq	640(%rsp), %rcx
	leaq	384(%rsp), %rdi
	leaq	256(%rsp), %rbp
	.align	16, 0x90
.LBB0_29:                               # %for.body.48
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edx
	cmpq	$7, %rdx
	movl	(%rdi), %eax
	ja	.LBB0_31
# BB#30:                                # %cond.true.53
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	fc_color_quo(,%rdx,8), %rdx
	movzwl	(%rdx,%rax,2), %eax
	jmp	.LBB0_32
	.align	16, 0x90
.LBB0_31:                               # %cond.false.63
                                        #   in Loop: Header=BB0_29 Depth=1
	imulq	$131070, %rax, %rax     # imm = 0x1FFFE
	addq	%rdx, %rax
	leal	(%rdx,%rdx), %ebx
	xorl	%edx, %edx
	divq	%rbx
.LBB0_32:                               # %cond.end.79
                                        #   in Loop: Header=BB0_29 Depth=1
	movw	%ax, (%rbp)
	addq	$4, %rcx
	addq	$4, %rdi
	addq	$2, %rbp
	decl	%esi
	jne	.LBB0_29
.LBB0_33:                               # %for.end.86
	leaq	256(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1552(%r14)
	movq	%rax, 8(%r15)
	movq	gx_dc_type_pure(%rip), %rax
	movq	%rax, (%r15)
	xorl	%eax, %eax
.LBB0_34:                               # %cleanup
	addq	$904, %rsp              # imm = 0x388
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_render_device_DeviceN, .Lfunc_end0-gx_render_device_DeviceN
	.cfi_endproc

	.globl	gx_devn_reduce_colored_halftone
	.align	16, 0x90
	.type	gx_devn_reduce_colored_halftone,@function
gx_devn_reduce_colored_halftone:        # @gx_devn_reduce_colored_halftone
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
	subq	$664, %rsp              # imm = 0x298
.Ltmp19:
	.cfi_def_cfa_offset 720
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
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	344(%r14), %r12d
	movl	100(%r13), %r10d
	testl	%r10d, %r10d
	jle	.LBB1_6
# BB#1:                                 # %for.body.lr.ph
	leaq	120(%r13), %r8
	leaq	124(%r13), %r9
	movzbl	110(%r13), %r11d
	leaq	18(%r14), %rsi
	leaq	400(%rsp), %rdi
	leaq	144(%rsp), %rbp
	leaq	16(%rsp), %rcx
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	movq	%r9, %rax
	cmoveq	%r8, %rax
	movl	(%rax), %ebx
	decl	%ebx
	movl	%ebx, (%rdi)
	movzbl	(%rsi), %eax
	movl	%eax, (%rbp)
	cmpl	$7, %ebx
	ja	.LBB1_4
# BB#3:                                 # %cond.true.20
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ebx, %edx
	movq	fc_color_quo(,%rdx,8), %rdx
	movzwl	(%rdx,%rax,2), %eax
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_4:                                # %cond.false.30
                                        #   in Loop: Header=BB1_2 Depth=1
	imulq	$131070, %rax, %rdx     # imm = 0x1FFFE
	movl	%ebx, %eax
	addq	%rdx, %rax
	addl	%ebx, %ebx
	xorl	%edx, %edx
	divq	%rbx
.LBB1_5:                                # %cond.end.43
                                        #   in Loop: Header=BB1_2 Depth=1
	movw	%ax, (%rcx)
	decl	%r11d
	addq	$4, %rdi
	addq	$4, %rbp
	addq	$2, %rcx
	incq	%rsi
	decl	%r10d
	jne	.LBB1_2
.LBB1_6:                                # %for.end
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	testl	%r12d, %r12d
	je	.LBB1_7
# BB#8:                                 # %if.else
	movq	8(%r14), %rdx
	movl	104(%r13), %r15d
	xorl	%ecx, %ecx
	cmpl	$8, %r12d
	jl	.LBB1_9
# BB#10:
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB1_11:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addl	$3, %ecx
	sarl	$3, %r12d
	cmpl	$7, %r12d
	jg	.LBB1_11
	jmp	.LBB1_12
.LBB1_7:                                # %if.then
	movq	%rax, 8(%r14)
	movq	gx_dc_type_pure(%rip), %rax
	movq	%rax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB1_19
.LBB1_9:
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB1_12:                               # %while.end
	sarl	%r12d
	addl	%ecx, %r12d
	movslq	%r12d, %rbx
	movl	144(%rsp,%rbx,4), %eax
	incl	%eax
	movl	400(%rsp,%rbx,4), %ecx
	cmpq	$7, %rcx
	ja	.LBB1_14
# BB#13:                                # %cond.true.69
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	fc_color_quo(,%rcx,8), %rcx
	movzwl	(%rcx,%rax,2), %eax
	jmp	.LBB1_15
.LBB1_14:                               # %cond.false.77
	movq	%rdx, (%rsp)            # 8-byte Spill
	imulq	$131070, %rax, %rax     # imm = 0x1FFFE
	addq	%rcx, %rax
	leal	(%rcx,%rcx), %ecx
	xorl	%edx, %edx
	divq	%rcx
.LBB1_15:                               # %cond.end.91
	movw	%ax, 16(%rsp,%rbx,2)
	movl	84(%r14,%rbx,4), %ebp
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	testl	%r15d, %r15d
	je	.LBB1_16
# BB#17:                                # %if.else.121
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rcx, 8(%r14)
	movl	%r12d, 36(%r14)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rcx, 16(%r14)
	movq	%rax, 24(%r14)
	movl	%ebp, 32(%r14)
	jmp	.LBB1_18
.LBB1_16:                               # %if.then.104
	movq	(%rsp), %r15            # 8-byte Reload
	movq	200(%r15), %rcx
	imulq	$168, %rbx, %rdx
	movl	56(%rcx,%rdx), %ecx
	subl	%ebp, %ecx
	movq	%r15, 8(%r14)
	movl	%r12d, 36(%r14)
	movq	%rax, 16(%r14)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 24(%r14)
	movl	%ecx, 32(%r14)
.LBB1_18:                               # %cleanup
	movq	gx_dc_type_ht_binary(%rip), %rax
	movq	%rax, (%r14)
	movl	$1, %eax
.LBB1_19:                               # %cleanup
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_devn_reduce_colored_halftone, .Lfunc_end1-gx_devn_reduce_colored_halftone
	.cfi_endproc

	.type	q0,@object              # @q0
	.section	.rodata,"a",@progbits
	.align	2
q0:
	.zero	2
	.size	q0, 2

	.type	q1,@object              # @q1
	.align	2
q1:
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.size	q1, 4

	.type	q2,@object              # @q2
	.align	2
q2:
	.short	0                       # 0x0
	.short	32768                   # 0x8000
	.short	65535                   # 0xffff
	.size	q2, 6

	.type	q3,@object              # @q3
	.align	2
q3:
	.short	0                       # 0x0
	.short	21845                   # 0x5555
	.short	43690                   # 0xaaaa
	.short	65535                   # 0xffff
	.size	q3, 8

	.type	q4,@object              # @q4
	.align	2
q4:
	.short	0                       # 0x0
	.short	16384                   # 0x4000
	.short	32768                   # 0x8000
	.short	49151                   # 0xbfff
	.short	65535                   # 0xffff
	.size	q4, 10

	.type	q5,@object              # @q5
	.align	2
q5:
	.short	0                       # 0x0
	.short	13107                   # 0x3333
	.short	26214                   # 0x6666
	.short	39321                   # 0x9999
	.short	52428                   # 0xcccc
	.short	65535                   # 0xffff
	.size	q5, 12

	.type	q6,@object              # @q6
	.align	2
q6:
	.short	0                       # 0x0
	.short	10923                   # 0x2aab
	.short	21845                   # 0x5555
	.short	32768                   # 0x8000
	.short	43690                   # 0xaaaa
	.short	54613                   # 0xd555
	.short	65535                   # 0xffff
	.size	q6, 14

	.type	q7,@object              # @q7
	.align	16
q7:
	.short	0                       # 0x0
	.short	9362                    # 0x2492
	.short	18724                   # 0x4924
	.short	28086                   # 0x6db6
	.short	37449                   # 0x9249
	.short	46811                   # 0xb6db
	.short	56173                   # 0xdb6d
	.short	65535                   # 0xffff
	.size	q7, 16

	.type	fc_color_quo,@object    # @fc_color_quo
	.globl	fc_color_quo
	.align	16
fc_color_quo:
	.quad	q0
	.quad	q1
	.quad	q2
	.quad	q3
	.quad	q4
	.quad	q5
	.quad	q6
	.quad	q7
	.size	fc_color_quo, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
