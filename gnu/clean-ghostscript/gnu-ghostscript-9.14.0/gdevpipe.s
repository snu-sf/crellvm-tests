	.text
	.file	"gdevpipe.bc"
	.align	16, 0x90
	.type	pipe_fopen,@function
pipe_fopen:                             # @pipe_fopen
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r15
	callq	__errno_location
	movq	%rax, %r13
	movl	$0, (%r13)
	movl	$43, %esi
	movq	%rbx, %rdi
	callq	strchr
	movl	$-9, %ebp
	testq	%rax, %rax
	jne	.LBB0_4
# BB#1:                                 # %if.end
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	popen
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB0_5
# BB#2:                                 # %if.end.8
	xorl	%ebp, %ebp
	testq	%r14, %r14
	je	.LBB0_4
# BB#3:                                 # %if.then.10
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	strcpy
.LBB0_4:                                # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:                                # %if.then.5
	movl	(%r13), %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_fopen_errno_to_code  # TAILCALL
.Lfunc_end0:
	.size	pipe_fopen, .Lfunc_end0-pipe_fopen
	.cfi_endproc

	.align	16, 0x90
	.type	pipe_fclose,@function
pipe_fclose:                            # @pipe_fclose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdi
	callq	pclose
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end1:
	.size	pipe_fclose, .Lfunc_end1-pipe_fclose
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%pipe%"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Special"
	.size	.L.str.1, 8

	.type	gs_iodev_pipe,@object   # @gs_iodev_pipe
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_pipe
	.align	8
gs_iodev_pipe:
	.quad	.L.str
	.quad	.L.str.1
	.quad	iodev_no_init
	.quad	iodev_no_open_device
	.quad	0
	.quad	pipe_fopen
	.quad	pipe_fclose
	.quad	iodev_no_delete_file
	.quad	iodev_no_rename_file
	.quad	iodev_no_file_status
	.quad	iodev_no_enumerate_files
	.quad	0
	.quad	0
	.quad	iodev_no_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_pipe, 128


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
