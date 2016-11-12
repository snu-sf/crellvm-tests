	.text
	.file	"script-fu-regex.bc"
	.globl	script_fu_regex_init
	.align	16, 0x90
	.type	script_fu_regex_init,@function
script_fu_regex_init:                   # @script_fu_regex_init
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
	subq	$48, %rsp
	movabsq	$.L.str, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_re_match, %rsi
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	96(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	*%rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movq	-16(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	script_fu_regex_init, .Lfunc_end0-script_fu_regex_init
	.cfi_endproc

	.align	16, 0x90
	.type	foreign_re_match,@function
foreign_re_match:                       # @foreign_re_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	1000(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	936(%rsi), %rsi
	movq	%rsi, -72(%rbp)
	movl	$0, -92(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	je	.LBB1_5
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, -56(%rbp)
	movq	%rax, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB1_5
# BB#2:                                 # %land.lhs.true.5
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB1_5
# BB#3:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	280(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB1_5
# BB#4:                                 # %land.lhs.true.13
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB1_6
.LBB1_5:                                # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_26
.LBB1_6:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-56(%rbp), %rdi
	callq	*%rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_utf8_validate
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	296(%rdx), %rdx
	movq	-24(%rbp), %rdi
	callq	*%rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	936(%rdx), %rax
	je	.LBB1_12
# BB#7:                                 # %if.then.33
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	280(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB1_9
# BB#8:                                 # %land.lhs.true.38
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	224(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, -72(%rbp)
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB1_10
.LBB1_9:                                # %if.then.45
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_26
.LBB1_10:                               # %if.else
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)
# BB#11:                                # %if.end.47
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.48
	movl	$8, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdi
	callq	g_regex_new
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_14
# BB#13:                                # %if.then.51
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_26
.LBB1_14:                               # %if.end.53
	cmpl	$0, -92(%rbp)
	jne	.LBB1_16
# BB#15:                                # %if.then.55
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_regex_match
	movl	%eax, -36(%rbp)
	jmp	.LBB1_23
.LBB1_16:                               # %if.else.57
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_regex_match
	movl	%eax, -36(%rbp)
	movl	$0, -108(%rbp)
.LBB1_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB1_22
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB1_17 Depth=1
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	movq	-104(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	g_match_info_fetch_pos
	cmpl	$0, -40(%rbp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB1_20
# BB#19:                                # %if.then.63
                                        #   in Loop: Header=BB1_17 Depth=1
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %rax
	movslq	-112(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_utf8_pointer_to_offset
	movl	%eax, %edx
	movl	%edx, -112(%rbp)
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %rax
	movslq	-116(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_utf8_pointer_to_offset
	movl	%eax, %edx
	movl	%edx, -116(%rbp)
.LBB1_20:                               # %if.end.70
                                        #   in Loop: Header=BB1_17 Depth=1
	movq	-72(%rbp), %rdi
	movl	-108(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %r8
	movslq	-112(%rbp), %r9
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movslq	-116(%rbp), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-176(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	set_vector_elem
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB1_17 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB1_17
.LBB1_22:                               # %for.end
	movq	-104(%rbp), %rdi
	callq	g_match_info_free
.LBB1_23:                               # %if.end.80
	cmpl	$0, -36(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.82
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB1_25:                               # %if.end.83
	movq	-48(%rbp), %rdi
	callq	g_regex_unref
	movq	-32(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB1_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	foreign_re_match, .Lfunc_end1-foreign_re_match
	.cfi_endproc

	.align	16, 0x90
	.type	set_vector_elem,@function
set_vector_elem:                        # @set_vector_elem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-32(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -28(%rbp)
	movl	-12(%rbp), %eax
	cltd
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$24, %rdx, %rdx
	addq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$24, %rdx, %rdx
	addq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
.LBB2_3:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end2:
	.size	set_vector_elem, .Lfunc_end2-set_vector_elem
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"re-match"
	.size	.L.str, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
