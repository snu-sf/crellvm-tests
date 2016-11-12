	.text
	.file	"gsinit.bc"
	.globl	gs_lib_init
	.align	16, 0x90
	.type	gs_lib_init,@function
gs_lib_init:                            # @gs_lib_init
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
	movl	$gs_debug, %edi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movb	$0, gs_debug+35(%rip)
	callq	gs_malloc_init
	movq	%rax, %r14
	movq	gx_init_table(%rip), %rcx
	movl	$gx_init_table+8, %ebx
	testq	%rcx, %rcx
	je	.LBB0_1
	.align	16, 0x90
.LBB0_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	*%rcx
	testl	%eax, %eax
	js	.LBB0_5
# BB#2:                                 # %for.cond.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	(%rbx), %rcx
	addq	$8, %rbx
	testq	%rcx, %rcx
	jne	.LBB0_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_1:
	xorl	%eax, %eax
.LBB0_5:                                # %gs_lib_init1.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gs_lib_init, .Lfunc_end0-gs_lib_init
	.cfi_endproc

	.globl	gs_lib_init1
	.align	16, 0x90
	.type	gs_lib_init1,@function
gs_lib_init1:                           # @gs_lib_init1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	gx_init_table(%rip), %rax
	movl	$gx_init_table+8, %ebx
	testq	%rax, %rax
	je	.LBB1_1
	.align	16, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	*%rax
	testl	%eax, %eax
	js	.LBB1_5
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	(%rbx), %rax
	addq	$8, %rbx
	testq	%rax, %rax
	jne	.LBB1_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB1_5
.LBB1_1:
	xorl	%eax, %eax
.LBB1_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	gs_lib_init1, .Lfunc_end1-gs_lib_init1
	.cfi_endproc

	.globl	gs_lib_init0
	.align	16, 0x90
	.type	gs_lib_init0,@function
gs_lib_init0:                           # @gs_lib_init0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp10:
	.cfi_def_cfa_offset 16
	movl	$gs_debug, %edi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movb	$0, gs_debug+35(%rip)
	popq	%rax
	jmp	gs_malloc_init          # TAILCALL
.Lfunc_end2:
	.size	gs_lib_init0, .Lfunc_end2-gs_lib_init0
	.cfi_endproc

	.globl	gs_lib_finit
	.align	16, 0x90
	.type	gs_lib_finit,@function
gs_lib_finit:                           # @gs_lib_finit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movl	%edi, %ebp
	movq	%rdx, %rdi
	callq	gs_fapi_finit
	movl	%ebp, %edi
	movl	%ebx, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gp_exit                 # TAILCALL
.Lfunc_end3:
	.size	gs_lib_finit, .Lfunc_end3-gs_lib_finit
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
