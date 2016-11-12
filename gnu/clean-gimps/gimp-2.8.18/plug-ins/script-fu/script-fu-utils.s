	.text
	.file	"script-fu-utils.bc"
	.globl	script_fu_strescape
	.align	16, 0x90
	.type	script_fu_strescape,@function
script_fu_strescape:                    # @script_fu_strescape
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_strescape, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_12
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_malloc
	movq	%rax, -32(%rbp)
	movq	%rax, -40(%rbp)
.LBB0_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_11
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$-8, %edx
	subl	$3, %edx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	jb	.LBB0_8
	jmp	.LBB0_13
.LBB0_13:                               # %while.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	$-12, %eax
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jb	.LBB0_8
	jmp	.LBB0_14
.LBB0_14:                               # %while.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$34, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB0_8
	jmp	.LBB0_15
.LBB0_15:                               # %while.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB0_9
	jmp	.LBB0_8
.LBB0_8:                                # %sw.bb
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$92, (%rax)
.LBB0_9:                                # %sw.default
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
# BB#10:                                # %sw.epilog
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_6
.LBB0_11:                               # %while.end
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	script_fu_strescape, .Lfunc_end0-script_fu_strescape
	.cfi_endproc

	.type	.L__func__.script_fu_strescape,@object # @__func__.script_fu_strescape
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.script_fu_strescape:
	.asciz	"script_fu_strescape"
	.size	.L__func__.script_fu_strescape, 20

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"source != NULL"
	.size	.L.str, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
