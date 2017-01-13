	.text
	.file	"gdevppla.bc"
	.globl	gdev_prn_set_procs_planar
	.align	16, 0x90
	.type	gdev_prn_set_procs_planar,@function
gdev_prn_set_procs_planar:              # @gdev_prn_set_procs_planar
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$gdev_prn_create_buf_planar, 12984(%rdi)
	movq	$gdev_prn_size_buf_planar, 12992(%rdi)
	movl	$gx_default_dev_spec_op, %eax
	cmpq	%rax, 1664(%rdi)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	$gdev_prn_dev_spec_op, 1664(%rdi)
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gdev_prn_set_procs_planar, .Lfunc_end0-gdev_prn_set_procs_planar
	.cfi_endproc

	.globl	gdev_prn_create_buf_planar
	.align	16, 0x90
	.type	gdev_prn_create_buf_planar,@function
gdev_prn_create_buf_planar:             # @gdev_prn_create_buf_planar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	gx_default_create_buf_device
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_2
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	callq	gs_device_is_memory
	testl	%eax, %eax
	je	.LBB1_2
# BB#3:                                 # %if.then.2
	movq	(%rbx), %rdi
	movq	%rdi, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gdev_prn_set_planar     # TAILCALL
.LBB1_2:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gdev_prn_create_buf_planar, .Lfunc_end1-gdev_prn_create_buf_planar
	.cfi_endproc

	.globl	gdev_prn_size_buf_planar
	.align	16, 0x90
	.type	gdev_prn_size_buf_planar,@function
gdev_prn_size_buf_planar:               # @gdev_prn_size_buf_planar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
	subq	$2800, %rsp             # imm = 0xAF0
.Ltmp8:
	.cfi_def_cfa_offset 2832
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rdx, %rdx
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 8(%rdx)
	js	.LBB2_3
# BB#2:                                 # %if.then
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %ecx
	callq	gx_default_size_buf_device
	jmp	.LBB2_8
.LBB2_3:                                # %if.end
	leaq	104(%rsp), %rdi
	leaq	96(%rbx), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movl	840(%rbx), %eax
	movl	%eax, 848(%rsp)
	movl	844(%rbx), %eax
	movl	%eax, 852(%rsp)
	movl	848(%rbx), %eax
	movl	%eax, 856(%rsp)
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_set_planar
	testl	%eax, %eax
	js	.LBB2_8
# BB#4:                                 # %if.end.8
	movl	832(%rbx), %esi
	leaq	8(%rsp), %rdi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	gdev_mem_bits_size
	movl	%eax, %ecx
	movl	$-25, %eax
	testl	%ecx, %ecx
	js	.LBB2_8
# BB#5:                                 # %if.end.12
	movl	832(%rbx), %esi
	leaq	8(%rsp), %rdi
	movl	%ebp, %edx
	callq	gdev_mem_line_ptrs_size
	movq	%rax, 8(%r14)
	movl	1788(%rsp), %esi
	imull	832(%rbx), %esi
	movq	848(%rsp), %rdi
	movq	%rdi, %rcx
	shrq	$32, %rcx
	cmpl	$3, %ecx
	movl	$3, %eax
	cmovgel	%ecx, %eax
	movb	$3, %dl
	jl	.LBB2_7
# BB#6:                                 # %if.end.12
	movb	%cl, %dl
.LBB2_7:                                # %if.end.12
	movl	$8, %ebp
	movb	%dl, %cl
	shll	%cl, %ebp
	leal	(%rsi,%rdi,8), %ecx
	leal	-1(%rbp,%rcx), %esi
	addl	$3, %eax
	movb	%al, %cl
	sarl	%cl, %esi
	movb	%dl, %cl
	shll	%cl, %esi
	movl	%esi, 16(%r14)
	xorl	%eax, %eax
.LBB2_8:                                # %cleanup
	addq	$2800, %rsp             # imm = 0xAF0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gdev_prn_size_buf_planar, .Lfunc_end2-gdev_prn_size_buf_planar
	.cfi_endproc

	.globl	gdev_prn_open_planar
	.align	16, 0x90
	.type	gdev_prn_open_planar,@function
gdev_prn_open_planar:                   # @gdev_prn_open_planar
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	je	.LBB3_4
# BB#1:                                 # %if.then
	movq	$gdev_prn_create_buf_planar, 12984(%rdi)
	movq	$gdev_prn_size_buf_planar, 12992(%rdi)
	movl	$gx_default_dev_spec_op, %eax
	cmpq	%rax, 1664(%rdi)
	jne	.LBB3_3
# BB#2:                                 # %if.then.i
	movq	$gdev_prn_dev_spec_op, 1664(%rdi)
.LBB3_3:                                # %gdev_prn_set_procs_planar.exit
	movl	$1, 848(%rdi)
.LBB3_4:                                # %if.end
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end3:
	.size	gdev_prn_open_planar, .Lfunc_end3-gdev_prn_open_planar
	.cfi_endproc

	.globl	gdev_prn_get_params_planar
	.align	16, 0x90
	.type	gdev_prn_get_params_planar,@function
gdev_prn_get_params_planar:             # @gdev_prn_get_params_planar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -24
.Ltmp16:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB4_1
# BB#2:                                 # %if.end
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	param_write_bool        # TAILCALL
.LBB4_1:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	gdev_prn_get_params_planar, .Lfunc_end4-gdev_prn_get_params_planar
	.cfi_endproc

	.globl	gdev_prn_put_params_planar
	.align	16, 0x90
	.type	gdev_prn_put_params_planar,@function
gdev_prn_put_params_planar:             # @gdev_prn_put_params_planar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 48
.Ltmp22:
	.cfi_offset %rbx, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	(%r14), %eax
	movl	%eax, 4(%rsp)
	xorl	%ebp, %ebp
	cmpl	$2, 100(%rbx)
	jl	.LBB5_2
# BB#1:                                 # %if.then
	leaq	4(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%r15, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
.LBB5_2:                                # %if.end
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gdev_prn_put_params
	testl	%ebp, %ebp
	cmovsl	%ebp, %eax
	testl	%eax, %eax
	js	.LBB5_4
# BB#3:                                 # %if.then.6
	movl	4(%rsp), %ecx
	movl	%ecx, (%r14)
.LBB5_4:                                # %if.end.7
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gdev_prn_put_params_planar, .Lfunc_end5-gdev_prn_put_params_planar
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_prn_set_planar,@function
gdev_prn_set_planar:                    # @gdev_prn_set_planar
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$776, %rsp              # imm = 0x308
.Ltmp26:
	.cfi_def_cfa_offset 784
	movq	%rsi, %rax
	movl	100(%rax), %esi
	movzwl	108(%rax), %eax
	xorl	%edx, %edx
	idivl	%esi
	leal	-1(%rsi), %r8d
	movl	$-15, %ecx
	cmpl	$63, %r8d
	ja	.LBB6_7
# BB#1:                                 # %while.cond.preheader
	leal	-1(%rax), %ecx
	testl	%eax, %ecx
	je	.LBB6_3
	.align	16, 0x90
.LBB6_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	sarl	%edx
	orl	%ecx, %edx
	leal	1(%rdx), %eax
	testl	%eax, %edx
	movl	%edx, %ecx
	jne	.LBB6_2
.LBB6_3:                                # %while.end
	movslq	%r8d, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	$0, 4(%rsp,%rcx,4)
	movl	%eax, (%rsp,%rcx,4)
	movl	%esi, %ecx
	addl	$-2, %ecx
	js	.LBB6_6
# BB#4:                                 # %for.body.lr.ph
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	leaq	1(%rcx), %r8
	leaq	(%rsp,%rdx,4), %rdx
	.align	16, 0x90
.LBB6_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%rdx)
	movl	16(%rdx), %ecx
	addl	%eax, %ecx
	movl	%ecx, 4(%rdx)
	decq	%r8
	addq	$-12, %rdx
	testq	%r8, %r8
	jg	.LBB6_5
.LBB6_6:                                # %for.end
	leaq	(%rsp), %rdx
	callq	gdev_mem_set_planar
	movl	%eax, %ecx
.LBB6_7:                                # %cleanup
	movl	%ecx, %eax
	addq	$776, %rsp              # imm = 0x308
	retq
.Lfunc_end6:
	.size	gdev_prn_set_planar, .Lfunc_end6-gdev_prn_set_planar
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"UsePlanarBuffer"
	.size	.L.str, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
