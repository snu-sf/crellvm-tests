	.text
	.file	"gp_stdia.bc"
	.globl	gp_stdin_read
	.align	16, 0x90
	.type	gp_stdin_read,@function
gp_stdin_read:                          # @gp_stdin_read
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	movq	%rcx, %rdi
	callq	fileno
	movslq	%ebx, %rdx
	movl	%eax, %edi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	read                    # TAILCALL
.Lfunc_end0:
	.size	gp_stdin_read, .Lfunc_end0-gp_stdin_read
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
