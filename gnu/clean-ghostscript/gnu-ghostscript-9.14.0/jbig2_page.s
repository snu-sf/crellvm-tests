	.text
	.file	"jbig2_page.bc"
	.globl	jbig2_page_info
	.align	16, 0x90
	.type	jbig2_page_info,@function
jbig2_page_info:                        # @jbig2_page_info
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	96(%r15), %r13d
	movslq	%r13d, %rax
	movq	104(%r15), %r14
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	cmpl	$0, 4(%r14,%rax)
	je	.LBB0_3
# BB#1:                                 # %land.lhs.true
	cmpl	$1, (%r14,%rax)
	ja	.LBB0_3
# BB#2:                                 # %if.then
	addq	%rax, %r14
	movl	$2, (%r14)
	movl	(%r12), %edx
	movl	$2, %esi
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	96(%r15), %r13d
	movq	104(%r15), %r14
.LBB0_3:                                # %if.end
	movslq	%r13d, %rcx
	leaq	(%rcx,%rcx,2), %rax
	shlq	$4, %rax
	cmpl	$0, (%r14,%rax)
	je	.LBB0_4
# BB#8:                                 # %while.body.lr.ph
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%r12, 32(%rsp)          # 8-byte Spill
	leal	1(%r13), %eax
	movslq	%eax, %rbx
	movl	100(%r15), %eax
	movl	%r13d, %ecx
	xorl	$1, %ecx
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	leal	2(%r13), %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_9:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movl	%r13d, %ebp
	leal	1(%rbp), %r13d
	cmpl	%eax, %r13d
	jl	.LBB0_10
# BB#12:                                # %if.then.13
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	(%r15), %rdi
	shll	$2, %eax
	movl	%eax, 100(%r15)
	movslq	%eax, %rdx
	movl	$48, %ecx
	movq	%r14, %rsi
	callq	jbig2_realloc
	movq	%rax, %r14
	movq	%r14, 104(%r15)
	movl	100(%r15), %eax
	cmpl	%eax, %r13d
	jge	.LBB0_10
# BB#13:                                # %for.body.preheader
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	48(%rsp), %ecx          # 4-byte Reload
	subl	%r12d, %ecx
	leal	(%rcx,%rax), %ecx
	testb	$1, %cl
	movq	%rbx, %rdx
	movl	%r13d, %ecx
	je	.LBB0_15
# BB#14:                                # %for.body.prol
                                        #   in Loop: Header=BB0_9 Depth=1
	leaq	(%rbx,%rbx,2), %rcx
	shlq	$4, %rcx
	movl	$0, (%r14,%rcx)
	movl	$0, 4(%r14,%rcx)
	movq	$0, 40(%r14,%rcx)
	addl	$2, %ebp
	leaq	1(%rbx), %rdx
	movl	%ebp, %ecx
.LBB0_15:                               # %for.body.preheader.split
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	40(%rsp), %rsi          # 8-byte Reload
	leal	(%r12,%rsi), %esi
	cmpl	%esi, %eax
	je	.LBB0_10
# BB#16:                                # %for.body.preheader.split.split
                                        #   in Loop: Header=BB0_9 Depth=1
	leaq	(%rdx,%rdx,2), %rsi
	shlq	$4, %rsi
	movq	%r14, %rdx
	addq	%rsi, %rdx
	.align	16, 0x90
.LBB0_17:                               # %for.body
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$0, (%rdx)
	movl	$0, 4(%rdx)
	movq	$0, 40(%rdx)
	movl	$0, 48(%rdx)
	movl	$0, 52(%rdx)
	movq	$0, 88(%rdx)
	addl	$2, %ecx
	addq	$96, %rdx
	cmpl	%eax, %ecx
	jl	.LBB0_17
	.align	16, 0x90
.LBB0_10:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	%r13d, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$4, %rdx
	incq	%rbx
	incl	%r12d
	cmpl	$0, (%r14,%rdx)
	jne	.LBB0_9
# BB#11:
	leaq	(%rdx,%r14), %rax
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB0_5
.LBB0_4:
	leaq	(%rax,%r14), %rax
.LBB0_5:                                # %while.end
	movl	%r13d, 96(%r15)
	movl	$1, (%rax)
	movl	8(%r12), %eax
	leaq	(%rcx,%rcx,2), %r13
	shlq	$4, %r13
	movl	%eax, 4(%r14,%r13)
	cmpq	$18, 16(%r12)
	ja	.LBB0_18
# BB#6:                                 # %if.then.42
	movl	(%r12), %edx
	movl	$3, %esi
	movl	$.L.str.1, %ecx
	jmp	.LBB0_7
.LBB0_18:                               # %if.end.45
	movq	%rbp, %rdi
	callq	jbig2_get_uint32
	movl	%eax, 12(%r14,%r13)
	leaq	4(%rbp), %rdi
	callq	jbig2_get_uint32
	leaq	8(%r14,%r13), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	%eax, 8(%r14,%r13)
	leaq	8(%rbp), %rdi
	callq	jbig2_get_uint32
	movl	%eax, 16(%r14,%r13)
	leaq	12(%rbp), %rdi
	callq	jbig2_get_uint32
	movl	%eax, 20(%r14,%r13)
	movb	16(%rbp), %al
	movb	%al, 36(%r14,%r13)
	addq	$17, %rbp
	movq	%rbp, %rdi
	callq	jbig2_get_int16
	testw	%ax, %ax
	leaq	28(%r14,%r13), %rbp
	js	.LBB0_19
# BB#20:                                # %if.else
	movl	$0, (%rbp)
	movb	$1, %cl
	xorl	%eax, %eax
	jmp	.LBB0_21
.LBB0_19:                               # %if.then.56
	movl	$1, (%rbp)
	andl	$32767, %eax            # imm = 0x7FFF
	xorl	%ecx, %ecx
.LBB0_21:                               # %if.end.62
	movw	%ax, 24(%r14,%r13)
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	$-1, (%rax)
	jne	.LBB0_24
# BB#22:                                # %if.end.62
	testb	%cl, %cl
	je	.LBB0_24
# BB#23:                                # %if.then.70
	movl	(%r12), %edx
	movl	$2, %esi
	movl	$.L.str.2, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	$1, (%rbp)
.LBB0_24:                               # %if.end.74
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	leaq	16(%r14,%r13), %rbp
	movl	$0, 32(%r14,%r13)
	cmpq	$20, 16(%r12)
	jb	.LBB0_26
# BB#25:                                # %if.then.78
	movl	(%r12), %edx
	movl	$2, %esi
	movl	$.L.str.3, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
.LBB0_26:                               # %if.end.81
	leaq	4(%r14,%r13), %rcx
	leaq	12(%r14,%r13), %rbx
	movl	(%rbp), %eax
	testl	%eax, %eax
	je	.LBB0_27
# BB#28:                                # %if.else.i
	leaq	20(%r14,%r13), %rdx
	movl	(%rdx), %esi
	movl	(%r12), %edx
	movl	(%rcx), %r8d
	movl	(%rbx), %r9d
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %ecx
	cmpl	%esi, %eax
	jne	.LBB0_30
# BB#29:                                # %if.then.4.i
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	$1, %esi
	movl	$.L.str.18, %ecx
	jmp	.LBB0_31
.LBB0_27:                               # %if.then.i
	movl	(%r12), %edx
	movl	(%rcx), %r8d
	movl	(%rbx), %r9d
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$1, %esi
	movl	$.L.str.17, %ecx
	jmp	.LBB0_31
.LBB0_30:                               # %if.else.11.i
	movl	%esi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	$1, %esi
	movl	$.L.str.19, %ecx
.LBB0_31:                               # %if.end.19.i
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	leaq	24(%r14,%r13), %rbp
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB0_33
# BB#32:                                # %if.then.20.i
	movl	(%r12), %edx
	movzwl	(%rbp), %r8d
	movl	$1, %esi
	movl	$.L.str.20, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
.LBB0_33:                               # %dump_page_info.exit
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movl	(%rbx), %esi
	cmpl	$-1, %edx
	jne	.LBB0_35
# BB#34:                                # %if.then.85
	movzwl	(%rbp), %edx
.LBB0_35:                               # %if.else.91
	movq	%r15, %rdi
	callq	jbig2_image_new
	movq	%rax, 40(%r14,%r13)
	testq	%rax, %rax
	je	.LBB0_36
# BB#37:                                # %cleanup
	leaq	36(%r14,%r13), %rcx
	leaq	40(%r14,%r13), %rbx
	movzbl	(%rcx), %edx
	andl	$4, %edx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	jbig2_image_clear
	movl	(%r12), %edx
	movq	(%rbx), %rax
	movl	(%rax), %r8d
	movl	4(%rax), %r9d
	movl	8(%rax), %eax
	imull	%r9d, %eax
	movl	%eax, (%rsp)
	xorl	%esi, %esi
	movl	$.L.str.5, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_36:                               # %if.then.100
	movl	(%r12), %edx
	movl	$3, %esi
	movl	$.L.str.4, %ecx
.LBB0_7:                                # %if.then.42
	xorl	%eax, %eax
	movq	%r15, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	jbig2_error             # TAILCALL
.Lfunc_end0:
	.size	jbig2_page_info, .Lfunc_end0-jbig2_page_info
	.cfi_endproc

	.globl	jbig2_end_of_stripe
	.align	16, 0x90
	.type	jbig2_end_of_stripe,@function
jbig2_end_of_stripe:                    # @jbig2_end_of_stripe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movslq	96(%rbx), %rax
	movq	104(%rbx), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	32(%rcx,%rax), %r14d
	movq	%rdx, %rdi
	callq	jbig2_get_int32
	movl	%eax, %r8d
	movl	(%rbp), %edx
	cmpl	%r14d, %r8d
	jge	.LBB1_2
# BB#1:                                 # %if.then
	movl	$2, %esi
	movl	$.L.str.6, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %r9d
	callq	jbig2_error
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movl	$1, %esi
	movl	$.L.str.7, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	jbig2_error
.LBB1_3:                                # %if.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	jbig2_end_of_stripe, .Lfunc_end1-jbig2_end_of_stripe
	.cfi_endproc

	.globl	jbig2_complete_page
	.align	16, 0x90
	.type	jbig2_complete_page,@function
jbig2_complete_page:                    # @jbig2_complete_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -24
.Ltmp23:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movslq	92(%rbx), %rcx
	xorl	%eax, %eax
	cmpl	88(%rbx), %ecx
	je	.LBB2_3
# BB#1:                                 # %if.then
	movq	80(%rbx), %rdx
	movq	(%rdx,%rcx,8), %r14
	cmpl	$-1, 16(%r14)
	jne	.LBB2_3
# BB#2:                                 # %if.then.3
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	jbig2_error
	movl	56(%rbx), %edx
	movl	60(%rbx), %eax
	subl	%edx, %eax
	movq	%rax, 16(%r14)
	addq	40(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	jbig2_parse_segment
	movl	16(%r14), %ecx
	addl	%ecx, 56(%rbx)
	incl	92(%rbx)
.LBB2_3:                                # %if.end.12
	movslq	96(%rbx), %rdx
	movq	104(%rbx), %rcx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	cmpq	$0, 40(%rcx,%rdx)
	je	.LBB2_5
# BB#4:                                 # %if.then.17
	movl	$2, (%rcx,%rdx)
.LBB2_5:                                # %if.end.22
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	jbig2_complete_page, .Lfunc_end2-jbig2_complete_page
	.cfi_endproc

	.globl	jbig2_end_of_page
	.align	16, 0x90
	.type	jbig2_end_of_page,@function
jbig2_end_of_page:                      # @jbig2_end_of_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movslq	96(%rbx), %rax
	movq	104(%rbx), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	4(%rcx,%rax), %r14d
	movl	8(%rbp), %r8d
	cmpl	%r14d, %r8d
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	(%rbp), %edx
	movl	$2, %esi
	movl	$.L.str.9, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %r9d
	callq	jbig2_error
.LBB3_2:                                # %if.end
	movl	(%rbp), %edx
	movl	$1, %esi
	movl	$.L.str.10, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %r8d
	callq	jbig2_error
	movq	%rbx, %rdi
	callq	jbig2_complete_page
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	jbig2_end_of_page, .Lfunc_end3-jbig2_end_of_page
	.cfi_endproc

	.globl	jbig2_page_add_result
	.align	16, 0x90
	.type	jbig2_page_add_result,@function
jbig2_page_add_result:                  # @jbig2_page_add_result
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 64
.Ltmp37:
	.cfi_offset %rbx, -56
.Ltmp38:
	.cfi_offset %r12, -48
.Ltmp39:
	.cfi_offset %r13, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_1
# BB#2:                                 # %if.end
	cmpl	$0, 28(%rbx)
	je	.LBB4_3
# BB#4:                                 # %if.then.2
	movl	%ecx, (%rsp)            # 4-byte Spill
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movl	4(%r12), %r14d
	addl	%ebp, %r14d
	leaq	32(%rbx), %r15
	addl	32(%rbx), %r14d
	cmpl	%r14d, 4(%rsi)
	jge	.LBB4_6
# BB#5:                                 # %if.then.7
	movl	$0, %esi
	movl	$-1, %edx
	movl	$.L.str.12, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r14d, %r8d
	callq	jbig2_error
	movq	40(%rbx), %rsi
	movl	(%rsi), %edx
	movq	%r13, %rdi
	movl	%r14d, %ecx
	callq	jbig2_image_resize
	movq	40(%rbx), %rsi
.LBB4_6:                                # %if.end.13
	movl	4(%rsp), %r9d           # 4-byte Reload
	movl	(%rsp), %ecx            # 4-byte Reload
	jmp	.LBB4_7
.LBB4_1:                                # %if.then
	movl	$2, %esi
	movl	$-1, %edx
	movl	$.L.str.11, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
	jmp	.LBB4_8
.LBB4_3:                                # %if.end.if.end.13_crit_edge
	addq	$32, %rbx
	movq	%rbx, %r15
.LBB4_7:                                # %if.end.13
	addl	(%r15), %ebp
	movq	%r13, %rdi
	movq	%r12, %rdx
	movl	%ebp, %r8d
	callq	jbig2_image_compose
.LBB4_8:                                # %return
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	jbig2_page_add_result, .Lfunc_end4-jbig2_page_add_result
	.cfi_endproc

	.globl	jbig2_page_out
	.align	16, 0x90
	.type	jbig2_page_out,@function
jbig2_page_out:                         # @jbig2_page_out
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -40
.Ltmp49:
	.cfi_offset %r12, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	100(%r14), %eax
	testl	%eax, %eax
	jle	.LBB5_6
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	104(%r14), %rcx
	cmpl	$2, (%rcx,%rbx)
	jne	.LBB5_5
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	40(%rcx,%rbx), %r15
	movl	4(%rcx,%rbx), %r8d
	movl	$3, (%rcx,%rbx)
	testq	%r15, %r15
	jne	.LBB5_7
# BB#4:                                 # %cleanup.thread
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	$2, %esi
	movl	$-1, %edx
	movl	$.L.str.14, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	100(%r14), %eax
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	incq	%r12
	movslq	%eax, %rcx
	addq	$48, %rbx
	cmpq	%rcx, %r12
	jl	.LBB5_2
.LBB5_6:                                # %cleanup.18
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB5_7:                                # %cleanup
	movl	$0, %esi
	movl	$-1, %edx
	movl	$.L.str.13, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	jbig2_image_clone       # TAILCALL
.Lfunc_end5:
	.size	jbig2_page_out, .Lfunc_end5-jbig2_page_out
	.cfi_endproc

	.globl	jbig2_release_page
	.align	16, 0x90
	.type	jbig2_release_page,@function
jbig2_release_page:                     # @jbig2_release_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 32
.Ltmp55:
	.cfi_offset %rbx, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	100(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB6_5
# BB#1:                                 # %for.body.lr.ph
	movq	104(%rbx), %rcx
	addq	$40, %rcx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, (%rcx)
	je	.LBB6_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB6_3 Depth=1
	incq	%rbp
	addq	$48, %rcx
	cmpq	%rax, %rbp
	jl	.LBB6_3
.LBB6_5:                                # %for.end
	movl	$2, %esi
	movl	$-1, %edx
	movl	$.L.str.16, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	jbig2_error
	movl	$1, %ebp
	jmp	.LBB6_6
.LBB6_4:                                # %if.then
	movq	%rbx, %rdi
	callq	jbig2_image_release
	movq	104(%rbx), %rax
	leaq	(%rbp,%rbp,2), %rcx
	shlq	$4, %rcx
	movl	$4, (%rax,%rcx)
	movl	4(%rax,%rcx), %r8d
	xorl	%ebp, %ebp
	movl	$0, %esi
	movl	$-1, %edx
	movl	$.L.str.15, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	jbig2_error
.LBB6_6:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	jbig2_release_page, .Lfunc_end6-jbig2_release_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unexpected page info segment, marking previous page finished"
	.size	.L.str, 61

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"segment too short"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"height is unspecified but page is not markes as striped"
	.size	.L.str.2, 56

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"extra data in segment"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"failed to allocate buffer for page image"
	.size	.L.str.4, 41

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"allocated %dx%d page image (%d bytes)"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"end of stripe segment with non-positive end row advance (new end row %d vs current end row %d)"
	.size	.L.str.6, 95

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"end of stripe: advancing end row to %d"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"File has an invalid segment data length! Trying to decode using the available data."
	.size	.L.str.8, 84

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"end of page marker for page %d doesn't match current page number %d"
	.size	.L.str.9, 68

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"end of page %d"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"page info possibly missing, no image defined"
	.size	.L.str.11, 45

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"growing page buffer to %d rows to accomodate new stripe"
	.size	.L.str.12, 56

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"page %d returned to the client"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"page %d returned with no associated image"
	.size	.L.str.14, 42

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"page %d released by the client"
	.size	.L.str.15, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"jbig2_release_page called on unknown page"
	.size	.L.str.16, 42

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"page %d image is %dx%d (unknown res)"
	.size	.L.str.17, 37

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"page %d image is %dx%d (%d ppm)"
	.size	.L.str.18, 32

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"page %d image is %dx%d (%dx%d ppm)"
	.size	.L.str.19, 35

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\tmaximum stripe size: %d"
	.size	.L.str.20, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
