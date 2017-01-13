	.text
	.file	"saes.bc"
	.globl	s_aes_set_key
	.align	16, 0x90
	.type	s_aes_set_key,@function
s_aes_set_key:                          # @s_aes_set_key
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
	movl	%edx, %ebx
	movq	%rdi, %r14
	leal	-1(%rbx), %ecx
	movl	$-15, %eax
	cmpl	$31, %ecx
	ja	.LBB0_3
# BB#1:                                 # %if.end
	movl	$-7, %eax
	testq	%rsi, %rsi
	je	.LBB0_3
# BB#2:                                 # %if.end.4
	leaq	108(%r14), %rdi
	movslq	%ebx, %rdx
	callq	memcpy
	movl	%ebx, 140(%r14)
	xorl	%eax, %eax
.LBB0_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	s_aes_set_key, .Lfunc_end0-s_aes_set_key
	.cfi_endproc

	.globl	s_aes_set_padding
	.align	16, 0x90
	.type	s_aes_set_padding,@function
s_aes_set_padding:                      # @s_aes_set_padding
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 164(%rdi)
	retq
.Lfunc_end1:
	.size	s_aes_set_padding, .Lfunc_end1-s_aes_set_padding
	.cfi_endproc

	.align	16, 0x90
	.type	s_aes_init,@function
s_aes_init:                             # @s_aes_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 160(%rdi)
	movq	$0, 168(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	s_aes_init, .Lfunc_end2-s_aes_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_aes_process,@function
s_aes_process:                          # @s_aes_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 96
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movq	(%rbp), %r15
	movq	8(%rbp), %rax
	movq	%rax, %r13
	subq	%r15, %r13
	movq	16(%r12), %rsi
	subq	8(%r12), %rsi
	addq	%rsi, %r15
	movl	%ecx, %edx
	negl	%edx
	sbbl	%edx, %edx
	cmpq	%rsi, %r13
	cmovleq	%rax, %r15
	movl	$1, %ebx
	cmovlel	%edx, %ebx
	cmpq	$0, 168(%r14)
	jne	.LBB3_7
# BB#1:                                 # %if.then.10
	movq	8(%r14), %rdi
	movl	$560, %esi              # imm = 0x230
	movl	$.L.str.3, %edx
	callq	*8(%rdi)
	movq	%rax, 168(%r14)
	testq	%rax, %rax
	je	.LBB3_2
# BB#4:                                 # %if.end.17
	movl	140(%r14), %edx
	leal	-1(%rdx), %ecx
	cmpl	$32, %ecx
	jb	.LBB3_6
# BB#5:                                 # %if.then.21
	movl	%edx, (%rsp)
	movl	$.L__func__.s_aes_process, %edi
	movl	$.L.str, %esi
	movl	$125, %edx
	xorl	%ecx, %ecx
	movl	$-15, %r8d
	movl	$.L.str.5, %r9d
	jmp	.LBB3_3
.LBB3_2:                                # %if.then.15
	movl	$.L__func__.s_aes_process, %edi
	movl	$.L.str, %esi
	movl	$120, %edx
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.4, %r9d
.LBB3_3:                                # %cleanup
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	$-2, %ebx
	jmp	.LBB3_22
.LBB3_6:                                # %if.end.24
	leaq	108(%r14), %rsi
	shll	$3, %edx
	movq	%rax, %rdi
	callq	aes_setkey_dec
.LBB3_7:                                # %if.end.27
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	cmpl	$0, 160(%r14)
	je	.LBB3_9
# BB#8:                                 # %if.end.27.while.cond.preheader_crit_edge
	movq	(%rbp), %r8
	jmp	.LBB3_11
.LBB3_9:                                # %if.then.29
	xorl	%ebx, %ebx
	cmpq	$16, %r13
	jl	.LBB3_22
# BB#10:                                # %if.end.32
	leaq	144(%r14), %rdi
	movq	(%rbp), %rsi
	incq	%rsi
	movl	$16, %edx
	callq	memcpy
	movl	$1, 160(%r14)
	movq	(%rbp), %r8
	addq	$16, %r8
	movq	%r8, (%rbp)
.LBB3_11:                               # %while.cond.preheader
	leaq	16(%r8), %rax
	cmpq	%r15, %rax
	ja	.LBB3_20
# BB#12:                                # %while.body.lr.ph
	leaq	144(%r14), %r13
	leaq	16(%rsp), %rbx
	.align	16, 0x90
.LBB3_13:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	168(%r14), %rdi
	incq	%r8
	xorl	%esi, %esi
	movl	$16, %edx
	movq	%r13, %rcx
	movq	%rbx, %r9
	callq	aes_crypt_cbc
	movq	(%rbp), %rax
	addq	$16, %rax
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	movq	%rax, (%rbp)
	je	.LBB3_19
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_13 Depth=1
	cmpq	8(%rbp), %rax
	je	.LBB3_15
.LBB3_19:                               # %if.end.79
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	8(%r12), %rdi
	incq	%rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	memcpy
	addq	$16, 8(%r12)
	movq	(%rbp), %r8
	leaq	16(%r8), %rax
	cmpq	%r15, %rax
	jbe	.LBB3_13
.LBB3_20:                               # %while.end
	movl	8(%rsp), %eax           # 4-byte Reload
	cmpl	$-1, %eax
	movl	%eax, %ebx
	jne	.LBB3_22
# BB#21:                                # %if.then.88
	xorl	%ebx, %ebx
	movl	$.L__func__.s_aes_process, %edi
	movl	$.L.str, %esi
	movl	$176, %edx
	xorl	%ecx, %ecx
	movl	$-15, %r8d
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB3_22
.LBB3_15:                               # %if.then.56
	xorl	%ebp, %ebp
	cmpl	$0, 164(%r14)
	je	.LBB3_18
# BB#16:                                # %if.then.58
	movzbl	31(%rsp), %ebp
	movb	%bpl, %al
	decb	%al
	movzbl	%al, %eax
	cmpl	$16, %eax
	jb	.LBB3_18
# BB#17:                                # %if.then.64
	movl	%ebp, (%rsp)
	xorl	%ebp, %ebp
	movl	$.L__func__.s_aes_process, %edi
	movl	$.L.str, %esi
	movl	$156, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB3_18:                               # %if.end.70
	movq	8(%r12), %rdi
	incq	%rdi
	movl	$16, %ebx
	subq	%rbp, %rbx
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, 8(%r12)
	movl	$-1, %ebx
.LBB3_22:                               # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	s_aes_process, .Lfunc_end3-s_aes_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_aes_release,@function
s_aes_release:                          # @s_aes_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	168(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB4_1
# BB#2:                                 # %if.then
	movq	8(%rdi), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.3, %edx
	jmpq	*%rax                   # TAILCALL
.LBB4_1:                                # %if.end
	retq
.Lfunc_end4:
	.size	s_aes_release, .Lfunc_end4-s_aes_release
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./base/saes.c"
	.size	.L.str, 14

	.type	st_aes_state,@object    # @st_aes_state
	.section	.rodata,"a",@progbits
	.align	8
st_aes_state:
	.long	176                     # 0xb0
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	aes_state_reloc_ptrs
	.size	st_aes_state, 64

	.type	s_aes_template,@object  # @s_aes_template
	.globl	s_aes_template
	.align	8
s_aes_template:
	.quad	st_aes_state
	.quad	s_aes_init
	.quad	s_aes_process
	.long	16                      # 0x10
	.long	16                      # 0x10
	.quad	s_aes_release
	.quad	0
	.quad	0
	.size	s_aes_template, 56

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"aes filter state"
	.size	.L.str.2, 17

	.type	aes_state_reloc_ptrs,@object # @aes_state_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
aes_state_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	aes_state_enum_ptrs
	.size	aes_state_reloc_ptrs, 24

	.type	aes_state_enum_ptrs,@object # @aes_state_enum_ptrs
	.align	2
aes_state_enum_ptrs:
	.short	0                       # 0x0
	.short	168                     # 0xa8
	.size	aes_state_enum_ptrs, 4

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"aes context structure"
	.size	.L.str.3, 22

	.type	.L__func__.s_aes_process,@object # @__func__.s_aes_process
.L__func__.s_aes_process:
	.asciz	"s_aes_process"
	.size	.L__func__.s_aes_process, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"could not allocate aes context"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"invalid aes key length (%d bytes)"
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"invalid aes padding byte (0x%02x)"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"aes stream isn't a multiple of 16 bytes"
	.size	.L.str.7, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
