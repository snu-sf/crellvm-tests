	.text
	.file	"ziodev2.bc"
	.align	16, 0x90
	.type	null_open,@function
null_open:                              # @null_open
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
	subq	$24, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 64
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movzbl	(%rbx), %eax
	cmpl	$119, %eax
	jne	.LBB0_3
# BB#1:                                 # %land.lhs.true
	cmpb	$0, 1(%rbx)
	je	.LBB0_2
.LBB0_3:                                # %return
	movl	$-9, %eax
	jmp	.LBB0_4
.LBB0_2:                                # %if.end
	movl	$gp_null_file_name, %edi
	callq	strlen
	movq	40(%r15), %rcx
	movq	%r12, 8(%rsp)
	movq	%rcx, (%rsp)
	movl	$gp_null_file_name, %edi
	movl	$256, %ecx              # imm = 0x100
	movl	%eax, %esi
	movq	%rbx, %rdx
	movq	%r14, %r8
	movq	%r15, %r9
	callq	file_open_stream
.LBB0_4:                                # %return
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	null_open, .Lfunc_end0-null_open
	.cfi_endproc

	.align	16, 0x90
	.type	zgetdevparams,@function
zgetdevparams:                          # @zgetdevparams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	subq	$104, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 144
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzwl	(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB1_1
# BB#3:                                 # %if.end
	movq	8(%rbx), %rax
	movq	8(%rdi), %rsi
	movl	4(%rdi), %edx
	movq	%rax, %rdi
	callq	gs_findiodevice
	movq	%rax, %r15
	movl	$-21, %r14d
	testq	%r15, %r15
	je	.LBB1_7
# BB#4:                                 # %if.end.12
	movq	8(%rbx), %rcx
	addq	$624, %rbx              # imm = 0x270
	xorl	%r14d, %r14d
	leaq	(%rsp), %rbp
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	stack_param_list_write
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	gs_getdevparams
	movl	%eax, %ebp
	movl	80(%rsp), %esi
	addl	%esi, %esi
	testl	%ebp, %ebp
	js	.LBB1_5
# BB#6:                                 # %if.end.24
	movl	%esi, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movw	$3072, (%rax)           # imm = 0xC00
	jmp	.LBB1_7
.LBB1_1:                                # %if.then
	movzbl	1(%rdi), %eax
	movl	$-7, %r14d
	cmpl	$18, %eax
	je	.LBB1_7
# BB#2:                                 # %cond.true
	callq	check_type_failed
	movl	%eax, %r14d
	jmp	.LBB1_7
.LBB1_5:                                # %if.then.21
	movq	%rbx, %rdi
	callq	ref_stack_pop
	movl	%ebp, %r14d
.LBB1_7:                                # %cleanup
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zgetdevparams, .Lfunc_end1-zgetdevparams
	.cfi_endproc

	.align	16, 0x90
	.type	zputdevparams,@function
zputdevparams:                          # @zputdevparams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 40
	subq	$184, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 224
.Ltmp23:
	.cfi_offset %rbx, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzwl	(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB2_1
# BB#3:                                 # %if.end
	movq	8(%rbx), %rax
	movq	8(%rdi), %rsi
	movl	4(%rdi), %edx
	movq	%rax, %rdi
	callq	gs_findiodevice
	movq	%rax, %r15
	movl	$-21, %ebp
	testq	%r15, %r15
	je	.LBB2_10
# BB#4:                                 # %if.end.12
	leaq	624(%rbx), %r14
	movq	8(%rbx), %r9
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rsi
	callq	stack_param_list_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_10
# BB#5:                                 # %if.end.21
	addq	$504, %rbx              # imm = 0x1F8
	leaq	8(%rsp), %rdi
	movl	$.L.str.5, %edx
	movq	%rbx, %rsi
	callq	dict_read_password
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_10
# BB#6:                                 # %if.end.26
	leaq	80(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	param_check_password
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB2_8
# BB#7:                                 # %if.then.30
	movq	88(%rsp), %rdi
	movq	152(%rsp), %rsi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	testl	%ebx, %ebx
	movl	$-7, %ebp
	cmovsl	%ebx, %ebp
	jmp	.LBB2_10
.LBB2_1:                                # %if.then
	movzbl	1(%rdi), %eax
	movl	$-7, %ebp
	cmpl	$18, %eax
	je	.LBB2_10
# BB#2:                                 # %cond.true
	callq	check_type_failed
	movl	%eax, %ebp
.LBB2_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_8:                                # %if.end.39
	leaq	80(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_putdevparams
	movl	%eax, %ebp
	movq	88(%rsp), %rdi
	movq	152(%rsp), %rsi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	testl	%ebp, %ebp
	js	.LBB2_10
# BB#9:                                 # %if.end.49
	movl	160(%rsp), %eax
	leal	2(%rax,%rax), %esi
	movq	%r14, %rdi
	callq	ref_stack_pop
	xorl	%ebp, %ebp
	jmp	.LBB2_10
.Lfunc_end2:
	.size	zputdevparams, .Lfunc_end2-zputdevparams
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%null%"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Special"
	.size	.L.str.1, 8

	.type	gs_iodev_null,@object   # @gs_iodev_null
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_null
	.align	8
gs_iodev_null:
	.quad	.L.str
	.quad	.L.str.1
	.quad	iodev_no_init
	.quad	null_open
	.quad	iodev_no_open_file
	.quad	iodev_os_gp_fopen
	.quad	iodev_os_fclose
	.quad	iodev_no_delete_file
	.quad	iodev_no_rename_file
	.quad	iodev_no_file_status
	.quad	iodev_no_enumerate_files
	.quad	0
	.quad	0
	.quad	iodev_no_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_null, 128

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"level2dict"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1.getdevparams"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2.putdevparams"
	.size	.L.str.4, 15

	.type	ziodev2_l2_op_defs,@object # @ziodev2_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	ziodev2_l2_op_defs
	.align	16
ziodev2_l2_op_defs:
	.quad	.L.str.2
	.quad	0
	.quad	.L.str.3
	.quad	zgetdevparams
	.quad	.L.str.4
	.quad	zputdevparams
	.zero	16
	.size	ziodev2_l2_op_defs, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"SystemParamsPassword"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"iparam_list_release"
	.size	.L.str.6, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
