	.text
	.file	"sa85d.bc"
	.align	16, 0x90
	.type	s_A85D_init,@function
s_A85D_init:                            # @s_A85D_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, 24(%rdi)
	movq	$0, 112(%rdi)
	movl	$0, 108(%rdi)
	movl	$0, 124(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s_A85D_init, .Lfunc_end0-s_A85D_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_A85D_process,@function
s_A85D_process:                         # @s_A85D_process
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
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %r10
	movq	%rdi, %r14
	movq	(%r10), %rbp
	movq	8(%r10), %rax
	movq	8(%r15), %r13
	movq	16(%r15), %r11
	xorl	%ecx, %ecx
	testl	%r12d, %r12d
	movq	$-7, %rdx
	cmovneq	%rcx, %rdx
	leaq	(%rdx,%rax), %rsi
	cmpq	%rsi, %rbp
	movq	%rsi, %rdi
	cmovaq	%rbp, %rdi
	movl	108(%r14), %r9d
	movq	112(%r14), %r8
	jmp	.LBB1_1
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, %rdi
	movq	%rax, %rsi
	.align	16, 0x90
.LBB1_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	cmpq	%rax, %rdi
	jae	.LBB1_14
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	1(%rdi), %ecx
	incq	%rdi
	cmpl	$126, %ecx
	jne	.LBB1_1
	.align	16, 0x90
.LBB1_3:                                # %while.cond.9
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rax, %rdi
	jae	.LBB1_1
# BB#4:                                 # %while.body.13
                                        #   in Loop: Header=BB1_3 Depth=2
	movzbl	1(%rdi), %ecx
	incq	%rdi
	cmpl	$62, %ecx
	jne	.LBB1_3
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_20:                               # %if.end.75
                                        #   in Loop: Header=BB1_14 Depth=1
	movl	$0, 1(%rdx)
	addq	$4, %rdx
	movq	%rdx, %r13
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_6:                                # %while.cond.22
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbp
	leaq	-1(%rbp), %rbx
	xorl	%eax, %eax
	cmpq	%rsi, %rbx
	jae	.LBB1_53
# BB#7:                                 # %while.body.25
                                        #   in Loop: Header=BB1_6 Depth=2
	movzbl	(%rbp), %edx
	movl	%edx, %edi
	addl	$-33, %edi
	cmpl	$84, %edi
	jbe	.LBB1_8
# BB#16:                                # %if.else.61
                                        #   in Loop: Header=BB1_6 Depth=2
	testl	%r9d, %r9d
	jne	.LBB1_21
# BB#17:                                # %if.else.61
                                        #   in Loop: Header=BB1_6 Depth=2
	movzbl	%dl, %eax
	cmpl	$122, %eax
	je	.LBB1_18
.LBB1_21:                               # %if.else.81
                                        #   in Loop: Header=BB1_6 Depth=2
	movzbl	scan_char_array+4(%rdx), %ecx
	leaq	1(%rbp), %rax
	cmpl	$102, %ecx
	je	.LBB1_6
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_8:                                # %if.then.30
                                        #   in Loop: Header=BB1_14 Depth=1
	cmpl	$4, %r9d
	jne	.LBB1_15
# BB#9:                                 # %if.then.33
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	%r11, %rcx
	movq	%r13, %rdx
	subq	%rdx, %rcx
	movl	$1, %eax
	movl	$4, %r9d
	cmpq	$4, %rcx
	jl	.LBB1_51
# BB#10:                                # %if.end.38
                                        #   in Loop: Header=BB1_14 Depth=1
	cmpq	$50529027, %r8          # imm = 0x3030303
	jb	.LBB1_13
# BB#11:                                # %if.end.38
                                        #   in Loop: Header=BB1_14 Depth=1
	movl	$-2, %eax
	testl	%edi, %edi
	jne	.LBB1_12
.LBB1_13:                               # %if.end.44
                                        #   in Loop: Header=BB1_14 Depth=1
	imulq	$85, %r8, %rcx
	movl	%edi, %eax
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 1(%rdx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 2(%rdx)
	movb	%ah, 3(%rdx)  # NOREX
	movb	%al, 4(%rdx)
	addq	$4, %rdx
	movq	%rdx, %r13
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_18:                               # %if.then.67
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	%r11, %rax
	movq	%r13, %rdx
	subq	%rdx, %rax
	cmpq	$4, %rax
	jge	.LBB1_20
	jmp	.LBB1_19
.LBB1_15:                               # %if.else
                                        #   in Loop: Header=BB1_14 Depth=1
	imulq	$85, %r8, %rax
	movl	%edi, %r8d
	addq	%rax, %r8
	incl	%r9d
	.align	16, 0x90
.LBB1_14:                               # %while.cond.22.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	incq	%rbp
	movq	%rbp, %rax
	jmp	.LBB1_6
.LBB1_22:                               # %if.else.87
	movl	$-2, %eax
	cmpl	$126, %edx
	jne	.LBB1_23
# BB#24:                                # %if.then.90
	leaq	-1(%rbp), %rbx
	movq	8(%r10), %rdi
	cmpq	%rdi, %rbp
	movq	%r13, %rdx
	je	.LBB1_25
# BB#29:                                # %if.end.104
	movl	%r11d, %ecx
	subl	%edx, %ecx
	movq	%rdx, %r13
	leal	-1(%r9), %edx
	movl	$1, %eax
	movl	$1, %esi
	cmpl	%edx, %ecx
	jge	.LBB1_31
# BB#30:
	movq	%r13, %rdx
	movq	%rdx, 8(%r15)
	jmp	.LBB1_65
	.align	16, 0x90
.LBB1_38:                               # %while.body.130
                                        #   in Loop: Header=BB1_31 Depth=1
	incq	%rsi
.LBB1_31:                               # %while.cond.115
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rbp,%rsi), %rdx
	movzbl	(%rbp,%rsi), %eax
	cmpl	$10, %eax
	je	.LBB1_37
# BB#32:                                # %while.cond.115
                                        #   in Loop: Header=BB1_31 Depth=1
	movzbl	%al, %ecx
	cmpl	$13, %ecx
	jne	.LBB1_33
.LBB1_37:                               # %land.rhs
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpq	%rdi, %rdx
	jbe	.LBB1_38
	jmp	.LBB1_39
.LBB1_23:
	movq	%rbp, %rbx
	movq	%r13, %rdx
	movq	%rdx, 8(%r15)
	jmp	.LBB1_65
.LBB1_25:                               # %if.then.94
	testl	%r12d, %r12d
	je	.LBB1_26
# BB#27:                                # %if.else.98
	movl	$1, %esi
	cmpl	$0, 120(%r14)
	jne	.LBB1_35
# BB#28:
	movq	%rbp, %rbx
	movq	%rdx, 8(%r15)
	jmp	.LBB1_65
.LBB1_26:
	xorl	%eax, %eax
	movq	%rdx, 8(%r15)
	jmp	.LBB1_65
.LBB1_33:                               # %while.cond.115
	cmpl	$62, %ecx
	jne	.LBB1_39
# BB#34:
	movq	%r13, %rdx
	jmp	.LBB1_35
.LBB1_39:                               # %if.then.138
	cmpl	$0, 120(%r14)
	je	.LBB1_52
# BB#40:                                # %if.then.141
	movzbl	%al, %eax
	cmpl	$13, %eax
	movq	%r13, %rdx
	je	.LBB1_43
# BB#41:                                # %if.then.141
	cmpl	$10, %eax
	jne	.LBB1_42
.LBB1_43:                               # %if.then.153
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jne	.LBB1_35
# BB#44:
	movq	%rbp, %rbx
	movq	%rdx, 8(%r15)
	jmp	.LBB1_65
.LBB1_52:                               # %if.else.160
	xorl	%ecx, %ecx
	cmpq	%rdi, %rdx
	movl	$-2, %eax
	cmovnel	%ecx, %eax
	testl	%r12d, %r12d
	cmovneq	%rbp, %rbx
	cmovel	%r12d, %eax
	cmpq	%rdi, %rdx
	cmovneq	%rbp, %rbx
.LBB1_53:                               # %while.end.184
	movq	%r13, 8(%r15)
	testl	%r12d, %r12d
	je	.LBB1_65
# BB#54:                                # %while.end.184
	testl	%eax, %eax
	jne	.LBB1_65
# BB#55:                                # %if.then.190
	subl	%r13d, %r11d
	leal	-1(%r9), %edx
	movl	$1, %eax
	cmpl	%edx, %r11d
	jl	.LBB1_65
# BB#56:                                # %if.else.199
	movq	%r13, %rcx
	movl	$-2, %eax
	cmpl	$0, 124(%r14)
	jne	.LBB1_65
# BB#57:                                # %if.else.202
	movl	$-1, %eax
	cmpl	$3, %edx
	ja	.LBB1_65
# BB#58:                                # %if.else.202
	jmpq	*.LJTI1_0(,%rdx,8)
.LBB1_59:                               # %sw.bb.i.114
	movl	$1, %r9d
	movl	$-2, %eax
	jmp	.LBB1_65
.LBB1_19:
	movl	$1, %eax
	xorl	%r9d, %r9d
	movq	%rdx, 8(%r15)
	jmp	.LBB1_65
.LBB1_42:
	movq	%rbx, %rbp
.LBB1_35:                               # %finish
	movslq	%esi, %rbx
	addq	%rbp, %rbx
	movq	%rdx, 8(%r15)
	movl	$-1, %eax
	leal	-1(%r9), %esi
	cmpl	$3, %esi
	ja	.LBB1_51
# BB#36:                                # %finish
	movq	%rdx, %rcx
	jmpq	*.LJTI1_1(,%rsi,8)
.LBB1_45:                               # %sw.bb.i
	movl	$1, %r9d
	movl	$-2, %eax
	movq	%rcx, %rdx
	movq	%rdx, 8(%r15)
	jmp	.LBB1_65
.LBB1_46:                               # %sw.bb.1.i
	imulq	$614125, %r8, %rdx      # imm = 0x95EED
	addq	$614124, %rdx           # imm = 0x95EEC
	movq	%rcx, %rdi
	jmp	.LBB1_50
.LBB1_47:                               # %sw.bb.2.i
	imulq	$7225, %r8, %rdx        # imm = 0x1C39
	addq	$7224, %rdx             # imm = 0x1C38
	movq	%rcx, %rdi
	jmp	.LBB1_49
.LBB1_48:                               # %sw.bb.6.i
	imulq	$85, %r8, %rdx
	addq	$84, %rdx
	movq	%rcx, %rdi
	movb	%dh, 3(%rdi)  # NOREX
.LBB1_49:                               # %o2.i
	movq	%rdx, %rcx
	shrq	$16, %rcx
	movb	%cl, 2(%rdi)
.LBB1_50:                               # %o1.i
	shrq	$24, %rdx
	movb	%dl, 1(%rdi)
	movslq	%esi, %rcx
	addq	%rcx, %rdi
	movq	%rdi, 8(%r15)
	movq	%rdi, %rdx
.LBB1_51:                               # %while.end.184.thread
	movq	%rdx, 8(%r15)
	jmp	.LBB1_65
.LBB1_12:
	movq	%rbp, %rbx
	movq	%rdx, 8(%r15)
	jmp	.LBB1_65
.LBB1_60:                               # %sw.bb.1.i.117
	imulq	$614125, %r8, %rdi      # imm = 0x95EED
	addq	$614124, %rdi           # imm = 0x95EEC
	movq	%rcx, %rsi
	jmp	.LBB1_64
.LBB1_61:                               # %sw.bb.2.i.120
	imulq	$7225, %r8, %rdi        # imm = 0x1C39
	addq	$7224, %rdi             # imm = 0x1C38
	movq	%rcx, %rsi
	jmp	.LBB1_63
.LBB1_62:                               # %sw.bb.6.i.126
	imulq	$85, %r8, %rdi
	addq	$84, %rdi
	movq	%rcx, %rsi
	movq	%rdi, %rcx
	movb	%ch, 3(%rsi)  # NOREX
.LBB1_63:                               # %o2.i.131
	movq	%rdi, %rcx
	shrq	$16, %rcx
	movb	%cl, 2(%rsi)
.LBB1_64:                               # %o1.i.139
	shrq	$24, %rdi
	movb	%dil, 1(%rsi)
	movslq	%edx, %rcx
	addq	%rcx, %rsi
	movq	%rsi, 8(%r15)
.LBB1_65:                               # %if.end.206
	movq	%rbx, (%r10)
	movl	%r9d, 108(%r14)
	movq	%r8, 112(%r14)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_A85D_process, .Lfunc_end1-s_A85D_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_59
	.quad	.LBB1_60
	.quad	.LBB1_61
	.quad	.LBB1_62
.LJTI1_1:
	.quad	.LBB1_45
	.quad	.LBB1_46
	.quad	.LBB1_47
	.quad	.LBB1_48

	.type	st_A85D_state,@object   # @st_A85D_state
	.align	8
st_A85D_state:
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_A85D_state, 64

	.type	s_A85D_template,@object # @s_A85D_template
	.globl	s_A85D_template
	.align	8
s_A85D_template:
	.quad	st_A85D_state
	.quad	s_A85D_init
	.quad	s_A85D_process
	.long	2                       # 0x2
	.long	4                       # 0x4
	.quad	0
	.quad	0
	.quad	0
	.size	s_A85D_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ASCII85Decode state"
	.size	.L.str, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
