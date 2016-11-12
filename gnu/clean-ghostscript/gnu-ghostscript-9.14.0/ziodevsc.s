	.text
	.file	"ziodevsc.bc"
	.align	16, 0x90
	.type	stdin_init,@function
stdin_init:                             # @stdin_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rsi), %rax
	movl	$1, 48(%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	stdin_init, .Lfunc_end0-stdin_init
	.cfi_endproc

	.align	16, 0x90
	.type	stdin_open,@function
stdin_open:                             # @stdin_open
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	$-9, %ebp
	movzbl	(%rsi), %eax
	cmpl	$114, %eax
	jne	.LBB1_7
# BB#1:                                 # %land.lhs.true
	cmpb	$0, 1(%rsi)
	jne	.LBB1_7
# BB#2:                                 # %if.end
	movq	120(%rdi), %r15
	movq	216(%r15), %rax
	movw	266(%rax), %cx
	orw	264(%rax), %cx
	movzwl	%cx, %ecx
	cmpl	212(%r15), %ecx
	jne	.LBB1_3
# BB#6:                                 # %if.end.36
	movq	%rax, (%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB1_7
.LBB1_3:                                # %if.then.13
	movq	32(%r15), %rbp
	movl	$.L.str.8, %esi
	movq	%rbp, %rdi
	callq	file_alloc_stream
	movq	%rax, %r14
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.9, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	testq	%r14, %r14
	movl	$-25, %ebp
	je	.LBB1_7
# BB#4:                                 # %if.then.13
	testq	%rax, %rax
	je	.LBB1_7
# BB#5:                                 # %if.end.20
	movl	$1, %ebp
	movl	$1024, %edx             # imm = 0x400
	movl	$stdin_open.p, %ecx
	movl	$1, %r8d
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	s_std_init
	movq	$0, 304(%r14)
	movzbl	155(%r14), %eax
	movl	%eax, 328(%r14)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%r14)
	movq	$s_std_null, 296(%r14)
	movq	%r14, 216(%r15)
	movw	$868, 208(%r15)         # imm = 0x364
	movzwl	264(%r14), %eax
	movl	%eax, 212(%r15)
	movq	%r14, (%rbx)
.LBB1_7:                                # %cleanup.37
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	stdin_open, .Lfunc_end1-stdin_open
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
	movq	%rdx, %rbx
	movl	$-9, %eax
	movzbl	(%rsi), %ecx
	cmpl	$119, %ecx
	jne	.LBB2_7
# BB#1:                                 # %land.lhs.true
	cmpb	$0, 1(%rsi)
	jne	.LBB2_7
# BB#2:                                 # %if.end
	movq	120(%rdi), %r12
	movq	232(%r12), %rax
	movw	266(%rax), %cx
	orw	264(%rax), %cx
	movzwl	%cx, %ecx
	cmpl	228(%r12), %ecx
	jne	.LBB2_3
# BB#6:                                 # %if.end.37
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB2_7
.LBB2_3:                                # %if.then.13
	movq	32(%r12), %r15
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	callq	file_alloc_stream
	movq	%rax, %r14
	movl	$128, %esi
	movl	$.L.str.11, %edx
	movq	%r15, %rdi
	callq	*64(%r15)
	movq	%rax, %rsi
	testq	%r14, %r14
	movl	$-25, %eax
	je	.LBB2_7
# BB#4:                                 # %if.then.13
	testq	%rsi, %rsi
	je	.LBB2_7
# BB#5:                                 # %if.end.20
	movl	$128, %edx
	movl	$stdout_open.p, %ecx
	movl	$2, %r8d
	movq	%r14, %rdi
	callq	s_std_init
	movq	$0, 304(%r14)
	movzbl	155(%r14), %eax
	movl	%eax, 328(%r14)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%r14)
	movq	208(%r14), %rax
	movq	%rax, 296(%r14)
	movq	%r14, 232(%r12)
	movw	$788, 224(%r12)         # imm = 0x314
	movzwl	266(%r14), %eax
	movl	%eax, 228(%r12)
	movq	%r14, (%rbx)
	movl	$1, %eax
.LBB2_7:                                # %cleanup.38
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	stdout_open, .Lfunc_end2-stdout_open
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
	movq	%rdx, %rbx
	movl	$-9, %eax
	movzbl	(%rsi), %ecx
	cmpl	$119, %ecx
	jne	.LBB3_7
# BB#1:                                 # %land.lhs.true
	cmpb	$0, 1(%rsi)
	jne	.LBB3_7
# BB#2:                                 # %if.end
	movq	120(%rdi), %r12
	movq	248(%r12), %rax
	movw	266(%rax), %cx
	orw	264(%rax), %cx
	movzwl	%cx, %ecx
	cmpl	244(%r12), %ecx
	jne	.LBB3_3
# BB#6:                                 # %if.end.37
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB3_7
.LBB3_3:                                # %if.then.13
	movq	32(%r12), %r15
	movl	$.L.str.12, %esi
	movq	%r15, %rdi
	callq	file_alloc_stream
	movq	%rax, %r14
	movl	$128, %esi
	movl	$.L.str.13, %edx
	movq	%r15, %rdi
	callq	*64(%r15)
	movq	%rax, %rsi
	testq	%r14, %r14
	movl	$-25, %eax
	je	.LBB3_7
# BB#4:                                 # %if.then.13
	testq	%rsi, %rsi
	je	.LBB3_7
# BB#5:                                 # %if.end.20
	movl	$128, %edx
	movl	$stderr_open.p, %ecx
	movl	$2, %r8d
	movq	%r14, %rdi
	callq	s_std_init
	movq	$0, 304(%r14)
	movzbl	155(%r14), %eax
	movl	%eax, 328(%r14)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%r14)
	movq	208(%r14), %rax
	movq	%rax, 296(%r14)
	movq	%r14, 248(%r12)
	movw	$788, 240(%r12)         # imm = 0x314
	movzwl	266(%r14), %eax
	movl	%eax, 244(%r12)
	movq	%r14, (%rbx)
	movl	$1, %eax
.LBB3_7:                                # %cleanup.38
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	stderr_open, .Lfunc_end3-stderr_open
	.cfi_endproc

	.globl	zget_stdin
	.align	16, 0x90
	.type	zget_stdin,@function
zget_stdin:                             # @zget_stdin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 32
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	216(%rbx), %rax
	movw	266(%rax), %cx
	orw	264(%rax), %cx
	movzwl	%cx, %ecx
	cmpl	212(%rbx), %ecx
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	%rax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movq	8(%rbx), %rdi
	movl	$.L.str.3, %esi
	movl	$6, %edx
	callq	gs_findiodevice
	movq	%rax, %r15
	movq	%rbx, 120(%r15)
	movq	32(%rbx), %rcx
	movl	$.L.str.4, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	*24(%r15)
	movl	%eax, %ecx
	sarl	$31, %eax
	movq	$0, 120(%r15)
	andl	%ecx, %eax
.LBB4_3:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	zget_stdin, .Lfunc_end4-zget_stdin
	.cfi_endproc

	.globl	zis_stdin
	.align	16, 0x90
	.type	zis_stdin,@function
zis_stdin:                              # @zis_stdin
	.cfi_startproc
# BB#0:                                 # %entry
	cmpb	$0, 155(%rdi)
	je	.LBB5_1
# BB#2:                                 # %land.rhs
	movl	$s_stdin_read_process, %eax
	cmpq	%rax, 224(%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.LBB5_1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end5:
	.size	zis_stdin, .Lfunc_end5-zis_stdin
	.cfi_endproc

	.align	16, 0x90
	.type	s_stdin_read_process,@function
s_stdin_read_process:                   # @s_stdin_read_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movl	16(%rbx), %edx
	movq	8(%rbx), %rsi
	subl	%esi, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LBB6_5
# BB#1:                                 # %if.end
	movq	8(%rdi), %rax
	movq	192(%rax), %rdi
	movq	72(%rdi), %rcx
	testq	%rcx, %rcx
	movl	48(%rdi), %eax
	je	.LBB6_3
# BB#2:                                 # %if.then.2
	movq	56(%rdi), %rdi
	incq	%rsi
	testl	%eax, %eax
	movl	$1, %eax
	cmovnel	%eax, %edx
	callq	*%rcx
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	incq	%rsi
	movq	8(%rdi), %rcx
	movq	%rsi, %rdi
	movl	%edx, %esi
	movl	%eax, %edx
	callq	gp_stdin_read
.LBB6_4:                                # %if.end.15
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	orl	%eax, %ecx
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	movslq	%edx, %rdx
	movl	$-2, %eax
	cmovnsl	%ecx, %eax
	addq	%rdx, 8(%rbx)
.LBB6_5:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end6:
	.size	s_stdin_read_process, .Lfunc_end6-s_stdin_read_process
	.cfi_endproc

	.globl	zget_stdout
	.align	16, 0x90
	.type	zget_stdout,@function
zget_stdout:                            # @zget_stdout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	232(%rbx), %rax
	movw	266(%rax), %cx
	orw	264(%rax), %cx
	movzwl	%cx, %ecx
	cmpl	228(%rbx), %ecx
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	%rax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movq	8(%rbx), %rdi
	movl	$.L.str.5, %esi
	movl	$7, %edx
	callq	gs_findiodevice
	movq	%rax, %r15
	movq	%rbx, 120(%r15)
	movq	32(%rbx), %rcx
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	*24(%r15)
	movl	%eax, %ecx
	sarl	$31, %eax
	movq	$0, 120(%r15)
	andl	%ecx, %eax
.LBB7_3:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	zget_stdout, .Lfunc_end7-zget_stdout
	.cfi_endproc

	.globl	zget_stderr
	.align	16, 0x90
	.type	zget_stderr,@function
zget_stderr:                            # @zget_stderr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 32
.Ltmp44:
	.cfi_offset %rbx, -32
.Ltmp45:
	.cfi_offset %r14, -24
.Ltmp46:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	248(%rbx), %rax
	movw	266(%rax), %cx
	orw	264(%rax), %cx
	movzwl	%cx, %ecx
	cmpl	244(%rbx), %ecx
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	%rax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	8(%rbx), %rdi
	movl	$.L.str.7, %esi
	movl	$7, %edx
	callq	gs_findiodevice
	movq	%rax, %r15
	movq	%rbx, 120(%r15)
	movq	32(%rbx), %rcx
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	*24(%r15)
	movl	%eax, %ecx
	sarl	$31, %eax
	movq	$0, 120(%r15)
	andl	%ecx, %eax
.LBB8_3:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	zget_stderr, .Lfunc_end8-zget_stderr
	.cfi_endproc

	.align	16, 0x90
	.type	s_stdout_write_process,@function
s_stdout_write_process:                 # @s_stdout_write_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 32
.Ltmp50:
	.cfi_offset %rbx, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	8(%rbx), %ebp
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	subl	%esi, %ebp
	je	.LBB9_3
# BB#1:                                 # %if.end
	movq	8(%rdi), %rdi
	incq	%rsi
	movl	%ebp, %edx
	callq	outwrite
	movl	%eax, %ecx
	movl	$-2, %eax
	cmpl	%ebp, %ecx
	jb	.LBB9_3
# BB#2:                                 # %if.end.6
	movslq	%ecx, %rax
	addq	%rax, (%rbx)
	xorl	%eax, %eax
.LBB9_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	s_stdout_write_process, .Lfunc_end9-s_stdout_write_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_stderr_write_process,@function
s_stderr_write_process:                 # @s_stderr_write_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 32
.Ltmp55:
	.cfi_offset %rbx, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	8(%rbx), %ebp
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	subl	%esi, %ebp
	je	.LBB10_3
# BB#1:                                 # %if.end
	movq	8(%rdi), %rdi
	incq	%rsi
	movl	%ebp, %edx
	callq	errwrite
	movl	%eax, %ecx
	movl	$-2, %eax
	cmpl	%ebp, %ecx
	jb	.LBB10_3
# BB#2:                                 # %if.end.6
	movslq	%ecx, %rax
	addq	%rax, (%rbx)
	xorl	%eax, %eax
.LBB10_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	s_stderr_write_process, .Lfunc_end10-s_stderr_write_process
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
	.quad	stdin_init
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
	.asciz	"%stdin"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"r"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%stdout"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"w"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%stderr"
	.size	.L.str.7, 8

	.type	stdin_open.p,@object    # @stdin_open.p
	.section	.rodata,"a",@progbits
	.align	8
stdin_open.p:
	.quad	s_std_noavailable
	.quad	s_std_noseek
	.quad	s_std_read_reset
	.quad	s_std_read_flush
	.quad	file_close_file
	.quad	s_stdin_read_process
	.quad	0
	.size	stdin_open.p, 56

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"stdin_open(stream)"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"stdin_open(buffer)"
	.size	.L.str.9, 19

	.type	stdout_open.p,@object   # @stdout_open.p
	.section	.rodata,"a",@progbits
	.align	8
stdout_open.p:
	.quad	s_std_noavailable
	.quad	s_std_noseek
	.quad	s_std_write_reset
	.quad	s_std_write_flush
	.quad	file_close_file
	.quad	s_stdout_write_process
	.quad	0
	.size	stdout_open.p, 56

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"stdout_open(stream)"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stdout_open(buffer)"
	.size	.L.str.11, 20

	.type	stderr_open.p,@object   # @stderr_open.p
	.section	.rodata,"a",@progbits
	.align	8
stderr_open.p:
	.quad	s_std_noavailable
	.quad	s_std_noseek
	.quad	s_std_write_reset
	.quad	s_std_write_flush
	.quad	file_close_file
	.quad	s_stderr_write_process
	.quad	0
	.size	stderr_open.p, 56

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"stderr_open(stream)"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"stderr_open(buffer)"
	.size	.L.str.13, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
