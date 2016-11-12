	.text
	.file	"gsiodevs.bc"
	.align	16, 0x90
	.type	stdin_open,@function
stdin_open:                             # @stdin_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movl	$-9, %eax
	movzbl	(%rsi), %ecx
	cmpl	$114, %ecx
	jne	.LBB0_6
# BB#1:                                 # %land.lhs.true.i
	cmpb	$0, 1(%rsi)
	jne	.LBB0_6
# BB#2:                                 # %if.end.i
	movq	192(%rbx), %rax
	movq	8(%rax), %r12
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	s_alloc
	movq	%rax, %r15
	movl	$128, %esi
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	testq	%r15, %r15
	je	.LBB0_4
# BB#3:                                 # %if.end.i
	testq	%rax, %rax
	je	.LBB0_4
# BB#5:                                 # %if.end.16.i
	movl	$128, %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	sread_file
	movq	$stdio_close_file, 216(%r15)
	movq	%r15, (%r14)
	xorl	%eax, %eax
	jmp	.LBB0_6
.LBB0_4:                                # %if.then.12.i
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	movl	$-25, %eax
.LBB0_6:                                # %stdio_open.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	stdin_open, .Lfunc_end0-stdin_open
	.cfi_endproc

	.align	16, 0x90
	.type	stdout_open,@function
stdout_open:                            # @stdout_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r12, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movl	$-9, %eax
	movzbl	(%rsi), %ecx
	cmpl	$119, %ecx
	jne	.LBB1_6
# BB#1:                                 # %land.lhs.true.i
	cmpb	$0, 1(%rsi)
	jne	.LBB1_6
# BB#2:                                 # %if.end.i
	movq	192(%rbx), %rax
	movq	16(%rax), %r12
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	s_alloc
	movq	%rax, %r15
	movl	$128, %esi
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	testq	%r15, %r15
	je	.LBB1_4
# BB#3:                                 # %if.end.i
	testq	%rax, %rax
	je	.LBB1_4
# BB#5:                                 # %if.end.16.i
	movl	$128, %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	swrite_file
	movq	$stdio_close_file, 216(%r15)
	movq	%r15, (%r14)
	xorl	%eax, %eax
	jmp	.LBB1_6
.LBB1_4:                                # %if.then.12.i
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	movl	$-25, %eax
.LBB1_6:                                # %stdio_open.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	stdout_open, .Lfunc_end1-stdout_open
	.cfi_endproc

	.align	16, 0x90
	.type	stderr_open,@function
stderr_open:                            # @stderr_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -40
.Ltmp24:
	.cfi_offset %r12, -32
.Ltmp25:
	.cfi_offset %r14, -24
.Ltmp26:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movl	$-9, %eax
	movzbl	(%rsi), %ecx
	cmpl	$119, %ecx
	jne	.LBB2_6
# BB#1:                                 # %land.lhs.true.i
	cmpb	$0, 1(%rsi)
	jne	.LBB2_6
# BB#2:                                 # %if.end.i
	movq	192(%rbx), %rax
	movq	24(%rax), %r12
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	s_alloc
	movq	%rax, %r15
	movl	$128, %esi
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	testq	%r15, %r15
	je	.LBB2_4
# BB#3:                                 # %if.end.i
	testq	%rax, %rax
	je	.LBB2_4
# BB#5:                                 # %if.end.16.i
	movl	$128, %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	swrite_file
	movq	$stdio_close_file, 216(%r15)
	movq	%r15, (%r14)
	xorl	%eax, %eax
	jmp	.LBB2_6
.LBB2_4:                                # %if.then.12.i
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	movl	$-25, %eax
.LBB2_6:                                # %stdio_open.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	stderr_open, .Lfunc_end2-stderr_open
	.cfi_endproc

	.align	16, 0x90
	.type	stdio_close_file,@function
stdio_close_file:                       # @stdio_close_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp27:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rax
	movq	$0, 304(%rdi)
	movq	136(%rdi), %rsi
	movl	$.L.str.5, %edx
	movq	%rax, %rdi
	callq	*24(%rax)
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	stdio_close_file, .Lfunc_end3-stdio_close_file
	.cfi_endproc

	.type	iodev_dtype_stdio,@object # @iodev_dtype_stdio
	.section	.rodata,"a",@progbits
	.globl	iodev_dtype_stdio
iodev_dtype_stdio:
	.asciz	"Special"
	.size	iodev_dtype_stdio, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%stdin%"
	.size	.L.str, 8

	.type	gs_iodev_stdin,@object  # @gs_iodev_stdin
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_stdin
	.align	8
gs_iodev_stdin:
	.quad	.L.str
	.quad	iodev_dtype_stdio
	.quad	iodev_no_init
	.quad	stdin_open
	.quad	iodev_no_open_file
	.quad	iodev_no_fopen
	.quad	iodev_no_fclose
	.quad	iodev_no_delete_file
	.quad	iodev_no_rename_file
	.quad	iodev_no_file_status
	.quad	iodev_no_enumerate_files
	.quad	0
	.quad	0
	.quad	iodev_no_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_stdin, 128

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%stdout%"
	.size	.L.str.1, 9

	.type	gs_iodev_stdout,@object # @gs_iodev_stdout
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_stdout
	.align	8
gs_iodev_stdout:
	.quad	.L.str.1
	.quad	iodev_dtype_stdio
	.quad	iodev_no_init
	.quad	stdout_open
	.quad	iodev_no_open_file
	.quad	iodev_no_fopen
	.quad	iodev_no_fclose
	.quad	iodev_no_delete_file
	.quad	iodev_no_rename_file
	.quad	iodev_no_file_status
	.quad	iodev_no_enumerate_files
	.quad	0
	.quad	0
	.quad	iodev_no_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_stdout, 128

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%stderr%"
	.size	.L.str.2, 9

	.type	gs_iodev_stderr,@object # @gs_iodev_stderr
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_stderr
	.align	8
gs_iodev_stderr:
	.quad	.L.str.2
	.quad	iodev_dtype_stdio
	.quad	iodev_no_init
	.quad	stderr_open
	.quad	iodev_no_open_file
	.quad	iodev_no_fopen
	.quad	iodev_no_fclose
	.quad	iodev_no_delete_file
	.quad	iodev_no_rename_file
	.quad	iodev_no_file_status
	.quad	iodev_no_enumerate_files
	.quad	0
	.quad	0
	.quad	iodev_no_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_stderr, 128

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"stdio_open(stream)"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"stdio_open(buffer)"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"stdio_close_file(buffer)"
	.size	.L.str.5, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
