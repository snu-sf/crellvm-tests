	.text
	.file	"rinkj-device.bc"
	.globl	rinkj_device_set
	.align	16, 0x90
	.type	rinkj_device_set,@function
rinkj_device_set:                       # @rinkj_device_set
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 24(%rdi)
	je	.LBB0_2
# BB#1:                                 # %return
	movl	$-1, %eax
	retq
.LBB0_2:                                # %if.end
	movq	(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end0:
	.size	rinkj_device_set, .Lfunc_end0-rinkj_device_set
	.cfi_endproc

	.globl	rinkj_device_set_param
	.align	16, 0x90
	.type	rinkj_device_set_param,@function
rinkj_device_set_param:                 # @rinkj_device_set_param
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
	movl	%ecx, %r15d
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	leal	3(%r15,%r13), %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %rbx
	movslq	%r13d, %r12
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	memcpy
	leaq	(%rbx,%r12), %rdi
	movl	$.L.str, %esi
	movl	$2, %edx
	callq	memcpy
	leaq	2(%rbx,%r12), %rdi
	movslq	%r15d, %rdx
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	memcpy
	leal	2(%r15,%r13), %eax
	cltq
	movb	$0, (%rbx,%rax)
	movl	$-1, %ebp
	cmpl	$0, 24(%r14)
	jne	.LBB1_2
# BB#1:                                 # %if.end.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*(%r14)
	movl	%eax, %ebp
.LBB1_2:                                # %rinkj_device_set.exit
	movq	%rbx, %rdi
	callq	free
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rinkj_device_set_param, .Lfunc_end1-rinkj_device_set_param
	.cfi_endproc

	.globl	rinkj_device_set_param_string
	.align	16, 0x90
	.type	rinkj_device_set_param_string,@function
rinkj_device_set_param_string:          # @rinkj_device_set_param_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	rinkj_device_set_param  # TAILCALL
.Lfunc_end2:
	.size	rinkj_device_set_param_string, .Lfunc_end2-rinkj_device_set_param_string
	.cfi_endproc

	.globl	rinkj_device_set_param_int
	.align	16, 0x90
	.type	rinkj_device_set_param_int,@function
rinkj_device_set_param_int:             # @rinkj_device_set_param_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 64
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	(%rsp), %r15
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	sprintf
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movl	%eax, %ecx
	callq	rinkj_device_set_param
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	rinkj_device_set_param_int, .Lfunc_end3-rinkj_device_set_param_int
	.cfi_endproc

	.globl	rinkj_device_init
	.align	16, 0x90
	.type	rinkj_device_init,@function
rinkj_device_init:                      # @rinkj_device_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 24(%rbx)
	je	.LBB4_1
# BB#2:                                 # %cleanup
	movl	$-1, %eax
	popq	%rbx
	retq
.LBB4_1:                                # %if.end
	movq	%rbx, %rdi
	callq	*8(%rbx)
	movl	$42, 24(%rbx)
	popq	%rbx
	retq
.Lfunc_end4:
	.size	rinkj_device_init, .Lfunc_end4-rinkj_device_init
	.cfi_endproc

	.globl	rinkj_device_write
	.align	16, 0x90
	.type	rinkj_device_write,@function
rinkj_device_write:                     # @rinkj_device_write
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$42, 24(%rdi)
	jne	.LBB5_1
# BB#2:                                 # %if.end
	movq	16(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB5_1:                                # %return
	movl	$-1, %eax
	retq
.Lfunc_end5:
	.size	rinkj_device_write, .Lfunc_end5-rinkj_device_write
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	": "
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
