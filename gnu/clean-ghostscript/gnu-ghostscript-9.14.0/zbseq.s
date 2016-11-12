	.text
	.file	"zbseq.bc"
	.globl	create_names_array
	.align	16, 0x90
	.type	create_names_array,@function
create_names_array:                     # @create_names_array
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
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movq	72(%rax), %r12
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movl	$st_names_array_ref, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
	callq	*%r12
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %if.end
	movq	$0, 8(%rax)
	movw	$1120, (%rax)           # imm = 0x460
	movl	$0, 4(%rax)
	movq	%rax, (%r14)
	xorl	%ecx, %ecx
.LBB0_2:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	create_names_array, .Lfunc_end0-create_names_array
	.cfi_endproc

	.align	16, 0x90
	.type	zinstallsystemnames,@function
zinstallsystemnames:                    # @zinstallsystemnames
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzwl	(%r14), %eax
	andl	$12, %eax
	movl	$-7, %ebp
	cmpl	$8, %eax
	jne	.LBB1_8
# BB#1:                                 # %lor.lhs.false
	movq	40(%rbx), %rdi
	callq	imemory_save_level
	testl	%eax, %eax
	jne	.LBB1_8
# BB#2:                                 # %if.end
	movzwl	(%r14), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$1568, %eax             # imm = 0x620
	jne	.LBB1_3
# BB#5:                                 # %if.end.17
	movq	40(%rbx), %rax
	movq	576(%rax), %rdx
	movzwl	(%rdx), %ecx
	testl	72(%rbx), %ecx
	jne	.LBB1_7
# BB#6:                                 # %cond.true.30
	leaq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$.L.str.6, %ecx
	callq	alloc_save_change
	movq	40(%rbx), %rax
.LBB1_7:                                # %cond.end.40
	movq	576(%rax), %rax
	movups	(%r14), %xmm0
	movups	%xmm0, (%rax)
	movq	40(%rbx), %rax
	movq	576(%rax), %rax
	movzwl	(%rax), %ecx
	orl	76(%rbx), %ecx
	movw	%cx, (%rax)
	addq	$-16, 624(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB1_8
.LBB1_3:                                # %if.then.10
	movzbl	1(%r14), %eax
	cmpl	$6, %eax
	jne	.LBB1_4
.LBB1_8:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB1_4:                                # %cond.true
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.Lfunc_end1:
	.size	zinstallsystemnames, .Lfunc_end1-zinstallsystemnames
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentobjectformat,@function
zcurrentobjectformat:                   # @zcurrentobjectformat
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB2_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movups	104(%rdi), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	zcurrentobjectformat, .Lfunc_end2-zcurrentobjectformat
	.cfi_endproc

	.align	16, 0x90
	.type	zsetobjectformat,@function
zsetobjectformat:                       # @zsetobjectformat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 48
.Ltmp19:
	.cfi_offset %rbx, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzbl	1(%r14), %eax
	cmpl	$11, %eax
	jne	.LBB3_1
# BB#2:                                 # %if.end
	movl	$-15, %eax
	cmpq	$4, 8(%r14)
	ja	.LBB3_6
# BB#3:                                 # %if.end.9
	movq	%rbx, 8(%rsp)
	movw	$2060, (%rsp)           # imm = 0x80C
	leaq	104(%rbx), %r15
	movzwl	104(%rbx), %eax
	testl	72(%rbx), %eax
	movq	%r14, %rax
	jne	.LBB3_5
# BB#4:                                 # %cond.true
	leaq	8(%rbx), %rdi
	leaq	(%rsp), %rsi
	movl	$.L.str.7, %ecx
	movq	%r15, %rdx
	callq	alloc_save_change
	movq	624(%rbx), %rax
.LBB3_5:                                # %cond.end
	movups	(%r14), %xmm0
	movups	%xmm0, (%r15)
	movzwl	104(%rbx), %ecx
	orl	76(%rbx), %ecx
	movw	%cx, 104(%rbx)
	addq	$-16, %rax
	movq	%rax, 624(%rbx)
	xorl	%eax, %eax
	jmp	.LBB3_6
.LBB3_1:                                # %if.then
	movq	%r14, %rdi
	callq	check_type_failed
.LBB3_6:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	zsetobjectformat, .Lfunc_end3-zsetobjectformat
	.cfi_endproc

	.align	16, 0x90
	.type	zbosobject,@function
zbosobject:                             # @zbosobject
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 32
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	-47(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB4_1
# BB#2:                                 # %if.end
	movzbl	-31(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB4_3
# BB#4:                                 # %if.end.14
	movzwl	(%rbx), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$4624, %eax             # imm = 0x1210
	jne	.LBB4_5
# BB#7:                                 # %if.end.28
	movl	$-15, %eax
	cmpl	$8, 4(%rbx)
	jb	.LBB4_10
# BB#8:                                 # %if.end.33
	leaq	-16(%rbx), %r15
	leaq	-40(%rbx), %rdx
	leaq	-24(%rbx), %rcx
	movq	8(%rbx), %r8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	encode_binary_token
	testl	%eax, %eax
	js	.LBB4_10
# BB#9:                                 # %if.end.43
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
	movl	$8, -12(%rbx)
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB4_10
.LBB4_1:                                # %if.then
	addq	$-48, %rbx
	jmp	.LBB4_6
.LBB4_3:                                # %if.then.11
	addq	$-32, %rbx
	jmp	.LBB4_6
.LBB4_5:                                # %if.then.20
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	jne	.LBB4_6
.LBB4_10:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB4_6:                                # %cond.true
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end4:
	.size	zbosobject, .Lfunc_end4-zbosobject
	.cfi_endproc

	.align	16, 0x90
	.type	zbseq_init,@function
zbseq_init:                             # @zbseq_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	40(%r14), %rbx
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movq	72(%rax), %r15
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movl	$st_names_array_ref, %esi
	movl	$.L.str.8, %edx
	movq	%rax, %rdi
	callq	*%r15
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB5_2
# BB#1:                                 # %if.end
	movq	$0, 8(%rax)
	movw	$1120, (%rax)           # imm = 0x460
	movl	$0, 4(%rax)
	movq	40(%r14), %rcx
	movq	%rax, 576(%rcx)
	xorl	%ecx, %ecx
.LBB5_2:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	zbseq_init, .Lfunc_end5-zbseq_init
	.cfi_endproc

	.type	st_names_array_ref,@object # @st_names_array_ref
	.section	.rodata,"a",@progbits
	.align	8
st_names_array_ref:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	ref_struct_clear_marks
	.quad	ref_struct_enum_ptrs
	.quad	ref_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_names_array_ref, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"level2dict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1.installsystemnames"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0currentobjectformat"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1setobjectformat"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"4.bosobject"
	.size	.L.str.4, 12

	.type	zbseq_l2_op_defs,@object # @zbseq_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zbseq_l2_op_defs
	.align	16
zbseq_l2_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zinstallsystemnames
	.quad	.L.str.2
	.quad	zcurrentobjectformat
	.quad	.L.str.3
	.quad	zsetobjectformat
	.quad	.L.str.4
	.quad	zbosobject
	.quad	0
	.quad	zbseq_init
	.size	zbseq_l2_op_defs, 96

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"names_array_ref_t"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	".installsystemnames"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"setobjectformat"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"zbseq_init(system_names)"
	.size	.L.str.8, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
