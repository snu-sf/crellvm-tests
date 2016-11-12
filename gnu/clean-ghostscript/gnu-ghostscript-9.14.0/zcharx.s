	.text
	.file	"zcharx.bc"
	.align	16, 0x90
	.type	zglyphshow,@function
zglyphshow:                             # @zglyphshow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 48
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	16(%rsp), %rsi
	callq	glyph_show_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_5
# BB#1:                                 # %lor.lhs.false
	movq	16(%rsp), %rsi
	movq	(%rbx), %rdi
	movq	48(%rbx), %rdx
	leaq	8(%rsp), %rcx
	callq	gs_glyphshow_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_5
# BB#2:                                 # %if.end
	movq	8(%rsp), %rax
	movq	$zglyphshow, 184(%rax)
	movq	8(%rsp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_3
# BB#4:                                 # %if.end.9
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	op_show_continue_pop
	movl	%eax, %ebp
	jmp	.LBB0_5
.LBB0_3:                                # %if.then.5
	movq	8(%rbx), %rdi
	movq	8(%rsp), %rsi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
.LBB0_5:                                # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zglyphshow, .Lfunc_end0-zglyphshow
	.cfi_endproc

	.align	16, 0x90
	.type	zglyphwidth,@function
zglyphwidth:                            # @zglyphwidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 48
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	16(%rsp), %rsi
	callq	glyph_show_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB1_5
# BB#1:                                 # %lor.lhs.false
	movq	16(%rsp), %rsi
	movq	(%rbx), %rdi
	movq	8(%rbx), %rdx
	leaq	8(%rsp), %rcx
	callq	gs_glyphwidth_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_5
# BB#2:                                 # %if.end
	movq	8(%rsp), %rsi
	movl	$1, %edx
	movl	$finish_stringwidth, %ecx
	movq	%rbx, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_3
# BB#4:                                 # %if.end.10
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	op_show_continue_pop
	movl	%eax, %ebp
	jmp	.LBB1_5
.LBB1_3:                                # %if.then.5
	movq	8(%rbx), %rdi
	movq	8(%rsp), %rsi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
.LBB1_5:                                # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zglyphwidth, .Lfunc_end1-zglyphwidth
	.cfi_endproc

	.align	16, 0x90
	.type	zxshow,@function
zxshow:                                 # @zxshow
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	moveshow                # TAILCALL
.Lfunc_end2:
	.size	zxshow, .Lfunc_end2-zxshow
	.cfi_endproc

	.align	16, 0x90
	.type	zxyshow,@function
zxyshow:                                # @zxyshow
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	movl	$1, %edx
	jmp	moveshow                # TAILCALL
.Lfunc_end3:
	.size	zxyshow, .Lfunc_end3-zxyshow
	.cfi_endproc

	.align	16, 0x90
	.type	zyshow,@function
zyshow:                                 # @zyshow
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	movl	$1, %edx
	jmp	moveshow                # TAILCALL
.Lfunc_end4:
	.size	zyshow, .Lfunc_end4-zyshow
	.cfi_endproc

	.align	16, 0x90
	.type	glyph_show_setup,@function
glyph_show_setup:                       # @glyph_show_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	movq	(%r15), %rdi
	callq	gs_currentfont
	movl	128(%rax), %eax
	cmpq	$32, %rax
	ja	.LBB5_5
# BB#1:                                 # %entry
	movabsq	$4294970880, %rcx       # imm = 0x100000E00
	btq	%rax, %rcx
	jae	.LBB5_5
# BB#2:                                 # %do.body
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB5_9
# BB#3:                                 # %if.end
	movq	8(%rbx), %rax
	movabsq	$-2147483649, %rcx      # imm = 0xFFFFFFFF7FFFFFFF
	cmpq	%rcx, %rax
	jbe	.LBB5_4
# BB#8:                                 # %cleanup
	movl	$-15, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB5_5:                                # %sw.default
	movzbl	1(%rbx), %eax
	cmpl	$13, %eax
	jne	.LBB5_9
# BB#6:                                 # %if.end.17
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%rbx, %rsi
	callq	names_index
	movl	%eax, %eax
	jmp	.LBB5_7
.LBB5_9:                                # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB5_4:                                # %do.end
	subq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
.LBB5_7:                                # %sw.epilog
	movq	%rax, (%r14)
	movq	%r15, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	op_show_enum_setup      # TAILCALL
.Lfunc_end5:
	.size	glyph_show_setup, .Lfunc_end5-glyph_show_setup
	.cfi_endproc

	.align	16, 0x90
	.type	moveshow,@function
moveshow:                               # @moveshow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 128
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movl	%edx, 40(%rsp)          # 4-byte Spill
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movq	$0, 64(%rsp)
	leaq	-16(%r15), %rsi
	callq	op_show_setup
	movl	%eax, %r12d
	movq	8(%rbx), %rdi
	callq	gs_currentcpsimode
	movl	%eax, %r13d
	testl	%r12d, %r12d
	jne	.LBB6_23
# BB#1:                                 # %if.end
	movq	%r15, %rdi
	callq	num_array_format
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB6_2
# BB#3:                                 # %if.end.5
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	num_array_size
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	$.L.str.8, %ecx
	movl	%eax, %esi
	callq	*88(%rdi)
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB6_23
# BB#4:                                 # %if.end.14
	testl	%r13d, %r13d
	movl	28(%rsp), %r12d         # 4-byte Reload
	je	.LBB6_6
# BB#5:                                 # %if.then.15
	movl	%r12d, %edx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
.LBB6_6:                                # %if.end.17
	movq	-8(%r15), %rsi
	movl	-12(%r15), %edx
	xorl	%r8d, %r8d
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	movl	$0, %ecx
	cmovneq	%rbp, %rcx
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	cmovneq	%rbp, %r8
	movq	(%rbx), %rdi
	movq	48(%rbx), %rax
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leaq	64(%rsp), %rbp
	movq	%rbp, 8(%rsp)
	movq	%rax, (%rsp)
	movl	%r12d, %r9d
	callq	gs_xyshow_begin
	movl	%r12d, %ecx
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movl	%ecx, %eax
	js	.LBB6_7
# BB#9:                                 # %if.end.39
	testl	%r13d, %r13d
	je	.LBB6_12
# BB#10:                                # %if.then.41
	movq	(%rbx), %rbp
	movq	64(%rsp), %rdi
	callq	gs_get_text_params
	movq	8(%rbx), %rdx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	gs_text_count_chars
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB6_23
# BB#11:                                # %if.end.50
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	setne	%al
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	setne	%cl
	andb	%al, %cl
	shll	%cl, %r12d
	movl	%r12d, %eax
.LBB6_12:                               # %if.end.55
	testl	%eax, %eax
	je	.LBB6_21
# BB#13:                                # %for.body.lr.ph
	movl	%eax, %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	leaq	48(%rsp), %r8
	callq	num_array_get
	movl	%eax, %r12d
	cmpl	$11, %r12d
	je	.LBB6_19
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB6_14 Depth=1
	cmpl	$16, %r12d
	jne	.LBB6_16
# BB#24:                                # %sw.bb.65
                                        #   in Loop: Header=BB6_14 Depth=1
	movl	56(%rsp), %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx,%rbp,4)
	jmp	.LBB6_20
	.align	16, 0x90
.LBB6_19:                               # %sw.bb
                                        #   in Loop: Header=BB6_14 Depth=1
	cvtsi2ssq	56(%rsp), %xmm0
	movq	32(%rsp), %rax          # 8-byte Reload
	movss	%xmm0, (%rax,%rbp,4)
.LBB6_20:                               # %for.inc
                                        #   in Loop: Header=BB6_14 Depth=1
	incq	%rbp
	cmpq	%r13, %rbp
	jb	.LBB6_14
.LBB6_21:                               # %for.end
	movq	64(%rsp), %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	op_show_finish_setup
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB6_18
# BB#22:                                # %if.end.94
	addq	$-32, 624(%rbx)
	movq	%rbx, %rdi
	callq	op_show_continue
	movl	%eax, %r12d
	jmp	.LBB6_23
.LBB6_2:
	movl	%r14d, %r12d
	jmp	.LBB6_23
.LBB6_7:                                # %if.then.29
	movq	8(%rbx), %rdi
	movl	$.L.str.8, %edx
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	64(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB6_8
	jmp	.LBB6_23
.LBB6_16:                               # %for.body
	cmpl	$14, %r12d
	jne	.LBB6_18
# BB#17:                                # %cleanup.loopexit72
	movl	$-15, %r12d
.LBB6_18:                               # %cleanup
	movq	8(%rbx), %rdi
	movl	$.L.str.8, %edx
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	64(%rsp), %rax
.LBB6_8:                                # %if.then.36
	movq	$0, 72(%rax)
	movq	64(%rsp), %rax
	movq	$0, 64(%rax)
.LBB6_23:                               # %cleanup.100
	movl	%r12d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	moveshow, .Lfunc_end6-moveshow
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"level2dict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1glyphshow"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.glyphwidth"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2xshow"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2xyshow"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2yshow"
	.size	.L.str.5, 7

	.type	zcharx_op_defs,@object  # @zcharx_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcharx_op_defs
	.align	16
zcharx_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zglyphshow
	.quad	.L.str.2
	.quad	zglyphwidth
	.quad	.L.str.3
	.quad	zxshow
	.quad	.L.str.4
	.quad	zxyshow
	.quad	.L.str.5
	.quad	zyshow
	.zero	16
	.size	zcharx_op_defs, 112

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"zglyphshow"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"zglyphwidth"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"moveshow"
	.size	.L.str.8, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
