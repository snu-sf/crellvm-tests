	.text
	.file	"gdeveprn.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1116733440              # float 72
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	eprn_get_initial_matrix
	.align	16, 0x90
	.type	eprn_get_initial_matrix,@function
eprn_get_initial_matrix:                # @eprn_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 96
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, 18528(%rbx)
	jne	.LBB0_3
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	eprn_set_page_layout
	testl	%eax, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then.2
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB0_3:                                # %if.end.6
	movss	856(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	860(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	18532(%rbx), %eax
	cmpl	$0, 18552(%rbx)
	je	.LBB0_5
# BB#4:                                 # %land.lhs.true
	leal	2(%rax), %ecx
	testb	$1, 936(%rbx)
	cmovel	%eax, %ecx
	movl	%ecx, %eax
.LBB0_5:                                # %if.end.15
	movss	884(%rbx), %xmm5        # xmm5 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm4        # xmm4 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm5
	divss	%xmm1, %xmm4
	testb	$1, %al
	jne	.LBB0_7
# BB#6:                                 # %if.then.24
	movss	%xmm0, 56(%rsp)
	movss	%xmm2, 60(%rsp)
	movaps	%xmm2, %xmm1
	jmp	.LBB0_8
.LBB0_7:                                # %if.else
	movss	%xmm2, 56(%rsp)
	movss	%xmm0, 60(%rsp)
	movaps	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
.LBB0_8:                                # %for.cond.38.preheader
	mulss	%xmm5, %xmm0
	movss	%xmm0, 56(%rsp)
	mulss	%xmm4, %xmm1
	movss	%xmm1, 60(%rsp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-4, %ecx
	subl	%ecx, %eax
	cmpl	$3, %eax
	ja	.LBB0_14
# BB#9:                                 # %for.cond.38.preheader
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_10:                               # %sw.bb
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movaps	%xmm4, 16(%rsp)         # 16-byte Spill
	movaps	%xmm5, (%rsp)           # 16-byte Spill
	callq	gx_default_get_initial_matrix
	movaps	(%rsp), %xmm5           # 16-byte Reload
	movaps	16(%rsp), %xmm4         # 16-byte Reload
	jmp	.LBB0_14
.LBB0_11:                               # %sw.bb.50
	movl	$0, (%r14)
	movaps	.LCPI0_1(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	movaps	%xmm4, %xmm3
	xorps	%xmm2, %xmm3
	movss	%xmm3, 4(%r14)
	xorps	%xmm5, %xmm2
	movss	%xmm2, 8(%r14)
	movl	$0, 12(%r14)
	movss	%xmm0, 16(%r14)
	movss	%xmm1, 20(%r14)
	jmp	.LBB0_14
.LBB0_12:                               # %sw.bb.56
	movaps	.LCPI0_1(%rip), %xmm1   # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm5, %xmm1
	movss	%xmm1, (%r14)
	movl	$0, 4(%r14)
	movl	$0, 8(%r14)
	movss	%xmm4, 12(%r14)
	movss	%xmm0, 16(%r14)
	movl	$0, 20(%r14)
	jmp	.LBB0_14
.LBB0_13:                               # %sw.bb.67
	movl	$0, (%r14)
	movss	%xmm4, 4(%r14)
	movss	%xmm5, 8(%r14)
	movl	$0, 12(%r14)
	movq	$0, 16(%r14)
.LBB0_14:                               # %sw.epilog
	mulss	18540(%rbx), %xmm5
	movaps	.LCPI0_1(%rip), %xmm1   # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm5
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	mulss	18544(%rbx), %xmm4
	xorps	%xmm1, %xmm4
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_make_translation
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	gs_matrix_multiply
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	eprn_get_initial_matrix, .Lfunc_end0-eprn_get_initial_matrix
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_13

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4617315517961601024     # double 5
.LCPI1_1:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_2:
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_3:
	.long	0                       # float 0
	.text
	.globl	eprn_set_page_layout
	.align	16, 0x90
	.type	eprn_set_page_layout,@function
eprn_set_page_layout:                   # @eprn_set_page_layout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 192
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movss	856(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	860(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$.L.str.1, %eax
	cmpl	$0, 18588(%rdi)
	jne	.LBB1_2
# BB#1:                                 # %select.mid
	movl	$.L.str.2, %eax
.LBB1_2:                                # %select.end
	movl	18504(%rdi), %ecx
	movl	$0, 18528(%rdi)
	cmpl	$0, 18536(%rdi)
	je	.LBB1_3
# BB#4:                                 # %if.then.12
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testb	$1, 18532(%rdi)
	jne	.LBB1_6
# BB#5:                                 # %if.then.15
	andl	$-16385, %ecx           # imm = 0xFFFFFFFFFFFFBFFF
	jmp	.LBB1_7
.LBB1_3:
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB1_8
.LBB1_6:                                # %if.else
	orl	$16384, %ecx            # imm = 0x4000
.LBB1_7:                                # %if.end.17
	movl	%ecx, 80(%rsp)          # 4-byte Spill
.LBB1_8:                                # %if.end.17
	leaq	18472(%rdi), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	movq	18488(%rdi), %r13
	testq	%r13, %r13
	jne	.LBB1_10
# BB#9:                                 # %if.then.20
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %r13
.LBB1_10:                               # %while.cond.preheader
	movaps	%xmm1, %xmm2
	minss	%xmm0, %xmm2
	movss	%xmm2, 108(%rsp)        # 4-byte Spill
	movaps	%xmm0, %xmm2
	movss	%xmm0, 60(%rsp)         # 4-byte Spill
	maxss	%xmm1, %xmm2
	movss	%xmm2, 104(%rsp)        # 4-byte Spill
	movss	%xmm1, 56(%rsp)         # 4-byte Spill
	movl	(%r13), %edi
	movl	$1, %r14d
	testl	%edi, %edi
	movl	$0, %r15d
	je	.LBB1_28
# BB#11:                                # %while.body.lr.ph
	movl	80(%rsp), %r12d         # 4-byte Reload
	andl	$-16385, %r12d          # imm = 0xFFFFFFFFFFFFBFFF
	movl	$1, %r14d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB1_12:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
	callq	ms_find_size_from_code
	movq	%rax, %rbx
	movss	16(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_3, %xmm0
	jbe	.LBB1_27
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	108(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	callq	fabs
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_27
# BB#14:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	104(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	subss	20(%rbx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_27
# BB#15:                                # %if.then.46
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	%r14d, %ebx
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	18512(%rax), %rbp
	testq	%r15, %r15
	je	.LBB1_16
# BB#17:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	(%r15), %edx
	movl	(%r13), %r14d
	movl	80(%rsp), %edi          # 4-byte Reload
	movq	%rbp, %rsi
	movl	%r14d, %ecx
	callq	better_flag_match
	testl	%eax, %eax
	jne	.LBB1_18
	jmp	.LBB1_19
.LBB1_16:                               # %if.then.46.if.then.53_crit_edge
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	(%r13), %r14d
.LBB1_18:                               # %if.then.53
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%r13, %r15
.LBB1_19:                               # %if.end.54
                                        #   in Loop: Header=BB1_12 Depth=1
	andl	$48896, %r14d           # imm = 0xBF00
	movl	$1, %eax
	cmpl	%r12d, %r14d
	je	.LBB1_26
# BB#20:                                # %if.end.i
                                        #   in Loop: Header=BB1_12 Depth=1
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB1_26
# BB#21:                                # %while.cond.preheader.i
                                        #   in Loop: Header=BB1_12 Depth=1
	xorl	%r12d, %r14d
	movl	(%rbp), %eax
	testl	%eax, %eax
	je	.LBB1_25
# BB#22:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB1_12 Depth=1
	addq	$4, %rbp
	.align	16, 0x90
.LBB1_23:                               # %while.body.i
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %ecx
	notl	%eax
	movl	%eax, %r14d
	andl	%ecx, %r14d
	je	.LBB1_25
# BB#24:                                # %while.body.i
                                        #   in Loop: Header=BB1_23 Depth=2
	movl	(%rbp), %eax
	addq	$4, %rbp
	testl	%eax, %eax
	jne	.LBB1_23
.LBB1_25:                               # %while.end.i
                                        #   in Loop: Header=BB1_12 Depth=1
	testl	%r14d, %r14d
	sete	%al
	movzbl	%al, %eax
.LBB1_26:                               # %flag_match.exit
                                        #   in Loop: Header=BB1_12 Depth=1
	testl	%eax, %eax
	movl	%ebx, %r14d
	movl	$0, %eax
	cmovnel	%eax, %r14d
	.align	16, 0x90
.LBB1_27:                               # %if.end.61
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	20(%r13), %edi
	addq	$20, %r13
	testl	%edi, %edi
	jne	.LBB1_12
.LBB1_28:                               # %while.end
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	xorl	%edi, %edi
	testq	%rbx, %rbx
	je	.LBB1_29
# BB#30:                                # %while.cond.68.preheader
	movss	24(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%edi, %edi
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm0
	jbe	.LBB1_29
# BB#31:                                # %while.body.72.lr.ph
	movl	80(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %eax
	andl	$-16385, %eax           # imm = 0xFFFFFFFFFFFFBFFF
	movl	%eax, 64(%rsp)          # 4-byte Spill
	xorl	%r8d, %r8d
	movss	108(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	104(%rsp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movq	96(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB1_32:                               # %while.body.72
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_44 Depth 2
	ucomiss	%xmm1, %xmm0
	jb	.LBB1_49
# BB#33:                                # %while.body.72
                                        #   in Loop: Header=BB1_32 Depth=1
	ucomiss	20(%rbx), %xmm1
	jb	.LBB1_49
# BB#34:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB1_32 Depth=1
	ucomiss	28(%rbx), %xmm2
	jb	.LBB1_49
# BB#35:                                # %land.lhs.true.82
                                        #   in Loop: Header=BB1_32 Depth=1
	movss	32(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm0
	jb	.LBB1_49
# BB#36:                                # %if.then.85
                                        #   in Loop: Header=BB1_32 Depth=1
	testq	%r8, %r8
	je	.LBB1_38
# BB#37:                                # %lor.lhs.false.88
                                        #   in Loop: Header=BB1_32 Depth=1
	movq	18512(%r13), %rsi
	movl	(%r8), %edx
	movl	(%rbx), %ecx
	movl	%ebp, %edi
	movq	%r8, %r12
	callq	better_flag_match
	xorps	%xmm3, %xmm3
	movq	%r12, %r8
	xorl	%edi, %edi
	movss	108(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	testl	%eax, %eax
	je	.LBB1_39
.LBB1_38:                               # %if.then.94
                                        #   in Loop: Header=BB1_32 Depth=1
	movq	%rbx, %r8
.LBB1_39:                               # %if.end.95
                                        #   in Loop: Header=BB1_32 Depth=1
	cmpq	$0, 18488(%r13)
	jne	.LBB1_48
# BB#40:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB1_32 Depth=1
	movl	(%rbx), %eax
	movl	$48896, %ecx            # imm = 0xBF00
	andl	%ecx, %eax
	movl	$1, %edx
	cmpl	64(%rsp), %eax          # 4-byte Folded Reload
	je	.LBB1_47
# BB#41:                                # %if.end.i.208
                                        #   in Loop: Header=BB1_32 Depth=1
	movq	18512(%r13), %rcx
	xorl	%edx, %edx
	testq	%rcx, %rcx
	je	.LBB1_47
# BB#42:                                # %while.cond.preheader.i.210
                                        #   in Loop: Header=BB1_32 Depth=1
	xorl	64(%rsp), %eax          # 4-byte Folded Reload
	movl	(%rcx), %edx
	testl	%edx, %edx
	je	.LBB1_46
# BB#43:                                # %while.body.i.218.preheader
                                        #   in Loop: Header=BB1_32 Depth=1
	addq	$4, %rcx
	.align	16, 0x90
.LBB1_44:                               # %while.body.i.218
                                        #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %esi
	notl	%edx
	movl	%edx, %eax
	andl	%esi, %eax
	je	.LBB1_46
# BB#45:                                # %while.body.i.218
                                        #   in Loop: Header=BB1_44 Depth=2
	movl	(%rcx), %edx
	addq	$4, %rcx
	testl	%edx, %edx
	jne	.LBB1_44
.LBB1_46:                               # %while.end.i.222
                                        #   in Loop: Header=BB1_32 Depth=1
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
.LBB1_47:                               # %flag_match.exit224
                                        #   in Loop: Header=BB1_32 Depth=1
	testl	%edx, %edx
	cmovnel	%edi, %r14d
.LBB1_48:                               # %if.end.106
                                        #   in Loop: Header=BB1_32 Depth=1
	movss	104(%rsp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB1_49:                               # %if.end.106
                                        #   in Loop: Header=BB1_32 Depth=1
	movss	60(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$36, %rbx
	ucomiss	%xmm3, %xmm0
	ja	.LBB1_32
# BB#50:                                # %while.end.108
	xorl	%edi, %edi
	testq	%r8, %r8
	je	.LBB1_51
# BB#52:                                # %land.lhs.true.111
	movq	18488(%r13), %r12
	xorl	%edi, %edi
	testq	%r12, %r12
	je	.LBB1_53
# BB#54:                                # %for.cond.preheader
	movl	(%r12), %ebp
	xorl	%edi, %edi
	testl	%ebp, %ebp
	je	.LBB1_53
# BB#55:                                # %for.body.lr.ph
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movss	%xmm2, 104(%rsp)        # 4-byte Spill
	movss	%xmm1, 108(%rsp)        # 4-byte Spill
	movl	%r14d, %r15d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB1_56:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_64 Depth 2
	movl	%ebp, %eax
	andl	$-65281, %eax           # imm = 0xFFFFFFFFFFFF00FF
	cmpl	$76, %eax
	jne	.LBB1_68
# BB#57:                                # %if.then.124
                                        #   in Loop: Header=BB1_56 Depth=1
	testq	%r14, %r14
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	18512(%rax), %rbx
	je	.LBB1_59
# BB#58:                                # %lor.lhs.false.127
                                        #   in Loop: Header=BB1_56 Depth=1
	movl	(%r14), %edx
	movl	80(%rsp), %edi          # 4-byte Reload
	movq	%rbx, %rsi
	movl	%ebp, %ecx
	movq	%r8, %r13
	callq	better_flag_match
	movq	%r13, %r8
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.LBB1_60
.LBB1_59:                               # %if.then.133
                                        #   in Loop: Header=BB1_56 Depth=1
	movq	%r12, %r14
.LBB1_60:                               # %if.end.134
                                        #   in Loop: Header=BB1_56 Depth=1
	andl	$48896, %ebp            # imm = 0xBF00
	movl	$1, %eax
	cmpl	64(%rsp), %ebp          # 4-byte Folded Reload
	je	.LBB1_67
# BB#61:                                # %if.end.i.230
                                        #   in Loop: Header=BB1_56 Depth=1
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB1_67
# BB#62:                                # %while.cond.preheader.i.232
                                        #   in Loop: Header=BB1_56 Depth=1
	xorl	64(%rsp), %ebp          # 4-byte Folded Reload
	movl	(%rbx), %eax
	testl	%eax, %eax
	je	.LBB1_66
# BB#63:                                # %while.body.i.240.preheader
                                        #   in Loop: Header=BB1_56 Depth=1
	addq	$4, %rbx
	.align	16, 0x90
.LBB1_64:                               # %while.body.i.240
                                        #   Parent Loop BB1_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %ecx
	notl	%eax
	movl	%eax, %ebp
	andl	%ecx, %ebp
	je	.LBB1_66
# BB#65:                                # %while.body.i.240
                                        #   in Loop: Header=BB1_64 Depth=2
	movl	(%rbx), %eax
	addq	$4, %rbx
	testl	%eax, %eax
	jne	.LBB1_64
.LBB1_66:                               # %while.end.i.244
                                        #   in Loop: Header=BB1_56 Depth=1
	testl	%ebp, %ebp
	sete	%al
	movzbl	%al, %eax
.LBB1_67:                               # %flag_match.exit246
                                        #   in Loop: Header=BB1_56 Depth=1
	testl	%eax, %eax
	cmovnel	%edi, %r15d
.LBB1_68:                               # %for.inc
                                        #   in Loop: Header=BB1_56 Depth=1
	movl	20(%r12), %ebp
	addq	$20, %r12
	testl	%ebp, %ebp
	jne	.LBB1_56
# BB#69:
	movq	%r14, %rdi
	movl	%r15d, %r14d
	movq	32(%rsp), %r15          # 8-byte Reload
	jmp	.LBB1_70
.LBB1_29:
	xorl	%r8d, %r8d
.LBB1_70:                               # %if.end.144
	movq	96(%rsp), %r13          # 8-byte Reload
.LBB1_71:                               # %if.end.144
	testq	%r15, %r15
	je	.LBB1_72
# BB#81:                                # %if.end.203
	testq	%r8, %r8
	je	.LBB1_82
# BB#91:                                # %if.end.203.land.lhs.true.206_crit_edge
	movq	18488(%r13), %rdx
.LBB1_92:                               # %land.lhs.true.206
	movl	80(%rsp), %r13d         # 4-byte Reload
.LBB1_93:                               # %land.lhs.true.206
	movl	%r14d, 64(%rsp)         # 4-byte Spill
	testq	%rdi, %rdi
	jne	.LBB1_95
# BB#94:                                # %land.lhs.true.206
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	jne	.LBB1_96
.LBB1_95:                               # %if.then.213
	testq	%rdx, %rdx
	movq	%rdi, %rax
	cmoveq	%r8, %rax
	movl	(%rax), %ebx
.LBB1_96:                               # %if.end.220
	testq	%r15, %r15
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	18512(%rax), %r14
	je	.LBB1_98
# BB#97:                                # %land.lhs.true.226
	movl	(%r15), %ebp
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	%r13d, %edi
	movq	%r14, %rsi
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movl	%ebp, %edx
	movl	%ebx, %ecx
	movq	%r8, %r12
	callq	better_flag_match
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%r12, %r8
	movq	80(%rsp), %rdi          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB1_83
.LBB1_98:                               # %if.then.231
	andl	$48896, %ebx            # imm = 0xBF00
	andl	$-16385, %r13d          # imm = 0xFFFFFFFFFFFFBFFF
	cmpl	%r13d, %ebx
	movss	108(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	104(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	je	.LBB1_106
# BB#99:                                # %if.end.i.252
	testq	%r14, %r14
	je	.LBB1_100
# BB#101:                               # %while.cond.preheader.i.254
	xorl	%r13d, %ebx
	movl	(%r14), %eax
	testl	%eax, %eax
	je	.LBB1_105
# BB#102:                               # %while.body.i.262.preheader
	addq	$4, %r14
	.align	16, 0x90
.LBB1_103:                              # %while.body.i.262
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	notl	%eax
	movl	%eax, %ebx
	andl	%ecx, %ebx
	je	.LBB1_105
# BB#104:                               # %while.body.i.262
                                        #   in Loop: Header=BB1_103 Depth=1
	movl	(%r14), %eax
	addq	$4, %r14
	testl	%eax, %eax
	jne	.LBB1_103
.LBB1_105:                              # %flag_match.exit268
	testl	%ebx, %ebx
	jne	.LBB1_100
.LBB1_106:                              # %if.then.235
	testq	%rdx, %rdx
	je	.LBB1_107
# BB#108:                               # %if.else.246
	movl	(%rdi), %eax
	movq	96(%rsp), %rbp          # 8-byte Reload
	movl	%eax, 18528(%rbp)
	movl	4(%rdi), %r14d
	movl	%r14d, 112(%rsp)
	movl	8(%rdi), %eax
	movl	%eax, 116(%rsp)
	movl	12(%rdi), %ecx
	movl	%ecx, 120(%rsp)
	movl	16(%rdi), %r15d
	jmp	.LBB1_109
.LBB1_72:                               # %if.then.147
	testq	%r8, %r8
	je	.LBB1_73
# BB#78:                                # %if.end.185
	movq	18488(%r13), %rdx
	testq	%rdi, %rdi
	jne	.LBB1_92
# BB#79:                                # %if.end.185
	testq	%rdx, %rdx
	movl	80(%rsp), %r13d         # 4-byte Reload
	je	.LBB1_93
# BB#80:                                # %if.then.192
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	96(%rsp), %rax          # 8-byte Reload
	movss	856(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	860(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movq	18480(%rax), %r8
	movl	$.L.str.7, %edi
	movb	$2, %al
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, %rdx
	movq	%rsi, %rcx
	callq	errprintf_nomem
	movl	$-1, %ebx
	jmp	.LBB1_154
.LBB1_82:                               # %if.end.203.if.else.259_crit_edge
	movl	%r14d, 64(%rsp)         # 4-byte Spill
	movq	18512(%r13), %r14
	movl	(%r15), %ebp
	movl	80(%rsp), %r13d         # 4-byte Reload
.LBB1_83:                               # %if.else.259
	andl	$48896, %ebp            # imm = 0xBF00
	andl	$-16385, %r13d          # imm = 0xFFFFFFFFFFFFBFFF
	cmpl	%r13d, %ebp
	movss	108(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	104(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	je	.LBB1_90
# BB#84:                                # %if.end.i.274
	testq	%r14, %r14
	je	.LBB1_100
# BB#85:                                # %while.cond.preheader.i.276
	xorl	%r13d, %ebp
	movl	(%r14), %eax
	testl	%eax, %eax
	je	.LBB1_89
# BB#86:                                # %while.body.i.284.preheader
	addq	$4, %r14
	.align	16, 0x90
.LBB1_87:                               # %while.body.i.284
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	notl	%eax
	movl	%eax, %ebp
	andl	%ecx, %ebp
	je	.LBB1_89
# BB#88:                                # %while.body.i.284
                                        #   in Loop: Header=BB1_87 Depth=1
	movl	(%r14), %eax
	addq	$4, %r14
	testl	%eax, %eax
	jne	.LBB1_87
.LBB1_89:                               # %flag_match.exit290
	testl	%ebp, %ebp
	je	.LBB1_90
.LBB1_100:
                                        # implicit-def: XMM2
	movaps	%xmm2, (%rsp)           # 16-byte Spill
                                        # implicit-def: XMM2
	movaps	%xmm2, 32(%rsp)         # 16-byte Spill
                                        # implicit-def: XMM2
                                        # implicit-def: XMM3
	movaps	%xmm3, 16(%rsp)         # 16-byte Spill
                                        # implicit-def: R14D
                                        # implicit-def: R15D
	movq	96(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB1_110
.LBB1_90:                               # %if.then.264
	movl	(%r15), %eax
	movq	96(%rsp), %rbp          # 8-byte Reload
	movl	%eax, 18528(%rbp)
	movl	4(%r15), %r14d
	movl	%r14d, 112(%rsp)
	movl	8(%r15), %eax
	movl	%eax, 116(%rsp)
	movl	12(%r15), %ecx
	movl	%ecx, 120(%rsp)
	movl	16(%r15), %r15d
	jmp	.LBB1_109
.LBB1_73:                               # %if.then.150
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movss	856(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	860(%r13), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movl	$.L.str.3, %edi
	movb	$2, %al
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	errprintf_nomem
	movq	18472(%r13), %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_74
# BB#77:                                # %if.else.178
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	errprintf_nomem
	movl	$-1, %ebx
	jmp	.LBB1_154
.LBB1_53:
	movss	%xmm2, 104(%rsp)        # 4-byte Spill
	movss	%xmm1, 108(%rsp)        # 4-byte Spill
	jmp	.LBB1_71
.LBB1_51:
	movss	%xmm2, 104(%rsp)        # 4-byte Spill
	movss	%xmm1, 108(%rsp)        # 4-byte Spill
	xorl	%r8d, %r8d
	jmp	.LBB1_71
.LBB1_107:                              # %if.then.239
	movl	(%r8), %eax
	movq	96(%rsp), %rbp          # 8-byte Reload
	movl	%eax, 18528(%rbp)
	movl	4(%r8), %r14d
	movl	%r14d, 112(%rsp)
	movl	8(%r8), %eax
	movl	%eax, 116(%rsp)
	movl	12(%r8), %ecx
	movl	%ecx, 120(%rsp)
	movl	16(%r8), %r15d
.LBB1_109:                              # %if.end.276
	movl	%r15d, 124(%rsp)
	movd	%eax, %xmm2
	movd	%r14d, %xmm3
	movaps	%xmm3, 16(%rsp)         # 16-byte Spill
	movd	%ecx, %xmm3
	movaps	%xmm3, 32(%rsp)         # 16-byte Spill
	movd	%r15d, %xmm3
	movaps	%xmm3, (%rsp)           # 16-byte Spill
.LBB1_110:                              # %if.end.276
	movl	18528(%rbp), %eax
	testl	%eax, %eax
	je	.LBB1_111
# BB#127:                               # %if.end.281
	movaps	%xmm2, 80(%rsp)         # 16-byte Spill
	cmpl	$0, 18536(%rbp)
	jne	.LBB1_131
# BB#128:                               # %if.then.284
	testb	$64, %ah
	jne	.LBB1_129
# BB#130:                               # %if.else.290
	movl	$0, 18532(%rbp)
	jmp	.LBB1_131
.LBB1_111:                              # %if.then.280
	movq	18520(%rbp), %rax
	testq	%rax, %rax
	je	.LBB1_113
# BB#112:                               # %if.then.i
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	64(%rsp), %esi          # 4-byte Reload
	callq	*%rax
	movl	$-1, %ebx
	jmp	.LBB1_154
.LBB1_113:                              # %if.else.i
	movl	$.L.str.1, %r14d
	cmpl	$0, 18588(%rbp)
	jne	.LBB1_115
# BB#114:                               # %select.mid441
	movl	$.L.str.2, %r14d
.LBB1_115:                              # %select.end440
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	18472(%rbp), %rax
	movq	(%rax), %rdx
	movl	$.L.str.22, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movl	18504(%rbp), %r15d
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	cmpl	$0, %r15d
	je	.LBB1_116
# BB#117:                               # %if.else.9.i
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	18504(%rbp), %edi
	movq	18496(%rbp), %rsi
	callq	print_flags
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.25, %edi
	jmp	.LBB1_118
.LBB1_129:                              # %if.then.288
	movl	$3, 18532(%rbp)
.LBB1_131:                              # %if.end.293
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	ucomisd	.LCPI1_1(%rip), %xmm0
	jbe	.LBB1_144
# BB#132:                               # %land.lhs.true.299
	movl	18532(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	$1, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	832(%rbp), %xmm0
	divss	884(%rbp), %xmm0
	cvtsi2ssl	836(%rbp), %xmm1
	divss	888(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	setae	%dl
	movzbl	%dl, %edx
	cmpl	%edx, %ecx
	je	.LBB1_144
# BB#133:                               # %if.then.314
	xorl	%ebx, %ebx
	cmpl	$0, 84(%rbp)
	je	.LBB1_135
# BB#134:                               # %if.then.316
	movq	%rbp, %rdi
	callq	gdev_prn_close
	movl	18532(%rbp), %eax
	movl	$1, %ebx
.LBB1_135:                              # %if.end.318
	testb	$1, %al
	jne	.LBB1_138
# BB#136:                               # %if.then.323
	movss	108(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	104(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movq	%rbp, %rdi
	callq	gx_device_set_media_size
	movss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	56(%rsp), %xmm0         # 4-byte Folded Reload
	jbe	.LBB1_141
# BB#137:                               # %if.then.327
	movss	104(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 856(%rbp)
	movss	108(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_140
.LBB1_138:                              # %if.else.333
	movss	104(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	108(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movq	%rbp, %rdi
	callq	gx_device_set_media_size
	movss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	56(%rsp), %xmm0         # 4-byte Folded Reload
	ja	.LBB1_141
# BB#139:                               # %if.then.337
	movss	108(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 856(%rbp)
	movss	104(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB1_140:                              # %if.end.343
	movss	%xmm0, 860(%rbp)
.LBB1_141:                              # %if.end.343
	testl	%ebx, %ebx
	je	.LBB1_144
# BB#142:                               # %if.then.345
	movq	%rbp, %rdi
	callq	gdev_prn_open
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB1_143
.LBB1_144:                              # %if.end.358
	cmpl	$0, 18556(%rbp)
	je	.LBB1_145
# BB#146:                               # %if.end.358
	xorps	%xmm0, %xmm0
	movaps	80(%rsp), %xmm2         # 16-byte Reload
	ucomiss	%xmm0, %xmm2
	movss	56(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jne	.LBB1_147
	jnp	.LBB1_148
.LBB1_147:                              # %if.then.366
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	addss	24(%rax), %xmm2
	movss	%xmm2, 116(%rsp)
.LBB1_148:                              # %if.end.369
	movss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_149
.LBB1_145:
	movss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	56(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movaps	80(%rsp), %xmm2         # 16-byte Reload
.LBB1_149:                              # %if.end.369
	movl	18532(%rbp), %ecx
	leal	1(%rcx), %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	1(%rcx,%rax), %eax
	andl	$-4, %eax
	negl	%eax
	ucomiss	%xmm1, %xmm0
	leal	1(%rcx,%rax), %eax
	cmovbel	%ecx, %eax
	cmpl	$0, 18548(%rbp)
	je	.LBB1_151
# BB#150:                               # %if.then.377
	movl	$3, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rcx
	movl	908(%rbp,%rcx,4), %ecx
	movl	%ecx, 18544(%rbp)
	movl	$4, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	(%rax,%rcx), %eax
	andl	$-4, %eax
	subl	%eax, %ecx
	movslq	%ecx, %rax
	movl	908(%rbp,%rax,4), %eax
	movl	%eax, 18540(%rbp)
	xorl	%ebx, %ebx
	jmp	.LBB1_154
.LBB1_151:                              # %if.else.385
	movl	%r15d, 18544(%rbp)
	movl	%r14d, 18540(%rbp)
	testl	%eax, %eax
	je	.LBB1_153
# BB#152:                               # %for.cond.393.preheader
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-4, %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	movslq	%edx, %rcx
	movl	112(%rsp,%rcx,4), %ecx
	movl	%ecx, 908(%rbp)
	leal	1(%rax), %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	1(%rax,%rcx), %ecx
	andl	$-4, %ecx
	negl	%ecx
	leal	1(%rax,%rcx), %ecx
	movslq	%ecx, %rcx
	movl	112(%rsp,%rcx,4), %ecx
	movl	%ecx, 912(%rbp)
	leal	2(%rax), %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	2(%rax,%rcx), %ecx
	andl	$-4, %ecx
	negl	%ecx
	leal	2(%rax,%rcx), %ecx
	movslq	%ecx, %rcx
	movl	112(%rsp,%rcx,4), %ecx
	movl	%ecx, 916(%rbp)
	movl	%eax, %ecx
	addl	$3, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	3(%rax,%rcx), %ecx
	andl	$-4, %ecx
	negl	%ecx
	leal	3(%rax,%rcx), %eax
	cltq
	movl	112(%rsp,%rax,4), %eax
	movl	%eax, 920(%rbp)
	xorl	%ebx, %ebx
	jmp	.LBB1_154
.LBB1_153:                              # %for.cond.407.preheader
	unpcklps	(%rsp), %xmm2   # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1]
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	unpcklps	32(%rsp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	divps	.LCPI1_2(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rsi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	gx_device_set_margins
	jmp	.LBB1_154
.LBB1_74:                               # %if.then.164
	movq	%rbp, %r14
	movq	18488(%r13), %rbp
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	cmpq	$0, %rbp
	je	.LBB1_76
# BB#75:                                # %if.then.168
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movl	$-1, %ebx
	jmp	.LBB1_154
.LBB1_116:                              # %if.then.5.i
	movl	$.L.str.23, %edi
.LBB1_118:                              # %if.end.i.199
	xorl	%eax, %eax
	callq	errprintf_nomem
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.26, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movq	18512(%rbp), %rax
	movl	$16384, %edi            # imm = 0x4000
	testq	%rax, %rax
	je	.LBB1_119
# BB#120:                               # %while.cond.preheader.i.200
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	64(%rsp), %r14d         # 4-byte Reload
	je	.LBB1_123
# BB#121:                               # %while.body.i.202.preheader
	addq	$4, %rax
	movl	$16384, %edi            # imm = 0x4000
	.align	16, 0x90
.LBB1_122:                              # %while.body.i.202
                                        # =>This Inner Loop Header: Depth=1
	orl	%ecx, %edi
	movl	(%rax), %ecx
	addq	$4, %rax
	testl	%ecx, %ecx
	jne	.LBB1_122
	jmp	.LBB1_123
.LBB1_119:
	movl	64(%rsp), %r14d         # 4-byte Reload
.LBB1_123:                              # %if.end.24.i
	movq	18496(%rbp), %rsi
	callq	print_flags
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	testl	%r14d, %r14d
	je	.LBB1_125
# BB#124:                               # %if.then.30.i
	movl	$.L.str.28, %edi
	jmp	.LBB1_126
.LBB1_125:                              # %if.else.34.i
	movl	$.L.str.29, %edi
.LBB1_126:                              # %if.end.38.i
	xorl	%eax, %eax
	callq	errprintf_nomem
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.30, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-1, %ebx
	jmp	.LBB1_154
.LBB1_143:                              # %cleanup.355
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	movq	48(%rsp), %rsi          # 8-byte Reload
	movl	%ebx, %edx
	callq	errprintf_nomem
	jmp	.LBB1_154
.LBB1_76:                               # %if.else.172
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movl	$-1, %ebx
.LBB1_154:                              # %cleanup.421
	movl	%ebx, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	eprn_set_page_layout, .Lfunc_end1-eprn_set_page_layout
	.cfi_endproc

	.align	16, 0x90
	.type	better_flag_match,@function
better_flag_match:                      # @better_flag_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%ecx, %r9d
	andl	$65280, %edx            # imm = 0xFF00
	xorl	%r10d, %r10d
	cmpl	%edi, %edx
	je	.LBB2_24
# BB#1:                                 # %if.end
	movl	%r9d, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	cmpl	%edi, %ecx
	jne	.LBB2_3
# BB#2:
	movl	$1, %r10d
	jmp	.LBB2_24
.LBB2_3:                                # %if.end.5
	movl	%edx, %ebx
	xorl	%edi, %ebx
	andl	$-16385, %ebx           # imm = 0xFFFFFFFFFFFFBFFF
	je	.LBB2_24
# BB#4:                                 # %if.end.10
	movl	%ecx, %r8d
	xorl	%edi, %r8d
	movl	%r8d, %eax
	andl	$-16385, %eax           # imm = 0xFFFFFFFFFFFFBFFF
	je	.LBB2_5
# BB#6:                                 # %if.end.13
	testq	%rsi, %rsi
	je	.LBB2_24
# BB#7:                                 # %while.cond.preheader
	movl	(%rsi), %r11d
	testl	%r11d, %r11d
	je	.LBB2_24
# BB#8:
	movl	%ecx, %r14d
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB2_9:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebp
	movl	%r11d, %ebx
	notl	%ebx
	andl	%ebx, %eax
	andl	%ebp, %ebx
	je	.LBB2_10
# BB#21:                                # %if.end.47
                                        #   in Loop: Header=BB2_9 Depth=1
	testl	%eax, %eax
	je	.LBB2_22
# BB#23:                                # %if.end.51
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	4(%rcx), %r11d
	addq	$4, %rcx
	testl	%r11d, %r11d
	jne	.LBB2_9
	jmp	.LBB2_24
.LBB2_5:
	movl	$1, %r10d
	jmp	.LBB2_24
.LBB2_10:                               # %if.then.21
	testl	%eax, %eax
	jne	.LBB2_24
# BB#11:                                # %if.end.24
	xorl	%edx, %r14d
	cmpq	%rsi, %rcx
	jbe	.LBB2_12
# BB#13:                                # %if.end.24
	movl	%r11d, %eax
	andl	%r14d, %eax
	movl	%r14d, %edx
	jne	.LBB2_17
# BB#14:                                # %while.body.31.preheader
	addq	$-4, %rcx
.LBB2_15:                               # %while.body.31
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %r11d
	cmpq	%rsi, %rcx
	jbe	.LBB2_17
# BB#16:                                # %while.body.31
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	%r11d, %eax
	andl	%edx, %eax
	addq	$-4, %rcx
	testl	%eax, %eax
	je	.LBB2_15
	jmp	.LBB2_17
.LBB2_22:
	movl	$1, %r10d
	jmp	.LBB2_24
.LBB2_12:
	movl	%r14d, %edx
.LBB2_17:                               # %while.end
	testl	%edx, %r11d
	je	.LBB2_18
# BB#20:                                # %if.end.42
	testl	%r8d, %r11d
	sete	%al
	movzbl	%al, %r10d
	jmp	.LBB2_24
.LBB2_18:                               # %if.then.34
	testb	$64, %dh
	je	.LBB2_24
# BB#19:                                # %if.end.38
	xorl	%edi, %r9d
	shrl	$14, %r9d
	notl	%r9d
	andl	$1, %r9d
	movl	%r9d, %r10d
.LBB2_24:                               # %cleanup.56
	movl	%r10d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	better_flag_match, .Lfunc_end2-better_flag_match
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.text
	.globl	eprn_init_device
	.align	16, 0x90
	.type	eprn_init_device,@function
eprn_init_device:                       # @eprn_init_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, 84(%rbx)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	gs_closedevice
.LBB3_2:                                # %if.end
	testq	%r14, %r14
	je	.LBB3_6
# BB#3:                                 # %cond.end
	movq	%r14, 18472(%rbx)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	eprn_set_media_data
	movl	$0, 18528(%rbx)
	movl	$0, 18536(%rbx)
	movl	$0, 18540(%rbx)
	movl	$0, 18544(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 908(%rbx)
	leaq	18556(%rbx), %rsi
	leaq	18560(%rbx), %r8
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [0,0,0,2]
	movups	%xmm0, 18548(%rbx)
	leaq	18564(%rbx), %r9
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 18564(%rbx)
	movl	884(%rbx), %eax
	movl	%eax, 4(%rsp)
	movl	888(%rbx), %eax
	movl	%eax, (%rsp)
	movq	32(%r14), %rdi
	leaq	4(%rsp), %rdx
	leaq	(%rsp), %rcx
	callq	eprn_check_colour_info
	movq	18576(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB3_5
# BB#4:                                 # %if.then.12
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	$0, 18576(%rbx)
.LBB3_5:                                # %if.end.19
	movl	$0, 18592(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB3_6:                                # %cond.false
	movl	$.L.str.9, %edi
	movl	$.L.str.10, %esi
	movl	$852, %edx              # imm = 0x354
	movl	$.L__PRETTY_FUNCTION__.eprn_init_device, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	eprn_init_device, .Lfunc_end3-eprn_init_device
	.cfi_endproc

	.globl	eprn_set_media_flags
	.align	16, 0x90
	.type	eprn_set_media_flags,@function
eprn_set_media_flags:                   # @eprn_set_media_flags
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 18528(%rdi)
	movl	%esi, 18504(%rdi)
	movq	%rdx, 18512(%rdi)
	retq
.Lfunc_end4:
	.size	eprn_set_media_flags, .Lfunc_end4-eprn_set_media_flags
	.cfi_endproc

	.globl	eprn_open_device
	.align	16, 0x90
	.type	eprn_open_device,@function
eprn_open_device:                       # @eprn_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 80
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$.L.str.1, %r14d
	cmpl	$0, 18588(%rbx)
	jne	.LBB5_2
# BB#1:                                 # %select.mid
	movl	$.L.str.2, %r14d
.LBB5_2:                                # %select.end
	movq	%rbx, %rdi
	callq	eprn_set_page_layout
	movl	$-15, %r15d
	testl	%eax, %eax
	jne	.LBB5_43
# BB#3:                                 # %if.end
	leaq	18472(%rbx), %r13
	movq	18472(%rbx), %rax
	movq	32(%rax), %rdi
	leaq	84(%r13), %r12
	leaq	884(%rbx), %rdx
	leaq	888(%rbx), %rcx
	leaq	88(%r13), %r8
	leaq	92(%r13), %r9
	movq	%r12, %rsi
	callq	eprn_check_colour_info
	testl	%eax, %eax
	je	.LBB5_6
# BB#4:                                 # %if.then.6
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movl	$0, 16(%rsp)
	movl	(%r12), %edi
	leaq	8(%rsp), %rdx
	movl	$eprn_colour_model_list, %esi
	callq	eprn_get_string
	testl	%eax, %eax
	jne	.LBB5_44
# BB#5:                                 # %if.end.14
	movq	24(%rbx), %rdi
	movq	8(%rsp), %rsi
	movl	16(%rsp), %edx
	callq	errwrite
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movl	18560(%rbx), %edx
	movl	18564(%rbx), %ecx
	movq	18472(%rbx), %rax
	movq	(%rax), %r9
	movl	$.L.str.14, %edi
	movb	$2, %al
	movq	%r14, %rsi
	movq	%r14, %r8
	callq	errprintf_nomem
	jmp	.LBB5_43
.LBB5_6:                                # %if.end.30
	cmpl	$4, 100(%rbx)
	jne	.LBB5_16
# BB#7:                                 # %if.then.33
	movq	$0, 1184(%rbx)
	cmpl	$2, 18568(%rbx)
	jne	.LBB5_8
# BB#11:                                # %if.then.55
	movq	$eprn_map_cmyk_color_max, 1264(%rbx)
	movq	$eprn_map_rgb_color_for_CMY_or_K_max, 1184(%rbx)
	jmp	.LBB5_28
.LBB5_16:                               # %if.else.76
	movq	$0, 1264(%rbx)
	movl	18568(%rbx), %eax
	cmpl	$1, 18556(%rbx)
	jne	.LBB5_22
# BB#17:                                # %if.then.82
	cmpl	$2, %eax
	jne	.LBB5_19
# BB#18:                                # %if.then.86
	movq	$eprn_map_rgb_color_for_RGB_max, 1184(%rbx)
	jmp	.LBB5_28
.LBB5_8:                                # %if.else
	cmpl	$1, 112(%rbx)
	ja	.LBB5_10
# BB#9:                                 # %lor.lhs.false
	cmpl	$2, 116(%rbx)
	jb	.LBB5_12
.LBB5_10:                               # %if.then.44
	movq	$eprn_map_cmyk_color_flex, 1264(%rbx)
	jmp	.LBB5_13
.LBB5_22:                               # %if.else.102
	cmpl	$2, %eax
	jne	.LBB5_24
# BB#23:                                # %if.then.106
	movq	$eprn_map_rgb_color_for_CMY_or_K_max, 1184(%rbx)
	jmp	.LBB5_28
.LBB5_19:                               # %if.else.89
	cmpl	$2, 116(%rbx)
	jb	.LBB5_21
# BB#20:                                # %if.then.94
	movq	$eprn_map_rgb_color_for_RGB_flex, 1184(%rbx)
	jmp	.LBB5_28
.LBB5_24:                               # %if.else.109
	cmpl	$1, 112(%rbx)
	ja	.LBB5_26
# BB#25:                                # %lor.lhs.false.114
	cmpl	$2, 116(%rbx)
	jb	.LBB5_27
.LBB5_26:                               # %if.then.119
	movq	$eprn_map_rgb_color_for_CMY_or_K_flex, 1184(%rbx)
	jmp	.LBB5_28
.LBB5_12:                               # %if.else.47
	movq	$eprn_map_cmyk_color, 1264(%rbx)
.LBB5_13:                               # %if.else.58
	cmpl	$1, 112(%rbx)
	ja	.LBB5_15
# BB#14:                                # %lor.lhs.false.63
	cmpl	$2, 116(%rbx)
	jb	.LBB5_27
.LBB5_15:                               # %if.then.68
	movq	$eprn_map_rgb_color_for_CMY_or_K_flex, 1184(%rbx)
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.122
	movq	$eprn_map_rgb_color_for_CMY_or_K, 1184(%rbx)
	jmp	.LBB5_28
.LBB5_21:                               # %if.else.97
	movq	$eprn_map_rgb_color_for_RGB, 1184(%rbx)
.LBB5_28:                               # %if.end.128
	movl	18560(%rbx), %edi
	callq	eprn_bits_for_levels
	movl	%eax, %ebp
	movl	18564(%rbx), %edi
	callq	eprn_bits_for_levels
	leal	(%rax,%rax,2), %eax
	addl	%ebp, %eax
	movl	%eax, 18644(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_decache_colors
	movq	18576(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB5_32
# BB#29:                                # %if.then.136
	leaq	8(%rsp), %rsi
	callq	pcf_getcount
	testl	%eax, %eax
	je	.LBB5_30
# BB#31:                                # %if.else.142
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18576(%rbx), %rsi
	movl	$.L.str.16, %edx
	callq	*24(%rdi)
	movq	$0, 18576(%rbx)
	jmp	.LBB5_32
.LBB5_30:                               # %if.then.141
	movq	8(%rsp), %rax
	movq	%rax, 928(%rbx)
.LBB5_32:                               # %if.end.155
	movq	%rbx, %rdi
	callq	gdev_prn_open
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jne	.LBB5_43
# BB#33:                                # %if.end.160
	movq	136(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB5_35
# BB#34:                                # %if.then.164
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.16, %edx
	callq	*24(%rdi)
.LBB5_35:                               # %if.end.175
	movq	18624(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_37
# BB#36:                                # %if.then.179
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.16, %edx
	callq	*24(%rdi)
	movq	$0, 18624(%rbx)
.LBB5_37:                               # %if.end.192
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	movl	%eax, 18640(%rbx)
	movq	24(%rbx), %rcx
	movq	200(%rcx), %rcx
	movq	200(%rcx), %rdi
	movl	$1, %edx
	movl	$.L.str.16, %ecx
	movl	%eax, %esi
	callq	*88(%rdi)
	movq	%rax, 18608(%rbx)
	cmpl	$2, 18568(%rbx)
	jne	.LBB5_41
# BB#38:                                # %if.then.208
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	18640(%rbx), %esi
	movl	$1, %edx
	movl	$.L.str.16, %ecx
	callq	*88(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 18624(%rbx)
	movq	18608(%rbx), %rax
	testq	%rcx, %rcx
	je	.LBB5_39
.LBB5_41:                               # %if.end.243
	testq	%rax, %rax
	jne	.LBB5_43
	jmp	.LBB5_42
.LBB5_39:                               # %land.lhs.true
	testq	%rax, %rax
	je	.LBB5_42
# BB#40:                                # %if.then.229
	movq	24(%rbx), %rcx
	movq	200(%rcx), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.16, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	$0, 18608(%rbx)
.LBB5_42:                               # %if.then.248
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movl	$-25, %r15d
.LBB5_43:                               # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_44:                               # %if.then.13
	movl	$.L.str.13, %edi
	movl	$.L.str.10, %esi
	movl	$952, %edx              # imm = 0x3B8
	movl	$.L__PRETTY_FUNCTION__.eprn_open_device, %ecx
	callq	__assert_fail
.Lfunc_end5:
	.size	eprn_open_device, .Lfunc_end5-eprn_open_device
	.cfi_endproc

	.globl	eprn_close_device
	.align	16, 0x90
	.type	eprn_close_device,@function
eprn_close_device:                      # @eprn_close_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	18608(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	movq	$0, 18608(%rbx)
.LBB6_2:                                # %if.end
	movq	18624(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_4
# BB#3:                                 # %if.then.12
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	movq	$0, 18624(%rbx)
.LBB6_4:                                # %if.end.25
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end6:
	.size	eprn_close_device, .Lfunc_end6-eprn_close_device
	.cfi_endproc

	.globl	eprn_output_page
	.align	16, 0x90
	.type	eprn_output_page,@function
eprn_output_page:                       # @eprn_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 48
.Ltmp51:
	.cfi_offset %rbx, -48
.Ltmp52:
	.cfi_offset %r12, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r15d
	movq	%rdi, %rbx
	leaq	18472(%rbx), %r12
	movl	$0, 18648(%rbx)
	cmpl	$2, 18568(%rbx)
	jne	.LBB7_3
# BB#1:                                 # %if.then
	leaq	152(%r12), %rsi
	movq	%rbx, %rdi
	callq	eprn_fetch_scan_line
	testl	%eax, %eax
	jne	.LBB7_3
# BB#2:                                 # %if.then.3
	incl	176(%r12)
.LBB7_3:                                # %if.end.5
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%ebp, %edx
	callq	gdev_prn_output_page
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jne	.LBB7_10
# BB#4:                                 # %land.lhs.true
	cmpl	$0, 112(%r12)
	je	.LBB7_6
# BB#5:                                 # %if.then.8
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	936(%rbx), %rsi
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	movl	%r15d, %edx
	callq	errprintf_nomem
.LBB7_6:                                # %land.lhs.true.14
	movq	104(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB7_10
# BB#7:                                 # %if.then.16
	testl	%r15d, %r15d
	jle	.LBB7_13
# BB#8:                                 # %cond.end
	movslq	%r15d, %rsi
	callq	pcf_inccount
	testl	%eax, %eax
	je	.LBB7_10
# BB#9:                                 # %if.then.22
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18576(%rbx), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	movq	$0, 18576(%rbx)
.LBB7_10:                               # %if.end.33
	cmpl	$0, 80(%r12)
	je	.LBB7_12
# BB#11:                                # %if.then.35
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	callq	get_minst_from_memory
	movq	160(%rax), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	callq	gs_setdefaultmatrix
.LBB7_12:                               # %if.end.38
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_13:                               # %cond.false
	movl	$.L.str.20, %edi
	movl	$.L.str.10, %esi
	movl	$1166, %edx             # imm = 0x48E
	movl	$.L__PRETTY_FUNCTION__.eprn_output_page, %ecx
	callq	__assert_fail
.Lfunc_end7:
	.size	eprn_output_page, .Lfunc_end7-eprn_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	print_flags,@function
print_flags:                            # @print_flags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 32
.Ltmp59:
	.cfi_offset %rbx, -32
.Ltmp60:
	.cfi_offset %r14, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %ecx
	testq	%rbx, %rbx
	je	.LBB8_6
# BB#1:                                 # %while.cond.preheader
	movl	(%rbx), %eax
	testl	%eax, %eax
	je	.LBB8_6
# BB#2:                                 # %while.body.preheader
	addq	$16, %rbx
	.align	16, 0x90
.LBB8_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%ecx, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%ecx, %ebp
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	-8(%rbx), %rsi
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	%ebp, %ecx
	movl	-16(%rbx), %eax
	notl	%eax
	andl	%eax, %ecx
.LBB8_5:                                # %if.end
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	(%rbx), %eax
	addq	$16, %rbx
	testl	%eax, %eax
	jne	.LBB8_3
.LBB8_6:                                # %if.end.8
	testb	$4, %ch
	je	.LBB8_8
# BB#7:                                 # %if.then.11
	movl	%ecx, %ebp
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.32, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	%ebp, %ecx
.LBB8_8:                                # %if.end.15
	testb	$8, %ch
	je	.LBB8_10
# BB#9:                                 # %if.then.18
	movl	%ecx, %ebp
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.33, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	%ebp, %ecx
.LBB8_10:                               # %if.end.22
	testb	$32, %ch
	je	.LBB8_12
# BB#11:                                # %if.then.25
	movl	%ecx, %ebp
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.34, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	%ebp, %ecx
.LBB8_12:                               # %if.end.29
	movl	%ecx, %ebx
	andl	$-27649, %ebx           # imm = 0xFFFFFFFFFFFF93FF
	je	.LBB8_14
# BB#13:                                # %if.then.33
	movl	%ecx, %ebp
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.35, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	errprintf_nomem
	movl	%ebp, %ecx
.LBB8_14:                               # %if.end.38
	testb	$64, %ch
	jne	.LBB8_16
# BB#15:                                # %if.end.45
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB8_16:                               # %if.then.41
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.36, %edi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	errprintf_nomem         # TAILCALL
.Lfunc_end8:
	.size	print_flags, .Lfunc_end8-print_flags
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"  Processing can't be stopped at this point although this error occurred.\n"
	.size	.L.str, 75

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ERROR: "
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s? eprn: This document requests a page size of %.0f x %.0f bp.\n"
	.size	.L.str.3, 65

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s  The media configuration file does not contain an entry for  this size.\n"
	.size	.L.str.4, 76

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s  This size is not supported by the %s.\n"
	.size	.L.str.5, 43

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s  This size is not supported as a discrete size and it exceeds the\n%s  custom page size limits for the %s.\n"
	.size	.L.str.6, 110

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s? eprn: This document requests a page size of %.0f x %.0f bp\n%s  but there is no entry for this size in the media configuration file\n%s  %s.\n"
	.size	.L.str.7, 144

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s? eprn: Failure of gdev_prn_open(), code is %d.\n"
	.size	.L.str.8, 51

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"desc != ((void*)0)"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"./contrib/pcl3/eprn/gdeveprn.c"
	.size	.L.str.10, 31

	.type	.L__PRETTY_FUNCTION__.eprn_init_device,@object # @__PRETTY_FUNCTION__.eprn_init_device
.L__PRETTY_FUNCTION__.eprn_init_device:
	.asciz	"void eprn_init_device(eprn_Device *, const eprn_PrinterDescription *)"
	.size	.L__PRETTY_FUNCTION__.eprn_init_device, 70

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"eprn_init_device"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s? eprn: The requested combination of colour model ("
	.size	.L.str.12, 54

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"0"
	.size	.L.str.13, 2

	.type	.L__PRETTY_FUNCTION__.eprn_open_device,@object # @__PRETTY_FUNCTION__.eprn_open_device
.L__PRETTY_FUNCTION__.eprn_open_device:
	.asciz	"int eprn_open_device(gx_device *)"
	.size	.L__PRETTY_FUNCTION__.eprn_open_device, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"),\n%s  resolution (%gx%g ppi) and intensity levels (%d, %d) is\n%s  not supported by the %s.\n"
	.size	.L.str.14, 93

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"  No further attempts will be made to access the page count file.\n"
	.size	.L.str.15, 67

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"eprn_open_device"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s? eprn: Memory allocation failure from gs_malloc() in eprn_open_device().\n"
	.size	.L.str.17, 77

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"eprn_close_device"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"PAGE: %ld %d\n"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"num_copies > 0"
	.size	.L.str.20, 15

	.type	.L__PRETTY_FUNCTION__.eprn_output_page,@object # @__PRETTY_FUNCTION__.eprn_output_page
.L__PRETTY_FUNCTION__.eprn_output_page:
	.asciz	"int eprn_output_page(gx_device *, int, int)"
	.size	.L__PRETTY_FUNCTION__.eprn_output_page, 44

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"eprn_output_page"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s? eprn: The %s does not support "
	.size	.L.str.22, 35

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"an empty set of media flags"
	.size	.L.str.23, 28

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"the \""
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\" flag(s)"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\n%s  (ignoring presence or absence of \""
	.size	.L.str.26, 40

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\") for "
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"any"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"this"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	" page size.\n"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Small"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Big"
	.size	.L.str.33, 4

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Extra"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"0x%04X"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	".Transverse"
	.size	.L.str.36, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
