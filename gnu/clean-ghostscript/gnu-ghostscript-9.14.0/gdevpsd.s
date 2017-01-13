	.text
	.file	"gdevpsd.bc"
	.align	16, 0x90
	.type	psd_print_page,@function
psd_print_page:                         # @psd_print_page
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
	subq	$2248, %rsp             # imm = 0x8C8
.Ltmp6:
	.cfi_def_cfa_offset 2304
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	832(%r14), %edi
	movl	21648(%r14), %esi
	callq	gx_downscaler_scale
	movl	%eax, %ebp
	movl	836(%r14), %edi
	movl	21648(%r14), %esi
	callq	gx_downscaler_scale
	leaq	24(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	movl	%eax, %r8d
	callq	psd_setup
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	psd_write_header
	movl	832(%r14), %ebp
	movl	40(%rsp), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movslq	48(%rsp), %r15
	leaq	568(%rsp), %rdi
	xorl	%esi, %esi
	movl	$624, %edx              # imm = 0x270
	callq	memset
	movq	$292683793, 1192(%rsp)  # imm = 0x11720011
	movl	$0, 1712(%rsp)
	movzwl	108(%r14), %eax
	imull	%ebp, %eax
	addl	$63, %eax
	sarl	$6, %eax
	shll	$3, %eax
	movl	%eax, 1720(%rsp)
	movq	24(%r14), %rdi
	movl	32(%rsp), %esi
	movl	$.L.str.25, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%r15, %r15
	jle	.LBB0_4
# BB#1:                                 # %for.body.lr.ph.i
	leal	63(,%rbp,8), %r12d
	sarl	$6, %r12d
	shll	$3, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdi
	movl	$.L.str.25, %edx
	movl	%r12d, %esi
	callq	*64(%rdi)
	movq	%rax, 1728(%rsp,%rbp,8)
	movq	%rax, 1200(%rsp,%rbp,8)
	testq	%rax, %rax
	je	.LBB0_22
# BB#2:                                 # %for.cond.i
                                        #   in Loop: Header=BB0_3 Depth=1
	incq	%rbp
	cmpq	%r15, %rbp
	jl	.LBB0_3
.LBB0_4:                                # %for.end.i
	testq	%rbx, %rbx
	je	.LBB0_22
# BB#5:                                 # %if.end.27.i
	movl	21648(%r14), %r8d
	movl	$8, 8(%rsp)
	movl	$8, (%rsp)
	leaq	568(%rsp), %rdi
	leaq	1192(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r14, %rsi
	movl	%r15d, %ecx
	callq	gx_downscaler_init_planar
	testl	%r15d, %r15d
	setle	%cl
	testl	%eax, %eax
	js	.LBB0_19
# BB#6:                                 # %if.end.27.i
	testb	%cl, %cl
	jne	.LBB0_19
# BB#7:                                 # %for.body.37.lr.ph.i
	xorl	%r13d, %r13d
.LBB0_8:                                # %for.body.37.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_14 Depth 3
	movslq	308(%rsp,%r13,4), %r12
	testq	%r12, %r12
	js	.LBB0_16
# BB#9:                                 # %for.cond.43.preheader.i
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpl	$0, 36(%rsp)
	jle	.LBB0_18
# BB#10:                                # %for.body.46.lr.ph.i
                                        #   in Loop: Header=BB0_8 Depth=1
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_11:                               # %for.body.46.i
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
	leaq	568(%rsp), %rdi
	leaq	1192(%rsp), %rsi
	movl	%ebp, %edx
	callq	gx_downscaler_get_bits_rectangle
	testl	%eax, %eax
	js	.LBB0_19
# BB#12:                                # %if.end.51.i
                                        #   in Loop: Header=BB0_11 Depth=2
	cmpl	$3, 20(%rsp)            # 4-byte Folded Reload
	movq	1200(%rsp,%r12,8), %rsi
	movl	32(%rsp), %eax
	jne	.LBB0_13
# BB#23:                                # %if.then.57.i
                                        #   in Loop: Header=BB0_11 Depth=2
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movl	32(%rsp), %eax
	jmp	.LBB0_15
	.align	16, 0x90
.LBB0_13:                               # %for.cond.61.preheader.i
                                        #   in Loop: Header=BB0_11 Depth=2
	testl	%eax, %eax
	movl	$0, %ecx
	jle	.LBB0_15
	.align	16, 0x90
.LBB0_14:                               # %for.body.65.i
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rsi,%rcx), %al
	notb	%al
	movb	%al, (%rbx,%rcx)
	incq	%rcx
	movslq	32(%rsp), %rax
	cmpq	%rax, %rcx
	jl	.LBB0_14
.LBB0_15:                               # %if.end.75.i
                                        #   in Loop: Header=BB0_11 Depth=2
	movslq	%eax, %rdx
	movq	24(%rsp), %rcx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	fwrite
	incl	%ebp
	cmpl	36(%rsp), %ebp
	jl	.LBB0_11
	jmp	.LBB0_18
	.align	16, 0x90
.LBB0_16:                               # %if.else.81.i
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpq	$3, %r13
	jg	.LBB0_18
# BB#17:                                # %if.then.84.i
                                        #   in Loop: Header=BB0_8 Depth=1
	movslq	32(%rsp), %rdx
	movl	$255, %esi
	movq	%rbx, %rdi
	callq	memset
	movslq	32(%rsp), %rdx
	movq	24(%rsp), %rcx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	fwrite
.LBB0_18:                               # %for.inc.92.i
                                        #   in Loop: Header=BB0_8 Depth=1
	incq	%r13
	cmpq	%r15, %r13
	jl	.LBB0_8
.LBB0_19:                               # %cleanup.95.i
	leaq	568(%rsp), %rdi
	callq	gx_downscaler_fin
	movq	24(%r14), %rdi
	movl	$.L.str.25, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	testl	%r15d, %r15d
	jle	.LBB0_22
# BB#20:
	leaq	1728(%rsp), %rbx
	.align	16, 0x90
.LBB0_21:                               # %for.body.102.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdi
	movq	(%rbx), %rsi
	movl	$.L.str.26, %edx
	callq	*24(%rdi)
	addq	$8, %rbx
	decl	%r15d
	jne	.LBB0_21
.LBB0_22:                               # %psd_write_image_data.exit
	xorl	%eax, %eax
	addq	$2248, %rsp             # imm = 0x8C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	psd_print_page, .Lfunc_end0-psd_print_page
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
.LCPI1_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	psd_setup
	.align	16, 0x90
	.type	psd_setup,@function
psd_setup:                              # @psd_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdx, (%rdi)
	movq	18480(%rsi), %rax
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax,%r11,8)
	je	.LBB1_5
# BB#2:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, 8(%rax,%r11,8)
	je	.LBB1_3
# BB#29:                                # %for.inc.1
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, 16(%rax,%r11,8)
	je	.LBB1_30
# BB#31:                                # %for.inc.2
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, 24(%rax,%r11,8)
	je	.LBB1_4
# BB#32:                                # %for.inc.3
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	$4, %r11
	cmpq	$64, %r11
	jl	.LBB1_1
	jmp	.LBB1_5
.LBB1_3:
	orl	$1, %r11d
	jmp	.LBB1_5
.LBB1_30:
	orl	$2, %r11d
	jmp	.LBB1_5
.LBB1_4:                                # %for.inc.2.for.end_crit_edge
	addl	$3, %r11d
.LBB1_5:                                # %for.end
	movl	18488(%rsi), %eax
	movl	%eax, 16(%rdi)
	movl	%r11d, 24(%rdi)
	movslq	19536(%rsi), %r10
	testq	%r10, %r10
	je	.LBB1_33
# BB#6:                                 # %for.cond.7.preheader
	xorl	%eax, %eax
	testl	%r10d, %r10d
	jle	.LBB1_18
# BB#7:                                 # %for.body.11.lr.ph
	xorl	%edx, %edx
	testl	%r10d, %r10d
	movl	$0, %eax
	je	.LBB1_17
# BB#8:                                 # %overflow.checked
	xorl	%edx, %edx
	movq	%r10, %r9
	andq	$-8, %r9
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB1_16
# BB#9:                                 # %vector.body.preheader
	leaq	-8(%r10), %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	xorl	%ebx, %ebx
	btq	$3, %rdx
	jb	.LBB1_10
# BB#11:                                # %vector.body.prol
	movdqu	19540(%rsi), %xmm0
	movdqu	19556(%rsi), %xmm1
	movdqa	.LCPI1_0(%rip), %xmm2   # xmm2 = [3,3,3,3]
	pcmpgtd	%xmm2, %xmm0
	movdqa	.LCPI1_1(%rip), %xmm3   # xmm3 = [1,1,1,1]
	pand	%xmm3, %xmm0
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm3, %xmm1
	movl	$8, %ebx
	jmp	.LBB1_12
.LBB1_33:                               # %if.then.5
	movl	18504(%rsi), %eax
	jmp	.LBB1_18
.LBB1_10:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB1_12:                               # %vector.body.preheader.split
	testq	%rax, %rax
	je	.LBB1_15
# BB#13:                                # %vector.body.preheader.split.split
	movq	%r10, %rdx
	andq	$-8, %rdx
	subq	%rbx, %rdx
	leaq	19588(%rsi,%rbx,4), %rax
	movdqa	.LCPI1_0(%rip), %xmm2   # xmm2 = [3,3,3,3]
	movdqa	.LCPI1_1(%rip), %xmm3   # xmm3 = [1,1,1,1]
	.align	16, 0x90
.LBB1_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rax), %xmm4
	movdqu	-32(%rax), %xmm5
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm3, %xmm4
	paddd	%xmm0, %xmm4
	movdqu	-16(%rax), %xmm0
	pcmpgtd	%xmm2, %xmm5
	pand	%xmm3, %xmm5
	paddd	%xmm1, %xmm5
	movdqu	(%rax), %xmm1
	pcmpgtd	%xmm2, %xmm0
	pand	%xmm3, %xmm0
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm3, %xmm1
	paddd	%xmm4, %xmm0
	paddd	%xmm5, %xmm1
	addq	$64, %rax
	addq	$-16, %rdx
	jne	.LBB1_14
.LBB1_15:
	movq	%r9, %rdx
.LBB1_16:                               # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpq	%rdx, %r10
	je	.LBB1_18
	.align	16, 0x90
.LBB1_17:                               # %for.body.11
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, 19540(%rsi,%rdx,4)
	setg	%bl
	movzbl	%bl, %ebx
	addl	%ebx, %eax
	incq	%rdx
	cmpq	%r10, %rdx
	jl	.LBB1_17
.LBB1_18:                               # %for.end.21
	movl	%eax, 20(%rdi)
	movl	%ecx, 8(%rdi)
	movl	%r8d, 12(%rdi)
	addl	%r11d, %eax
	jle	.LBB1_22
# BB#19:                                # %for.body.28.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_20:                               # %for.body.28
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, 284(%rdi,%rax,4)
	movl	%eax, 28(%rdi,%rax,4)
	incq	%rax
	movslq	24(%rdi), %r11
	movslq	20(%rdi), %rcx
	addq	%r11, %rcx
	cmpq	%rcx, %rax
	jl	.LBB1_20
# BB#21:                                # %for.cond.24.for.end.35_crit_edge
	movl	19536(%rsi), %r10d
.LBB1_22:                               # %for.end.35
	testl	%r10d, %r10d
	jle	.LBB1_27
# BB#23:                                # %for.body.44.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_24:                               # %for.body.44
                                        # =>This Inner Loop Header: Depth=1
	movl	19540(%rsi,%rax,4), %ecx
	cmpl	$4, %ecx
	jl	.LBB1_26
# BB#25:                                # %if.then.50
                                        #   in Loop: Header=BB1_24 Depth=1
	movslq	24(%rdi), %rdx
	movl	%ecx, 284(%rdi,%rdx,4)
	movslq	24(%rdi), %rdx
	leal	1(%rdx), %ebx
	movl	%ebx, 24(%rdi)
	movl	%ecx, 28(%rdi,%rdx,4)
	movl	19536(%rsi), %r10d
.LBB1_26:                               # %if.end.60
                                        #   in Loop: Header=BB1_24 Depth=1
	incq	%rax
	movslq	%r10d, %rcx
	cmpq	%rcx, %rax
	jl	.LBB1_24
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.64
	addl	18504(%rsi), %r11d
	movl	%r11d, 24(%rdi)
.LBB1_28:                               # %if.end.70
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	psd_setup, .Lfunc_end1-psd_setup
	.cfi_endproc

	.globl	psd_write
	.align	16, 0x90
	.type	psd_write,@function
psd_write:                              # @psd_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	movslq	%edx, %rdx
	movq	(%rdi), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	callq	fwrite
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end2:
	.size	psd_write, .Lfunc_end2-psd_write
	.cfi_endproc

	.globl	psd_write_8
	.align	16, 0x90
	.type	psd_write_8,@function
psd_write_8:                            # @psd_write_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 16
	movb	%sil, 7(%rsp)
	movq	(%rdi), %rcx
	leaq	7(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	fwrite
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	psd_write_8, .Lfunc_end3-psd_write_8
	.cfi_endproc

	.globl	psd_write_16
	.align	16, 0x90
	.type	psd_write_16,@function
psd_write_16:                           # @psd_write_16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 16
	rolw	$8, %si
	movw	%si, 6(%rsp)
	movq	(%rdi), %rcx
	leaq	6(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end4:
	.size	psd_write_16, .Lfunc_end4-psd_write_16
	.cfi_endproc

	.globl	psd_write_32
	.align	16, 0x90
	.type	psd_write_32,@function
psd_write_32:                           # @psd_write_32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 16
	bswapl	%esi
	movl	%esi, 4(%rsp)
	movq	(%rdi), %rcx
	leaq	4(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end5:
	.size	psd_write_32, .Lfunc_end5-psd_write_32
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4679239875398991872     # double 65535
.LCPI6_1:
	.quad	4674734214187319296     # double 32760
.LCPI6_3:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_2:
	.long	1199570944              # float 65536
	.text
	.globl	psd_write_header
	.align	16, 0x90
	.type	psd_write_header,@function
psd_write_header:                       # @psd_write_header
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
	subq	$24, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 80
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movw	24(%r12), %bx
	movq	(%r12), %rcx
	movl	$.L.str.4, %edi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movw	$256, 20(%rsp)          # imm = 0x100
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movl	$0, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movw	$0, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	rolw	$8, %bx
	movw	%bx, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movl	12(%r12), %eax
	bswapl	%eax
	movl	%eax, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movl	8(%r12), %eax
	bswapl	%eax
	movl	%eax, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movw	$2048, 20(%rsp)         # imm = 0x800
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movw	16(%r12), %ax
	rolw	$8, %ax
	movw	%ax, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movl	$0, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movslq	24(%r12), %r15
	cmpq	$5, %r15
	jl	.LBB6_1
# BB#2:                                 # %for.body.lr.ph
	movq	18480(%r14), %r13
	xorl	%ebp, %ebp
	movl	$4, %ebx
	.align	16, 0x90
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB6_4
# BB#51:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	callq	strlen
	leal	1(%rbp,%rax), %ebp
	incq	%rbx
	cmpq	%r15, %rbx
	jl	.LBB6_3
	jmp	.LBB6_4
.LBB6_1:
	xorl	%ebp, %ebp
	movl	$4, %ebx
.LBB6_4:                                # %for.cond.19.preheader
	cmpl	%r15d, %ebx
	jge	.LBB6_10
# BB#5:                                 # %for.body.23.lr.ph
	movslq	%ebx, %rcx
	movl	%r15d, %eax
	subl	%ebx, %eax
	leaq	-1(%r15), %rdx
	testb	$1, %al
	jne	.LBB6_7
# BB#6:
	movq	%rcx, %rax
	jmp	.LBB6_8
.LBB6_7:                                # %for.body.23.prol
	movslq	28(%r12,%rcx,4), %rax
	shlq	$4, %rax
	movl	18448(%rax,%r14), %eax
	leal	1(%rbp,%rax), %ebp
	leaq	1(%rcx), %rax
.LBB6_8:                                # %for.body.23.lr.ph.split
	cmpq	%rcx, %rdx
	je	.LBB6_10
	.align	16, 0x90
.LBB6_9:                                # %for.body.23
                                        # =>This Inner Loop Header: Depth=1
	movslq	28(%r12,%rax,4), %rcx
	shlq	$4, %rcx
	addl	18448(%rcx,%r14), %ebp
	movslq	32(%r12,%rax,4), %rcx
	shlq	$4, %rcx
	movl	18448(%rcx,%r14), %ecx
	leal	2(%rcx,%rbp), %ebp
	addq	$2, %rax
	cmpq	%r15, %rax
	jl	.LBB6_9
.LBB6_10:                               # %for.end.33
	movl	%ebp, %eax
	shrl	$31, %eax
	leal	(%rax,%rbp), %eax
	andl	$-2, %eax
	movl	%ebp, %r13d
	subl	%eax, %r13d
	leal	(%rbp,%r13), %ebp
	subl	16(%r12), %r15d
	imull	$14, %r15d, %eax
	leal	52(%rax,%rbp), %eax
	bswapl	%eax
	movl	%eax, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movq	(%r12), %rcx
	movl	$.L.str.5, %edi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movw	$-4605, 20(%rsp)        # imm = 0xFFFFFFFFFFFFEE03
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movw	$0, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	bswapl	%ebp
	movl	%ebp, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movl	24(%r12), %eax
	movl	$4, %ebp
	cmpl	$5, %eax
	jl	.LBB6_14
# BB#11:                                # %for.body.53.lr.ph
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movl	$4, %ebp
	leaq	20(%rsp), %r15
	.align	16, 0x90
.LBB6_12:                               # %for.body.53
                                        # =>This Inner Loop Header: Depth=1
	movq	18480(%r14), %rcx
	movq	(%rcx,%rbp,8), %rbx
	testq	%rbx, %rbx
	je	.LBB6_13
# BB#52:                                # %if.end.62
                                        #   in Loop: Header=BB6_12 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r13
	movb	%r13b, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	fwrite
	movslq	%r13d, %rdx
	movq	(%r12), %rcx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	fwrite
	incq	%rbp
	movslq	24(%r12), %rax
	cmpq	%rax, %rbp
	jl	.LBB6_12
.LBB6_13:                               # %for.body.53.for.cond.75.preheader_crit_edge
	movq	8(%rsp), %r13           # 8-byte Reload
.LBB6_14:                               # %for.cond.75.preheader
	cmpl	%eax, %ebp
	jge	.LBB6_17
# BB#15:                                # %for.body.79.lr.ph
	movslq	%ebp, %rbp
	leaq	20(%rsp), %r15
	.align	16, 0x90
.LBB6_16:                               # %for.body.79
                                        # =>This Inner Loop Header: Depth=1
	movslq	28(%r12,%rbp,4), %rbx
	shlq	$4, %rbx
	movb	18448(%rbx,%r14), %al
	movb	%al, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	fwrite
	movq	18456(%rbx,%r14), %rdi
	movslq	18448(%rbx,%r14), %rdx
	movq	(%r12), %rcx
	movl	$1, %esi
	callq	fwrite
	incq	%rbp
	movslq	24(%r12), %rax
	cmpq	%rax, %rbp
	jl	.LBB6_16
.LBB6_17:                               # %for.end.96
	testl	%r13d, %r13d
	je	.LBB6_19
# BB#18:                                # %if.then.98
	movb	$0, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	fwrite
.LBB6_19:                               # %if.end.100
	movq	(%r12), %rcx
	movl	$.L.str.5, %edi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movw	$-4349, 20(%rsp)        # imm = 0xFFFFFFFFFFFFEF03
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movw	$0, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movl	24(%r12), %eax
	subl	16(%r12), %eax
	imull	$14, %eax, %eax
	bswapl	%eax
	movl	%eax, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	cmpl	$5, 24(%r12)
	jl	.LBB6_50
# BB#20:                                # %for.body.113.lr.ph
	movl	$4, %r13d
	leaq	20(%rsp), %r15
	jmp	.LBB6_21
.LBB6_48:                               # %if.then.279
                                        #   in Loop: Header=BB6_21 Depth=1
	movw	$0, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$15843, 20(%rsp)        # imm = 0x3DE3
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$0, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$-14088, 20(%rsp)       # imm = 0xFFFFFFFFFFFFC8F8
	jmp	.LBB6_49
	.align	16, 0x90
.LBB6_21:                               # %for.body.113
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_25 Depth 2
	movslq	28(%r12,%r13,4), %rbx
	addq	$-4, %rbx
	movw	$512, 20(%rsp)          # imm = 0x200
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	leaq	(%rbx,%rbx,2), %rbx
	cmpl	$0, 20876(%r14,%rbx,4)
	je	.LBB6_23
# BB#22:                                # %if.then.122
                                        #   in Loop: Header=BB6_21 Depth=1
	movswl	20880(%r14,%rbx,4), %eax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	rolw	$8, %ax
	movw	%ax, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movswl	20882(%r14,%rbx,4), %eax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	divsd	.LCPI6_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	rolw	$8, %ax
	movw	%ax, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movswl	20884(%r14,%rbx,4), %eax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	divsd	.LCPI6_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	rolw	$8, %ax
	movw	%ax, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movswl	20886(%r14,%rbx,4), %eax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	divsd	.LCPI6_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	rolw	$8, %ax
	movw	%ax, 20(%rsp)
	jmp	.LBB6_49
	.align	16, 0x90
.LBB6_23:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	18480(%r14), %rax
	movq	$-1, %rcx
	.align	16, 0x90
.LBB6_25:                               # %for.body.i
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	je	.LBB6_26
# BB#24:                                # %for.cond.i
                                        #   in Loop: Header=BB6_25 Depth=2
	incq	%rcx
	cmpq	%r13, %rcx
	jl	.LBB6_25
# BB#27:                                # %land.lhs.true.168
                                        #   in Loop: Header=BB6_21 Depth=1
	movl	$.L.str.6, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB6_35
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB6_21 Depth=1
	movzbl	(%rbx), %eax
	addl	$-65, %eax
	testq	%rcx, %rcx
	je	.LBB6_36
# BB#29:                                # %cond.true
                                        #   in Loop: Header=BB6_21 Depth=1
	testl	%eax, %eax
	jne	.LBB6_36
# BB#30:                                # %if.then.183
                                        #   in Loop: Header=BB6_21 Depth=1
	movzbl	1(%rbx), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB6_36
# BB#31:                                # %if.then.183
                                        #   in Loop: Header=BB6_21 Depth=1
	testl	%eax, %eax
	jne	.LBB6_36
# BB#32:                                # %if.then.193
                                        #   in Loop: Header=BB6_21 Depth=1
	movzbl	2(%rbx), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB6_36
# BB#33:                                # %if.then.193
                                        #   in Loop: Header=BB6_21 Depth=1
	testl	%eax, %eax
	jne	.LBB6_36
# BB#34:                                # %if.then.203
                                        #   in Loop: Header=BB6_21 Depth=1
	movzbl	3(%rbx), %eax
	addl	$-105, %eax
	jmp	.LBB6_36
.LBB6_35:                               # %cond.false
                                        #   in Loop: Header=BB6_21 Depth=1
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB6_36:                               # %cond.end
                                        #   in Loop: Header=BB6_21 Depth=1
	testl	%eax, %eax
	je	.LBB6_37
# BB#38:                                # %land.lhs.true.227
                                        #   in Loop: Header=BB6_21 Depth=1
	movl	$.L.str.7, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB6_46
# BB#39:                                # %cond.true.231
                                        #   in Loop: Header=BB6_21 Depth=1
	movzbl	(%rbx), %eax
	addl	$-65, %eax
	testq	%rcx, %rcx
	je	.LBB6_47
# BB#40:                                # %cond.true.231
                                        #   in Loop: Header=BB6_21 Depth=1
	testl	%eax, %eax
	jne	.LBB6_47
# BB#41:                                # %if.then.245
                                        #   in Loop: Header=BB6_21 Depth=1
	movzbl	1(%rbx), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB6_47
# BB#42:                                # %if.then.245
                                        #   in Loop: Header=BB6_21 Depth=1
	testl	%eax, %eax
	jne	.LBB6_47
# BB#43:                                # %if.then.255
                                        #   in Loop: Header=BB6_21 Depth=1
	movzbl	2(%rbx), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB6_47
# BB#44:                                # %if.then.255
                                        #   in Loop: Header=BB6_21 Depth=1
	testl	%eax, %eax
	jne	.LBB6_47
# BB#45:                                # %if.then.265
                                        #   in Loop: Header=BB6_21 Depth=1
	movzbl	3(%rbx), %eax
	addl	$-105, %eax
	jmp	.LBB6_47
.LBB6_37:                               # %if.then.214
                                        #   in Loop: Header=BB6_21 Depth=1
	movw	$-8453, 20(%rsp)        # imm = 0xFFFFFFFFFFFFDEFB
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$30323, 20(%rsp)        # imm = 0x7673
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$0, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$-1, 20(%rsp)
	jmp	.LBB6_49
.LBB6_46:                               # %cond.false.274
                                        #   in Loop: Header=BB6_21 Depth=1
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB6_47:                               # %cond.end.276
                                        #   in Loop: Header=BB6_21 Depth=1
	testl	%eax, %eax
	je	.LBB6_48
.LBB6_26:                               # %if.else.284
                                        #   in Loop: Header=BB6_21 Depth=1
	movw	$-1, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$-1, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$-1, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$0, 20(%rsp)
.LBB6_49:                               # %if.end.291
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$0, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	fwrite
	movb	$2, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	fwrite
	movb	$0, 20(%rsp)
	movq	(%r12), %rcx
	movl	$1, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	fwrite
	incq	%r13
	movslq	24(%r12), %rax
	cmpq	%rax, %r13
	jl	.LBB6_21
.LBB6_50:                               # %for.end.297
	movq	(%r12), %rcx
	movl	$.L.str.5, %edi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movw	$-4861, 20(%rsp)        # imm = 0xFFFFFFFFFFFFED03
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movw	$0, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movl	$268435456, 20(%rsp)    # imm = 0x10000000
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI6_2(%rip), %xmm0
	cvtsi2ssl	8(%r12), %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	832(%r14), %xmm0
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	.LCPI6_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	bswapl	%eax
	movl	%eax, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movw	$256, 20(%rsp)          # imm = 0x100
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movw	$256, 20(%rsp)          # imm = 0x100
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movss	.LCPI6_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	888(%r14), %xmm1
	cvtsi2ssl	12(%r12), %xmm0
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	836(%r14), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI6_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	bswapl	%eax
	movl	%eax, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movw	$256, 20(%rsp)          # imm = 0x100
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movw	$256, 20(%rsp)          # imm = 0x100
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	movl	$0, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	movw	$0, 20(%rsp)
	movq	(%r12), %rcx
	leaq	20(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	psd_write_header, .Lfunc_end6-psd_write_header
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI7_1:
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
.LCPI7_2:
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	11                      # 0xb
.LCPI7_3:
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	15                      # 0xf
.LCPI7_4:
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	19                      # 0x13
.LCPI7_5:
	.long	20                      # 0x14
	.long	21                      # 0x15
	.long	22                      # 0x16
	.long	23                      # 0x17
.LCPI7_6:
	.long	24                      # 0x18
	.long	25                      # 0x19
	.long	26                      # 0x1a
	.long	27                      # 0x1b
.LCPI7_7:
	.long	28                      # 0x1c
	.long	29                      # 0x1d
	.long	30                      # 0x1e
	.long	31                      # 0x1f
.LCPI7_8:
	.long	32                      # 0x20
	.long	33                      # 0x21
	.long	34                      # 0x22
	.long	35                      # 0x23
.LCPI7_9:
	.long	36                      # 0x24
	.long	37                      # 0x25
	.long	38                      # 0x26
	.long	39                      # 0x27
.LCPI7_10:
	.long	40                      # 0x28
	.long	41                      # 0x29
	.long	42                      # 0x2a
	.long	43                      # 0x2b
.LCPI7_11:
	.long	44                      # 0x2c
	.long	45                      # 0x2d
	.long	46                      # 0x2e
	.long	47                      # 0x2f
.LCPI7_12:
	.long	48                      # 0x30
	.long	49                      # 0x31
	.long	50                      # 0x32
	.long	51                      # 0x33
.LCPI7_13:
	.long	52                      # 0x34
	.long	53                      # 0x35
	.long	54                      # 0x36
	.long	55                      # 0x37
.LCPI7_14:
	.long	56                      # 0x38
	.long	57                      # 0x39
	.long	58                      # 0x3a
	.long	59                      # 0x3b
.LCPI7_15:
	.long	60                      # 0x3c
	.long	61                      # 0x3d
	.long	62                      # 0x3e
	.long	63                      # 0x3f
	.text
	.align	16, 0x90
	.type	psd_prn_open,@function
psd_prn_open:                           # @psd_prn_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	8(%rsp), %rsi
	callq	*1680(%rbx)
	movq	8(%rsp), %rax
	movq	176(%rax), %rcx
	testq	%rcx, %rcx
	movl	$0, 22480(%rbx)
	movl	18496(%rbx), %eax
	jne	.LBB7_2
# BB#1:                                 # %entry
	testl	%eax, %eax
	jns	.LBB7_2
# BB#5:                                 # %if.else.58
	movl	21656(%rbx), %ecx
	addl	$4, %ecx
	cmpl	$64, %ecx
	movl	$64, %eax
	cmovlel	%ecx, %eax
	jmp	.LBB7_6
.LBB7_2:                                # %if.then.17
	testq	%rcx, %rcx
	je	.LBB7_4
# BB#3:                                 # %if.then.19
	movl	18488(%rbx), %eax
	addl	18504(%rbx), %eax
	movl	96(%rbx), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
.LBB7_6:                                # %if.end.68
	movl	%eax, 100(%rbx)
	movl	%eax, 96(%rbx)
	jmp	.LBB7_7
.LBB7_4:                                # %if.else.37
	addl	18488(%rbx), %eax
	movl	96(%rbx), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	movl	%eax, 100(%rbx)
.LBB7_7:                                # %if.end.68
	cmpl	$0, 19536(%rbx)
	jne	.LBB7_9
# BB#8:                                 # %vector.body
	movaps	.LCPI7_0(%rip), %xmm0   # xmm0 = [0,1,2,3]
	movups	%xmm0, 19540(%rbx)
	movaps	.LCPI7_1(%rip), %xmm0   # xmm0 = [4,5,6,7]
	movups	%xmm0, 19556(%rbx)
	movaps	.LCPI7_2(%rip), %xmm0   # xmm0 = [8,9,10,11]
	movups	%xmm0, 19572(%rbx)
	movaps	.LCPI7_3(%rip), %xmm0   # xmm0 = [12,13,14,15]
	movups	%xmm0, 19588(%rbx)
	movaps	.LCPI7_4(%rip), %xmm0   # xmm0 = [16,17,18,19]
	movups	%xmm0, 19604(%rbx)
	movaps	.LCPI7_5(%rip), %xmm0   # xmm0 = [20,21,22,23]
	movups	%xmm0, 19620(%rbx)
	movaps	.LCPI7_6(%rip), %xmm0   # xmm0 = [24,25,26,27]
	movups	%xmm0, 19636(%rbx)
	movaps	.LCPI7_7(%rip), %xmm0   # xmm0 = [28,29,30,31]
	movups	%xmm0, 19652(%rbx)
	movaps	.LCPI7_8(%rip), %xmm0   # xmm0 = [32,33,34,35]
	movups	%xmm0, 19668(%rbx)
	movaps	.LCPI7_9(%rip), %xmm0   # xmm0 = [36,37,38,39]
	movups	%xmm0, 19684(%rbx)
	movaps	.LCPI7_10(%rip), %xmm0  # xmm0 = [40,41,42,43]
	movups	%xmm0, 19700(%rbx)
	movaps	.LCPI7_11(%rip), %xmm0  # xmm0 = [44,45,46,47]
	movups	%xmm0, 19716(%rbx)
	movaps	.LCPI7_12(%rip), %xmm0  # xmm0 = [48,49,50,51]
	movups	%xmm0, 19732(%rbx)
	movaps	.LCPI7_13(%rip), %xmm0  # xmm0 = [52,53,54,55]
	movups	%xmm0, 19748(%rbx)
	movaps	.LCPI7_14(%rip), %xmm0  # xmm0 = [56,57,58,59]
	movups	%xmm0, 19764(%rbx)
	movaps	.LCPI7_15(%rip), %xmm0  # xmm0 = [60,61,62,63]
	movups	%xmm0, 19780(%rbx)
	movl	100(%rbx), %eax
.LBB7_9:                                # %if.end.77
	imull	18472(%rbx), %eax
	movw	%ax, 108(%rbx)
	movl	$1, 136(%rbx)
	movq	1104(%rbx), %rax
	movl	$1, 168(%rax)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gdev_prn_open_planar
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end7:
	.size	psd_prn_open, .Lfunc_end7-psd_prn_open
	.cfi_endproc

	.align	16, 0x90
	.type	psd_prn_close,@function
psd_prn_close:                          # @psd_prn_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	22200(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_4
# BB#1:                                 # %if.then
	callq	gscms_release_link
	movq	22192(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_4
# BB#2:                                 # %do.end
	decq	288(%rsi)
	jne	.LBB8_4
# BB#3:                                 # %do.end.16
	movq	296(%rsi), %rdi
	movl	$.L.str.8, %edx
	callq	*304(%rsi)
	movq	$0, 22192(%rbx)
.LBB8_4:                                # %if.end.31
	movq	21928(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_8
# BB#5:                                 # %if.then.33
	callq	gscms_release_link
	movq	21920(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_8
# BB#6:                                 # %do.end.41
	decq	288(%rsi)
	jne	.LBB8_8
# BB#7:                                 # %do.end.56
	movq	296(%rsi), %rdi
	movl	$.L.str.8, %edx
	callq	*304(%rsi)
	movq	$0, 21920(%rbx)
.LBB8_8:                                # %if.end.75
	movq	22472(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_12
# BB#9:                                 # %if.then.77
	callq	gscms_release_link
	movq	22464(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_12
# BB#10:                                # %do.end.85
	decq	288(%rsi)
	jne	.LBB8_12
# BB#11:                                # %do.end.100
	movq	296(%rsi), %rdi
	movl	$.L.str.8, %edx
	callq	*304(%rsi)
	movq	$0, 22464(%rbx)
.LBB8_12:                               # %if.end.119
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end8:
	.size	psd_prn_close, .Lfunc_end8-psd_prn_close
	.cfi_endproc

	.align	16, 0x90
	.type	psd_map_color_rgb,@function
psd_map_color_rgb:                      # @psd_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1, 21644(%rdi)
	jne	.LBB9_1
# BB#2:                                 # %if.then
	jmp	gx_devn_prn_decode_color # TAILCALL
.LBB9_1:                                # %cleanup
	movl	$0, (%rdx)
	movw	$0, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	psd_map_color_rgb, .Lfunc_end9-psd_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	psd_get_params,@function
psd_get_params:                         # @psd_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -24
.Ltmp41:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_devn_prn_get_params
	testl	%eax, %eax
	js	.LBB10_2
# BB#1:                                 # %if.end
	leaq	21648(%rbx), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_write_long
	testl	%eax, %eax
	js	.LBB10_2
# BB#3:                                 # %if.end.4
	addq	$21656, %rbx            # imm = 0x5498
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	param_write_int         # TAILCALL
.LBB10_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	psd_get_params, .Lfunc_end10-psd_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	psd_put_params,@function
psd_put_params:                         # @psd_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$744, %rsp              # imm = 0x2E8
.Ltmp48:
	.cfi_def_cfa_offset 800
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	21644(%r13), %r12d
	leaq	96(%r13), %r14
	leaq	8(%rsp), %rdi
	movl	$720, %edx              # imm = 0x2D0
	movq	%r14, %rsi
	callq	memcpy
	leaq	21648(%r13), %rbx
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	param_read_long
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB11_4
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB11_9
# BB#2:                                 # %sw.bb
	cmpq	$0, (%rbx)
	jg	.LBB11_4
# BB#3:                                 # %if.then
	movq	$1, (%rbx)
.LBB11_4:                               # %sw.epilog
	leaq	21656(%r13), %rbx
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB11_11
# BB#5:                                 # %sw.epilog
	testl	%ebp, %ebp
	jne	.LBB11_8
# BB#6:                                 # %sw.bb.6
	cmpl	$61, (%rbx)
	jae	.LBB11_7
.LBB11_11:                              # %if.end.25
	leaq	728(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r15, %rdi
	callq	param_read_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB11_21
# BB#12:                                # %if.then.27
	movl	$.L.str.13, %edi
	callq	strlen
	movl	736(%rsp), %ebx
	cmpq	%rbx, %rax
	jne	.LBB11_14
# BB#13:                                # %land.rhs.i
	movq	728(%rsp), %rsi
	movl	$.L.str.13, %edi
	movq	%rax, %rdx
	callq	strncmp
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB11_21
.LBB11_14:                              # %if.else
	movl	$.L.str.1, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB11_16
# BB#15:                                # %land.rhs.i.43
	movq	728(%rsp), %rsi
	movl	$.L.str.1, %edi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$1, %r12d
	testl	%eax, %eax
	je	.LBB11_21
.LBB11_16:                              # %if.else.33
	movl	$.L.str.3, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB11_18
# BB#17:                                # %land.rhs.i.53
	movq	728(%rsp), %rsi
	movl	$.L.str.3, %edi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$2, %r12d
	testl	%eax, %eax
	je	.LBB11_21
.LBB11_18:                              # %if.else.37
	movl	$.L.str.14, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB11_20
# BB#19:                                # %land.rhs.i.63
	movq	728(%rsp), %rsi
	movl	$.L.str.14, %edi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$3, %r12d
	testl	%eax, %eax
	je	.LBB11_21
.LBB11_20:                              # %if.end.49.thread
	movq	(%r15), %rax
	movl	$-15, %ebp
	movl	$.L.str.12, %esi
	movl	$-15, %edx
	movq	%r15, %rdi
	callq	*56(%rax)
	jmp	.LBB11_30
.LBB11_21:                              # %if.end.49
	testl	%ebp, %ebp
	js	.LBB11_30
# BB#22:                                # %if.then.51
	movl	%r12d, 21644(%r13)
	movl	$-1, %ebp
	movl	%r12d, %eax
	cmpl	$3, %r12d
	ja	.LBB11_30
# BB#23:                                # %if.then.51
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_24:                              # %if.then.i
	movq	$DeviceGrayComponents, 18480(%r13)
	movl	$1, 18488(%r13)
	movq	$.L.str.13, 784(%r13)
	movl	$1, 104(%r13)
	jmp	.LBB11_29
.LBB11_9:                               # %sw.default
	movq	(%r15), %rax
	movl	$.L.str.9, %esi
	jmp	.LBB11_10
.LBB11_7:                               # %if.end.12
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.11, %esi
	movl	$60, %edx
	xorl	%eax, %eax
	callq	errprintf
	movl	$-15, %ebp
.LBB11_8:                               # %sw.default.17
	movq	(%r15), %rax
	movl	$.L.str.10, %esi
.LBB11_10:                              # %cleanup
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	jmp	.LBB11_31
.LBB11_25:                              # %if.then.5.i
	movq	$DeviceRGBComponents, 18480(%r13)
	movl	$3, 18488(%r13)
	movq	$.L.str.1, 784(%r13)
	movl	$1, 104(%r13)
	jmp	.LBB11_29
.LBB11_26:                              # %if.then.16.i
	movq	$DeviceCMYKComponents, 18480(%r13)
	movl	$4, 18488(%r13)
	movq	$.L.str.3, 784(%r13)
	jmp	.LBB11_28
.LBB11_27:                              # %if.then.27.i
	movq	$DeviceCMYKComponents, 18480(%r13)
	movl	$4, 18488(%r13)
	movq	$.L.str.14, 784(%r13)
.LBB11_28:                              # %if.end.57
	movl	$0, 104(%r13)
.LBB11_29:                              # %if.end.57
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	gx_devn_prn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB11_31
.LBB11_30:                              # %if.then.59
	leaq	8(%rsp), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%r14, %rdi
	callq	memcpy
.LBB11_31:                              # %cleanup
	movl	%ebp, %eax
	addq	$744, %rsp              # imm = 0x2E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	psd_put_params, .Lfunc_end11-psd_put_params
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_24
	.quad	.LBB11_25
	.quad	.LBB11_26
	.quad	.LBB11_27

	.text
	.align	16, 0x90
	.type	get_psdrgb_color_mapping_procs,@function
get_psdrgb_color_mapping_procs:         # @get_psdrgb_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$psdRGB_procs, %eax
	retq
.Lfunc_end12:
	.size	get_psdrgb_color_mapping_procs, .Lfunc_end12-get_psdrgb_color_mapping_procs
	.cfi_endproc

	.align	16, 0x90
	.type	psd_get_color_comp_index,@function
psd_get_color_comp_index:               # @psd_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 48
.Ltmp60:
	.cfi_offset %rbx, -48
.Ltmp61:
	.cfi_offset %r12, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movslq	%ebp, %rdx
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	$-1, %r15d
	testl	%eax, %eax
	je	.LBB13_6
# BB#1:                                 # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	gx_devn_prn_get_color_comp_index
	movl	%eax, %r15d
	cmpl	$1, %r12d
	jne	.LBB13_6
# BB#2:                                 # %if.end
	testl	%r15d, %r15d
	jns	.LBB13_6
# BB#3:                                 # %land.lhs.true.7
	cmpl	$0, 22480(%r14)
	jne	.LBB13_6
# BB#4:                                 # %land.lhs.true.10
	cmpl	$0, 19536(%r14)
	jne	.LBB13_6
# BB#5:                                 # %if.then.13
	movq	24(%r14), %rdi
	movl	$.L.str.17, %esi
	movl	$969, %edx              # imm = 0x3C9
	callq	dmprintf_file_and_line
	movq	24(%r14), %rdi
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	24(%r14), %rdi
	movl	$.L.str.17, %esi
	movl	$970, %edx              # imm = 0x3CA
	callq	dmprintf_file_and_line
	movq	24(%r14), %rdi
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	24(%r14), %rdi
	movl	$.L.str.17, %esi
	movl	$971, %edx              # imm = 0x3CB
	callq	dmprintf_file_and_line
	movq	24(%r14), %rdi
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$1, 22480(%r14)
.LBB13_6:                               # %cleanup
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	psd_get_color_comp_index, .Lfunc_end13-psd_get_color_comp_index
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_psdrgb_cm,@function
gray_cs_to_psdrgb_cm:                   # @gray_cs_to_psdrgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbx, -16
	movslq	18504(%rdi), %rax
	testq	%rax, %rax
	movw	%si, 4(%rdx)
	movw	%si, 2(%rdx)
	movw	%si, (%rdx)
	jle	.LBB14_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	(%rcx,%rax), %r11
	cmpq	$-2, %r11
	je	.LBB14_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r11
	movq	%r11, %r10
	andq	$-16, %r10
	xorl	%ecx, %ecx
	movq	%r11, %r9
	andq	$-16, %r9
	je	.LBB14_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	-14(%rax,%rcx), %r8
	movl	%r8d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%esi, %esi
	testb	$3, %cl
	je	.LBB14_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-10(%rdx,%rax,2), %rdi
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-2, %rcx
	movl	$-2, %esi
	cmovgl	%ecx, %esi
	leal	-14(%rsi,%rax), %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB14_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi)
	movups	%xmm0, -16(%rdi)
	addq	$16, %rsi
	addq	$-32, %rdi
	incq	%rcx
	jne	.LBB14_5
.LBB14_6:                               # %vector.body.preheader.split
	movq	%rax, %rbx
	subq	%r10, %rbx
	cmpq	$48, %r8
	jb	.LBB14_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdi
	cmovgq	%rcx, %rdi
	leaq	2(%rdi,%rax), %rcx
	andq	$-16, %rcx
	subq	%rsi, %rcx
	addq	$-5, %rax
	subq	%rsi, %rax
	leaq	(%rdx,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB14_8:                               # %vector.body
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
	jne	.LBB14_8
.LBB14_9:
	movq	%rbx, %rax
	movq	%r9, %rcx
.LBB14_10:                              # %middle.block
	cmpq	%rcx, %r11
	je	.LBB14_13
.LBB14_11:                              # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB14_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 2(%rdx,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB14_12
.LBB14_13:                              # %for.end
	popq	%rbx
	retq
.Lfunc_end14:
	.size	gray_cs_to_psdrgb_cm, .Lfunc_end14-gray_cs_to_psdrgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_psdrgb_cm,@function
rgb_cs_to_psdrgb_cm:                    # @rgb_cs_to_psdrgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbx, -16
	movslq	18504(%rdi), %rax
	testq	%rax, %rax
	movw	%dx, (%r9)
	movw	%cx, 2(%r9)
	movw	%r8w, 4(%r9)
	jle	.LBB15_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	(%rcx,%rax), %rcx
	cmpq	$-2, %rcx
	je	.LBB15_11
# BB#2:                                 # %overflow.checked
	addq	$2, %rcx
	movq	%rcx, %r11
	andq	$-16, %r11
	xorl	%edx, %edx
	movq	%rcx, %r10
	andq	$-16, %r10
	je	.LBB15_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %edx
	cmovlq	%rax, %rdx
	notq	%rdx
	leaq	-14(%rax,%rdx), %r8
	movl	%r8d, %edx
	shrl	$4, %edx
	incl	%edx
	xorl	%edi, %edi
	testb	$3, %dl
	je	.LBB15_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-10(%r9,%rax,2), %rdx
	movq	%rax, %rsi
	notq	%rsi
	cmpq	$-2, %rsi
	movl	$-2, %edi
	cmovgl	%esi, %edi
	leal	-14(%rdi,%rax), %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB15_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdx)
	movups	%xmm0, -16(%rdx)
	addq	$16, %rdi
	addq	$-32, %rdx
	incq	%rsi
	jne	.LBB15_5
.LBB15_6:                               # %vector.body.preheader.split
	movq	%rax, %rbx
	subq	%r11, %rbx
	cmpq	$48, %r8
	jb	.LBB15_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rsi
	notq	%rsi
	cmpq	$-3, %rsi
	movq	$-2, %rdx
	cmovgq	%rsi, %rdx
	leaq	2(%rdx,%rax), %rsi
	andq	$-16, %rsi
	subq	%rdi, %rsi
	addq	$-5, %rax
	subq	%rdi, %rax
	leaq	(%r9,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB15_8:                               # %vector.body
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
	addq	$-64, %rsi
	jne	.LBB15_8
.LBB15_9:
	movq	%rbx, %rax
	movq	%r10, %rdx
.LBB15_10:                              # %middle.block
	cmpq	%rdx, %rcx
	je	.LBB15_13
.LBB15_11:                              # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB15_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 2(%r9,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB15_12
.LBB15_13:                              # %for.end
	popq	%rbx
	retq
.Lfunc_end15:
	.size	rgb_cs_to_psdrgb_cm, .Lfunc_end15-rgb_cs_to_psdrgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_psdrgb_cm,@function
cmyk_cs_to_psdrgb_cm:                   # @cmyk_cs_to_psdrgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -24
.Ltmp73:
	.cfi_offset %r14, -16
	movq	%r9, %r14
	movl	%r8d, %eax
	movslq	18504(%rdi), %rbx
	movq	24(%rdi), %rdi
	movq	%rdi, (%rsp)
	xorl	%r8d, %r8d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	color_cmyk_to_rgb
	testq	%rbx, %rbx
	jle	.LBB16_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rbx
	movl	$1, %eax
	cmovlq	%rbx, %rax
	notq	%rax
	leaq	(%rax,%rbx), %rax
	cmpq	$-2, %rax
	je	.LBB16_11
# BB#2:                                 # %overflow.checked
	addq	$2, %rax
	movq	%rax, %rdx
	andq	$-16, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %r9
	andq	$-16, %r9
	je	.LBB16_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rbx
	movl	$1, %ecx
	cmovlq	%rbx, %rcx
	notq	%rcx
	leaq	-14(%rbx,%rcx), %r8
	movl	%r8d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%edi, %edi
	testb	$3, %cl
	je	.LBB16_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-10(%r14,%rbx,2), %rsi
	movq	%rbx, %rcx
	notq	%rcx
	cmpq	$-2, %rcx
	movl	$-2, %edi
	cmovgl	%ecx, %edi
	leal	-14(%rdi,%rbx), %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB16_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rsi)
	movups	%xmm0, -16(%rsi)
	addq	$16, %rdi
	addq	$-32, %rsi
	incq	%rcx
	jne	.LBB16_5
.LBB16_6:                               # %vector.body.preheader.split
	movq	%rbx, %rsi
	subq	%rdx, %rsi
	cmpq	$48, %r8
	jb	.LBB16_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rbx, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdx
	cmovgq	%rcx, %rdx
	leaq	2(%rdx,%rbx), %rcx
	andq	$-16, %rcx
	subq	%rdi, %rcx
	addq	$-5, %rbx
	subq	%rdi, %rbx
	leaq	(%r14,%rbx,2), %rdx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB16_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -64(%rdx)
	movups	%xmm0, -80(%rdx)
	movups	%xmm0, -96(%rdx)
	movups	%xmm0, -112(%rdx)
	addq	$-128, %rdx
	addq	$-64, %rcx
	jne	.LBB16_8
.LBB16_9:
	movq	%rsi, %rbx
	movq	%r9, %rcx
.LBB16_10:                              # %middle.block
	cmpq	%rcx, %rax
	je	.LBB16_13
.LBB16_11:                              # %for.body.preheader
	incq	%rbx
	.align	16, 0x90
.LBB16_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 2(%r14,%rbx,2)
	decq	%rbx
	cmpq	$1, %rbx
	jg	.LBB16_12
.LBB16_13:                              # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	cmyk_cs_to_psdrgb_cm, .Lfunc_end16-cmyk_cs_to_psdrgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	psd_device_enum_ptrs,@function
psd_device_enum_ptrs:                   # @psd_device_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_gx_devn_prn_device, %r9d
	jmpq	*st_gx_devn_prn_device+32(%rip) # TAILCALL
.Lfunc_end17:
	.size	psd_device_enum_ptrs, .Lfunc_end17-psd_device_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	psd_device_reloc_ptrs,@function
psd_device_reloc_ptrs:                  # @psd_device_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_gx_devn_prn_device, %edx
	jmpq	*st_gx_devn_prn_device+40(%rip) # TAILCALL
.Lfunc_end18:
	.size	psd_device_reloc_ptrs, .Lfunc_end18-psd_device_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	psd_device_finalize,@function
psd_device_finalize:                    # @psd_device_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gx_devn_prn_device_finalize # TAILCALL
.Lfunc_end19:
	.size	psd_device_finalize, .Lfunc_end19-psd_device_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	get_psd_color_mapping_procs,@function
get_psd_color_mapping_procs:            # @get_psd_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	21644(%rdi), %rax
	cmpq	$3, %rax
	ja	.LBB20_2
# BB#1:                                 # %switch.lookup
	movq	.Lswitch.table(,%rax,8), %rax
	retq
.LBB20_2:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	get_psd_color_mapping_procs, .Lfunc_end20-get_psd_color_mapping_procs
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_psdcmyk_cm,@function
gray_cs_to_psdcmyk_cm:                  # @gray_cs_to_psdcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	%esi, %ecx
	leaq	19540(%rdi), %rsi
	movl	%ecx, %edx
	movq	%rax, %rcx
	jmp	gray_cs_to_devn_cm      # TAILCALL
.Lfunc_end21:
	.size	gray_cs_to_psdcmyk_cm, .Lfunc_end21-gray_cs_to_psdcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_psdcmyk_cm,@function
rgb_cs_to_psdcmyk_cm:                   # @rgb_cs_to_psdcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp74:
	.cfi_def_cfa_offset 16
	movl	%r8d, %r10d
	movl	%ecx, %eax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%r9, (%rsp)
	leaq	19540(%rdi), %rsi
	movl	%eax, %r8d
	movl	%r10d, %r9d
	callq	rgb_cs_to_devn_cm
	popq	%rax
	retq
.Lfunc_end22:
	.size	rgb_cs_to_psdcmyk_cm, .Lfunc_end22-rgb_cs_to_psdcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_psdcmyk_cm,@function
cmyk_cs_to_psdcmyk_cm:                  # @cmyk_cs_to_psdcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 64
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %rbp
	callq	gx_devn_prn_ret_devn_params
	movslq	1064(%rax), %rcx
	testq	%rcx, %rcx
	jle	.LBB23_18
# BB#1:                                 # %for.body.lr.ph
	xorl	%edx, %edx
	testb	$1, %cl
	je	.LBB23_9
# BB#2:                                 # %for.body.prol
	movl	$1, %edx
	movl	1068(%rax), %esi
	cmpq	$3, %rsi
	ja	.LBB23_9
# BB#3:                                 # %for.body.prol
	jmpq	*.LJTI23_0(,%rsi,8)
.LBB23_7:                               # %sw.bb.prol
	movw	%r13w, (%rbx)
	jmp	.LBB23_8
.LBB23_18:                              # %if.else
	addq	$1068, %rax             # imm = 0x42C
	movq	%rbx, (%rsp)
	movswl	%r13w, %edx
	movswl	%r12w, %ecx
	movswl	%r15w, %r8d
	movswl	%r14w, %r9d
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	cmyk_cs_to_devn_cm
	jmp	.LBB23_19
.LBB23_6:                               # %sw.bb.4.prol
	movw	%r12w, 2(%rbx)
	jmp	.LBB23_8
.LBB23_5:                               # %sw.bb.6.prol
	movw	%r15w, 4(%rbx)
	jmp	.LBB23_8
.LBB23_4:                               # %sw.bb.8.prol
	movw	%r14w, 6(%rbx)
.LBB23_8:                               # %for.body.lr.ph.split
	movl	$1, %edx
.LBB23_9:                               # %for.body.lr.ph.split
	cmpl	$1, %ecx
	je	.LBB23_19
	.align	16, 0x90
.LBB23_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	1068(%rax,%rdx,4), %esi
	cmpq	$3, %rsi
	ja	.LBB23_16
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB23_10 Depth=1
	jmpq	*.LJTI23_1(,%rsi,8)
.LBB23_12:                              # %sw.bb
                                        #   in Loop: Header=BB23_10 Depth=1
	movw	%r13w, (%rbx)
	jmp	.LBB23_16
.LBB23_13:                              # %sw.bb.4
                                        #   in Loop: Header=BB23_10 Depth=1
	movw	%r12w, 2(%rbx)
	jmp	.LBB23_16
.LBB23_14:                              # %sw.bb.6
                                        #   in Loop: Header=BB23_10 Depth=1
	movw	%r15w, 4(%rbx)
	jmp	.LBB23_16
.LBB23_15:                              # %sw.bb.8
                                        #   in Loop: Header=BB23_10 Depth=1
	movw	%r14w, 6(%rbx)
	.align	16, 0x90
.LBB23_16:                              # %for.inc
                                        #   in Loop: Header=BB23_10 Depth=1
	movl	1072(%rax,%rdx,4), %esi
	cmpq	$3, %rsi
	ja	.LBB23_24
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB23_10 Depth=1
	jmpq	*.LJTI23_2(,%rsi,8)
.LBB23_23:                              # %sw.bb.1
                                        #   in Loop: Header=BB23_10 Depth=1
	movw	%r13w, (%rbx)
	jmp	.LBB23_24
.LBB23_22:                              # %sw.bb.4.1
                                        #   in Loop: Header=BB23_10 Depth=1
	movw	%r12w, 2(%rbx)
	jmp	.LBB23_24
.LBB23_21:                              # %sw.bb.6.1
                                        #   in Loop: Header=BB23_10 Depth=1
	movw	%r15w, 4(%rbx)
	jmp	.LBB23_24
.LBB23_20:                              # %sw.bb.8.1
                                        #   in Loop: Header=BB23_10 Depth=1
	movw	%r14w, 6(%rbx)
	.align	16, 0x90
.LBB23_24:                              # %for.inc.1
                                        #   in Loop: Header=BB23_10 Depth=1
	addq	$2, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB23_10
.LBB23_19:                              # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	cmyk_cs_to_psdcmyk_cm, .Lfunc_end23-cmyk_cs_to_psdcmyk_cm
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_7
	.quad	.LBB23_6
	.quad	.LBB23_5
	.quad	.LBB23_4
.LJTI23_1:
	.quad	.LBB23_12
	.quad	.LBB23_13
	.quad	.LBB23_14
	.quad	.LBB23_15
.LJTI23_2:
	.quad	.LBB23_23
	.quad	.LBB23_22
	.quad	.LBB23_21
	.quad	.LBB23_20

	.text
	.align	16, 0x90
	.type	gray_cs_to_spotn_cm,@function
gray_cs_to_spotn_cm:                    # @gray_cs_to_spotn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%esi, %ecx
	movswl	%cx, %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rax, %r9
	jmp	cmyk_cs_to_spotn_cm     # TAILCALL
.Lfunc_end24:
	.size	gray_cs_to_spotn_cm, .Lfunc_end24-gray_cs_to_spotn_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_spotn_cm,@function
rgb_cs_to_spotn_cm:                     # @rgb_cs_to_spotn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp92:
	.cfi_def_cfa_offset 80
.Ltmp93:
	.cfi_offset %rbx, -40
.Ltmp94:
	.cfi_offset %r12, -32
.Ltmp95:
	.cfi_offset %r14, -24
.Ltmp96:
	.cfi_offset %r15, -16
	movq	%r9, %r14
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movq	21928(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB25_22
# BB#1:                                 # %if.then
	movl	18504(%rbx), %r15d
	movq	21920(%rbx), %rax
	movzbl	1(%rax), %r12d
	movswl	%dx, %eax
	movl	%eax, %edx
	shrl	$11, %edx
	leal	(%rdx,%rax,2), %eax
	movw	%ax, 34(%rsp)
	movswl	%cx, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 36(%rsp)
	movswl	%r8w, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 38(%rsp)
	leaq	34(%rsp), %rdx
	leaq	(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbx, %rdi
	callq	gscms_transform_color
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.LBB25_8
# BB#2:                                 # %for.body.lr.ph
	leal	-1(%r12), %eax
	incq	%rax
	movl	%r12d, %edx
	andl	$15, %edx
	xorl	%esi, %esi
	movq	%rax, %rcx
	subq	%rdx, %rcx
	je	.LBB25_6
# BB#3:                                 # %vector.body.preheader
	leaq	16(%rsp), %rdx
	leaq	16(%r14), %rsi
	movl	%r12d, %edi
	decl	%edi
	incq	%rdi
	movl	%r12d, %ebx
	andl	$15, %ebx
	subq	%rbx, %rdi
	.align	16, 0x90
.LBB25_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	-16(%rdx), %xmm0
	movdqa	(%rdx), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rsi)
	movdqu	%xmm3, (%rsi)
	addq	$32, %rdx
	addq	$32, %rsi
	addq	$-16, %rdi
	jne	.LBB25_4
# BB#5:
	movq	%rcx, %rsi
.LBB25_6:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB25_7
# BB#20:                                # %for.body.preheader
	leaq	(%rsp,%rsi,2), %rax
	leaq	(%r14,%rsi,2), %rcx
	movl	%r12d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB25_21:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	movl	%esi, %edi
	shrl	%edi
	shrl	$13, %esi
	subl	%esi, %edi
	movw	%di, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB25_21
.LBB25_7:
	movl	%r12d, %edx
.LBB25_8:                               # %for.cond.33.preheader
	leal	4(%r15), %eax
	cmpl	%eax, %edx
	jge	.LBB25_23
# BB#9:                                 # %for.body.37.lr.ph
	addl	$3, %r15d
	subl	%edx, %r15d
	leaq	1(%r15), %rcx
	movabsq	$8589934576, %r9        # imm = 0x1FFFFFFF0
	movq	%rcx, %rsi
	andq	%r9, %rsi
	andq	%r9, %rcx
	leaq	1(%r15,%rdx), %r8
	je	.LBB25_17
# BB#10:                                # %vector.body45.preheader
	leaq	1(%r15), %rbx
	andq	%r9, %rbx
	addq	$-16, %rbx
	movl	%ebx, %ecx
	shrl	$4, %ecx
	incl	%ecx
	testb	$3, %cl
	movq	%rdx, %rcx
	je	.LBB25_13
# BB#11:                                # %vector.body45.prol.preheader
	leal	1(%r15), %edi
	andl	$48, %edi
	addl	$-16, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	pxor	%xmm0, %xmm0
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB25_12:                              # %vector.body45.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%r14,%rcx,2)
	movdqu	%xmm0, 16(%r14,%rcx,2)
	addq	$16, %rcx
	incq	%rdi
	jne	.LBB25_12
.LBB25_13:                              # %vector.body45.preheader.split
	addq	%rdx, %rsi
	cmpq	$48, %rbx
	jb	.LBB25_16
# BB#14:                                # %vector.body45.preheader.split.split
	incq	%r15
	andq	%r9, %r15
	addq	%r15, %rdx
	subq	%rcx, %rdx
	leaq	112(%r14,%rcx,2), %rcx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB25_15:                              # %vector.body45
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rcx)
	movdqu	%xmm0, -96(%rcx)
	movdqu	%xmm0, -80(%rcx)
	movdqu	%xmm0, -64(%rcx)
	movdqu	%xmm0, -48(%rcx)
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-64, %rdx
	jne	.LBB25_15
.LBB25_16:
	movq	%rsi, %rdx
.LBB25_17:                              # %middle.block46
	cmpq	%rdx, %r8
	je	.LBB25_23
# BB#18:                                # %for.body.37.preheader
	leaq	(%r14,%rdx,2), %rcx
	subl	%edx, %eax
	.align	16, 0x90
.LBB25_19:                              # %for.body.37
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	addq	$2, %rcx
	decl	%eax
	jne	.LBB25_19
	jmp	.LBB25_23
.LBB25_22:                              # %if.else
	movq	24(%rbx), %r9
	movswl	%dx, %edi
	movswl	%cx, %esi
	movswl	%r8w, %edx
	leaq	(%rsp), %r8
	movq	%rax, %rcx
	callq	color_rgb_to_cmyk
	movswl	6(%rsp), %r8d
	movswl	4(%rsp), %ecx
	movswl	2(%rsp), %edx
	movswl	(%rsp), %esi
	movq	%rbx, %rdi
	movq	%r14, %r9
	callq	cmyk_cs_to_spotn_cm
.LBB25_23:                              # %if.end
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end25:
	.size	rgb_cs_to_spotn_cm, .Lfunc_end25-rgb_cs_to_spotn_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_spotn_cm,@function
cmyk_cs_to_spotn_cm:                    # @cmyk_cs_to_spotn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp101:
	.cfi_def_cfa_offset 80
.Ltmp102:
	.cfi_offset %rbx, -40
.Ltmp103:
	.cfi_offset %r12, -32
.Ltmp104:
	.cfi_offset %r14, -24
.Ltmp105:
	.cfi_offset %r15, -16
	movq	%r9, %rbx
	movl	%esi, %r9d
	movabsq	$8589934576, %r15       # imm = 0x1FFFFFFF0
	movl	18504(%rdi), %r14d
	movq	22200(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB26_22
# BB#1:                                 # %if.then
	movq	22192(%rdi), %rax
	movzbl	1(%rax), %r12d
	movswl	%r9w, %r9d
	movl	%r9d, %eax
	shrl	$11, %eax
	leal	(%rax,%r9,2), %eax
	movw	%ax, 32(%rsp)
	movswl	%dx, %eax
	movl	%eax, %edx
	shrl	$11, %edx
	leal	(%rdx,%rax,2), %eax
	movw	%ax, 34(%rsp)
	movswl	%cx, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 36(%rsp)
	movswl	%r8w, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 38(%rsp)
	leaq	32(%rsp), %rdx
	leaq	(%rsp), %rcx
	movl	$2, %r8d
	callq	gscms_transform_color
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.LBB26_8
# BB#2:                                 # %for.body.lr.ph
	leal	-1(%r12), %eax
	incq	%rax
	movl	%r12d, %edx
	andl	$15, %edx
	xorl	%esi, %esi
	movq	%rax, %r8
	subq	%rdx, %r8
	je	.LBB26_6
# BB#3:                                 # %vector.body.preheader
	leaq	16(%rsp), %rdx
	leaq	16(%rbx), %rsi
	movl	%r12d, %edi
	decl	%edi
	incq	%rdi
	movl	%r12d, %ecx
	andl	$15, %ecx
	subq	%rcx, %rdi
	.align	16, 0x90
.LBB26_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	-16(%rdx), %xmm0
	movdqa	(%rdx), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rsi)
	movdqu	%xmm3, (%rsi)
	addq	$32, %rdx
	addq	$32, %rsi
	addq	$-16, %rdi
	jne	.LBB26_4
# BB#5:
	movq	%r8, %rsi
.LBB26_6:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB26_7
# BB#20:                                # %for.body.preheader
	leaq	(%rsp,%rsi,2), %rax
	leaq	(%rbx,%rsi,2), %rcx
	movl	%r12d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB26_21:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	movl	%esi, %edi
	shrl	%edi
	shrl	$13, %esi
	subl	%esi, %edi
	movw	%di, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB26_21
.LBB26_7:
	movl	%r12d, %edx
.LBB26_8:                               # %for.cond.40.preheader
	leal	4(%r14), %eax
	cmpl	%eax, %edx
	jge	.LBB26_34
# BB#9:                                 # %for.body.44.lr.ph
	addl	$3, %r14d
	subl	%edx, %r14d
	leaq	1(%r14), %rcx
	movq	%rcx, %r9
	andq	%r15, %r9
	andq	%r15, %rcx
	leaq	1(%r14,%rdx), %r8
	je	.LBB26_17
# BB#10:                                # %vector.body61.preheader
	leaq	1(%r14), %rdi
	andq	%r15, %rdi
	addq	$-16, %rdi
	movl	%edi, %ecx
	shrl	$4, %ecx
	incl	%ecx
	testb	$3, %cl
	movq	%rdx, %rcx
	je	.LBB26_13
# BB#11:                                # %vector.body61.prol.preheader
	leal	1(%r14), %esi
	andl	$48, %esi
	addl	$-16, %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	pxor	%xmm0, %xmm0
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB26_12:                              # %vector.body61.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rbx,%rcx,2)
	movdqu	%xmm0, 16(%rbx,%rcx,2)
	addq	$16, %rcx
	incq	%rsi
	jne	.LBB26_12
.LBB26_13:                              # %vector.body61.preheader.split
	addq	%rdx, %r9
	cmpq	$48, %rdi
	jb	.LBB26_16
# BB#14:                                # %vector.body61.preheader.split.split
	incq	%r14
	andq	%r15, %r14
	addq	%r14, %rdx
	subq	%rcx, %rdx
	leaq	112(%rbx,%rcx,2), %rcx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB26_15:                              # %vector.body61
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rcx)
	movdqu	%xmm0, -96(%rcx)
	movdqu	%xmm0, -80(%rcx)
	movdqu	%xmm0, -64(%rcx)
	movdqu	%xmm0, -48(%rcx)
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-64, %rdx
	jne	.LBB26_15
.LBB26_16:
	movq	%r9, %rdx
.LBB26_17:                              # %middle.block62
	cmpq	%rdx, %r8
	je	.LBB26_34
# BB#18:                                # %for.body.44.preheader
	leaq	(%rbx,%rdx,2), %rcx
	subl	%edx, %eax
	.align	16, 0x90
.LBB26_19:                              # %for.body.44
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	addq	$2, %rcx
	decl	%eax
	jne	.LBB26_19
	jmp	.LBB26_34
.LBB26_22:                              # %if.else
	movw	%r9w, (%rbx)
	movw	%dx, 2(%rbx)
	movw	%cx, 4(%rbx)
	movw	%r8w, 6(%rbx)
	testl	%r14d, %r14d
	jle	.LBB26_34
# BB#23:                                # %for.body.57.preheader
	leal	-1(%r14), %edx
	leaq	1(%rdx), %rax
	xorl	%esi, %esi
	movq	%rax, %rcx
	andq	%r15, %rcx
	je	.LBB26_31
# BB#24:                                # %vector.body85.preheader
	incq	%rdx
	andq	%r15, %rdx
	addq	$-16, %rdx
	movl	%edx, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB26_27
# BB#25:                                # %vector.body85.prol.preheader
	movl	%r14d, %edi
	andl	$48, %edi
	addl	$-16, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB26_26:                              # %vector.body85.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, 8(%rbx,%rsi,2)
	movdqu	%xmm0, 24(%rbx,%rsi,2)
	addq	$16, %rsi
	incq	%rdi
	jne	.LBB26_26
.LBB26_27:                              # %vector.body85.preheader.split
	cmpq	$48, %rdx
	jb	.LBB26_30
# BB#28:
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB26_29:                              # %vector.body85
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	orq	$4, %rdx
	movdqu	%xmm0, (%rbx,%rdx,2)
	movdqu	%xmm0, 16(%rbx,%rdx,2)
	leaq	16(%rsi), %rdx
	orq	$4, %rdx
	movdqu	%xmm0, (%rbx,%rdx,2)
	movdqu	%xmm0, 16(%rbx,%rdx,2)
	leaq	32(%rsi), %rdx
	orq	$4, %rdx
	movdqu	%xmm0, (%rbx,%rdx,2)
	movdqu	%xmm0, 16(%rbx,%rdx,2)
	leaq	48(%rsi), %rdx
	orq	$4, %rdx
	movdqu	%xmm0, (%rbx,%rdx,2)
	movdqu	%xmm0, 16(%rbx,%rdx,2)
	addq	$64, %rsi
	cmpq	%rcx, %rsi
	jne	.LBB26_29
.LBB26_30:
	movq	%rcx, %rsi
.LBB26_31:                              # %middle.block86
	cmpq	%rsi, %rax
	je	.LBB26_34
# BB#32:                                # %for.body.57.preheader108
	leaq	8(%rbx,%rsi,2), %rax
	subl	%esi, %r14d
	.align	16, 0x90
.LBB26_33:                              # %for.body.57
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%r14d
	jne	.LBB26_33
.LBB26_34:                              # %if.end
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end26:
	.size	cmyk_cs_to_spotn_cm, .Lfunc_end26-cmyk_cs_to_spotn_cm
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_psdgray_cm,@function
gray_cs_to_psdgray_cm:                  # @gray_cs_to_psdgray_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movw	%si, (%rdx)
	retq
.Lfunc_end27:
	.size	gray_cs_to_psdgray_cm, .Lfunc_end27-gray_cs_to_psdgray_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_psdgray_cm,@function
rgb_cs_to_psdgray_cm:                   # @rgb_cs_to_psdgray_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbx, -16
	movq	%r9, %rbx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%edx, %edi
	movl	%eax, %esi
	movl	%r8d, %edx
	callq	color_rgb_to_gray
	movw	%ax, (%rbx)
	popq	%rbx
	retq
.Lfunc_end28:
	.size	rgb_cs_to_psdgray_cm, .Lfunc_end28-rgb_cs_to_psdgray_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_psdgray_cm,@function
cmyk_cs_to_psdgray_cm:                  # @cmyk_cs_to_psdgray_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbx, -16
	movq	%r9, %rbx
	movl	%r8d, %eax
	xorl	%r8d, %r8d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	color_cmyk_to_gray
	movw	%ax, (%rbx)
	popq	%rbx
	retq
.Lfunc_end29:
	.size	cmyk_cs_to_psdgray_cm, .Lfunc_end29-cmyk_cs_to_psdgray_cm
	.cfi_endproc

	.type	spot_rgb_procs,@object  # @spot_rgb_procs
	.section	.rodata,"a",@progbits
	.align	8
spot_rgb_procs:
	.quad	psd_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	psd_prn_close
	.quad	0
	.quad	psd_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	psd_get_params
	.quad	psd_put_params
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
	.quad	get_psdrgb_color_mapping_procs
	.quad	psd_get_color_comp_index
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
	.size	spot_rgb_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"psdrgb"
	.size	.L.str, 7

	.type	st_psd_device,@object   # @st_psd_device
	.section	.rodata,"a",@progbits
	.align	8
st_psd_device:
	.long	22488                   # 0x57d8
	.zero	4
	.quad	.L.str.21
	.quad	0
	.quad	0
	.quad	psd_device_enum_ptrs
	.quad	psd_device_reloc_ptrs
	.quad	psd_device_finalize
	.quad	0
	.size	st_psd_device, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	DeviceRGBComponents,@object # @DeviceRGBComponents
	.data
	.align	16
DeviceRGBComponents:
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	0
	.size	DeviceRGBComponents, 32

	.type	gs_psdrgb_device,@object # @gs_psdrgb_device
	.section	.rodata,"a",@progbits
	.globl	gs_psdrgb_device
	.align	8
gs_psdrgb_device:
	.long	22488                   # 0x57d8
	.zero	4
	.quad	spot_rgb_procs
	.quad	.L.str
	.quad	0
	.quad	st_psd_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
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
	.quad	.L.str.1
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
	.quad	psd_print_page
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
	.quad	DeviceRGBComponents
	.long	3                       # 0x3
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
	.long	1                       # 0x1
	.zero	768
	.long	1                       # 0x1
	.quad	1                       # 0x1
	.long	10                      # 0xa
	.zero	256
	.zero	4
	.quad	0
	.quad	0
	.zero	256
	.quad	0
	.quad	0
	.zero	256
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	gs_psdrgb_device, 22488

	.type	spot_cmyk_procs,@object # @spot_cmyk_procs
	.align	8
spot_cmyk_procs:
	.quad	psd_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	psd_prn_close
	.quad	0
	.quad	psd_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	psd_get_params
	.quad	psd_put_params
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
	.quad	get_psd_color_mapping_procs
	.quad	psd_get_color_comp_index
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

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"psdcmyk"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DeviceCMYK"
	.size	.L.str.3, 11

	.type	gs_psdcmyk_device,@object # @gs_psdcmyk_device
	.section	.rodata,"a",@progbits
	.globl	gs_psdcmyk_device
	.align	8
gs_psdcmyk_device:
	.long	22488                   # 0x57d8
	.zero	4
	.quad	spot_cmyk_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_psd_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	8                       # 0x8
	.long	0                       # 0x0
	.short	64                      # 0x40
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
	.quad	.L.str.3
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
	.quad	psd_print_page
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
	.long	1                       # 0x1
	.zero	768
	.long	2                       # 0x2
	.quad	1                       # 0x1
	.long	10                      # 0xa
	.zero	256
	.zero	4
	.quad	0
	.quad	0
	.zero	256
	.quad	0
	.quad	0
	.zero	256
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	gs_psdcmyk_device, 22488

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"8BPS"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"8BIM"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Artifex Orange"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Artifex Green"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"psd_prn_close"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"DownScaleFactor"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"MaxSpots"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"MaxSpots must be between 0 and %d\n"
	.size	.L.str.11, 35

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ProcessColorModel"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"DeviceGray"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"DeviceN"
	.size	.L.str.14, 8

	.type	DeviceGrayComponents,@object # @DeviceGrayComponents
	.data
	.align	16
DeviceGrayComponents:
	.quad	.L.str.15
	.quad	0
	.size	DeviceGrayComponents, 16

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Gray"
	.size	.L.str.15, 5

	.type	psdRGB_procs,@object    # @psdRGB_procs
	.section	.rodata,"a",@progbits
	.align	8
psdRGB_procs:
	.quad	gray_cs_to_psdrgb_cm
	.quad	rgb_cs_to_psdrgb_cm
	.quad	cmyk_cs_to_psdrgb_cm
	.size	psdRGB_procs, 24

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"None"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"./devices/gdevpsd.c"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"**** Max spot colorants reached.\n"
	.size	.L.str.18, 34

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"**** Some colorants will be converted to equivalent CMYK values.\n"
	.size	.L.str.19, 66

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"**** If this is a Postscript file, try using the -dMaxSpots= option.\n"
	.size	.L.str.20, 70

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"psd_device"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Red"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Green"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Blue"
	.size	.L.str.24, 5

	.type	psdCMYK_procs,@object   # @psdCMYK_procs
	.section	.rodata,"a",@progbits
	.align	8
psdCMYK_procs:
	.quad	gray_cs_to_psdcmyk_cm
	.quad	rgb_cs_to_psdcmyk_cm
	.quad	cmyk_cs_to_psdcmyk_cm
	.size	psdCMYK_procs, 24

	.type	psdN_procs,@object      # @psdN_procs
	.align	8
psdN_procs:
	.quad	gray_cs_to_spotn_cm
	.quad	rgb_cs_to_spotn_cm
	.quad	cmyk_cs_to_spotn_cm
	.size	psdN_procs, 24

	.type	psdGray_procs,@object   # @psdGray_procs
	.align	8
psdGray_procs:
	.quad	gray_cs_to_psdgray_cm
	.quad	rgb_cs_to_psdgray_cm
	.quad	cmyk_cs_to_psdgray_cm
	.size	psdGray_procs, 24

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"psd_write_sep_line"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"psd_write_image_data"
	.size	.L.str.26, 21

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.quad	psdGray_procs
	.quad	psdRGB_procs
	.quad	psdCMYK_procs
	.quad	psdN_procs
	.size	.Lswitch.table, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
