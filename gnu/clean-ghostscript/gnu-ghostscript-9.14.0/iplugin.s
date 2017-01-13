	.text
	.file	"iplugin.bc"
	.globl	i_plugin_make_memory
	.align	16, 0x90
	.type	i_plugin_make_memory,@function
i_plugin_make_memory:                   # @i_plugin_make_memory
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdi)
	movq	$i_plugin_mem_alloc, 8(%rdi)
	movq	$i_plugin_mem_free, 16(%rdi)
	retq
.Lfunc_end0:
	.size	i_plugin_make_memory, .Lfunc_end0-i_plugin_make_memory
	.cfi_endproc

	.align	16, 0x90
	.type	i_plugin_mem_alloc,@function
i_plugin_mem_alloc:                     # @i_plugin_mem_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	movq	8(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	i_plugin_mem_alloc, .Lfunc_end1-i_plugin_mem_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	i_plugin_mem_free,@function
i_plugin_mem_free:                      # @i_plugin_mem_free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	movq	24(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	i_plugin_mem_free, .Lfunc_end2-i_plugin_mem_free
	.cfi_endproc

	.globl	i_plugin_init
	.align	16, 0x90
	.type	i_plugin_init,@function
i_plugin_init:                          # @i_plugin_init
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%rdi, %r13
	movq	8(%r13), %rax
	movq	200(%rax), %rbp
	movq	%rbp, 16(%rsp)
	movq	$i_plugin_mem_alloc, 24(%rsp)
	movq	$i_plugin_mem_free, 32(%rsp)
	xorl	%r14d, %r14d
	cmpq	$0, i_plugin_table(%rip)
	je	.LBB3_6
# BB#1:                                 # %for.body.lr.ph
	movl	$i_plugin_table+8, %ebx
	leaq	16(%rsp), %r15
	leaq	8(%rsp), %r12
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 8(%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*-8(%rbx)
	testl	%eax, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$16, %esi
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*8(%rbp)
	movq	%rax, %rcx
	movl	$-100, %eax
	testq	%rcx, %rcx
	je	.LBB3_4
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	8(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	720(%r13), %rax
	movq	%rax, (%rcx)
	movq	%rcx, 720(%r13)
	cmpq	$0, (%rbx)
	leaq	8(%rbx), %rbx
	jne	.LBB3_2
	jmp	.LBB3_6
.LBB3_4:                                # %cleanup.thread
	movl	%eax, %r14d
.LBB3_6:                                # %cleanup.7
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	i_plugin_init, .Lfunc_end3-i_plugin_init
	.cfi_endproc

	.globl	i_plugin_finit
	.align	16, 0x90
	.type	i_plugin_finit,@function
i_plugin_finit:                         # @i_plugin_finit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 64
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r12, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%r14, (%rsp)
	movq	$i_plugin_mem_alloc, 8(%rsp)
	movq	$i_plugin_mem_free, 16(%rsp)
	testq	%rbx, %rbx
	je	.LBB4_3
# BB#1:                                 # %while.body.lr.ph
	leaq	(%rsp), %r15
	.align	16, 0x90
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r12
	movq	8(%rbx), %rdi
	movq	(%rdi), %rax
	movq	%r15, %rsi
	callq	*16(%rax)
	movl	$.L.str, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	testq	%r12, %r12
	movq	%r12, %rbx
	jne	.LBB4_2
.LBB4_3:                                # %while.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	i_plugin_finit, .Lfunc_end4-i_plugin_finit
	.cfi_endproc

	.globl	i_plugin_get_list
	.align	16, 0x90
	.type	i_plugin_get_list,@function
i_plugin_get_list:                      # @i_plugin_get_list
	.cfi_startproc
# BB#0:                                 # %entry
	movq	720(%rdi), %rax
	retq
.Lfunc_end5:
	.size	i_plugin_get_list, .Lfunc_end5-i_plugin_get_list
	.cfi_endproc

	.globl	i_plugin_find
	.align	16, 0x90
	.type	i_plugin_find,@function
i_plugin_find:                          # @i_plugin_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 48
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r12, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	720(%rdi), %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB6_4
	.align	16, 0x90
.LBB6_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %r12
	movq	(%r12), %rax
	movq	(%rax), %rdi
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB6_3
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	(%r12), %rax
	movq	8(%rax), %rdi
	movq	%r14, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB6_4
.LBB6_3:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	movl	$0, %r12d
	jne	.LBB6_1
.LBB6_4:                                # %cleanup.12
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	i_plugin_find, .Lfunc_end6-i_plugin_find
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"plugin_holder"
	.size	.L.str, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
