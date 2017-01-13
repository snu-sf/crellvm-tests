	.text
	.file	"idisp.bc"
	.globl	display_set_callback
	.align	16, 0x90
	.type	display_set_callback,@function
display_set_callback:                   # @display_set_callback
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$0, 4(%rsp)
	movq	%rbx, %r8
	subq	$-128, %r8
	leaq	4(%rsp), %rcx
	movl	$display_set_callback.getdisplay, %esi
	xorl	%edx, %edx
	callq	gs_main_run_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_14
# BB#1:                                 # %if.end
	movq	160(%rbx), %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB0_2
# BB#3:                                 # %if.end.6
	cmpw	$0, 8(%rdi)
	je	.LBB0_13
# BB#4:                                 # %if.then.7
	movzwl	-16(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4896, %eax             # imm = 0x1320
	jne	.LBB0_5
# BB#6:                                 # %if.end.24
	movq	-8(%rdi), %r14
	cmpl	$0, 84(%r14)
	je	.LBB0_11
# BB#7:                                 # %if.then.28
	movq	%r14, %rdi
	callq	gs_closedevice
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_14
# BB#8:                                 # %if.then.37
	movq	%r15, 1736(%r14)
	movq	%r14, %rdi
	callq	gs_opendevice
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_10
# BB#9:                                 # %if.then.37.if.end.44_crit_edge
	movq	624(%rbx), %rdi
	jmp	.LBB0_12
.LBB0_5:                                # %if.then.14
	addq	$-16, %rdi
	movzbl	1(%rdi), %eax
	movl	$-7, %ebp
	cmpl	$19, %eax
	je	.LBB0_14
.LBB0_2:                                # %if.then.4
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB0_14
.LBB0_11:                               # %if.end.44.critedge
	movq	%r15, 1736(%r14)
.LBB0_12:                               # %if.end.44
	addq	$-16, %rdi
	movq	%rdi, 624(%rbx)
.LBB0_13:                               # %if.end.48
	addq	$-16, %rdi
	movq	%rdi, 624(%rbx)
	xorl	%ebp, %ebp
.LBB0_14:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:                               # %if.then.41
	movq	24(%r14), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	errprintf
	jmp	.LBB0_14
.Lfunc_end0:
	.size	display_set_callback, .Lfunc_end0-display_set_callback
	.cfi_endproc

	.type	display_set_callback.getdisplay,@object # @display_set_callback.getdisplay
	.section	.rodata,"a",@progbits
	.align	16
display_set_callback.getdisplay:
	.asciz	"devicedict /display known dup { /display finddevice exch } if"
	.size	display_set_callback.getdisplay, 62

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"**** Unable to open the display device, quitting.\n"
	.size	.L.str, 51


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
