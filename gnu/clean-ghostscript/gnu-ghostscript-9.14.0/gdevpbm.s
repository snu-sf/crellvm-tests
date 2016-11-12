	.text
	.file	"gdevpbm.bc"
	.align	16, 0x90
	.type	pbm_print_page,@function
pbm_print_page:                         # @pbm_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movsbl	18472(%rdi), %esi
	movl	$pbm_print_row, %ecx
	movq	%rax, %rdx
	jmp	pbm_print_page_loop     # TAILCALL
.Lfunc_end0:
	.size	pbm_print_page, .Lfunc_end0-pbm_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pgm_print_page,@function
pgm_print_page:                         # @pgm_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	cmpb	$0, 18546(%rdi)
	jne	.LBB1_3
# BB#1:                                 # %land.lhs.true
	cmpb	$0, 18545(%rdi)
	je	.LBB1_3
# BB#2:                                 # %cond.true
	movb	18472(%rdi), %cl
	decb	%cl
	movsbl	%cl, %esi
	movl	$pxm_pbm_print_row, %ecx
	movq	%rax, %rdx
	jmp	pbm_print_page_loop     # TAILCALL
.LBB1_3:                                # %cond.false
	movsbl	18472(%rdi), %esi
	movl	$pgm_print_row, %ecx
	movq	%rax, %rdx
	jmp	pbm_print_page_loop     # TAILCALL
.Lfunc_end1:
	.size	pgm_print_page, .Lfunc_end1-pgm_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	ppm_print_page,@function
ppm_print_page:                         # @ppm_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movzbl	18546(%rdi), %edx
	cmpl	$1, %edx
	ja	.LBB2_4
# BB#1:                                 # %lor.lhs.false
	cmpb	$0, 18545(%rdi)
	je	.LBB2_4
# BB#2:                                 # %cond.false
	movb	18472(%rdi), %cl
	movzbl	%dl, %edx
	cmpl	$1, %edx
	jne	.LBB2_3
# BB#5:                                 # %cond.true.6
	decb	%cl
	movsbl	%cl, %esi
	movl	$ppm_pgm_print_row, %ecx
	movq	%rax, %rdx
	jmp	pbm_print_page_loop     # TAILCALL
.LBB2_4:                                # %cond.true
	movsbl	18472(%rdi), %esi
	movl	$ppm_print_row, %ecx
	movq	%rax, %rdx
	jmp	pbm_print_page_loop     # TAILCALL
.LBB2_3:                                # %cond.false.11
	addb	$-2, %cl
	movsbl	%cl, %esi
	movl	$pxm_pbm_print_row, %ecx
	movq	%rax, %rdx
	jmp	pbm_print_page_loop     # TAILCALL
.Lfunc_end2:
	.size	ppm_print_page, .Lfunc_end2-ppm_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pkm_print_page,@function
pkm_print_page:                         # @pkm_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movb	18472(%rdi), %dl
	movl	$pkm_print_row_4, %ecx
	movzwl	108(%rdi), %esi
	cmpl	$8, %esi
	jb	.LBB3_2
# BB#1:                                 # %select.mid
	movl	$pkm_print_row, %ecx
.LBB3_2:                                # %select.end
	movsbl	%dl, %esi
	movq	%rax, %rdx
	jmp	pbm_print_page_loop     # TAILCALL
.Lfunc_end3:
	.size	pkm_print_page, .Lfunc_end3-pkm_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	psm_print_page,@function
psm_print_page:                         # @psm_print_page
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
	subq	$136, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 192
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
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movzwl	108(%rbx), %esi
	imull	832(%rbx), %esi
	addl	$63, %esi
	sarl	$6, %esi
	shll	$3, %esi
	movq	24(%rbx), %rdi
	movl	$.L.str.51, %edx
	callq	*64(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB4_27
# BB#1:                                 # %for.cond.preheader
	xorl	%r14d, %r14d
	cmpl	$0, 100(%rbx)
	jle	.LBB4_26
# BB#2:                                 # %for.body.lr.ph
	leaq	18473(%rbx), %r12
	movq	%r12, 24(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB4_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	leaq	120(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	gx_render_plane_init
	movl	120(%rsp), %ebp
	movl	124(%rsp), %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$1, %r15d
	movb	%bpl, %cl
	shll	%cl, %r15d
	movl	832(%rbx), %eax
	imull	%ebp, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movsbl	18472(%rbx), %eax
	cmpl	$1, %ebp
	setg	%cl
	movzbl	%cl, %edx
	addl	%eax, %edx
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	testl	%eax, %eax
	js	.LBB4_28
# BB#4:                                 # %if.end.23
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpb	$0, (%r12)
	je	.LBB4_6
# BB#5:                                 # %if.then.24
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rdx
	callq	fprintf
	jmp	.LBB4_7
	.align	16, 0x90
.LBB4_6:                                # %if.else
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	16(%rbx), %rcx
	movl	$.L.str.43, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	gs_product(%rip), %rdx
	callq	fprintf
.LBB4_7:                                # %if.else
                                        #   in Loop: Header=BB4_3 Depth=1
	testl	%eax, %eax
	js	.LBB4_28
# BB#8:                                 # %if.end.36
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	832(%rbx), %edx
	movl	836(%rbx), %ecx
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	testl	%eax, %eax
	js	.LBB4_28
# BB#9:                                 # %if.end.42
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$2, %ebp
	jl	.LBB4_11
# BB#10:                                # %if.then.45
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	112(%rbx), %edx
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	testl	%eax, %eax
	js	.LBB4_28
.LBB4_11:                               # %for.cond.53.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%r13d, 48(%rsp)         # 4-byte Spill
	cmpl	$0, 836(%rbx)
	jle	.LBB4_25
# BB#12:                                # %for.body.57.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	decl	%r15d
	movslq	%r15d, %rdx
	movl	52(%rsp), %eax          # 4-byte Reload
	addl	$63, %eax
	sarl	$6, %eax
	shll	$3, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rcx          # 8-byte Reload
	shlq	%cl, %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB4_13:                               # %for.body.57
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r12d, %r15d
	jne	.LBB4_16
# BB#14:                                # %if.then.60
                                        #   in Loop: Header=BB4_13 Depth=2
	movl	$1, %edx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	leaq	80(%rsp), %rcx
	leaq	76(%rsp), %r8
	callq	gdev_prn_color_usage
	movl	%eax, %r12d
	addl	76(%rsp), %r12d
	movq	80(%rsp), %r13
	andq	40(%rsp), %r13          # 8-byte Folded Reload
	jne	.LBB4_16
# BB#15:                                # %if.then.65
                                        #   in Loop: Header=BB4_13 Depth=2
	xorl	%esi, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	memset
	.align	16, 0x90
.LBB4_16:                               # %if.end.69
                                        #   in Loop: Header=BB4_13 Depth=2
	testq	%r13, %r13
	je	.LBB4_19
# BB#17:                                # %if.then.71
                                        #   in Loop: Header=BB4_13 Depth=2
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 88(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	76(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$1, %edx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	52(%rsp), %r8d          # 4-byte Reload
	leaq	112(%rsp), %r9
	callq	gdev_prn_get_lines
	movl	%eax, %r14d
	sarl	$31, %eax
	testb	$6, %al
	jne	.LBB4_25
# BB#18:                                # %if.then.71.if.end.80_crit_edge
                                        #   in Loop: Header=BB4_13 Depth=2
	movq	112(%rsp), %rsi
	jmp	.LBB4_20
	.align	16, 0x90
.LBB4_19:                               # %if.else.79
                                        #   in Loop: Header=BB4_13 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, 112(%rsp)
	movq	%rax, %rsi
.LBB4_20:                               # %if.end.80
                                        #   in Loop: Header=BB4_13 Depth=2
	cmpl	$1, %ebp
	jne	.LBB4_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB4_13 Depth=2
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	pbm_print_row
	jmp	.LBB4_23
	.align	16, 0x90
.LBB4_22:                               # %cond.false
                                        #   in Loop: Header=BB4_13 Depth=2
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	pgm_print_row
.LBB4_23:                               # %cond.end
                                        #   in Loop: Header=BB4_13 Depth=2
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB4_25
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=2
	incl	%r15d
	cmpl	836(%rbx), %r15d
	jl	.LBB4_13
.LBB4_25:                               # %for.inc.102
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	48(%rsp), %r13d         # 4-byte Reload
	incl	%r13d
	cmpl	100(%rbx), %r13d
	movq	24(%rsp), %r12          # 8-byte Reload
	jl	.LBB4_3
	jmp	.LBB4_26
.LBB4_28:                               # %cleanup.92.thread
	movl	$-12, %r14d
.LBB4_26:                               # %punt
	movq	24(%rbx), %rdi
	movl	$.L.str.51, %edx
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movl	%r14d, %eax
	sarl	$31, %eax
	andl	%r14d, %eax
.LBB4_27:                               # %cleanup.114
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	psm_print_page, .Lfunc_end4-psm_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pam_print_page,@function
pam_print_page:                         # @pam_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movsbl	18472(%rdi), %esi
	movl	$pam_print_row, %ecx
	movq	%rax, %rdx
	jmp	pbm_print_page_loop     # TAILCALL
.Lfunc_end5:
	.size	pam_print_page, .Lfunc_end5-pam_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pnmcmyk_print_page,@function
pnmcmyk_print_page:                     # @pnmcmyk_print_page
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
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	1104(%r12), %rax
	cmpl	$1, 156(%rax)
	jne	.LBB6_23
# BB#1:                                 # %land.lhs.true
	cmpl	$1, 160(%rax)
	jne	.LBB6_23
# BB#2:                                 # %if.then
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gx_device_raster_chunky
	movq	24(%r12), %rdi
	movl	$.L.str.27, %edx
	movl	%eax, %esi
	callq	*64(%rdi)
	movq	%rax, %r15
	leaq	13056(%r12), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	cmpq	$4, %rbp
	movl	$4, %edx
	cmovbq	%rbp, %rdx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	$nop_row_proc, %r13d
	testl	%eax, %eax
	je	.LBB6_11
# BB#3:                                 # %lor.rhs
	cmpq	$9, %rbp
	movl	$9, %edx
	cmovbq	%rbp, %rdx
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	$nop_row_proc, %r13d
	testl	%eax, %eax
	je	.LBB6_11
# BB#4:                                 # %if.then.97
	movl	$.L.str.48, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$-12, %ebp
	testl	%eax, %eax
	js	.LBB6_22
# BB#5:                                 # %if.end.102
	cmpb	$0, 18473(%r12)
	je	.LBB6_7
# BB#6:                                 # %if.then.105
	leaq	18473(%r12), %rdx
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	jmp	.LBB6_8
.LBB6_23:                               # %if.end.201
	movsbl	18472(%r12), %esi
	movl	$pam_print_row, %ecx
	movq	%r12, %rdi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pbm_print_page_loop     # TAILCALL
.LBB6_7:                                # %if.else
	movq	gs_product(%rip), %rdx
	movq	16(%r12), %rcx
	movl	$.L.str.43, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB6_8:                                # %if.else
	testl	%eax, %eax
	js	.LBB6_22
# BB#9:                                 # %if.end.118
	movl	832(%r12), %edx
	movl	836(%r12), %ecx
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB6_22
# BB#10:                                # %if.end.123
	movl	$.L.str.49, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$pgm_print_row, %r13d
	testl	%eax, %eax
	js	.LBB6_22
.LBB6_11:                               # %for.cond.preheader
	cmpl	$0, 836(%r12)
	movl	$0, %ebp
	jle	.LBB6_22
# BB#12:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB6_14:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	leaq	(%rsp), %rcx
	callq	gdev_prn_get_bits
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_22
# BB#15:                                # %if.end.142
                                        #   in Loop: Header=BB6_14 Depth=1
	movq	(%rsp), %rsi
	movslq	832(%r12), %rax
	testq	%rax, %rax
	jle	.LBB6_21
# BB#16:                                #   in Loop: Header=BB6_14 Depth=1
	leaq	(%rsi,%rax,4), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB6_17:                               # %for.body.147
                                        #   Parent Loop BB6_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rcx,4), %edx
	xorl	$255, %edx
	imull	$30, %edx, %edx
	movzbl	1(%rsi,%rcx,4), %edi
	xorl	$255, %edi
	imull	$59, %edi, %edi
	movzbl	2(%rsi,%rcx,4), %ebp
	xorl	$255, %ebp
	imull	$11, %ebp, %ebp
	addl	%edx, %edi
	leal	50(%rbp,%rdi), %edx
	imulq	$1374389535, %rdx, %rdx # imm = 0x51EB851F
	shrq	$37, %rdx
	movzbl	3(%rsi,%rcx,4), %edi
	subl	%edi, %edx
	jae	.LBB6_19
# BB#18:                                #   in Loop: Header=BB6_17 Depth=2
	xorl	%edx, %edx
.LBB6_19:                               # %for.body.147
                                        #   in Loop: Header=BB6_17 Depth=2
	movb	%dl, (%rsi,%rcx)
	leaq	4(%rsi,%rcx,4), %rdx
	incq	%rcx
	cmpq	%rax, %rdx
	jb	.LBB6_17
# BB#20:                                # %for.cond.144.cleanup_crit_edge
                                        #   in Loop: Header=BB6_14 Depth=1
	movq	(%rsp), %rsi
.LBB6_21:                               # %cleanup
                                        #   in Loop: Header=BB6_14 Depth=1
	movl	$1, 104(%r12)
	movl	$8, %edx
	movq	%r12, %rdi
	movq	%r14, %rcx
	callq	*%r13
	movl	%eax, %ebp
	movl	$0, 104(%r12)
	testl	%ebp, %ebp
	js	.LBB6_22
# BB#13:                                # %for.cond
                                        #   in Loop: Header=BB6_14 Depth=1
	incl	%ebx
	cmpl	836(%r12), %ebx
	jl	.LBB6_14
.LBB6_22:                               # %return
	movq	24(%r12), %rdi
	movl	$.L.str.27, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pnmcmyk_print_page, .Lfunc_end6-pnmcmyk_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pam4_print_page,@function
pam4_print_page:                        # @pam4_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movsbl	18472(%rdi), %esi
	movl	$pam4_print_row, %ecx
	movq	%rax, %rdx
	jmp	pbm_print_page_loop     # TAILCALL
.Lfunc_end7:
	.size	pam4_print_page, .Lfunc_end7-pam4_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	ppm_output_page,@function
ppm_output_page:                        # @ppm_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %rbx
	callq	gdev_prn_bg_output_page
	testl	%ebp, %ebp
	je	.LBB8_3
# BB#1:                                 # %entry
	testl	%eax, %eax
	js	.LBB8_3
# BB#2:                                 # %if.then.1
	movb	$0, 18546(%rbx)
.LBB8_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ppm_output_page, .Lfunc_end8-ppm_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	ppm_put_params,@function
ppm_put_params:                         # @ppm_put_params
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
	subq	$744, %rsp              # imm = 0x2E8
.Ltmp37:
	.cfi_def_cfa_offset 800
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	96(%rbx), %r14
	movslq	100(%rbx), %r13
	leaq	(%rsp), %rdx
	movl	$.L.str.22, %esi
	movq	%r15, %rdi
	callq	param_read_string_array
	leaq	24(%rsp), %rdi
	movl	$720, %edx              # imm = 0x2D0
	movq	%r14, %rsi
	callq	memcpy
	movl	$.L.str.23, %r12d
	leaq	16(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	callq	param_read_long
	movl	%eax, %ebp
	cmpl	$1, %ebp
	jne	.LBB9_4
# BB#1:                                 # %lor.lhs.false
	movl	$.L.str.24, %r12d
	leaq	16(%rsp), %rdx
	movl	$.L.str.24, %esi
	movq	%r15, %rdi
	callq	param_read_long
	movl	%eax, %ebp
	cmpl	$1, %ebp
	jne	.LBB9_4
# BB#2:                                 # %lor.lhs.false.10
	movl	$.L.str.25, %r12d
	leaq	16(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r15, %rdi
	callq	param_read_long
	movl	%eax, %ebp
	cmpl	$1, %ebp
	jne	.LBB9_4
# BB#3:                                 # %lor.lhs.false.14
	movl	$.L.str.26, %r12d
	leaq	16(%rsp), %rdx
	movl	$.L.str.26, %esi
	movq	%r15, %rdi
	callq	param_read_long
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB9_15
.LBB9_4:                                # %if.then.18
	testl	%ebp, %ebp
	js	.LBB9_16
# BB#5:                                 # %if.else
	movq	16(%rsp), %rax
	cmpq	$2, %rax
	jl	.LBB9_7
# BB#6:                                 # %lor.lhs.false.24
	cmpb	$0, 18544(%rbx)
	movl	$256, %ecx              # imm = 0x100
	movl	$65536, %edx            # imm = 0x10000
	cmovneq	%rcx, %rdx
	cmpl	$1, %r13d
	cmovgq	%rcx, %rdx
	cmpq	%rdx, %rax
	jle	.LBB9_8
.LBB9_7:                                # %if.then.30
	movq	(%r15), %rax
	movl	$-15, %ebp
	movl	$-15, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*56(%rax)
.LBB9_16:                               # %if.then.85
	leaq	24(%rsp), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%r14, %rdi
	callq	memcpy
.LBB9_17:                               # %if.end.87
	movq	1312(%rbx), %rax
	movl	$pnm_copy_alpha, %ecx
	cmpq	%rcx, %rax
	je	.LBB9_20
# BB#18:                                # %if.then.i
	movq	%rax, 18552(%rbx)
	movzwl	108(%rbx), %eax
	cmpl	$5, %eax
	jb	.LBB9_20
# BB#19:                                # %if.then.5.i
	movq	$pnm_copy_alpha, 1312(%rbx)
.LBB9_20:                               # %if.end.8.i
	movq	1440(%rbx), %rax
	movl	$pnm_begin_typed_image, %ecx
	cmpq	%rcx, %rax
	je	.LBB9_22
# BB#21:                                # %if.then.12.i
	movq	%rax, 18560(%rbx)
	movq	$pnm_begin_typed_image, 1440(%rbx)
.LBB9_22:                               # %if.end.17.i
	cmpl	$4, 100(%rbx)
	jne	.LBB9_28
# BB#23:                                # %if.then.21.i
	movzwl	108(%rbx), %eax
	cmpl	$4, %eax
	jne	.LBB9_25
# BB#24:                                # %if.then.27.i
	movq	$cmyk_1bit_map_color_rgb, 1192(%rbx)
	movq	$cmyk_1bit_map_cmyk_color, 1264(%rbx)
	jmp	.LBB9_28
.LBB9_25:                               # %if.else.i
	movzbl	18472(%rbx), %eax
	cmpl	$7, %eax
	jne	.LBB9_27
# BB#26:                                # %if.then.33.i
	movq	$cmyk_8bit_map_color_rgb, 1192(%rbx)
	movq	$cmyk_8bit_map_cmyk_color, 1264(%rbx)
	jmp	.LBB9_28
.LBB9_8:                                # %if.else.32
	xorl	%ecx, %ecx
	cmpq	$2, %rax
	je	.LBB9_14
# BB#9:                                 # %if.else.36
	movl	$1, %ecx
	cmpq	$5, %rax
	jl	.LBB9_14
# BB#10:                                # %if.else.40
	movl	$3, %ecx
	cmpq	$17, %rax
	jl	.LBB9_14
# BB#11:                                # %if.else.44
	movl	$4, %ecx
	cmpl	$3, %r13d
	jne	.LBB9_13
# BB#12:                                # %if.else.44
	cmpq	$33, %rax
	jl	.LBB9_14
.LBB9_13:                               # %if.else.50
	cmpq	$256, %rax              # imm = 0x100
	setg	%cl
	movzbl	%cl, %ecx
	leaq	7(,%rcx,8), %rcx
.LBB9_14:                               # %if.then.64
	shlq	$4, %r13
	movzbl	ppm_put_params.depths-16(%r13,%rcx), %ecx
	movw	%cx, 108(%rbx)
	movl	%eax, 124(%rbx)
	movl	%eax, 120(%rbx)
	decl	%eax
	movl	%eax, 116(%rbx)
	movl	%eax, 112(%rbx)
.LBB9_15:                               # %lor.lhs.false.81
	leaq	18548(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gdev_prn_put_params_planar
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB9_17
	jmp	.LBB9_16
.LBB9_27:                               # %if.else.38.i
	movq	$pkm_map_color_rgb, 1192(%rbx)
	movq	$pkm_map_cmyk_color, 1264(%rbx)
.LBB9_28:                               # %ppm_set_dev_procs.exit
	movl	%ebp, %eax
	addq	$744, %rsp              # imm = 0x2E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ppm_put_params, .Lfunc_end9-ppm_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	pnm_copy_alpha,@function
pnm_copy_alpha:                         # @pnm_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %eax
	cmpl	$24, %eax
	jb	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	movq	32(%rsp), %rax
	movzwl	%ax, %r10d
	shrq	$8, %rax
	cmpq	%r10, %rax
	jne	.LBB10_3
.LBB10_2:                               # %if.then
	orb	$1, 18546(%rdi)
	movq	18552(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB10_3:                               # %if.else
	orb	$2, 18546(%rdi)
	movq	18552(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end10:
	.size	pnm_copy_alpha, .Lfunc_end10-pnm_copy_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	pnm_begin_typed_image,@function
pnm_begin_typed_image:                  # @pnm_begin_typed_image
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
	pushq	%rax
.Ltmp50:
	.cfi_def_cfa_offset 64
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
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbp
	testq	%rbx, %rbx
	je	.LBB11_13
# BB#1:                                 # %land.lhs.true
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_13
# BB#2:                                 # %if.then
	movl	48(%rax), %eax
	cmpl	$4, %eax
	ja	.LBB11_12
# BB#3:                                 # %if.then
	movl	$26, %ecx
	btl	%eax, %ecx
	jae	.LBB11_12
# BB#4:                                 # %sw.bb
	movq	576(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB11_13
# BB#5:                                 # %if.then.4
	movq	64(%rdi), %rax
	testq	%rax, %rax
	je	.LBB11_6
# BB#7:                                 # %if.then.7
	movzbl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movl	%eax, 4(%rsp)           # 4-byte Spill
	jmp	.LBB11_8
.LBB11_6:
	movl	$0, 4(%rsp)             # 4-byte Folded Spill
.LBB11_8:                               # %if.end.12
	callq	gs_color_space_get_index
	movl	4(%rsp), %ecx           # 4-byte Reload
	testb	%cl, %cl
	jne	.LBB11_10
# BB#9:                                 # %if.end.12
	testl	%eax, %eax
	je	.LBB11_10
.LBB11_12:                              # %sw.default
	movb	$2, 18546(%rbp)
.LBB11_13:                              # %if.end.28
	movq	18560(%rbp), %rax
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB11_10:                              # %if.then.17
	cmpl	$2, 40(%rbx)
	jl	.LBB11_13
# BB#11:                                # %if.then.20
	orb	$1, 18546(%rbp)
	jmp	.LBB11_13
.Lfunc_end11:
	.size	pnm_begin_typed_image, .Lfunc_end11-pnm_begin_typed_image
	.cfi_endproc

	.align	16, 0x90
	.type	pkm_map_color_rgb,@function
pkm_map_color_rgb:                      # @pkm_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %ecx
	shrl	$2, %ecx
	movl	$1, %r10d
	shll	%cl, %r10d
	decl	%r10d
	movl	%esi, %eax
	andl	%r10d, %eax
	shrq	%cl, %rsi
	movl	%esi, %r9d
	andl	%r10d, %r9d
	shrq	%cl, %rsi
	andl	%esi, %r10d
	shrq	%cl, %rsi
	movl	116(%rdi), %ecx
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%ecx, %eax
	subl	%esi, %eax
	imull	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rcx
	movw	%ax, (%r8)
	movl	%ecx, %eax
	subl	%r10d, %eax
	imull	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rcx
	movw	%ax, 2(%r8)
	movl	%ecx, %eax
	subl	%r9d, %eax
	imull	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rcx
	movw	%ax, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	pkm_map_color_rgb, .Lfunc_end12-pkm_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	pkm_map_cmyk_color,@function
pkm_map_cmyk_color:                     # @pkm_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %ecx
	shrl	$2, %ecx
	movl	116(%rdi), %r9d
	movzwl	(%rsi), %eax
	imull	%r9d, %eax
	movl	$2147516417, %r8d       # imm = 0x80008001
	imulq	%r8, %rax
	shrq	$47, %rax
	movzwl	2(%rsi), %edi
	imull	%r9d, %edi
	imulq	%r8, %rdi
	shrq	$47, %rdi
	movzwl	4(%rsi), %edx
	imull	%r9d, %edx
	imulq	%r8, %rdx
	shrq	$47, %rdx
	movzwl	6(%rsi), %esi
	imull	%r9d, %esi
	imulq	%r8, %rsi
	shrq	$47, %rsi
	shll	%cl, %eax
	addl	%edi, %eax
	shll	%cl, %eax
	addl	%edx, %eax
	shll	%cl, %eax
	addl	%esi, %eax
	retq
.Lfunc_end13:
	.size	pkm_map_cmyk_color, .Lfunc_end13-pkm_map_cmyk_color
	.cfi_endproc

	.align	16, 0x90
	.type	ppm_open,@function
ppm_open:                               # @ppm_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp59:
	.cfi_def_cfa_offset 32
.Ltmp60:
	.cfi_offset %rbx, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	18548(%rbx), %esi
	callq	gdev_prn_open_planar
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_12
# BB#1:                                 # %if.end
	movl	$1, 136(%rbx)
	movq	%rbx, %rdi
	callq	set_linear_color_bits_mask_shift
	movb	$0, 18546(%rbx)
	movq	1312(%rbx), %rax
	movl	$pnm_copy_alpha, %ecx
	cmpq	%rcx, %rax
	je	.LBB14_4
# BB#2:                                 # %if.then.i
	movq	%rax, 18552(%rbx)
	movzwl	108(%rbx), %eax
	cmpl	$5, %eax
	jb	.LBB14_4
# BB#3:                                 # %if.then.5.i
	movq	$pnm_copy_alpha, 1312(%rbx)
.LBB14_4:                               # %if.end.8.i
	movq	1440(%rbx), %rax
	movl	$pnm_begin_typed_image, %ecx
	cmpq	%rcx, %rax
	je	.LBB14_6
# BB#5:                                 # %if.then.12.i
	movq	%rax, 18560(%rbx)
	movq	$pnm_begin_typed_image, 1440(%rbx)
.LBB14_6:                               # %if.end.17.i
	cmpl	$4, 100(%rbx)
	jne	.LBB14_12
# BB#7:                                 # %if.then.21.i
	movzwl	108(%rbx), %eax
	cmpl	$4, %eax
	jne	.LBB14_9
# BB#8:                                 # %if.then.27.i
	movq	$cmyk_1bit_map_color_rgb, 1192(%rbx)
	movq	$cmyk_1bit_map_cmyk_color, 1264(%rbx)
	jmp	.LBB14_12
.LBB14_9:                               # %if.else.i
	movzbl	18472(%rbx), %eax
	cmpl	$7, %eax
	jne	.LBB14_11
# BB#10:                                # %if.then.33.i
	movq	$cmyk_8bit_map_color_rgb, 1192(%rbx)
	movq	$cmyk_8bit_map_cmyk_color, 1264(%rbx)
	jmp	.LBB14_12
.LBB14_11:                              # %if.else.38.i
	movq	$pkm_map_color_rgb, 1192(%rbx)
	movq	$pkm_map_cmyk_color, 1264(%rbx)
.LBB14_12:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ppm_open, .Lfunc_end14-ppm_open
	.cfi_endproc

	.align	16, 0x90
	.type	pgm_map_rgb_color,@function
pgm_map_rgb_color:                      # @pgm_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imulq	$100, %rax, %rax
	addq	$50, %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rcx # imm = 0x28F5C28F5C28F5C3
	mulq	%rcx
	shrq	$2, %rdx
	movl	112(%rdi), %ecx
	imulq	%rcx, %rdx
	movabsq	$-9223231297218904063, %rsi # imm = 0x8000800080008001
	movq	%rdx, %rax
	mulq	%rsi
	shrq	$15, %rdx
	movl	%edx, %eax
	andl	$65535, %eax            # imm = 0xFFFF
	je	.LBB15_3
# BB#1:                                 # %entry
	cmpl	%ecx, %eax
	je	.LBB15_3
# BB#2:                                 # %if.then
	movb	$1, 18546(%rdi)
.LBB15_3:                               # %if.end
	movzwl	%dx, %eax
	retq
.Lfunc_end15:
	.size	pgm_map_rgb_color, .Lfunc_end15-pgm_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	pgm_map_color_rgb,@function
pgm_map_color_rgb:                      # @pgm_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	imulq	$65535, %rsi, %rax      # imm = 0xFFFF
	movl	112(%rdi), %esi
	xorl	%edx, %edx
	divq	%rsi
	movw	%ax, (%rcx)
	movw	%ax, 2(%rcx)
	movw	%ax, 4(%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	pgm_map_color_rgb, .Lfunc_end16-pgm_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	ppm_map_color_rgb,@function
ppm_map_color_rgb:                      # @ppm_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %eax
	imull	$43691, %eax, %r9d      # imm = 0xAAAB
	shrl	$17, %r9d
	movl	$1, %r10d
	movb	%r9b, %cl
	shll	%cl, %r10d
	decl	%r10d
	movl	%r9d, %ecx
	addl	%ecx, %ecx
	movq	%rsi, %rax
	shrq	%cl, %rax
	andq	%r10, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	movl	116(%rdi), %edi
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, (%r8)
	movq	%rsi, %rax
	movb	%r9b, %cl
	shrq	%cl, %rax
	andq	%r10, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 2(%r8)
	andq	%rsi, %r10
	imulq	$65535, %r10, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	ppm_map_color_rgb, .Lfunc_end17-ppm_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	ppm_get_params,@function
ppm_get_params:                         # @ppm_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	leaq	18548(%rdi), %rdx
	callq	gdev_prn_get_params_planar
	testl	%eax, %eax
	js	.LBB18_1
# BB#2:                                 # %if.end
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	popq	%rbx
	jmp	param_write_null        # TAILCALL
.LBB18_1:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end18:
	.size	ppm_get_params, .Lfunc_end18-ppm_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	ppm_map_rgb_color,@function
ppm_map_rgb_color:                      # @ppm_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %r9d
	movzwl	2(%rsi), %edx
	movzwl	4(%rsi), %r10d
	movzwl	108(%rdi), %r8d
	cmpq	$24, %r8
	jne	.LBB19_2
# BB#1:                                 # %if.then.i
	imull	$65281, %r10d, %eax     # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	imull	$65281, %edx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%eax, %ecx
	imull	$65281, %r9d, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$8, %eax
	andl	$16711680, %eax         # imm = 0xFF0000
	orq	%rcx, %rax
	movl	$8, %r11d
	jmp	.LBB19_3
.LBB19_2:                               # %if.else.i
	imull	$43691, %r8d, %r11d     # imm = 0xAAAB
	shrl	$17, %r11d
	movl	$16, %eax
	subl	%r11d, %eax
	movb	%al, %cl
	shrl	%cl, %r9d
	movb	%r11b, %cl
	shll	%cl, %r9d
	movb	%al, %cl
	shrl	%cl, %edx
	addl	%r9d, %edx
	movb	%r11b, %cl
	shll	%cl, %edx
	movb	%al, %cl
	shrl	%cl, %r10d
	addl	%edx, %r10d
	movslq	%r10d, %rax
.LBB19_3:                               # %gx_old_default_rgb_map_rgb_color.exit
	subl	%r11d, %r8d
	movl	$1, %edx
	movb	%r8b, %cl
	shlq	%cl, %rdx
	decq	%rdx
	movq	%rax, %rsi
	movb	%r11b, %cl
	shrq	%cl, %rsi
	xorq	%rax, %rsi
	testq	%rsi, %rdx
	je	.LBB19_4
# BB#7:                                 # %if.else
	movb	$2, 18546(%rdi)
	jmp	.LBB19_8
.LBB19_4:                               # %if.then
	testq	%rax, %rax
	je	.LBB19_8
# BB#5:                                 # %land.lhs.true
	movq	%rax, %rcx
	notq	%rcx
	testq	%rcx, %rdx
	je	.LBB19_8
# BB#6:                                 # %if.then.11
	orb	$1, 18546(%rdi)
	retq
.LBB19_8:                               # %if.end.15
	retq
.Lfunc_end19:
	.size	ppm_map_rgb_color, .Lfunc_end19-ppm_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	pnmcmyk_open,@function
pnmcmyk_open:                           # @pnmcmyk_open
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1104(%rdi), %rax
	movl	$1, 156(%rax)
	movl	$1, 160(%rax)
	jmp	ppm_open                # TAILCALL
.Lfunc_end20:
	.size	pnmcmyk_open, .Lfunc_end20-pnmcmyk_open
	.cfi_endproc

	.align	16, 0x90
	.type	pbm_print_page_loop,@function
pbm_print_page_loop:                    # @pbm_print_page_loop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 96
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %r13
	xorl	%esi, %esi
	callq	gx_device_raster_chunky
	movq	24(%r13), %rdi
	movl	$.L.str.27, %edx
	movl	%eax, %esi
	callq	*64(%rdi)
	movq	%rax, %r14
	leaq	13056(%r13), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	cmpq	$4, %rbp
	movl	$4, %edx
	cmovbq	%rbp, %rdx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movb	$1, %cl
	testl	%eax, %eax
	je	.LBB21_2
# BB#1:                                 # %lor.rhs
	cmpq	$9, %rbp
	movl	$9, %edx
	cmovbq	%rbp, %rdx
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	sete	%cl
.LBB21_2:                               # %lor.end
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB21_38
# BB#3:                                 # %if.end.93
	xorl	%ebx, %ebx
	testb	%cl, %cl
	jne	.LBB21_32
# BB#4:                                 # %if.then.95
	movsbl	%r12b, %r12d
	movzbl	%r12b, %eax
	cmpl	$55, %eax
	jne	.LBB21_5
# BB#7:                                 # %if.then.108
	movb	%cl, 23(%rsp)           # 1-byte Spill
	movl	100(%r13), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r15, %rbx
	movq	%rbx, %rdi
	movl	%r12d, %edx
	callq	fprintf
	movl	$-12, %ebp
	testl	%eax, %eax
	js	.LBB21_37
# BB#8:                                 # %if.end.115
	movl	832(%r13), %edx
	movl	$.L.str.32, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB21_37
# BB#9:                                 # %if.end.121
	movl	836(%r13), %edx
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB21_37
# BB#10:                                # %if.end.127
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	16(%rsp), %r15d         # 4-byte Reload
	movl	%r15d, %edx
	callq	fprintf
	testl	%eax, %eax
	js	.LBB21_37
# BB#11:                                # %if.end.132
	movl	$.L.str.35, %esi
	movl	$255, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB21_37
# BB#12:                                # %if.end.137
	cmpl	$3, %r15d
	movl	$.L.str.38, %eax
	movl	$.L.str.39, %ecx
	cmoveq	%rax, %rcx
	cmpl	$4, %r15d
	movl	$.L.str.37, %edx
	cmovneq	%rcx, %rdx
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB21_37
# BB#13:                                # %if.end.151
	cmpb	$0, 18473(%r13)
	je	.LBB21_15
# BB#14:                                # %if.then.154
	leaq	18473(%r13), %rdx
	movl	$.L.str.40, %esi
	jmp	.LBB21_16
.LBB21_5:                               # %if.then.95
	movb	%cl, 23(%rsp)           # 1-byte Spill
	cmpl	$57, %eax
	jne	.LBB21_18
# BB#6:                                 # %if.then.99
	movl	832(%r13), %r9d
	movl	836(%r13), %eax
	movl	%eax, (%rsp)
	xorl	%ebx, %ebx
	movl	$.L.str.30, %esi
	movl	$0, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movl	$-12, %ebp
	jmp	.LBB21_24
.LBB21_18:                              # %if.else.174
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r12d, %edx
	callq	fprintf
	movl	$-12, %ebp
	testl	%eax, %eax
	js	.LBB21_37
# BB#19:                                # %if.end.180
	cmpb	$0, 18473(%r13)
	je	.LBB21_21
# BB#20:                                # %if.then.184
	leaq	18473(%r13), %rdx
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	jmp	.LBB21_22
.LBB21_21:                              # %if.else.192
	movq	gs_product(%rip), %rdx
	movq	16(%r13), %rcx
	movl	$.L.str.43, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
.LBB21_22:                              # %if.else.192
	testl	%eax, %eax
	js	.LBB21_37
# BB#23:                                # %if.end.198
	movl	832(%r13), %edx
	movl	836(%r13), %ecx
	xorl	%ebx, %ebx
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
.LBB21_24:                              # %if.end.198
	testl	%eax, %eax
	jns	.LBB21_25
	jmp	.LBB21_37
.LBB21_15:                              # %if.else.162
	movq	gs_product(%rip), %rdx
	movl	$.L.str.41, %esi
.LBB21_16:                              # %if.else.162
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rbx, %r15
	callq	fprintf
	testl	%eax, %eax
	js	.LBB21_37
# BB#17:                                # %cleanup
	movl	$.L.str.42, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movl	%eax, %ebx
	sarl	$31, %ebx
	andl	$-12, %ebx
	testl	%eax, %eax
	movl	%ebx, %ebp
	js	.LBB21_37
.LBB21_25:                              # %if.end.207
	movl	%r12d, %eax
	cmpl	$57, %r12d
	ja	.LBB21_30
# BB#26:                                # %if.end.207
	movabsq	$185210534675611648, %rcx # imm = 0x292000000000000
	btq	%rax, %rcx
	jae	.LBB21_28
# BB#27:
	movb	23(%rsp), %cl           # 1-byte Reload
	jmp	.LBB21_32
.LBB21_28:                              # %if.end.207
	movabsq	$20266198323167232, %rcx # imm = 0x48000000000000
	btq	%rax, %rcx
	jae	.LBB21_30
# BB#29:                                # %sw.bb.209
	movl	$.L.str.45, %esi
	movl	$255, %edx
	jmp	.LBB21_31
.LBB21_30:                              # %sw.default
	movl	112(%r13), %edx
	movl	$.L.str.45, %esi
.LBB21_31:                              # %sw.default
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movl	$-12, %ebp
	testl	%eax, %eax
	movb	23(%rsp), %cl           # 1-byte Reload
	js	.LBB21_37
.LBB21_32:                              # %if.end.221
	movl	$nop_row_proc, %eax
	testb	%cl, %cl
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmovneq	%rax, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	cmpl	$0, 836(%r13)
	movl	%ebx, %ebp
	jle	.LBB21_37
# BB#33:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	leaq	32(%rsp), %r12
	.align	16, 0x90
.LBB21_35:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	gdev_prn_get_bits
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_37
# BB#36:                                # %cleanup.241
                                        #   in Loop: Header=BB21_35 Depth=1
	movq	32(%rsp), %rsi
	movzwl	108(%r13), %edx
	movq	%r13, %rdi
	movq	%r15, %rcx
	callq	*24(%rsp)               # 8-byte Folded Reload
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_37
# BB#34:                                # %for.cond
                                        #   in Loop: Header=BB21_35 Depth=1
	incl	%ebx
	cmpl	836(%r13), %ebx
	jl	.LBB21_35
.LBB21_37:                              # %punt
	movq	24(%r13), %rdi
	movl	$.L.str.27, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%ebp, %eax
.LBB21_38:                              # %cleanup.253
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	pbm_print_page_loop, .Lfunc_end21-pbm_print_page_loop
	.cfi_endproc

	.align	16, 0x90
	.type	pbm_print_row,@function
pbm_print_row:                          # @pbm_print_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp83:
	.cfi_def_cfa_offset 64
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	832(%r15), %r12d
	cmpb	$0, 18544(%r15)
	je	.LBB22_1
# BB#11:                                # %if.then
	addl	$7, %r12d
	sarl	$3, %r12d
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	fwrite
	movl	$-12, %r13d
	cmpq	%r12, %rax
	je	.LBB22_9
	jmp	.LBB22_10
.LBB22_1:                               # %for.cond.preheader
	testl	%r12d, %r12d
	je	.LBB22_9
# BB#2:
	xorl	%r12d, %r12d
	movl	$128, %ebp
	movl	$-12, %r13d
	.align	16, 0x90
.LBB22_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	testl	%ebp, %eax
	setne	%al
	movzbl	%al, %edi
	orl	$48, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	je	.LBB22_10
# BB#4:                                 # %if.end.13
                                        #   in Loop: Header=BB22_3 Depth=1
	incl	%r12d
	testb	$63, %r12b
	je	.LBB22_6
# BB#5:                                 # %if.end.13
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	832(%r15), %eax
	cmpl	%eax, %r12d
	jne	.LBB22_8
.LBB22_6:                               # %if.then.19
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	$10, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	je	.LBB22_10
# BB#7:                                 # %if.then.19.if.end.25_crit_edge
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	832(%r15), %eax
.LBB22_8:                               # %if.end.25
                                        #   in Loop: Header=BB22_3 Depth=1
	shrl	%ebp
	leaq	1(%rbx), %rcx
	testl	%ebp, %ebp
	cmoveq	%rcx, %rbx
	movl	$128, %ecx
	cmovel	%ecx, %ebp
	cmpl	%eax, %r12d
	jb	.LBB22_3
.LBB22_9:                               # %if.end.36
	xorl	%r13d, %r13d
.LBB22_10:                              # %cleanup.37
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	pbm_print_row, .Lfunc_end22-pbm_print_row
	.cfi_endproc

	.align	16, 0x90
	.type	nop_row_proc,@function
nop_row_proc:                           # @nop_row_proc
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	nop_row_proc, .Lfunc_end23-nop_row_proc
	.cfi_endproc

	.align	16, 0x90
	.type	pxm_pbm_print_row,@function
pxm_pbm_print_row:                      # @pxm_pbm_print_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 40
.Ltmp94:
	.cfi_offset %rbx, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rcx, %r8
	movl	%edx, %ecx
	leal	7(%rcx), %eax
	sarl	$3, %eax
	movslq	%eax, %rbp
	leaq	-1(%rsi,%rbp), %r15
	cmpl	$8, %ecx
	jl	.LBB24_8
# BB#1:                                 # %for.cond.preheader
	movl	832(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB24_17
# BB#2:
	xorl	%edx, %edx
	movb	$-128, %r10b
	xorl	%ebx, %ebx
	movq	%rsi, %r9
	.align	16, 0x90
.LBB24_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, (%r15)
	movb	%r10b, %al
	je	.LBB24_5
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB24_3 Depth=1
	xorl	%eax, %eax
.LBB24_5:                               # %for.body
                                        #   in Loop: Header=BB24_3 Depth=1
	orb	%dl, %al
	shrb	%r10b
	jne	.LBB24_7
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB24_3 Depth=1
	movb	%al, (%r9)
	incq	%r9
	movl	832(%rdi), %ecx
	movb	$-128, %r10b
	xorl	%eax, %eax
.LBB24_7:                               # %for.inc
                                        #   in Loop: Header=BB24_3 Depth=1
	incl	%ebx
	addq	%rbp, %r15
	cmpl	%ecx, %ebx
	movb	%al, %dl
	jl	.LBB24_3
	jmp	.LBB24_15
.LBB24_8:                               # %if.else
	movl	$256, %r11d             # imm = 0x100
	shrl	%cl, %r11d
	movl	832(%rdi), %r14d
	testl	%r14d, %r14d
	jle	.LBB24_17
# BB#9:
	xorl	%edx, %edx
	movb	$-128, %r10b
	movl	%r11d, %ebp
	xorl	%ebx, %ebx
	movq	%rsi, %r9
	.align	16, 0x90
.LBB24_10:                              # %for.body.21
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %eax
	movzbl	%bpl, %ebp
	testl	%ebp, %eax
	movb	%r10b, %al
	je	.LBB24_12
# BB#11:                                # %for.body.21
                                        #   in Loop: Header=BB24_10 Depth=1
	xorl	%eax, %eax
.LBB24_12:                              # %for.body.21
                                        #   in Loop: Header=BB24_10 Depth=1
	orb	%dl, %al
	shrl	%cl, %ebp
	leaq	1(%r15), %rdx
	testb	%bpl, %bpl
	cmoveq	%rdx, %r15
	cmovel	%r11d, %ebp
	shrb	%r10b
	jne	.LBB24_14
# BB#13:                                # %if.then.45
                                        #   in Loop: Header=BB24_10 Depth=1
	movb	%al, (%r9)
	incq	%r9
	movl	832(%rdi), %r14d
	movb	$-128, %r10b
	xorl	%eax, %eax
.LBB24_14:                              # %for.inc.48
                                        #   in Loop: Header=BB24_10 Depth=1
	incl	%ebx
	cmpl	%r14d, %ebx
	movb	%al, %dl
	jl	.LBB24_10
.LBB24_15:                              # %if.end.51
	movzbl	%r10b, %ecx
	cmpl	$128, %ecx
	je	.LBB24_17
# BB#16:                                # %if.then.55
	movb	%al, (%r9)
.LBB24_17:                              # %if.end.56
	movl	$1, %edx
	movq	%r8, %rcx
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pbm_print_row           # TAILCALL
.Lfunc_end24:
	.size	pxm_pbm_print_row, .Lfunc_end24-pxm_pbm_print_row
	.cfi_endproc

	.align	16, 0x90
	.type	pgm_print_row,@function
pgm_print_row:                          # @pgm_print_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp101:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp102:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp104:
	.cfi_def_cfa_offset 64
.Ltmp105:
	.cfi_offset %rbx, -56
.Ltmp106:
	.cfi_offset %r12, -48
.Ltmp107:
	.cfi_offset %r13, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, (%rsp)            # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$1, %r13d
	movb	%dl, %cl
	shll	%cl, %r13d
	movl	104(%r15), %edi
	testl	%edi, %edi
	sete	%sil
	movl	832(%r15), %eax
	cmpl	$8, %edx
	jne	.LBB25_7
# BB#1:                                 # %entry
	movb	18544(%r15), %cl
	testb	%cl, %cl
	je	.LBB25_7
# BB#2:                                 # %if.then
	testl	%edi, %edi
	je	.LBB25_3
# BB#6:                                 # %if.else
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	fwrite
	movq	%rax, %rcx
	movslq	832(%r15), %rdx
	movl	$-12, %eax
	cmpq	%rdx, %rcx
	je	.LBB25_17
	jmp	.LBB25_18
.LBB25_7:                               # %if.else.24
	testl	%eax, %eax
	je	.LBB25_17
# BB#8:                                 # %for.body.30.lr.ph
	decl	%r13d
	movzbl	%sil, %ecx
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movl	$8, %ebp
	subl	(%rsp), %ebp            # 4-byte Folded Reload
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB25_9:                               # %for.body.30
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	testl	%ebp, %ebp
	js	.LBB25_10
# BB#11:                                # %if.else.37
                                        #   in Loop: Header=BB25_9 Depth=1
	movb	%bpl, %cl
	shrl	%cl, %edx
	andl	%r13d, %edx
	subl	(%rsp), %ebp            # 4-byte Folded Reload
	jns	.LBB25_13
# BB#12:                                # %if.then.42
                                        #   in Loop: Header=BB25_9 Depth=1
	incq	%rbx
	addl	$8, %ebp
	jmp	.LBB25_13
	.align	16, 0x90
.LBB25_10:                              # %if.then.33
                                        #   in Loop: Header=BB25_9 Depth=1
	shll	$8, %edx
	movzbl	1(%rbx), %ecx
	orl	%ecx, %edx
	addq	$2, %rbx
.LBB25_13:                              # %if.end.46
                                        #   in Loop: Header=BB25_9 Depth=1
	incl	%r12d
	xorl	4(%rsp), %edx           # 4-byte Folded Reload
	cmpb	$0, 18544(%r15)
	je	.LBB25_15
# BB#14:                                # %if.then.50
                                        #   in Loop: Header=BB25_9 Depth=1
	movl	%edx, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%eax, %ecx
	movl	$-12, %eax
	cmpl	$-1, %ecx
	jne	.LBB25_16
	jmp	.LBB25_18
	.align	16, 0x90
.LBB25_15:                              # %if.else.56
                                        #   in Loop: Header=BB25_9 Depth=1
	cmpl	%eax, %r12d
	movl	$32, %ecx
	movl	$10, %eax
	cmovel	%eax, %ecx
	testb	$15, %r12b
	cmovel	%eax, %ecx
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB25_18
.LBB25_16:                              # %for.cond.26.backedge
                                        #   in Loop: Header=BB25_9 Depth=1
	movl	832(%r15), %eax
	cmpl	%eax, %r12d
	jb	.LBB25_9
	jmp	.LBB25_17
.LBB25_3:                               # %for.cond.preheader
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB25_17
	.align	16, 0x90
.LBB25_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rbp), %edi
	xorl	$255, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%eax, %ecx
	movl	$-12, %eax
	cmpl	$-1, %ecx
	je	.LBB25_18
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB25_4 Depth=1
	incq	%rbp
	cmpl	832(%r15), %ebp
	jb	.LBB25_4
.LBB25_17:                              # %if.end.69
	xorl	%eax, %eax
.LBB25_18:                              # %cleanup.70
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	pgm_print_row, .Lfunc_end25-pgm_print_row
	.cfi_endproc

	.align	16, 0x90
	.type	ppm_print_row,@function
ppm_print_row:                          # @ppm_print_row
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %r8d
	jmp	ppgm_print_row          # TAILCALL
.Lfunc_end26:
	.size	ppm_print_row, .Lfunc_end26-ppm_print_row
	.cfi_endproc

	.align	16, 0x90
	.type	ppm_pgm_print_row,@function
ppm_pgm_print_row:                      # @ppm_pgm_print_row
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%r8d, %r8d
	jmp	ppgm_print_row          # TAILCALL
.Lfunc_end27:
	.size	ppm_pgm_print_row, .Lfunc_end27-ppm_pgm_print_row
	.cfi_endproc

	.align	16, 0x90
	.type	ppgm_print_row,@function
ppgm_print_row:                         # @ppgm_print_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 128
.Ltmp118:
	.cfi_offset %rbx, -56
.Ltmp119:
	.cfi_offset %r12, -48
.Ltmp120:
	.cfi_offset %r13, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movl	%r8d, 44(%rsp)          # 4-byte Spill
	movq	%rcx, %rbx
	movq	%rsi, %rbp
	movslq	%edx, %rax
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$32, %rcx
	addl	%eax, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	testl	%r8d, %r8d
	sete	%al
	movzbl	%al, %esi
	movl	832(%rdi), %eax
	je	.LBB28_4
# BB#1:                                 # %entry
	cmpl	$24, %edx
	jne	.LBB28_4
# BB#2:                                 # %entry
	movb	18544(%rdi), %cl
	testb	%cl, %cl
	je	.LBB28_4
# BB#3:                                 # %if.then
	movq	%rbp, %rdi
	leal	(%rax,%rax,2), %ebp
	movl	$1, %esi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$-12, %r12d
	cmpq	%rbp, %rax
	je	.LBB28_26
	jmp	.LBB28_27
.LBB28_4:                               # %if.else
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	movq	%rdi, %r13
	movq	%r13, 24(%rsp)          # 8-byte Spill
	je	.LBB28_26
# BB#5:                                 # %for.body.lr.ph
	decl	60(%rsp)                # 4-byte Folded Spill
	leal	7(,%rsi,8), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	$8, %ecx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	subl	%edx, %ecx
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	sarl	$3, %edx
	movl	%edx, 40(%rsp)          # 4-byte Spill
	movl	%edx, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB28_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, 40(%rsp)            # 4-byte Folded Reload
	jbe	.LBB28_8
# BB#7:                                 #   in Loop: Header=BB28_6 Depth=1
	xorl	%edx, %edx
	jmp	.LBB28_16
	.align	16, 0x90
.LBB28_8:                               # %for.body
                                        #   in Loop: Header=BB28_6 Depth=1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	jmpq	*.LJTI28_0(,%rdi,8)
.LBB28_13:                              # %sw.bb.30
                                        #   in Loop: Header=BB28_6 Depth=1
	movzbl	(%rbp), %edx
	movl	16(%rsp), %ecx          # 4-byte Reload
	shrl	%cl, %edx
	movl	12(%rsp), %esi          # 4-byte Reload
	subl	%esi, %ecx
	jns	.LBB28_15
# BB#14:                                # %if.then.36
                                        #   in Loop: Header=BB28_6 Depth=1
	incq	%rbp
	addl	$8, %ecx
.LBB28_15:                              # %sw.epilog
                                        #   in Loop: Header=BB28_6 Depth=1
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	jmp	.LBB28_16
.LBB28_9:                               # %sw.bb
                                        #   in Loop: Header=BB28_6 Depth=1
	movzbl	(%rbp), %ecx
	shll	$24, %ecx
	incq	%rbp
.LBB28_10:                              # %sw.bb.17
                                        #   in Loop: Header=BB28_6 Depth=1
	movzbl	(%rbp), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	incq	%rbp
.LBB28_11:                              # %sw.bb.21
                                        #   in Loop: Header=BB28_6 Depth=1
	movzbl	(%rbp), %esi
	shll	$8, %esi
	addl	%edx, %esi
	incq	%rbp
.LBB28_12:                              # %sw.bb.26
                                        #   in Loop: Header=BB28_6 Depth=1
	movzbl	(%rbp), %edx
	addl	%esi, %edx
	incq	%rbp
.LBB28_16:                              # %sw.epilog
                                        #   in Loop: Header=BB28_6 Depth=1
	incl	%ebx
	movl	%edx, %r15d
	movl	60(%rsp), %esi          # 4-byte Reload
	andl	%esi, %r15d
	movq	48(%rsp), %rcx          # 8-byte Reload
	shrl	%cl, %edx
	movl	%edx, %r14d
	andl	%esi, %r14d
	shrl	%cl, %edx
	andl	%esi, %edx
	cmpb	$0, 18544(%r13)
	je	.LBB28_21
# BB#17:                                # %if.then.46
                                        #   in Loop: Header=BB28_6 Depth=1
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	je	.LBB28_20
# BB#18:                                # %if.then.48
                                        #   in Loop: Header=BB28_6 Depth=1
	movq	%rbp, %r13
	movl	%edx, %edi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	_IO_putc
	movl	$-12, %r12d
	cmpl	$-1, %eax
	je	.LBB28_27
# BB#19:                                # %if.end.53
                                        #   in Loop: Header=BB28_6 Depth=1
	movl	%r14d, %edi
	movq	%rbp, %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	movq	%r13, %rbp
	movq	24(%rsp), %r13          # 8-byte Reload
	je	.LBB28_27
.LBB28_20:                              # %if.end.59
                                        #   in Loop: Header=BB28_6 Depth=1
	movl	%r15d, %edi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	_IO_putc
	movl	$-12, %r12d
	cmpl	$-1, %eax
	jne	.LBB28_25
	jmp	.LBB28_27
	.align	16, 0x90
.LBB28_21:                              # %if.else.65
                                        #   in Loop: Header=BB28_6 Depth=1
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	je	.LBB28_24
# BB#22:                                # %if.then.67
                                        #   in Loop: Header=BB28_6 Depth=1
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %ecx
	callq	fprintf
	movl	$-12, %r12d
	testl	%eax, %eax
	js	.LBB28_27
# BB#23:                                # %if.then.67.if.end.73_crit_edge
                                        #   in Loop: Header=BB28_6 Depth=1
	movl	832(%r13), %eax
.LBB28_24:                              # %if.end.73
                                        #   in Loop: Header=BB28_6 Depth=1
	cmpl	%eax, %ebx
	movl	$32, %ecx
	movl	$10, %eax
	cmovel	%eax, %ecx
	testl	20(%rsp), %ebx          # 4-byte Folded Reload
	cmovel	%eax, %ecx
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	movl	%r15d, %edx
	callq	fprintf
	movl	$-12, %r12d
	testl	%eax, %eax
	js	.LBB28_27
.LBB28_25:                              # %for.cond.backedge
                                        #   in Loop: Header=BB28_6 Depth=1
	movl	832(%r13), %eax
	cmpl	%eax, %ebx
	jb	.LBB28_6
.LBB28_26:                              # %if.end.92
	xorl	%r12d, %r12d
.LBB28_27:                              # %cleanup.93
	movl	%r12d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	ppgm_print_row, .Lfunc_end28-ppgm_print_row
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI28_0:
	.quad	.LBB28_13
	.quad	.LBB28_12
	.quad	.LBB28_11
	.quad	.LBB28_10
	.quad	.LBB28_9

	.text
	.align	16, 0x90
	.type	pam_print_row,@function
pam_print_row:                          # @pam_print_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	cmpl	$32, %edx
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movl	832(%rdi), %ebx
	shll	$2, %ebx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	fwrite
	movq	%rax, %rcx
	movl	$-12, %eax
	cmpq	%rbx, %rcx
	jne	.LBB29_3
.LBB29_2:                               # %if.end.5
	xorl	%eax, %eax
.LBB29_3:                               # %return
	popq	%rbx
	retq
.Lfunc_end29:
	.size	pam_print_row, .Lfunc_end29-pam_print_row
	.cfi_endproc

	.align	16, 0x90
	.type	pam4_print_row,@function
pam4_print_row:                         # @pam4_print_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp130:
	.cfi_def_cfa_offset 48
.Ltmp131:
	.cfi_offset %rbx, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rsi, %r14
	cmpl	$4, %edx
	jne	.LBB30_4
# BB#1:                                 # %if.then
	movl	832(%rdi), %r15d
	testl	%r15d, %r15d
	jle	.LBB30_4
	.align	16, 0x90
.LBB30_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r14), %ebp
	movl	%ebp, %eax
	shrl	$7, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	shrl	$6, %eax
	andl	$1, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	shrl	$5, %eax
	andl	$1, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	shrl	$4, %eax
	andl	$1, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%rbx, %rsi
	callq	fputc
	cmpl	$1, %r15d
	je	.LBB30_4
# BB#3:                                 # %for.cond.2
                                        #   in Loop: Header=BB30_2 Depth=1
	incq	%r14
	movl	%ebp, %eax
	shrl	$3, %eax
	andl	$1, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	shrl	$2, %eax
	andl	$1, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	shrl	%eax
	andl	$1, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%rbx, %rsi
	callq	fputc
	andl	$1, %ebp
	negl	%ebp
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	addl	$-2, %r15d
	jne	.LBB30_2
.LBB30_4:                               # %if.end.27
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	pam4_print_row, .Lfunc_end30-pam4_print_row
	.cfi_endproc

	.align	16, 0x90
	.type	pkm_print_row_4,@function
pkm_print_row_4:                        # @pkm_print_row_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp141:
	.cfi_def_cfa_offset 304
.Ltmp142:
	.cfi_offset %rbx, -56
.Ltmp143:
	.cfi_offset %r12, -48
.Ltmp144:
	.cfi_offset %r13, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%ebp, %ebp
	leaq	32(%rsp), %r15
	.align	16, 0x90
.LBB31_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	cmyk_1bit_map_color_rgb
	movzwl	32(%rsp), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	movb	$-1, %al
	movb	$-1, %cl
	je	.LBB31_3
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%ecx, %ecx
.LBB31_3:                               # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	%cl, 224(%rsp,%rbp)
	movzwl	34(%rsp), %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movb	$-1, %cl
	je	.LBB31_5
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%ecx, %ecx
.LBB31_5:                               # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	%cl, 208(%rsp,%rbp)
	movzwl	36(%rsp), %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB31_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%eax, %eax
.LBB31_7:                               # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	%al, 192(%rsp,%rbp)
	incq	%rbp
	cmpq	$16, %rbp
	jne	.LBB31_1
# BB#8:                                 # %for.end
	cmpb	$0, 18544(%r14)
	movq	%r14, 24(%rsp)          # 8-byte Spill
	je	.LBB31_9
# BB#12:                                # %for.cond.20.preheader
	leaq	208(%rsp), %r14
	leaq	192(%rsp), %r12
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB31_13:                              # %for.cond.20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_16 Depth 2
	movq	24(%rsp), %rax          # 8-byte Reload
	movslq	832(%rax), %rcx
	cmpl	%ecx, %r15d
	jae	.LBB31_14
# BB#15:                                # %for.body.23
                                        #   in Loop: Header=BB31_13 Depth=1
	movl	%r15d, %r8d
	addq	$50, %r8
	cmpq	%rcx, %r8
	cmovael	%ecx, %r8d
	cmpl	%r8d, %r15d
	leaq	32(%rsp), %rcx
	leaq	224(%rsp), %rbp
	jae	.LBB31_17
	.align	16, 0x90
.LBB31_16:                              # %for.body.38
                                        #   Parent Loop BB31_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %edx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	leaq	(%rbp,%rsi), %rdi
	movb	(%rdi), %al
	movb	%al, (%rcx)
	leaq	(%r14,%rsi), %rax
	movb	(%rax), %al
	movb	%al, 1(%rcx)
	leaq	(%rsi,%r12), %rax
	movb	(%rax), %al
	movb	%al, 2(%rcx)
	andl	$15, %edx
	leaq	(%rbp,%rdx), %rax
	movb	(%rax), %al
	movb	%al, 3(%rcx)
	leaq	(%r14,%rdx), %rax
	movb	(%rax), %al
	movb	%al, 4(%rcx)
	leaq	(%rdx,%r12), %rax
	movb	(%rax), %al
	movb	%al, 5(%rcx)
	incq	%rbx
	addq	$6, %rcx
	addl	$2, %r15d
	cmpl	%r8d, %r15d
	jb	.LBB31_16
.LBB31_17:                              # %for.end.60
                                        #   in Loop: Header=BB31_13 Depth=1
	leaq	-3(%rcx), %r13
	cmpl	%r8d, %r15d
	cmovbeq	%rcx, %r13
	leaq	32(%rsp), %rdi
	subq	%rdi, %r13
	movl	$1, %esi
	movq	%r13, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	cmpq	%r13, %rax
	movl	$-12, %eax
	je	.LBB31_13
	jmp	.LBB31_19
.LBB31_9:
	movl	$4, %r14d
	movl	$1, %ebp
	leaq	208(%rsp), %r12
	leaq	192(%rsp), %r13
	movl	$10, %r15d
	.align	16, 0x90
.LBB31_10:                              # %for.cond.79
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	832(%rax), %eax
	leal	-1(%rbp), %ecx
	cmpl	%eax, %ecx
	jae	.LBB31_11
# BB#18:                                # %for.body.83
                                        #   in Loop: Header=BB31_10 Depth=1
	movzbl	(%rbx), %esi
	movb	%r14b, %cl
	shrl	%cl, %esi
	andl	$15, %esi
	xorl	$4, %r14d
	movl	%r14d, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rbx
	leaq	224(%rsp), %rcx
	leaq	(%rcx,%rsi), %rcx
	movzbl	(%rcx), %edx
	leaq	(%r12,%rsi), %rcx
	movzbl	(%rcx), %ecx
	leaq	(%rsi,%r13), %rsi
	movzbl	(%rsi), %r8d
	cmpl	%eax, %ebp
	movl	$32, %r9d
	cmovel	%r15d, %r9d
	testb	$7, %bpl
	cmovel	%r15d, %r9d
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	incl	%ebp
	testl	%eax, %eax
	movl	$-12, %eax
	jns	.LBB31_10
	jmp	.LBB31_19
.LBB31_14:
	xorl	%eax, %eax
	jmp	.LBB31_19
.LBB31_11:
	xorl	%eax, %eax
.LBB31_19:                              # %cleanup.119
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	pkm_print_row_4, .Lfunc_end31-pkm_print_row_4
	.cfi_endproc

	.align	16, 0x90
	.type	pkm_print_row,@function
pkm_print_row:                          # @pkm_print_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp152:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp154:
	.cfi_def_cfa_offset 80
.Ltmp155:
	.cfi_offset %rbx, -56
.Ltmp156:
	.cfi_offset %r12, -48
.Ltmp157:
	.cfi_offset %r13, -40
.Ltmp158:
	.cfi_offset %r14, -32
.Ltmp159:
	.cfi_offset %r15, -24
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movl	832(%r13), %r8d
	xorl	%ebp, %ebp
	testl	%r8d, %r8d
	je	.LBB32_15
# BB#1:                                 # %for.body.lr.ph
	sarl	$3, %r12d
	decl	%r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB32_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$3, %r12d
	jbe	.LBB32_4
# BB#3:                                 #   in Loop: Header=BB32_2 Depth=1
	movq	%r14, %r10
	jmp	.LBB32_9
	.align	16, 0x90
.LBB32_4:                               # %for.body
                                        #   in Loop: Header=BB32_2 Depth=1
	movq	16(%rsp), %rdx          # 8-byte Reload
	jmpq	*.LJTI32_0(,%r12,8)
.LBB32_5:                               # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	movzbl	(%rdx), %eax
	shlq	$24, %rax
	incq	%rdx
.LBB32_6:                               # %sw.bb.1
                                        #   in Loop: Header=BB32_2 Depth=1
	movzbl	(%rdx), %ecx
	shlq	$16, %rcx
	orq	%rcx, %rax
	incq	%rdx
.LBB32_7:                               # %sw.bb.5
                                        #   in Loop: Header=BB32_2 Depth=1
	movzbl	(%rdx), %ecx
	shlq	$8, %rcx
	addq	%rcx, %rax
	incq	%rdx
.LBB32_8:                               # %sw.bb.10
                                        #   in Loop: Header=BB32_2 Depth=1
	movq	%r14, %r10
	movzbl	(%rdx), %ecx
	addq	%rcx, %rax
	incq	%rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
.LBB32_9:                               # %sw.epilog
                                        #   in Loop: Header=BB32_2 Depth=1
	incl	%r15d
	movl	%eax, %edx
	movzwl	108(%r13), %ecx
	shrl	$2, %ecx
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	andl	%esi, %eax
	shrq	%cl, %rdx
	movl	%edx, %ebp
	andl	%esi, %ebp
	shrq	%cl, %rdx
	andl	%edx, %esi
	shrq	%cl, %rdx
	movl	116(%r13), %ebx
	movl	%ebx, %edi
	subl	%eax, %edi
	movl	%ebx, %eax
	subl	%edx, %eax
	imull	%edi, %eax
	xorl	%edx, %edx
	divl	%ebx
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rbx
	movq	%rax, %rcx
	movl	%ebx, %eax
	subl	%esi, %eax
	imull	%edi, %eax
	xorl	%edx, %edx
	divl	%ebx
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rbx
	movq	%rax, %rsi
	movl	%ebx, %eax
	subl	%ebp, %eax
	imull	%edi, %eax
	xorl	%edx, %edx
	divl	%ebx
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rbx
	movzwl	%cx, %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	shrl	$24, %ecx
	movzwl	%si, %edx
	imull	$65281, %edx, %r14d     # imm = 0xFF01
	shrl	$24, %r14d
	movzwl	%ax, %eax
	imull	$65281, %eax, %ebx      # imm = 0xFF01
	shrl	$24, %ebx
	cmpb	$0, 18544(%r13)
	je	.LBB32_13
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	%r15d, %r13d
	movq	%r12, %r15
	movl	%ecx, %edi
	movq	%r10, %r12
	movq	%r12, %rsi
	callq	_IO_putc
	movl	$-12, %ebp
	cmpl	$-1, %eax
	je	.LBB32_15
# BB#11:                                # %if.end
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	%r14d, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB32_15
# BB#12:                                # %if.end.32
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	movq	%r15, %r12
	movl	%r13d, %r15d
	movq	8(%rsp), %r13           # 8-byte Reload
	jne	.LBB32_14
	jmp	.LBB32_15
	.align	16, 0x90
.LBB32_13:                              # %if.else
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	%r8d, %r15d
	movl	$32, %r9d
	movl	$10, %eax
	cmovel	%eax, %r9d
	testb	$7, %r15b
	cmovel	%eax, %r9d
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	movq	%r10, %rdi
	movl	%ecx, %edx
	movl	%r14d, %ecx
	movq	%rdi, %r14
	movl	%ebx, %r8d
	callq	fprintf
	movl	$-12, %ebp
	testl	%eax, %eax
	js	.LBB32_15
.LBB32_14:                              # %for.cond.backedge
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	832(%r13), %r8d
	xorl	%ebp, %ebp
	cmpl	%r8d, %r15d
	jb	.LBB32_2
.LBB32_15:                              # %cleanup.52
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	pkm_print_row, .Lfunc_end32-pkm_print_row
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI32_0:
	.quad	.LBB32_8
	.quad	.LBB32_7
	.quad	.LBB32_6
	.quad	.LBB32_5

	.type	pbm_procs,@object       # @pbm_procs
	.align	8
pbm_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	ppm_output_page
	.quad	gdev_prn_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	ppm_put_params
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
	.size	pbm_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pbm"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_pbm_device,@object   # @gs_pbm_device
	.section	.rodata,"a",@progbits
	.globl	gs_pbm_device
	.align	8
gs_pbm_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pbm_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
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
	.quad	pbm_print_page
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
	.byte	49                      # 0x31
	.zero	71
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pbm_device, 18568

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"pbmraw"
	.size	.L.str.2, 7

	.type	gs_pbmraw_device,@object # @gs_pbmraw_device
	.section	.rodata,"a",@progbits
	.globl	gs_pbmraw_device
	.align	8
gs_pbmraw_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pbm_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
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
	.quad	pbm_print_page
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
	.byte	52                      # 0x34
	.zero	71
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pbmraw_device, 18568

	.type	pgm_procs,@object       # @pgm_procs
	.align	8
pgm_procs:
	.quad	ppm_open
	.quad	0
	.quad	0
	.quad	ppm_output_page
	.quad	gdev_prn_close
	.quad	pgm_map_rgb_color
	.quad	pgm_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	ppm_put_params
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
	.size	pgm_procs, 584

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"pgm"
	.size	.L.str.3, 4

	.type	gs_pgm_device,@object   # @gs_pgm_device
	.section	.rodata,"a",@progbits
	.globl	gs_pgm_device
	.align	8
gs_pgm_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pgm_procs
	.quad	.L.str.3
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
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
	.quad	pgm_print_page
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
	.byte	50                      # 0x32
	.zero	71
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pgm_device, 18568

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"pgmraw"
	.size	.L.str.4, 7

	.type	gs_pgmraw_device,@object # @gs_pgmraw_device
	.section	.rodata,"a",@progbits
	.globl	gs_pgmraw_device
	.align	8
gs_pgmraw_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pgm_procs
	.quad	.L.str.4
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
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
	.quad	pgm_print_page
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
	.byte	53                      # 0x35
	.zero	71
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pgmraw_device, 18568

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"pgnm"
	.size	.L.str.5, 5

	.type	gs_pgnm_device,@object  # @gs_pgnm_device
	.section	.rodata,"a",@progbits
	.globl	gs_pgnm_device
	.align	8
gs_pgnm_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pgm_procs
	.quad	.L.str.5
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
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
	.quad	pgm_print_page
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
	.byte	50                      # 0x32
	.zero	71
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pgnm_device, 18568

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"pgnmraw"
	.size	.L.str.6, 8

	.type	gs_pgnmraw_device,@object # @gs_pgnmraw_device
	.section	.rodata,"a",@progbits
	.globl	gs_pgnmraw_device
	.align	8
gs_pgnmraw_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pgm_procs
	.quad	.L.str.6
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
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
	.quad	pgm_print_page
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
	.byte	53                      # 0x35
	.zero	71
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pgnmraw_device, 18568

	.type	ppm_procs,@object       # @ppm_procs
	.align	8
ppm_procs:
	.quad	ppm_open
	.quad	0
	.quad	0
	.quad	ppm_output_page
	.quad	gdev_prn_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	ppm_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ppm_get_params
	.quad	ppm_put_params
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
	.size	ppm_procs, 584

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"ppm"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"DeviceRGB"
	.size	.L.str.8, 10

	.type	gs_ppm_device,@object   # @gs_ppm_device
	.section	.rodata,"a",@progbits
	.globl	gs_ppm_device
	.align	8
gs_ppm_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	ppm_procs
	.quad	.L.str.7
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.8
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
	.quad	ppm_print_page
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
	.byte	51                      # 0x33
	.zero	71
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_ppm_device, 18568

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"ppmraw"
	.size	.L.str.9, 7

	.type	gs_ppmraw_device,@object # @gs_ppmraw_device
	.section	.rodata,"a",@progbits
	.globl	gs_ppmraw_device
	.align	8
gs_ppmraw_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	ppm_procs
	.quad	.L.str.9
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.8
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
	.quad	ppm_print_page
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
	.byte	54                      # 0x36
	.zero	71
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_ppmraw_device, 18568

	.type	pnm_procs,@object       # @pnm_procs
	.align	8
pnm_procs:
	.quad	ppm_open
	.quad	0
	.quad	0
	.quad	ppm_output_page
	.quad	gdev_prn_close
	.quad	ppm_map_rgb_color
	.quad	ppm_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ppm_get_params
	.quad	ppm_put_params
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
	.size	pnm_procs, 584

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"pnm"
	.size	.L.str.10, 4

	.type	gs_pnm_device,@object   # @gs_pnm_device
	.section	.rodata,"a",@progbits
	.globl	gs_pnm_device
	.align	8
gs_pnm_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pnm_procs
	.quad	.L.str.10
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.8
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
	.quad	ppm_print_page
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
	.byte	51                      # 0x33
	.zero	71
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pnm_device, 18568

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"pnmraw"
	.size	.L.str.11, 7

	.type	gs_pnmraw_device,@object # @gs_pnmraw_device
	.section	.rodata,"a",@progbits
	.globl	gs_pnmraw_device
	.align	8
gs_pnmraw_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pnm_procs
	.quad	.L.str.11
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.8
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
	.quad	ppm_print_page
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
	.byte	54                      # 0x36
	.zero	71
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pnmraw_device, 18568

	.type	pkm_procs,@object       # @pkm_procs
	.align	8
pkm_procs:
	.quad	ppm_open
	.quad	0
	.quad	0
	.quad	ppm_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	cmyk_1bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ppm_get_params
	.quad	ppm_put_params
	.quad	cmyk_1bit_map_cmyk_color
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
	.size	pkm_procs, 584

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"pkm"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"DeviceCMYK"
	.size	.L.str.13, 11

	.type	gs_pkm_device,@object   # @gs_pkm_device
	.section	.rodata,"a",@progbits
	.globl	gs_pkm_device
	.align	8
gs_pkm_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pkm_procs
	.quad	.L.str.12
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	4                       # 0x4
	.byte	3                       # 0x3
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.13
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
	.quad	pkm_print_page
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
	.byte	51                      # 0x33
	.zero	71
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pkm_device, 18568

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"pkmraw"
	.size	.L.str.14, 7

	.type	gs_pkmraw_device,@object # @gs_pkmraw_device
	.section	.rodata,"a",@progbits
	.globl	gs_pkmraw_device
	.align	8
gs_pkmraw_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pkm_procs
	.quad	.L.str.14
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	4                       # 0x4
	.byte	3                       # 0x3
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.13
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
	.quad	pkm_print_page
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
	.byte	54                      # 0x36
	.zero	71
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pkmraw_device, 18568

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"pksm"
	.size	.L.str.15, 5

	.type	gs_pksm_device,@object  # @gs_pksm_device
	.section	.rodata,"a",@progbits
	.globl	gs_pksm_device
	.align	8
gs_pksm_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pkm_procs
	.quad	.L.str.15
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	4                       # 0x4
	.byte	3                       # 0x3
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.13
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
	.quad	psm_print_page
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
	.byte	49                      # 0x31
	.zero	71
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pksm_device, 18568

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"pksmraw"
	.size	.L.str.16, 8

	.type	gs_pksmraw_device,@object # @gs_pksmraw_device
	.section	.rodata,"a",@progbits
	.globl	gs_pksmraw_device
	.align	8
gs_pksmraw_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pkm_procs
	.quad	.L.str.16
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	4                       # 0x4
	.byte	3                       # 0x3
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.13
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
	.quad	psm_print_page
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
	.byte	52                      # 0x34
	.zero	71
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pksmraw_device, 18568

	.type	pam_procs,@object       # @pam_procs
	.align	8
pam_procs:
	.quad	ppm_open
	.quad	0
	.quad	0
	.quad	ppm_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	cmyk_8bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ppm_get_params
	.quad	ppm_put_params
	.quad	cmyk_8bit_map_cmyk_color
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
	.size	pam_procs, 584

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"pamcmyk32"
	.size	.L.str.17, 10

	.type	gs_pamcmyk32_device,@object # @gs_pamcmyk32_device
	.section	.rodata,"a",@progbits
	.globl	gs_pamcmyk32_device
	.align	8
gs_pamcmyk32_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pam_procs
	.quad	.L.str.17
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.13
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
	.quad	pam_print_page
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
	.byte	55                      # 0x37
	.zero	71
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pamcmyk32_device, 18568

	.type	pnmcmyk_procs,@object   # @pnmcmyk_procs
	.align	8
pnmcmyk_procs:
	.quad	pnmcmyk_open
	.quad	0
	.quad	0
	.quad	ppm_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	cmyk_8bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ppm_get_params
	.quad	ppm_put_params
	.quad	cmyk_8bit_map_cmyk_color
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
	.size	pnmcmyk_procs, 584

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"pnmcmyk"
	.size	.L.str.18, 8

	.type	gs_pnmcmyk_device,@object # @gs_pnmcmyk_device
	.section	.rodata,"a",@progbits
	.globl	gs_pnmcmyk_device
	.align	8
gs_pnmcmyk_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pnmcmyk_procs
	.quad	.L.str.18
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.13
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
	.quad	pnmcmyk_print_page
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
	.byte	55                      # 0x37
	.zero	71
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pnmcmyk_device, 18568

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"pamcmyk4"
	.size	.L.str.19, 9

	.type	gs_pamcmyk4_device,@object # @gs_pamcmyk4_device
	.section	.rodata,"a",@progbits
	.globl	gs_pamcmyk4_device
	.align	8
gs_pamcmyk4_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pam_procs
	.quad	.L.str.19
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	4                       # 0x4
	.byte	3                       # 0x3
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.13
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
	.quad	pam4_print_page
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
	.byte	55                      # 0x37
	.zero	71
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pamcmyk4_device, 18568

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"pam"
	.size	.L.str.20, 4

	.type	gs_pam_device,@object   # @gs_pam_device
	.section	.rodata,"a",@progbits
	.globl	gs_pam_device
	.align	8
gs_pam_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pam_procs
	.quad	.L.str.20
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.13
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
	.quad	pam_print_page
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
	.byte	55                      # 0x37
	.zero	71
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_pam_device, 18568

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"plan9bm"
	.size	.L.str.21, 8

	.type	gs_plan9bm_device,@object # @gs_plan9bm_device
	.section	.rodata,"a",@progbits
	.globl	gs_plan9bm_device
	.align	8
gs_plan9bm_device:
	.long	18568                   # 0x4888
	.zero	4
	.quad	pbm_procs
	.quad	.L.str.21
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
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
	.long	850                     # 0x352
	.long	1100                    # 0x44c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
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
	.quad	pbm_print_page
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
	.byte	57                      # 0x39
	.zero	71
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	gs_plan9bm_device, 18568

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"OutputIntent"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GrayValues"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RedValues"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"GreenValues"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"BlueValues"
	.size	.L.str.26, 11

	.type	ppm_put_params.depths,@object # @ppm_put_params.depths
	.section	.rodata,"a",@progbits
	.align	16
ppm_put_params.depths:
	.ascii	"\001\002\000\004\000\000\000\b\000\000\000\000\000\000\000\020"
	.zero	16
	.asciz	"\004\b\000\020\020\000\000\030\000\000\000\000\000\000\000"
	.asciz	"\004\b\000\020\000\000\000 \000\000\000\000\000\000\000"
	.size	ppm_put_params.depths, 64

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"pbm_print_page_loop"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"nul:"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"/dev/null"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%11d %11d %11d %11d %11d "
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"P%c\n"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"WIDTH %d\n"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"HEIGHT %d\n"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"DEPTH %d\n"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"MAXVAL %d\n"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"TUPLTYPE %s\n"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"CMYK"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"RGB"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"GRAYSCALE"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"# %s\n"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"# Image generated by %s\n"
	.size	.L.str.41, 25

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"ENDHDR\n"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"# Image generated by %s (device=%s)\n"
	.size	.L.str.43, 37

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%d %d\n"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%d\n"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%d%c"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%d %d "
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"P5\n"
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"255\n"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%d %d %d%c"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"pksm_print_page"
	.size	.L.str.51, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
