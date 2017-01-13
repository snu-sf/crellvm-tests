	.text
	.file	"srle.bc"
	.align	16, 0x90
	.type	s_RLE_init,@function
s_RLE_init:                             # @s_RLE_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	112(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB0_2
# BB#1:                                 # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, 112(%rdi)
.LBB0_2:                                # %cond.end
	movq	%rax, 120(%rdi)
	movl	$0, 128(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s_RLE_init, .Lfunc_end0-s_RLE_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_RLE_process,@function
s_RLE_process:                          # @s_RLE_process
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	(%rsi), %r12
	movq	8(%rsi), %r13
	movq	8(%rdx), %r10
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	120(%rdi), %r14
	movl	128(%rdi), %ebx
	movl	$4294967295, %ebp       # imm = 0xFFFFFFFF
	movl	$128, %r11d
	jmp	.LBB1_1
.LBB1_61:                               # %cleanup.224
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	255(%rbx), %eax
	movb	%al, 1(%r10)
	incq	%r10
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%ebx, 128(%rax)
	movq	32(%rsp), %r14          # 8-byte Reload
	.align	16, 0x90
.LBB1_1:                                # %copy
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_37 Depth 3
                                        #       Child Loop BB1_29 Depth 3
	testl	%ebx, %ebx
	je	.LBB1_2
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	%r13d, %ecx
	subl	%r12d, %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	subl	%r10d, %eax
	cmpl	%ebx, %ecx
	cmovbl	%ecx, %ebx
	cmpl	%ebx, %eax
	cmovbl	%eax, %ebx
	movl	%ebx, %eax
	cmpq	%rax, %r14
	movl	%r14d, %r15d
	cmovael	%ebx, %r15d
	leaq	1(%r10), %rdi
	leaq	1(%r12), %rsi
	movl	%r15d, %ebx
	movq	%rbx, %rdx
	movq	%r10, %rbp
	callq	memcpy
	movq	%rbp, %r10
	addq	%rbx, %r12
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r12, (%rax)
	addq	%rbx, %r10
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%r10, 8(%rax)
	subq	%rbx, %r14
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	%r14, 120(%r8)
	jne	.LBB1_5
# BB#4:                                 # %if.then.31
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	112(%r8), %r14
	movq	%r14, 120(%r8)
.LBB1_5:                                # %if.end.33
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	128(%r8), %eax
	subl	%r15d, %eax
	movl	%eax, 128(%r8)
	movl	32(%rsp), %ecx          # 4-byte Reload
	movl	$4294967295, %ebp       # imm = 0xFFFFFFFF
	movl	$128, %r11d
	je	.LBB1_6
	jmp	.LBB1_59
	.align	16, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	40(%rsp), %r8           # 8-byte Reload
.LBB1_6:                                # %while.cond.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r13, %r12
	jae	.LBB1_7
	.align	16, 0x90
.LBB1_8:                                # %while.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_37 Depth 3
                                        #       Child Loop BB1_29 Depth 3
	movq	%r13, %rdx
	subq	%r12, %rdx
	movq	%rdx, %rsi
	andq	%rbp, %rsi
	cmpq	%r14, %rsi
	movl	%r14d, %eax
	cmovbel	%edx, %eax
	cmpl	$128, %eax
	cmoval	%r11d, %eax
	movl	%ecx, %edx
	movl	$1, %edi
	cmoval	%edi, %edx
	cmpq	%r14, %rsi
	cmoval	%edi, %edx
	movl	%eax, %esi
	leaq	-1(%r12,%rsi), %r9
	cmpl	$2, %eax
	ja	.LBB1_25
# BB#9:                                 # %if.then.67
                                        #   in Loop: Header=BB1_8 Depth=2
	testl	%eax, %eax
	je	.LBB1_10
# BB#11:                                # %if.then.67
                                        #   in Loop: Header=BB1_8 Depth=2
	testl	%edx, %edx
	je	.LBB1_12
# BB#13:                                # %if.end.72
                                        #   in Loop: Header=BB1_8 Depth=2
	cmpl	$1, %eax
	jne	.LBB1_17
# BB#14:                                # %if.then.75
                                        #   in Loop: Header=BB1_8 Depth=2
	movq	48(%rsp), %rdx          # 8-byte Reload
	subq	%r10, %rdx
	movl	$1, %eax
	cmpq	$2, %rdx
	jl	.LBB1_15
# BB#16:                                # %if.end.82
                                        #   in Loop: Header=BB1_8 Depth=2
	movb	$0, 1(%r10)
	movl	$1, %eax
	jmp	.LBB1_24
	.align	16, 0x90
.LBB1_25:                               # %if.else.113
                                        #   in Loop: Header=BB1_8 Depth=2
	movzbl	1(%r12), %edi
	movzbl	2(%r12), %eax
	cmpl	%eax, %edi
	jne	.LBB1_35
# BB#26:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_8 Depth=2
	movzbl	3(%r12), %ebx
	movzbl	%dil, %esi
	cmpl	%ebx, %esi
	jne	.LBB1_35
# BB#27:                                # %if.then.125
                                        #   in Loop: Header=BB1_8 Depth=2
	movq	48(%rsp), %rbx          # 8-byte Reload
	subq	%r10, %rbx
	movl	$1, %eax
	cmpq	$2, %rbx
	movq	%r12, %rbx
	jl	.LBB1_28
	.align	16, 0x90
.LBB1_29:                               # %do.body
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %r15
	leaq	1(%r15), %rbx
	cmpq	%r9, %rbx
	jae	.LBB1_31
# BB#30:                                # %land.rhs
                                        #   in Loop: Header=BB1_29 Depth=3
	movzbl	3(%r15), %eax
	cmpl	%esi, %eax
	je	.LBB1_29
.LBB1_31:                               # %do.body.do.end_crit_edge
                                        #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%r15), %rax
	testl	%edx, %edx
	jne	.LBB1_34
# BB#32:                                # %do.end
                                        #   in Loop: Header=BB1_8 Depth=2
	cmpq	%r9, %rax
	je	.LBB1_33
.LBB1_34:                               # %if.end.146
                                        #   in Loop: Header=BB1_8 Depth=2
	addq	$2, %r15
	leal	1(%r12), %eax
	subl	%r15d, %eax
	movb	%al, 1(%r10)
	movb	%dil, 2(%r10)
	addq	$2, %r10
	jmp	.LBB1_50
	.align	16, 0x90
.LBB1_35:                               # %if.else.155
                                        #   in Loop: Header=BB1_8 Depth=2
	movq	%r8, 40(%rsp)           # 8-byte Spill
	leaq	1(%r12), %rsi
	decq	%r9
	cmpq	%r9, %r12
	movq	%r12, %r15
	jae	.LBB1_42
# BB#36:                                # %land.rhs.160.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	movq	%rsi, %r15
	jmp	.LBB1_37
	.align	16, 0x90
.LBB1_39:                               # %while.cond.157.backedge.land.rhs.160_crit_edge
                                        #   in Loop: Header=BB1_37 Depth=3
	movb	1(%r15), %dil
	movb	2(%r15), %al
	incq	%r15
.LBB1_37:                               # %land.rhs.160
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	%dil, %edi
	movzbl	%al, %eax
	cmpl	%edi, %eax
	jne	.LBB1_38
# BB#40:                                # %lor.rhs
                                        #   in Loop: Header=BB1_37 Depth=3
	movzbl	2(%r15), %eax
	cmpl	%edi, %eax
	je	.LBB1_41
.LBB1_38:                               # %while.cond.157.backedge
                                        #   in Loop: Header=BB1_37 Depth=3
	cmpq	%r9, %r15
	jb	.LBB1_39
	jmp	.LBB1_42
	.align	16, 0x90
.LBB1_17:                               # %if.else
                                        #   in Loop: Header=BB1_8 Depth=2
	movq	48(%rsp), %rdx          # 8-byte Reload
	subq	%r10, %rdx
	movzbl	2(%r12), %eax
	movzbl	1(%r12), %esi
	cmpl	%eax, %esi
	jne	.LBB1_21
# BB#18:                                # %if.then.88
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$1, %eax
	cmpq	$2, %rdx
	jl	.LBB1_19
# BB#20:                                # %if.end.95
                                        #   in Loop: Header=BB1_8 Depth=2
	movb	$-1, 1(%r10)
	movl	$1, %eax
	jmp	.LBB1_24
.LBB1_21:                               # %if.else.97
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$1, %eax
	cmpq	$3, %rdx
	jl	.LBB1_22
# BB#23:                                # %if.end.104
                                        #   in Loop: Header=BB1_8 Depth=2
	movb	$1, 1(%r10)
	movb	1(%r12), %al
	movb	%al, 2(%r10)
	movl	$2, %eax
.LBB1_24:                               # %if.end.109
                                        #   in Loop: Header=BB1_8 Depth=2
	movb	1(%r9), %dl
	incq	%r9
	movb	%dl, 1(%r10,%rax)
	leaq	1(%r10,%rax), %rbp
	movq	%rbp, %r10
	movq	%r9, %r15
	jmp	.LBB1_50
.LBB1_41:                               # %lor.rhs.while.end.loopexit_crit_edge
                                        #   in Loop: Header=BB1_8 Depth=2
	decq	%r15
	.align	16, 0x90
.LBB1_42:                               # %while.end
                                        #   in Loop: Header=BB1_8 Depth=2
	cmpq	%r9, %r15
	jne	.LBB1_46
# BB#43:                                # %if.then.178
                                        #   in Loop: Header=BB1_8 Depth=2
	testl	%edx, %edx
	je	.LBB1_44
# BB#45:                                # %if.end.181
                                        #   in Loop: Header=BB1_8 Depth=2
	addq	$2, %r9
	movq	%r9, %r15
.LBB1_46:                               # %if.end.183
                                        #   in Loop: Header=BB1_8 Depth=2
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	%r13, %r14
	movq	%r15, %rbx
	subq	%r12, %rbx
	movq	48(%rsp), %rax          # 8-byte Reload
	subq	%r10, %rax
	leal	1(%rbx), %edx
	andq	%rbp, %rdx
	cmpq	%rdx, %rax
	jl	.LBB1_47
# BB#49:                                # %if.end.203
                                        #   in Loop: Header=BB1_8 Depth=2
	leal	255(%rbx), %eax
	movb	%al, 1(%r10)
	leaq	2(%r10), %rdi
	andq	%rbp, %rbx
	movq	%rbx, %rdx
	movl	%ecx, %r13d
	movq	%r10, %rbp
	callq	memcpy
	movl	$128, %r11d
	movq	%rbp, %r10
	movl	%r13d, %ecx
	leaq	1(%r10,%rbx), %r10
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	%r14, %r13
	movq	32(%rsp), %r14          # 8-byte Reload
.LBB1_50:                               # %if.end.214
                                        #   in Loop: Header=BB1_8 Depth=2
	subq	%r15, %r12
	addq	%r14, %r12
	jne	.LBB1_52
# BB#51:                                # %if.then.221
                                        #   in Loop: Header=BB1_8 Depth=2
	movq	112(%r8), %r12
.LBB1_52:                               # %while.cond.backedge
                                        #   in Loop: Header=BB1_8 Depth=2
	movq	%r12, %r14
	cmpq	%r13, %r15
	movq	%r15, %r12
	movl	$4294967295, %ebp       # imm = 0xFFFFFFFF
	jb	.LBB1_8
	jmp	.LBB1_53
.LBB1_47:                               # %if.then.194
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1, %eax
	cmpq	48(%rsp), %r10          # 8-byte Folded Reload
	movq	%r14, %r13
	jb	.LBB1_61
# BB#48:
	movq	%r12, %r15
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	32(%rsp), %r14          # 8-byte Reload
	jmp	.LBB1_58
.LBB1_10:
	movq	%r12, %r15
	jmp	.LBB1_53
.LBB1_12:
	movq	%r12, %r15
	jmp	.LBB1_53
.LBB1_15:
	movq	%r12, %r15
	jmp	.LBB1_58
.LBB1_44:
	movq	%r12, %r15
	movq	40(%rsp), %r8           # 8-byte Reload
	jmp	.LBB1_53
.LBB1_28:
	movq	%r12, %r15
	jmp	.LBB1_58
.LBB1_33:
	movq	%r12, %r15
	jmp	.LBB1_53
.LBB1_19:
	movq	%r12, %r15
	jmp	.LBB1_58
.LBB1_22:
	movq	%r12, %r15
	jmp	.LBB1_58
.LBB1_7:
	movq	%r12, %r15
.LBB1_53:                               # %while.end.231
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB1_58
# BB#54:                                # %land.lhs.true.236
	cmpl	$0, 108(%r8)
	je	.LBB1_58
# BB#55:                                # %if.then.238
	cmpq	48(%rsp), %r10          # 8-byte Folded Reload
	jae	.LBB1_56
# BB#57:                                # %if.then.241
	movb	$-128, 1(%r10)
	incq	%r10
	jmp	.LBB1_58
.LBB1_56:
	movl	$1, %eax
.LBB1_58:                               # %if.end.245
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%r15, (%rcx)
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%r10, 8(%rcx)
	movq	%r14, 120(%r8)
.LBB1_60:                               # %cleanup.249
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_59:                               # %cleanup.249.loopexit
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	setne	%al
	movzbl	%al, %eax
	jmp	.LBB1_60
.Lfunc_end1:
	.size	s_RLE_process, .Lfunc_end1-s_RLE_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_RLE_set_defaults,@function
s_RLE_set_defaults:                     # @s_RLE_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, 108(%rdi)
	movq	$0, 112(%rdi)
	retq
.Lfunc_end2:
	.size	s_RLE_set_defaults, .Lfunc_end2-s_RLE_set_defaults
	.cfi_endproc

	.type	st_RLE_state,@object    # @st_RLE_state
	.section	.rodata,"a",@progbits
	.align	8
st_RLE_state:
	.long	136                     # 0x88
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_RLE_state, 64

	.type	s_RLE_template,@object  # @s_RLE_template
	.globl	s_RLE_template
	.align	8
s_RLE_template:
	.quad	st_RLE_state
	.quad	s_RLE_init
	.quad	s_RLE_process
	.long	129                     # 0x81
	.long	2                       # 0x2
	.quad	0
	.quad	s_RLE_set_defaults
	.quad	s_RLE_init
	.size	s_RLE_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"RunLengthEncode state"
	.size	.L.str, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
