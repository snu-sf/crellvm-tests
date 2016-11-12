	.text
	.file	"gdevlx7.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1133936640              # float 301
.LCPI0_1:
	.long	1142308864              # float 601
	.text
	.align	16, 0x90
	.type	lxmgen_print_page,@function
lxmgen_print_page:                      # @lxmgen_print_page
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
	subq	$1912, %rsp             # imm = 0x778
.Ltmp6:
	.cfi_def_cfa_offset 1968
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
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movl	836(%rbx), %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	18472(%rbx), %r12d
	movss	888(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	setbe	%cl
	movzbl	%cl, %ecx
	ucomiss	.LCPI0_1(%rip), %xmm0
	movl	$2, %edx
	cmovbl	%ecx, %edx
	movl	%edx, 108(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	movl	$104, %ecx
	movl	$208, %esi
	cmovel	%ecx, %esi
	cmpl	$2, %edx
	sete	%cl
	shll	%cl, %esi
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	leal	1(%rsi), %esi
	imull	%eax, %esi
	movq	%rax, %r14
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.6, %ecx
	callq	*88(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	movq	%rax, %r15
	je	.LBB0_34
# BB#1:                                 # %if.end.29
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$256000, %esi           # imm = 0x3E800
	movl	$1, %edx
	movl	$.L.str.7, %ecx
	callq	*88(%rdi)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB0_2
# BB#3:                                 # %if.end.49
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	imull	%r14d, %ebp
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	movl	$outb, %esi
	movl	$26, %edx
	movq	%rcx, %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	callq	memcpy
	movslq	%ebp, %rax
	leaq	(%rax,%r15), %rdi
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movslq	%r14d, %rdx
	xorl	%esi, %esi
	movq	%rdx, %rbp
	callq	memset
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	setbe	%al
	movzbl	%al, %ecx
	ucomiss	.LCPI0_1(%rip), %xmm0
	movl	$2, %eax
	cmovbl	%ecx, %eax
	testl	%eax, %eax
	sete	%cl
	sarl	%cl, %r12d
	cmpl	$2, %eax
	sete	%cl
	shll	%cl, %r12d
	movl	%r12d, 76(%rsp)         # 4-byte Spill
	cmpl	$1, 18508(%rbx)
	ja	.LBB0_5
# BB#4:                                 # %if.then.80
	movl	%eax, %eax
	movb	.Llxmgen_print_page.mspeed(%rax), %al
	movq	80(%rsp), %rcx          # 8-byte Reload
	movb	%al, 8(%rcx)
.LBB0_5:                                # %if.end.83
	movl	108(%rsp), %r13d        # 4-byte Reload
	cmpl	$1, %r13d
	movq	%r15, 96(%rsp)          # 8-byte Spill
	movq	%rbp, %rax
	jne	.LBB0_8
# BB#6:                                 # %for.body.preheader
	leaq	(%rax,%rax,2), %r8
	leaq	(,%rax,4), %rcx
	leaq	(%rax,%rax), %rdx
	movl	$3, %esi
	movq	%r15, %rdi
	.align	16, 0x90
.LBB0_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, 200(%rsp,%rsi,8)
	leaq	(%rdi,%rax), %rbp
	movq	%rbp, 208(%rsp,%rsi,8)
	leaq	(%rdi,%rdx), %rbp
	movq	%rbp, 216(%rsp,%rsi,8)
	leaq	(%rdi,%r8), %rbp
	movq	%rbp, 224(%rsp,%rsi,8)
	addq	%rcx, %rdi
	addq	$4, %rsi
	cmpq	$211, %rsi
	jne	.LBB0_7
.LBB0_8:                                # %if.end.94
	movq	%rax, 184(%rsp)         # 8-byte Spill
	testl	%r13d, %r13d
	movq	168(%rsp), %rdx         # 8-byte Reload
	jne	.LBB0_11
# BB#9:                                 # %for.body.102.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_10:                               # %for.inc.117.1
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	sarl	%ecx
	imull	%r14d, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r15), %rcx
	movq	%rcx, 224(%rsp,%rax,8)
	movq	%rdx, 232(%rsp,%rax,8)
	addq	$2, %rax
	cmpq	$208, %rax
	jne	.LBB0_10
.LBB0_11:                               # %if.end.120
	movq	%r14, %rbp
	movq	%rbx, %r14
	movq	%r14, 136(%rsp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	gdev_prn_file_is_new
	testl	%eax, %eax
	je	.LBB0_13
# BB#12:                                # %if.then.122
	movq	18480(%r14), %rdi
	movslq	18488(%r14), %rsi
	jmp	.LBB0_14
.LBB0_2:                                # %if.then.41
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	jmp	.LBB0_34
.LBB0_13:                               # %if.else.125
	movq	18496(%r14), %rdi
	movslq	18504(%r14), %rsi
.LBB0_14:                               # %while.cond.preheader
	movl	$1, %edx
	movq	128(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
	movl	124(%rsp), %r8d         # 4-byte Reload
	testl	%r8d, %r8d
	jle	.LBB0_33
# BB#15:                                # %while.body.lr.ph
	cmpl	$2, %r13d
	sete	%al
	movq	184(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	leal	-1(%rbp), %edx
	movl	%edx, 200(%rsp)         # 4-byte Spill
	movslq	%edx, %rdx
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movzbl	%al, %eax
	incl	%eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	%r13d, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	-1(,%rcx,8), %eax
	movl	%eax, 204(%rsp)         # 4-byte Spill
	leal	(%rbp,%rbp), %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leal	(,%rbp,4), %eax
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movl	%r8d, %r12d
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	.align	16, 0x90
.LBB0_16:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_86 Depth 4
	movl	%r12d, 180(%rsp)        # 4-byte Spill
	movl	%ecx, %ebx
	movl	%r8d, %ebp
	subl	%r12d, %ebp
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	leaq	1896(%rsp), %rcx
	movl	%r8d, %r14d
	callq	gdev_prn_get_bits
	movl	$1, %r12d
	cmpl	$2, %r13d
	jne	.LBB0_17
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_16 Depth=1
	addl	$197, %ebp
	cmpl	%r14d, %ebp
	movl	%ebx, %ecx
	jge	.LBB0_23
# BB#19:                                # %if.then.139
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%ecx, %r14d
	movq	136(%rsp), %rdi         # 8-byte Reload
	movl	%ebp, %esi
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	1888(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	1888(%rsp), %rdi
	cmpb	$0, (%rdi)
	je	.LBB0_21
# BB#20:                                #   in Loop: Header=BB0_16 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_16 Depth=1
	movl	%ebx, %ecx
	jmp	.LBB0_23
.LBB0_21:                               # %land.rhs
                                        #   in Loop: Header=BB0_16 Depth=1
	leaq	1(%rdi), %rsi
	movq	216(%rsp), %rdx         # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	sete	%al
.LBB0_22:                               # %land.end
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%r14d, %ecx
	movzbl	%al, %r12d
.LBB0_23:                               # %if.end.156
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	1896(%rsp), %rdi
	xorl	%ebx, %ebx
	cmpb	$0, (%rdi)
	je	.LBB0_28
# BB#24:                                #   in Loop: Header=BB0_16 Depth=1
	movl	180(%rsp), %r12d        # 4-byte Reload
	movq	136(%rsp), %r14         # 8-byte Reload
	jmp	.LBB0_25
	.align	16, 0x90
.LBB0_28:                               # %land.lhs.true.161
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%ecx, %ebp
	leaq	1(%rdi), %rsi
	movq	216(%rsp), %rdx         # 8-byte Reload
	callq	memcmp
	testl	%r12d, %r12d
	je	.LBB0_29
# BB#30:                                # %land.lhs.true.161
                                        #   in Loop: Header=BB0_16 Depth=1
	testl	%eax, %eax
	jne	.LBB0_29
# BB#31:                                # %if.then.170
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	180(%rsp), %r12d        # 4-byte Reload
	decl	%r12d
	movl	%ebp, %ecx
	incl	%ecx
	movq	136(%rsp), %r14         # 8-byte Reload
	movl	124(%rsp), %r8d         # 4-byte Reload
	jmp	.LBB0_32
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=1
	movl	180(%rsp), %r12d        # 4-byte Reload
	movq	136(%rsp), %r14         # 8-byte Reload
	movl	%ebp, %ecx
.LBB0_25:                               # %for.body.178
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	124(%rsp), %r8d         # 4-byte Reload
	.align	16, 0x90
.LBB0_26:                               # %for.body.178
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_86 Depth 4
	testl	%ecx, %ecx
	jle	.LBB0_27
# BB#35:                                # %if.then.181
                                        #   in Loop: Header=BB0_26 Depth=2
	movq	64(%rsp), %rax          # 8-byte Reload
	imull	.Llxmgen_print_page.mult(,%rax,4), %ecx
	movl	$207387, 1904(%rsp)     # imm = 0x32A1B
	movb	%ch, 1907(%rsp)  # NOREX
	movb	%cl, 1908(%rsp)
	movl	$5, %esi
	movl	$1, %edx
	leaq	1904(%rsp), %rdi
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	%r8d, %ebp
	callq	fwrite
	movl	%ebp, %r8d
	movl	$0, 144(%rsp)           # 4-byte Folded Spill
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_26 Depth=2
	movl	%ecx, 144(%rsp)         # 4-byte Spill
.LBB0_36:                               # %if.end.185
                                        #   in Loop: Header=BB0_26 Depth=2
	movq	168(%rsp), %rsi         # 8-byte Reload
	movq	160(%rsp), %rdi         # 8-byte Reload
	movl	156(%rsp), %ebp         # 4-byte Reload
	cmpl	$2, %r13d
	jne	.LBB0_43
# BB#37:                                # %for.body.192.preheader
                                        #   in Loop: Header=BB0_26 Depth=2
	xorl	%eax, %eax
	movl	$1, %ecx
	.align	16, 0x90
.LBB0_38:                               # %for.body.192
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%ebx, %ebx
	movq	%rsi, %rdx
	jne	.LBB0_40
# BB#39:                                # %if.else.201
                                        #   in Loop: Header=BB0_38 Depth=3
	movslq	%eax, %rdx
	leaq	(%rdx,%r15), %rdx
.LBB0_40:                               # %for.inc.209
                                        #   in Loop: Header=BB0_38 Depth=3
	cmpl	$1, %ebx
	movq	%rdx, 216(%rsp,%rcx,8)
	movq	%rsi, %rdx
	jne	.LBB0_42
# BB#41:                                # %if.else.201.1
                                        #   in Loop: Header=BB0_38 Depth=3
	leal	(%rdi,%rax), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%r15), %rdx
.LBB0_42:                               # %for.inc.209.1
                                        #   in Loop: Header=BB0_38 Depth=3
	movq	%rdx, 224(%rsp,%rcx,8)
	addl	%ebp, %eax
	addq	$2, %rcx
	cmpq	$209, %rcx
	jne	.LBB0_38
.LBB0_43:                               # %if.end.212
                                        #   in Loop: Header=BB0_26 Depth=2
	movl	%ebx, 148(%rsp)         # 4-byte Spill
	movl	%ebp, 156(%rsp)         # 4-byte Spill
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	movq	112(%rsp), %rbp         # 8-byte Reload
	cmpl	%r12d, %ebp
	movl	%r12d, %ebx
	cmovlel	%ebp, %ebx
	movl	%r8d, %esi
	subl	%r12d, %esi
	movl	%r12d, 180(%rsp)        # 4-byte Spill
	movq	%r14, %rdi
	movq	%r15, %rdx
	movl	92(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movl	%ebp, %eax
	subl	%ebx, %eax
	jle	.LBB0_45
# BB#44:                                # %if.then.221
                                        #   in Loop: Header=BB0_26 Depth=2
	movl	%ebx, %ecx
	movq	208(%rsp), %rdx         # 8-byte Reload
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r15), %rdi
	imull	%edx, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_45:                               # %if.end.229
                                        #   in Loop: Header=BB0_26 Depth=2
	movl	%ebx, 152(%rsp)         # 4-byte Spill
	movl	18472(%r14), %eax
	movl	%eax, 196(%rsp)         # 4-byte Spill
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	movl	204(%rsp), %ecx         # 4-byte Reload
	movq	216(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB0_46:                               # %for.body.i
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_86 Depth 4
	movq	224(%rsp,%r14,8), %r12
	movb	(%r12), %sil
	testb	%sil, %sil
	movb	%sil, %bl
	movq	%r12, %rax
	jne	.LBB0_49
# BB#47:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	movb	%sil, %r15b
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	movq	%r13, %rbx
	leaq	1(%r12), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_48
# BB#51:                                # %while.cond.preheader.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	movq	208(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	%r12, %rax
	movq	184(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edx
	movq	%rbx, %r13
	movl	216(%rsp), %ecx         # 4-byte Reload
	movb	%r15b, %sil
	jle	.LBB0_67
	.align	16, 0x90
.LBB0_52:                               # %while.body.i.i
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        #       Parent Loop BB0_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	1(%rax), %bl
	incq	%rax
	cmpl	$2, %edx
	jl	.LBB0_49
# BB#53:                                # %while.body.i.i
                                        #   in Loop: Header=BB0_52 Depth=4
	decl	%edx
	testb	%bl, %bl
	je	.LBB0_52
	.align	16, 0x90
.LBB0_49:                               # %for.cond.preheader.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	%bl, %bl
	js	.LBB0_50
# BB#54:                                # %for.inc.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$64, %bl
	jne	.LBB0_55
# BB#56:                                # %for.inc.1.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$32, %bl
	jne	.LBB0_57
# BB#58:                                # %for.inc.2.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$16, %bl
	jne	.LBB0_59
# BB#60:                                # %for.inc.3.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$8, %bl
	jne	.LBB0_61
# BB#62:                                # %for.inc.4.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$4, %bl
	jne	.LBB0_63
# BB#64:                                # %for.inc.5.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$2, %bl
	jne	.LBB0_65
# BB#66:                                # %for.inc.6.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$1, %bl
	movl	$7, %edx
	jne	.LBB0_68
.LBB0_67:                               # %for.inc.7.i.i
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	$8, %edx
	jmp	.LBB0_68
	.align	16, 0x90
.LBB0_50:                               #   in Loop: Header=BB0_46 Depth=3
	xorl	%edx, %edx
	jmp	.LBB0_68
	.align	16, 0x90
.LBB0_55:                               #   in Loop: Header=BB0_46 Depth=3
	movl	$1, %edx
	jmp	.LBB0_68
.LBB0_48:                               # %leftmost_pixel.exit.thread.i
                                        #   in Loop: Header=BB0_46 Depth=3
	leaq	(%r12,%rbx), %r15
	movq	%rbx, %rax
	movl	204(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB0_70
.LBB0_57:                               #   in Loop: Header=BB0_46 Depth=3
	movl	$2, %edx
	jmp	.LBB0_68
.LBB0_59:                               #   in Loop: Header=BB0_46 Depth=3
	movl	$3, %edx
	jmp	.LBB0_68
.LBB0_61:                               #   in Loop: Header=BB0_46 Depth=3
	movl	$4, %edx
	jmp	.LBB0_68
.LBB0_63:                               #   in Loop: Header=BB0_46 Depth=3
	movl	$5, %edx
	jmp	.LBB0_68
.LBB0_65:                               #   in Loop: Header=BB0_46 Depth=3
	movl	$6, %edx
	.align	16, 0x90
.LBB0_68:                               # %leftmost_pixel.exit.i
                                        #   in Loop: Header=BB0_46 Depth=3
	subl	%r12d, %eax
	leal	(%rdx,%rax,8), %ebx
	leaq	(%r12,%r13), %r15
	testb	%sil, %sil
	jne	.LBB0_71
# BB#69:                                # %leftmost_pixel.exit.i.land.lhs.true.i.5.i_crit_edge
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	movq	%r13, %rax
	leaq	1(%r12), %r13
.LBB0_70:                               # %land.lhs.true.i.5.i
                                        #   in Loop: Header=BB0_46 Depth=3
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %r13
	movq	%r13, %rdx
	callq	memcmp
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	216(%rsp), %ecx         # 4-byte Reload
	je	.LBB0_76
.LBB0_71:                               # %while.cond.preheader.i.6.i
                                        #   in Loop: Header=BB0_46 Depth=3
	movb	(%r15), %al
	movq	208(%rsp), %rdx         # 8-byte Reload
	cmpl	$2, %edx
	jl	.LBB0_73
# BB#72:                                # %while.cond.preheader.i.6.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	%al, %al
	movl	200(%rsp), %edx         # 4-byte Reload
	jne	.LBB0_73
	.align	16, 0x90
.LBB0_86:                               # %while.body.i.14.i
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        #       Parent Loop BB0_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	-1(%r15), %al
	decq	%r15
	cmpl	$2, %edx
	jl	.LBB0_73
# BB#87:                                # %while.body.i.14.i
                                        #   in Loop: Header=BB0_86 Depth=4
	decl	%edx
	testb	%al, %al
	je	.LBB0_86
.LBB0_73:                               # %for.cond.preheader.i.9.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$1, %al
	movl	$7, %edx
	jne	.LBB0_75
# BB#74:                                # %for.inc.i.16.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$2, %al
	movl	$6, %edx
	jne	.LBB0_75
# BB#88:                                # %for.inc.1.i.26.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$4, %al
	movl	$5, %edx
	jne	.LBB0_75
# BB#89:                                # %for.inc.2.i.28.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$8, %al
	movl	$4, %edx
	jne	.LBB0_75
# BB#90:                                # %for.inc.3.i.30.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$16, %al
	movl	$3, %edx
	jne	.LBB0_75
# BB#91:                                # %for.inc.4.i.32.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$32, %al
	movl	$2, %edx
	jne	.LBB0_75
# BB#92:                                # %for.inc.5.i.34.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$64, %al
	movl	$1, %edx
	jne	.LBB0_75
# BB#93:                                # %for.inc.6.i.35.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	%al, %al
	movl	$0, %edx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	cmovnsq	%rax, %rdx
	.align	16, 0x90
.LBB0_75:                               # %for.end.i.23.i
                                        #   in Loop: Header=BB0_46 Depth=3
	subl	%r12d, %r15d
	leal	(%rdx,%r15,8), %edx
.LBB0_76:                               # %rightmost_pixel.exit.i
                                        #   in Loop: Header=BB0_46 Depth=3
	testb	$1, %r14b
	je	.LBB0_78
# BB#77:                                # %if.then.i
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	196(%rsp), %esi         # 4-byte Reload
	subl	%esi, %ebx
	movl	$0, %eax
	cmovsl	%eax, %ebx
	addl	%esi, %edx
	movl	204(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %edx
	cmovgl	%eax, %edx
	cmpl	%eax, %ebx
	sete	%al
	movzbl	%al, %eax
	subl	%eax, %ebx
.LBB0_78:                               # %if.end.16.i
                                        #   in Loop: Header=BB0_46 Depth=3
	cmpl	%ecx, %ebx
	cmovlel	%ebx, %ecx
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	incq	%r14
	cmpq	$208, %r14
	jne	.LBB0_46
# BB#79:                                # %find_lr_pixels.exit
                                        #   in Loop: Header=BB0_26 Depth=2
	cmpl	%ebp, %ecx
	movq	136(%rsp), %r14         # 8-byte Reload
	movl	180(%rsp), %r12d        # 4-byte Reload
	jge	.LBB0_82
# BB#80:                                # %if.then.233
                                        #   in Loop: Header=BB0_26 Depth=2
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rsp)
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$104, (%rsp)
	xorl	%r9d, %r9d
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	%ebp, %ebx
	movl	%ebx, %r8d
	movl	%ecx, %ebp
	callq	print_cols
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	cmpl	$-1, %eax
	jne	.LBB0_82
# BB#81:                                # %if.then.238
                                        #   in Loop: Header=BB0_26 Depth=2
	movl	76(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, 24(%rsp)
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	leaq	224(%rsp), %r15
	movq	%r15, 8(%rsp)
	movl	$52, (%rsp)
	xorl	%r9d, %r9d
	movq	128(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	80(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdx
	movl	%r8d, 60(%rsp)          # 4-byte Spill
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	callq	print_cols
	movl	%ebx, 24(%rsp)
	movl	180(%rsp), %r12d        # 4-byte Reload
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	%r15, 8(%rsp)
	movl	$104, (%rsp)
	movl	$52, %r9d
	movq	%rbp, %rdi
	movq	136(%rsp), %rsi         # 8-byte Reload
	movl	60(%rsp), %r8d          # 4-byte Reload
	movq	%r14, %rdx
	movq	136(%rsp), %r14         # 8-byte Reload
	movl	216(%rsp), %ecx         # 4-byte Reload
	callq	print_cols
	.align	16, 0x90
.LBB0_82:                               # %if.end.244
                                        #   in Loop: Header=BB0_26 Depth=2
	movq	%r13, 216(%rsp)         # 8-byte Spill
	movl	108(%rsp), %r13d        # 4-byte Reload
	cmpl	$2, %r13d
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	148(%rsp), %ebx         # 4-byte Reload
	jne	.LBB0_84
# BB#83:                                # %if.else.248
                                        #   in Loop: Header=BB0_26 Depth=2
	testl	%ebx, %ebx
	movl	$219, %eax
	movl	$197, %ecx
	cmovel	%ecx, %eax
	movl	144(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
.LBB0_84:                               # %if.end.253
                                        #   in Loop: Header=BB0_26 Depth=2
	subl	%ecx, %r12d
	movl	124(%rsp), %r8d         # 4-byte Reload
	movq	96(%rsp), %r15          # 8-byte Reload
	jle	.LBB0_32
# BB#85:                                # %if.end.253
                                        #   in Loop: Header=BB0_26 Depth=2
	incl	%ebx
	cmpl	88(%rsp), %ebx          # 4-byte Folded Reload
	jl	.LBB0_26
.LBB0_32:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_16 Depth=1
	testl	%r12d, %r12d
	jg	.LBB0_16
.LBB0_33:                               # %while.end
	movl	$1694968347, 1904(%rsp) # imm = 0x65072A1B
	leaq	1904(%rsp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	movq	128(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%ebp, %ebp
.LBB0_34:                               # %cleanup.281
	movl	%ebp, %eax
	addq	$1912, %rsp             # imm = 0x778
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lxmgen_print_page, .Lfunc_end0-lxmgen_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	lxm_get_params,@function
lxm_get_params:                         # @lxm_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB1_1
# BB#2:                                 # %if.end
	addq	$18472, %rbx            # imm = 0x4828
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	param_write_int         # TAILCALL
.LBB1_1:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	lxm_get_params, .Lfunc_end1-lxm_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	lxm_put_params,@function
lxm_put_params:                         # @lxm_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 48
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18472(%r14), %eax
	movl	%eax, 12(%rsp)
	leaq	12(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	movl	12(%rsp), %eax
	decl	%eax
	cmpl	$32, %eax
	jb	.LBB2_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rax
	movl	$.L.str.5, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
.LBB2_2:                                # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	js	.LBB2_5
# BB#3:                                 # %if.end.6
	testl	%eax, %eax
	movl	%eax, %ecx
	js	.LBB2_5
# BB#4:                                 # %if.end.9
	movl	12(%rsp), %ecx
	movl	%ecx, 18472(%r14)
	xorl	%ecx, %ecx
	cmpl	$1, %ebp
	cmovel	%eax, %ecx
.LBB2_5:                                # %cleanup
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lxm_put_params, .Lfunc_end2-lxm_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	print_cols,@function
print_cols:                             # @print_cols
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 192
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movl	%ecx, %r14d
	movq	%rdi, (%rsp)            # 8-byte Spill
	leal	50(%r14), %ecx
	leal	50(%r8), %eax
	movl	%eax, %ebx
	subl	%ecx, %ebx
	incl	%ebx
	movb	%bh, 13(%rdx)  # NOREX
	movb	%bl, 14(%rdx)
	movb	%ch, 15(%rdx)  # NOREX
	movb	%cl, 16(%rdx)
	movb	%ah, 17(%rdx)  # NOREX
	movb	%al, 18(%rdx)
	movb	$17, %al
	cmpl	$0, 18508(%rsi)
	je	.LBB3_2
# BB#1:                                 # %select.mid
	movb	$1, %al
.LBB3_2:                                # %select.end
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movb	%al, 12(%rdx)
	movl	$26, %ecx
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r14d
	jg	.LBB3_28
# BB#3:                                 # %for.body.lr.ph
	movl	208(%rsp), %r15d
	movq	200(%rsp), %r12
	movl	192(%rsp), %ecx
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	26(%rax), %r13
	shll	$3, %r15d
	movq	%r9, 16(%rsp)           # 8-byte Spill
	subl	%r9d, %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	leal	1(%r9,%r9), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movl	$26, %ecx
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
                                        #     Child Loop BB3_15 Depth 2
                                        #     Child Loop BB3_21 Depth 2
	movl	$-1, %eax
	cmpq	$255971, %rcx           # imm = 0x3E7E3
	jg	.LBB3_29
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	2(%r13), %rbp
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$52, %edx
	leaq	80(%rsp), %rdi
	callq	memset
	movl	%r14d, %ecx
	andl	$7, %ecx
	movl	216(%rsp), %eax
	leal	(%r14,%rax), %r11d
	movl	%r11d, %edx
	andl	$7, %edx
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	192(%rsp), %eax
	jge	.LBB3_6
# BB#7:                                 # %for.body.36.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	movb	.Lprint_cols.mask(%rcx), %r10b
	movb	.Lprint_cols.mask(%rdx), %r8b
	movl	%r14d, %ecx
	movq	%r14, 40(%rsp)          # 8-byte Spill
	sarl	$3, %ecx
	movslq	%ecx, %r14
	movl	%r11d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %r9
	movl	8(%rsp), %eax           # 4-byte Reload
	movl	%eax, %edx
	movl	12(%rsp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB3_8:                                # %for.body.36
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rdx), %esi
	movslq	%esi, %rcx
	movq	(%r12,%rcx,8), %rax
	movslq	%edx, %rcx
	movq	(%r12,%rcx,8), %rcx
	testb	(%rax,%r14), %r10b
	je	.LBB3_10
# BB#9:                                 # %if.then.55
                                        #   in Loop: Header=BB3_8 Depth=2
	movl	%esi, %eax
	andl	$14, %eax
	movl	.Lprint_cols.mask16(,%rax,4), %eax
	movl	%esi, %ebx
	sarl	$4, %ebx
	movslq	%ebx, %rbx
	orl	%eax, 80(%rsp,%rbx,4)
.LBB3_10:                               # %if.end.62
                                        #   in Loop: Header=BB3_8 Depth=2
	cmpl	%r15d, %r11d
	jge	.LBB3_13
# BB#11:                                # %if.then.67
                                        #   in Loop: Header=BB3_8 Depth=2
	testb	(%rcx,%r9), %r8b
	je	.LBB3_13
# BB#12:                                # %if.then.73
                                        #   in Loop: Header=BB3_8 Depth=2
	movl	%esi, %eax
	andl	$14, %eax
	orl	$1, %eax
	movl	.Lprint_cols.mask16(,%rax,4), %eax
	sarl	$4, %esi
	movslq	%esi, %rcx
	orl	%eax, 80(%rsp,%rcx,4)
.LBB3_13:                               # %if.end.82
                                        #   in Loop: Header=BB3_8 Depth=2
	addl	$2, %edx
	xorl	%ebx, %ebx
	decl	%edi
	jne	.LBB3_8
	jmp	.LBB3_14
	.align	16, 0x90
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	movq	%r14, 40(%rsp)          # 8-byte Spill
.LBB3_14:                               #   in Loop: Header=BB3_4 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB3_15:                               # %for.body.88
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	80(%rsp,%rbx,4), %ecx
	sarl	%eax
	testl	%ecx, %ecx
	je	.LBB3_16
# BB#17:                                # %if.else
                                        #   in Loop: Header=BB3_15 Depth=2
	movb	%ch, (%rbp)  # NOREX
	movb	%cl, 1(%rbp)
	addq	$2, %rbp
	jmp	.LBB3_18
	.align	16, 0x90
.LBB3_16:                               # %if.then.94
                                        #   in Loop: Header=BB3_15 Depth=2
	addl	$4096, %eax             # imm = 0x1000
.LBB3_18:                               # %if.end.102
                                        #   in Loop: Header=BB3_15 Depth=2
	incq	%rbx
	cmpq	$13, %rbx
	jne	.LBB3_15
# BB#19:                                # %for.end.105
                                        #   in Loop: Header=BB3_4 Depth=1
	movb	%al, 1(%r13)
	shrl	$8, %eax
	andl	$31, %eax
	orl	$32, %eax
	movb	%al, (%r13)
	movl	%ebp, %r14d
	subl	%r13d, %r14d
	cmpl	$7, %r14d
	jl	.LBB3_27
# BB#20:                                # %if.then.119
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$28, %edx
	leaq	48(%rsp), %rdi
	callq	memset
	movl	$36863, %esi            # imm = 0x8FFF
	leaq	50(%rsp), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_21:                               # %for.body.127
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	80(%rsp,%rbx,4), %edx
	sarl	%ecx
	cmpl	%esi, %edx
	jne	.LBB3_23
# BB#22:                                # %if.then.134
                                        #   in Loop: Header=BB3_21 Depth=2
	addl	$4096, %ecx             # imm = 0x1000
	jmp	.LBB3_24
	.align	16, 0x90
.LBB3_23:                               # %if.else.136
                                        #   in Loop: Header=BB3_21 Depth=2
	movb	%dh, (%rax)  # NOREX
	movb	%dl, 1(%rax)
	addq	$2, %rax
	movl	%edx, %esi
.LBB3_24:                               # %if.end.144
                                        #   in Loop: Header=BB3_21 Depth=2
	incq	%rbx
	cmpq	$13, %rbx
	jne	.LBB3_21
# BB#25:                                # %for.end.147
                                        #   in Loop: Header=BB3_4 Depth=1
	movb	%cl, 49(%rsp)
	shrl	$8, %ecx
	andb	$31, %cl
	movb	%cl, 48(%rsp)
	leaq	48(%rsp), %rcx
	subq	%rcx, %rax
	cmpl	%eax, %r14d
	jle	.LBB3_27
# BB#26:                                # %if.then.162
                                        #   in Loop: Header=BB3_4 Depth=1
	movslq	%eax, %r14
	movq	%r13, %rdi
	leaq	48(%rsp), %rsi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, %r13
	movq	%r13, %rbp
.LBB3_27:                               # %if.end.168
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %rcx
	subq	32(%rsp), %rcx          # 8-byte Folded Reload
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %edx
	leal	1(%rdx), %eax
	movq	%rbp, %r13
	movl	%eax, %r14d
	jl	.LBB3_4
.LBB3_28:                               # %for.end.175
	movl	%ecx, %eax
	shrl	$16, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	movb	%al, 4(%rdi)
	movb	%ch, 5(%rdi)  # NOREX
	movb	%cl, 6(%rdi)
	movslq	%ecx, %rdx
	movl	$1, %esi
	movq	(%rsp), %rcx            # 8-byte Reload
	callq	fwrite
	xorl	%eax, %eax
.LBB3_29:                               # %cleanup.191
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	print_cols, .Lfunc_end3-print_cols
	.cfi_endproc

	.type	lxm7000m_procs,@object  # @lxm7000m_procs
	.section	.rodata,"a",@progbits
	.align	8
lxm7000m_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lxm_get_params
	.quad	lxm_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	lxm7000m_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lex7000"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	lx7_fullinit,@object    # @lx7_fullinit
	.data
	.align	16
lx7_fullinit:
	.asciz	"\033*m\000@\020\003\020\021\033*\007s0\033*\007c\033*m\000B\000"
	.size	lx7_fullinit, 25

	.type	lx7_pageinit,@object    # @lx7_pageinit
	.align	16
lx7_pageinit:
	.asciz	"\033*\007s0\033*\007s0\033*\007c\033*m\000B\000"
	.size	lx7_pageinit, 21

	.type	gs_lex7000_device,@object # @gs_lex7000_device
	.globl	gs_lex7000_device
	.align	8
gs_lex7000_device:
	.long	18512                   # 0x4850
	.zero	4
	.quad	lxm7000m_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	3262119936              # float -6.000000e+01
	.long	0                       # float 0.000000e+00
	.long	1088841318              # float 7.200000e+00
	.long	1101843661              # float 2.160000e+01
	.long	1088841318              # float 7.200000e+00
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	lxmgen_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	16                      # 0x10
	.zero	4
	.quad	lx7_fullinit
	.long	25                      # 0x19
	.zero	4
	.quad	lx7_pageinit
	.long	21                      # 0x15
	.long	0                       # 0x0
	.size	gs_lex7000_device, 18512

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"lex5700"
	.size	.L.str.2, 8

	.type	gs_lex5700_device,@object # @gs_lex5700_device
	.data
	.globl	gs_lex5700_device
	.align	8
gs_lex5700_device:
	.long	18512                   # 0x4850
	.zero	4
	.quad	lxm7000m_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3262119936              # float -6.000000e+01
	.long	2147483648              # float -0.000000e+00
	.long	1088841318              # float 7.200000e+00
	.long	1088841318              # float 7.200000e+00
	.long	1088841318              # float 7.200000e+00
	.long	0                       # float 0.000000e+00
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	lxmgen_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	16                      # 0x10
	.zero	4
	.quad	lx7_fullinit
	.long	25                      # 0x19
	.zero	4
	.quad	lx7_pageinit
	.long	21                      # 0x15
	.long	1                       # 0x1
	.size	gs_lex5700_device, 18512

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"lex3200"
	.size	.L.str.3, 8

	.type	gs_lex3200_device,@object # @gs_lex3200_device
	.data
	.globl	gs_lex3200_device
	.align	8
gs_lex3200_device:
	.long	18512                   # 0x4850
	.zero	4
	.quad	lxm7000m_procs
	.quad	.L.str.3
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3262119936              # float -6.000000e+01
	.long	2147483648              # float -0.000000e+00
	.long	1088841318              # float 7.200000e+00
	.long	1088841318              # float 7.200000e+00
	.long	1088841318              # float 7.200000e+00
	.long	0                       # float 0.000000e+00
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	lxmgen_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	16                      # 0x10
	.zero	4
	.quad	lx7_fullinit
	.long	25                      # 0x19
	.zero	4
	.quad	lx7_pageinit
	.long	21                      # 0x15
	.long	2                       # 0x2
	.size	gs_lex3200_device, 18512

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"lex2050"
	.size	.L.str.4, 8

	.type	gs_lex2050_device,@object # @gs_lex2050_device
	.data
	.globl	gs_lex2050_device
	.align	8
gs_lex2050_device:
	.long	18512                   # 0x4850
	.zero	4
	.quad	lxm7000m_procs
	.quad	.L.str.4
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3262119936              # float -6.000000e+01
	.long	2147483648              # float -0.000000e+00
	.long	1088841318              # float 7.200000e+00
	.long	1088841318              # float 7.200000e+00
	.long	1088841318              # float 7.200000e+00
	.long	0                       # float 0.000000e+00
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	lxmgen_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	16                      # 0x10
	.zero	4
	.quad	lx7_fullinit
	.long	25                      # 0x19
	.zero	4
	.quad	lx7_pageinit
	.long	21                      # 0x15
	.long	3                       # 0x3
	.size	gs_lex2050_device, 18512

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"HeadSeparation"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"lxmgen_print_page(pbuf)"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"lxmgen_print_page(outbuf)"
	.size	.L.str.7, 26

	.type	outb,@object            # @outb
	.data
	.align	16
outb:
	.ascii	"\033*\004\000\000\377\377\000\002\001\001\032\021\377\377\377\377\377\377\000\000\"3DU\001"
	.size	outb, 26

	.type	.Llxmgen_print_page.mspeed,@object # @lxmgen_print_page.mspeed
	.section	.rodata,"a",@progbits
.Llxmgen_print_page.mspeed:
	.ascii	"\001\002\005"
	.size	.Llxmgen_print_page.mspeed, 3

	.type	.Llxmgen_print_page.mult,@object # @lxmgen_print_page.mult
	.align	4
.Llxmgen_print_page.mult:
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	1                       # 0x1
	.size	.Llxmgen_print_page.mult, 12

	.type	.Lprint_cols.mask,@object # @print_cols.mask
	.section	.rodata.cst8,"aM",@progbits,8
.Lprint_cols.mask:
	.ascii	"\200@ \020\b\004\002\001"
	.size	.Lprint_cols.mask, 8

	.type	.Lprint_cols.mask16,@object # @print_cols.mask16
	.section	.rodata,"a",@progbits
	.align	16
.Lprint_cols.mask16:
	.long	32768                   # 0x8000
	.long	16384                   # 0x4000
	.long	8192                    # 0x2000
	.long	4096                    # 0x1000
	.long	2048                    # 0x800
	.long	1024                    # 0x400
	.long	512                     # 0x200
	.long	256                     # 0x100
	.long	128                     # 0x80
	.long	64                      # 0x40
	.long	32                      # 0x20
	.long	16                      # 0x10
	.long	8                       # 0x8
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	1                       # 0x1
	.size	.Lprint_cols.mask16, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
