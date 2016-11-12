	.text
	.file	"function_list.bc"
	.globl	opj_procedure_list_create
	.align	16, 0x90
	.type	opj_procedure_list_create,@function
opj_procedure_list_create:              # @opj_procedure_list_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_4
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$10, 4(%rbx)
	movl	$80, %edi
	callq	malloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB0_2
# BB#3:                                 # %if.end.6
	xorl	%esi, %esi
	movl	$80, %edx
	movq	%rax, %rdi
	callq	memset
	movq	%rbx, %rax
.LBB0_4:                                # %cleanup
	popq	%rbx
	retq
.LBB0_2:                                # %if.then.5
	movq	%rbx, %rdi
	callq	free
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	opj_procedure_list_create, .Lfunc_end0-opj_procedure_list_create
	.cfi_endproc

	.globl	opj_procedure_list_destroy
	.align	16, 0x90
	.type	opj_procedure_list_destroy,@function
opj_procedure_list_destroy:             # @opj_procedure_list_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB1_4
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_3
# BB#2:                                 # %if.then.2
	callq	free
.LBB1_3:                                # %if.end.4
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free                    # TAILCALL
.LBB1_4:                                # %return
	popq	%rbx
	retq
.Lfunc_end1:
	.size	opj_procedure_list_destroy, .Lfunc_end1-opj_procedure_list_destroy
	.cfi_endproc

	.globl	opj_procedure_list_add_procedure
	.align	16, 0x90
	.type	opj_procedure_list_add_procedure,@function
opj_procedure_list_add_procedure:       # @opj_procedure_list_add_procedure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -24
.Ltmp8:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	(%rbx), %ecx
	movl	4(%rbx), %esi
	cmpl	%ecx, %esi
	jne	.LBB2_1
# BB#2:                                 # %if.then
	addl	$10, %esi
	movl	%esi, 4(%rbx)
	shlq	$3, %rsi
	movq	8(%rbx), %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_3
# BB#4:                                 # %if.else
	movq	%rax, 8(%rbx)
	movl	(%rbx), %ecx
	jmp	.LBB2_5
.LBB2_1:                                # %entry.if.end.14_crit_edge
	movq	8(%rbx), %rax
.LBB2_5:                                # %if.end.14
	movl	%ecx, %edx
	movq	%r14, (%rax,%rdx,8)
	incl	%ecx
	movl	%ecx, (%rbx)
	movl	$1, %ebx
	jmp	.LBB2_6
.LBB2_3:                                # %if.then.8
	movq	8(%rbx), %rdi
	callq	free
	movq	$0, (%rbx)
	movq	stderr(%rip), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB2_6:                                # %return
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	opj_procedure_list_add_procedure, .Lfunc_end2-opj_procedure_list_add_procedure
	.cfi_endproc

	.globl	opj_procedure_list_get_nb_procedures
	.align	16, 0x90
	.type	opj_procedure_list_get_nb_procedures,@function
opj_procedure_list_get_nb_procedures:   # @opj_procedure_list_get_nb_procedures
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rdi), %eax
	retq
.Lfunc_end3:
	.size	opj_procedure_list_get_nb_procedures, .Lfunc_end3-opj_procedure_list_get_nb_procedures
	.cfi_endproc

	.globl	opj_procedure_list_get_first_procedure
	.align	16, 0x90
	.type	opj_procedure_list_get_first_procedure,@function
opj_procedure_list_get_first_procedure: # @opj_procedure_list_get_first_procedure
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	retq
.Lfunc_end4:
	.size	opj_procedure_list_get_first_procedure, .Lfunc_end4-opj_procedure_list_get_first_procedure
	.cfi_endproc

	.globl	opj_procedure_list_clear
	.align	16, 0x90
	.type	opj_procedure_list_clear,@function
opj_procedure_list_clear:               # @opj_procedure_list_clear
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, (%rdi)
	retq
.Lfunc_end5:
	.size	opj_procedure_list_clear, .Lfunc_end5-opj_procedure_list_clear
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Not enough memory to add a new validation procedure\n"
	.size	.L.str, 53


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
