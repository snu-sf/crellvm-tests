	.text
	.file	"rinkj-byte-stream.bc"
	.globl	rinkj_byte_stream_write
	.align	16, 0x90
	.type	rinkj_byte_stream_write,@function
rinkj_byte_stream_write:                # @rinkj_byte_stream_write
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end0:
	.size	rinkj_byte_stream_write, .Lfunc_end0-rinkj_byte_stream_write
	.cfi_endproc

	.globl	rinkj_byte_stream_puts
	.align	16, 0x90
	.type	rinkj_byte_stream_puts,@function
rinkj_byte_stream_puts:                 # @rinkj_byte_stream_puts
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %r15
	movq	%r14, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	movq	%r15, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	rinkj_byte_stream_puts, .Lfunc_end1-rinkj_byte_stream_puts
	.cfi_endproc

	.globl	rinkj_byte_stream_printf
	.align	16, 0x90
	.type	rinkj_byte_stream_printf,@function
rinkj_byte_stream_printf:               # @rinkj_byte_stream_printf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 24
	subq	$8408, %rsp             # imm = 0x20D8
.Ltmp8:
	.cfi_def_cfa_offset 8432
.Ltmp9:
	.cfi_offset %rbx, -24
.Ltmp10:
	.cfi_offset %r14, -16
	movq	%rsi, %r10
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB2_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB2_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	8432(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	208(%rsp), %r14
	leaq	176(%rsp), %rcx
	movl	$8192, %esi             # imm = 0x2000
	movq	%r14, %rdi
	movq	%r10, %rdx
	callq	vsnprintf
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	*(%rbx)
	addq	$8408, %rsp             # imm = 0x20D8
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	rinkj_byte_stream_printf, .Lfunc_end2-rinkj_byte_stream_printf
	.cfi_endproc

	.globl	rinkj_byte_stream_close
	.align	16, 0x90
	.type	rinkj_byte_stream_close,@function
rinkj_byte_stream_close:                # @rinkj_byte_stream_close
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end3:
	.size	rinkj_byte_stream_close, .Lfunc_end3-rinkj_byte_stream_close
	.cfi_endproc

	.globl	rinkj_byte_stream_file_new
	.align	16, 0x90
	.type	rinkj_byte_stream_file_new,@function
rinkj_byte_stream_file_new:             # @rinkj_byte_stream_file_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$16, %edi
	callq	malloc
	movq	$rinkj_byte_stream_file_write, (%rax)
	movq	%rbx, 8(%rax)
	popq	%rbx
	retq
.Lfunc_end4:
	.size	rinkj_byte_stream_file_new, .Lfunc_end4-rinkj_byte_stream_file_new
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_byte_stream_file_write,@function
rinkj_byte_stream_file_write:           # @rinkj_byte_stream_file_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movl	%edx, %ebx
	movq	%rsi, %rax
	testl	%ebx, %ebx
	je	.LBB5_1
# BB#2:                                 # %if.else
	movslq	%ebx, %rdx
	movq	8(%rdi), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	callq	fwrite
	xorl	%ecx, %ecx
	cmpl	%ebx, %eax
	movl	$-1, %eax
	cmovel	%ecx, %eax
	popq	%rbx
	retq
.LBB5_1:                                # %if.then
	callq	free
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	rinkj_byte_stream_file_write, .Lfunc_end5-rinkj_byte_stream_file_write
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
