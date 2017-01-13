	.text
	.file	"zvmem2.bc"
	.globl	set_vm_threshold
	.align	16, 0x90
	.type	set_vm_threshold,@function
set_vm_threshold:                       # @set_vm_threshold
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
	movq	%rdi, %r14
	movl	$-15, %eax
	cmpq	$-1, %rsi
	jl	.LBB0_5
# BB#1:                                 # %if.else
	je	.LBB0_2
# BB#3:                                 # %if.else.3
	testq	%rsi, %rsi
	movl	$1, %ebx
	cmovgq	%rsi, %rbx
	jmp	.LBB0_4
.LBB0_2:                                # %if.then.2
	movl	$46, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	movl	$100000, %eax           # imm = 0x186A0
	movl	$8000000, %ebx          # imm = 0x7A1200
	cmovneq	%rax, %rbx
.LBB0_4:                                # %if.end.13
	movq	40(%r14), %rdi
	movq	%rbx, %rsi
	callq	gs_memory_set_vm_threshold
	movq	48(%r14), %rdi
	movq	%rbx, %rsi
	callq	gs_memory_set_vm_threshold
	xorl	%eax, %eax
.LBB0_5:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	set_vm_threshold, .Lfunc_end0-set_vm_threshold
	.cfi_endproc

	.globl	set_vm_reclaim
	.align	16, 0x90
	.type	set_vm_reclaim,@function
set_vm_reclaim:                         # @set_vm_reclaim
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
.Ltmp8:
	.cfi_offset %rbx, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	2(%rbx), %rcx
	movl	$-15, %eax
	cmpq	$2, %rcx
	ja	.LBB1_2
# BB#1:                                 # %if.then
	movq	32(%r14), %rdi
	cmpq	$-2, %rbx
	setg	%al
	movzbl	%al, %ebp
	movl	%ebp, %esi
	callq	gs_memory_set_vm_reclaim
	movq	40(%r14), %rdi
	movl	%ebp, %esi
	callq	gs_memory_set_vm_reclaim
	movq	48(%r14), %rdi
	testq	%rbx, %rbx
	sete	%al
	movzbl	%al, %esi
	callq	gs_memory_set_vm_reclaim
	xorl	%eax, %eax
.LBB1_2:                                # %return
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	set_vm_reclaim, .Lfunc_end1-set_vm_reclaim
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentglobal,@function
zcurrentglobal:                         # @zcurrentglobal
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	leaq	16(%rax), %rcx
	cmpq	640(%rdi), %rcx
	jbe	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB2_2:                                # %if.else
	movq	%rcx, 624(%rdi)
	cmpl	$12, 56(%rdi)
	setne	%cl
	movzbl	%cl, %ecx
	movw	%cx, 24(%rax)
	movw	$256, 16(%rax)          # imm = 0x100
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	zcurrentglobal, .Lfunc_end2-zcurrentglobal
	.cfi_endproc

	.align	16, 0x90
	.type	zgcheck,@function
zgcheck:                                # @zgcheck
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	movl	$-17, %eax
	cmpq	632(%rdi), %rcx
	jb	.LBB3_2
# BB#1:                                 # %if.end
	movzwl	(%rcx), %eax
	andl	$12, %eax
	cmpl	$12, %eax
	setne	%al
	movzbl	%al, %eax
	movw	%ax, 8(%rcx)
	movw	$256, (%rcx)            # imm = 0x100
	xorl	%eax, %eax
.LBB3_2:                                # %cleanup
	retq
.Lfunc_end3:
	.size	zgcheck, .Lfunc_end3-zgcheck
	.cfi_endproc

	.align	16, 0x90
	.type	zsetglobal,@function
zsetglobal:                             # @zsetglobal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB4_4
# BB#1:                                 # %if.end
	leaq	8(%rbx), %rdi
	movl	$8, %esi
	cmpw	$0, 8(%rax)
	jne	.LBB4_3
# BB#2:                                 # %select.mid
	movl	$12, %esi
.LBB4_3:                                # %cleanup
	callq	ialloc_set_space
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB4_4:                                # %if.then
	movq	%rax, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end4:
	.size	zsetglobal, .Lfunc_end4-zsetglobal
	.cfi_endproc

	.align	16, 0x90
	.type	zvmreclaim,@function
zvmreclaim:                             # @zvmreclaim
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.end
	movq	8(%rdi), %rax
	decq	%rax
	cmpq	$2, %rax
	movl	$-105, %ecx
	movl	$-15, %eax
	cmovbl	%ecx, %eax
	retq
.LBB5_2:                                # %if.then
	jmp	check_type_failed       # TAILCALL
.Lfunc_end5:
	.size	zvmreclaim, .Lfunc_end5-zvmreclaim
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0.currentglobal"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1.gcheck"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.setglobal"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"level2dict"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1.vmreclaim"
	.size	.L.str.4, 12

	.type	zvmem2_op_defs,@object  # @zvmem2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zvmem2_op_defs
	.align	16
zvmem2_op_defs:
	.quad	.L.str
	.quad	zcurrentglobal
	.quad	.L.str.1
	.quad	zgcheck
	.quad	.L.str.2
	.quad	zsetglobal
	.quad	.L.str.3
	.quad	0
	.quad	.L.str.4
	.quad	zvmreclaim
	.zero	16
	.size	zvmem2_op_defs, 96


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
