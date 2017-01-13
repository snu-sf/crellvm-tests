	.text
	.file	"gsnogc.bc"
	.globl	gs_nogc_reclaim
	.align	16, 0x90
	.type	gs_nogc_reclaim,@function
gs_nogc_reclaim:                        # @gs_nogc_reclaim
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	8(%r14), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_5
# BB#1:                                 # %if.end
	movq	$nogc_free_string, 160(%rbx)
	movq	$nogc_resize_string, 152(%rbx)
	movl	$nogc_alloc_string_immovable, %eax
	movd	%rax, %xmm0
	movl	$nogc_alloc_string, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 136(%rbx)
	movq	%rbx, %rdi
	callq	*56(%rbx)
	movq	(%rbx), %rdi
	cmpq	%rbx, %rdi
	je	.LBB0_4
# BB#2:                                 # %if.end
	testq	%rdi, %rdi
	je	.LBB0_4
# BB#3:                                 # %if.then.11
	movq	$nogc_free_string, 160(%rdi)
	movq	$nogc_resize_string, 152(%rdi)
	movl	$nogc_alloc_string_immovable, %eax
	movd	%rax, %xmm0
	movl	$nogc_alloc_string, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 136(%rdi)
	callq	*56(%rdi)
.LBB0_4:                                # %cleanup
	movq	%rbx, %rax
.LBB0_5:                                # %cleanup
	movq	16(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB0_11
# BB#6:                                 # %cleanup
	cmpq	%rax, %rbx
	je	.LBB0_11
# BB#7:                                 # %if.end.1
	movq	$nogc_free_string, 160(%rbx)
	movq	$nogc_resize_string, 152(%rbx)
	movl	$nogc_alloc_string_immovable, %eax
	movd	%rax, %xmm0
	movl	$nogc_alloc_string, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 136(%rbx)
	movq	%rbx, %rdi
	callq	*56(%rbx)
	movq	(%rbx), %rdi
	cmpq	%rbx, %rdi
	je	.LBB0_10
# BB#8:                                 # %if.end.1
	testq	%rdi, %rdi
	je	.LBB0_10
# BB#9:                                 # %if.then.11.1
	movq	$nogc_free_string, 160(%rdi)
	movq	$nogc_resize_string, 152(%rdi)
	movl	$nogc_alloc_string_immovable, %eax
	movd	%rax, %xmm0
	movl	$nogc_alloc_string, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 136(%rdi)
	callq	*56(%rdi)
.LBB0_10:                               # %cleanup.1
	movq	%rbx, %rax
.LBB0_11:                               # %cleanup.1
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB0_17
# BB#12:                                # %cleanup.1
	cmpq	%rax, %rbx
	je	.LBB0_17
# BB#13:                                # %if.end.2
	movq	$nogc_free_string, 160(%rbx)
	movq	$nogc_resize_string, 152(%rbx)
	movl	$nogc_alloc_string_immovable, %eax
	movd	%rax, %xmm0
	movl	$nogc_alloc_string, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 136(%rbx)
	movq	%rbx, %rdi
	callq	*56(%rbx)
	movq	(%rbx), %rdi
	cmpq	%rbx, %rdi
	je	.LBB0_16
# BB#14:                                # %if.end.2
	testq	%rdi, %rdi
	je	.LBB0_16
# BB#15:                                # %if.then.11.2
	movq	$nogc_free_string, 160(%rdi)
	movq	$nogc_resize_string, 152(%rdi)
	movl	$nogc_alloc_string_immovable, %eax
	movd	%rax, %xmm0
	movl	$nogc_alloc_string, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 136(%rdi)
	callq	*56(%rdi)
.LBB0_16:                               # %cleanup.2
	movq	%rbx, %rax
.LBB0_17:                               # %cleanup.2
	movq	32(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB0_21
# BB#18:                                # %cleanup.2
	cmpq	%rax, %rbx
	je	.LBB0_21
# BB#19:                                # %if.end.3
	movq	$nogc_free_string, 160(%rbx)
	movq	$nogc_resize_string, 152(%rbx)
	movl	$nogc_alloc_string_immovable, %eax
	movd	%rax, %xmm0
	movl	$nogc_alloc_string, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 136(%rbx)
	movq	%rbx, %rdi
	callq	*56(%rbx)
	movq	(%rbx), %rdi
	cmpq	%rbx, %rdi
	je	.LBB0_21
# BB#20:                                # %if.end.3
	testq	%rdi, %rdi
	je	.LBB0_21
# BB#22:                                # %if.then.11.3
	movq	$nogc_free_string, 160(%rdi)
	movq	$nogc_resize_string, 152(%rdi)
	movl	$nogc_alloc_string_immovable, %eax
	movd	%rax, %xmm0
	movl	$nogc_alloc_string, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 136(%rdi)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*56(%rdi)               # TAILCALL
.LBB0_21:                               # %cleanup.3
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gs_nogc_reclaim, .Lfunc_end0-gs_nogc_reclaim
	.cfi_endproc

	.align	16, 0x90
	.type	nogc_alloc_string,@function
nogc_alloc_string:                      # @nogc_alloc_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	nogc_alloc_string, .Lfunc_end1-nogc_alloc_string
	.cfi_endproc

	.align	16, 0x90
	.type	nogc_free_string,@function
nogc_free_string:                       # @nogc_free_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rax
	movq	%rcx, %rdx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	nogc_free_string, .Lfunc_end2-nogc_free_string
	.cfi_endproc

	.align	16, 0x90
	.type	nogc_resize_string,@function
nogc_resize_string:                     # @nogc_resize_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	movl	%ecx, %edx
	movq	%r8, %rcx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end3:
	.size	nogc_resize_string, .Lfunc_end3-nogc_resize_string
	.cfi_endproc

	.align	16, 0x90
	.type	nogc_alloc_string_immovable,@function
nogc_alloc_string_immovable:            # @nogc_alloc_string_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end4:
	.size	nogc_alloc_string_immovable, .Lfunc_end4-nogc_alloc_string_immovable
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
