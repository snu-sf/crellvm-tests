	.text
	.file	"gdevepsc.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1116733440              # float 72
	.text
	.align	16, 0x90
	.type	epsc_print_page,@function
epsc_print_page:                        # @epsc_print_page
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
	subq	$248, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 304
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
	movq	%rsi, 232(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	movq	%r14, 136(%rsp)         # 8-byte Spill
	movss	888(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 124(%rsp)        # 4-byte Spill
	ucomiss	.LCPI0_0(%rip), %xmm0
	seta	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %ebx
	movl	832(%r14), %edx
	movl	$epsc_print_page.graphics_modes_24, %ecx
	movl	$epsc_print_page.graphics_modes_9, %r15d
	cmovaq	%rcx, %r15
	addl	%eax, %eax
	addl	$7, %edx
	sarl	$3, %edx
	movl	%edx, 148(%rsp)         # 4-byte Spill
	leal	8(,%rax,8), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	%edx, %ecx
	imull	%eax, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	leal	1(%rcx), %esi
	movl	$1, %edx
	movl	$.L.str.2, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movl	832(%r14), %esi
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	addl	$7, %esi
	andl	$-8, %esi
	imull	%ebx, %esi
	orl	$1, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rbp, %rsi
	testq	%rsi, %rsi
	je	.LBB0_2
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB0_2
# BB#6:                                 # %if.end.52
	movq	%rsi, %r13
	movq	%rax, 216(%rsp)         # 8-byte Spill
	cvttss2si	884(%r14), %ebp
	movl	832(%r14), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	$.L.str.4, %edi
	movl	$1, %esi
	movl	$14, %edx
	movq	232(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
	cmpl	$1, 100(%r14)
	jg	.LBB0_23
# BB#7:                                 # %lor.lhs.false.56
	movzbl	110(%r14), %eax
	cmpl	$255, %eax
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r12d
	movl	148(%rsp), %eax         # 4-byte Reload
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%r13, 112(%rsp)         # 8-byte Spill
	jne	.LBB0_8
.LBB0_23:                               # %if.then.61
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_device_raster
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	%eax, %r12d
	imull	60(%rsp), %r12d         # 4-byte Folded Reload
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	%r12d, %esi
	orl	$1, %esi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	movq	%rax, 112(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_24
.LBB0_8:                                # %while.cond.preheader
	cmpl	$0, 836(%r14)
	jle	.LBB0_89
# BB#9:                                 # %while.body.lr.ph
	movslq	%ebp, %rcx
	imulq	$-2004318071, %rcx, %rdx # imm = 0xFFFFFFFF88888889
	shrq	$32, %rdx
	imulq	$1717986919, %rcx, %rax # imm = 0x66666667
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$5, %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%r15,%rcx,4), %ecx
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	shrl	$7, %ecx
	andl	$1, %ecx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	leal	(%rcx,%rcx), %ecx
	movl	%ecx, 212(%rsp)         # 4-byte Spill
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	movl	%ebx, 164(%rsp)         # 4-byte Spill
	imull	%ebx, %eax
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	(%rcx,%rdx), %ecx
	andl	$-8, %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	%edx, %edi
	subl	%ecx, %edi
	movl	%edi, 76(%rsp)          # 4-byte Spill
	movq	112(%rsp), %rdx         # 8-byte Reload
	leaq	1(%rdx), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	96(%rsp), %rsi          # 8-byte Reload
	leal	-1(%rsi), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movslq	%esi, %rcx
	leaq	(%rdx,%rcx), %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%r12d, %edx
	subl	%ecx, %edx
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movslq	148(%rsp), %rcx         # 4-byte Folded Reload
	leaq	(%r13,%rcx), %rdx
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	movslq	%edx, %rdx
	leaq	(%rdx,%r13), %rdx
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movl	$8, %edx
	subl	%edi, %edx
	movl	%edx, 188(%rsp)         # 4-byte Spill
	cltq
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leal	(,%rcx,8), %eax
	shll	$4, %ecx
	cltq
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	%ebx, %r15d
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	jmp	.LBB0_10
.LBB0_25:                               # %if.then.101
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$3, %eax
	xorl	%edx, %edx
	divl	164(%rsp)               # 4-byte Folded Reload
	addl	%eax, %ebp
	movl	$1, %eax
	jmp	.LBB0_88
	.align	16, 0x90
.LBB0_10:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_31 Depth 3
                                        #         Child Loop BB0_34 Depth 4
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_62 Depth 3
                                        #         Child Loop BB0_63 Depth 4
                                        #           Child Loop BB0_65 Depth 5
                                        #             Child Loop BB0_73 Depth 6
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	96(%rsp), %rcx          # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
	cmpb	$0, (%rbx)
	jne	.LBB0_12
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_25
.LBB0_12:                               # %while.cond.105.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	cmpl	$255, %ebp
	movq	232(%rsp), %rbx         # 8-byte Reload
	jle	.LBB0_14
	.align	16, 0x90
.LBB0_13:                               # %while.body.108
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.6, %edi
	movq	%rbx, %rsi
	callq	fputs
	addl	$-255, %ebp
	cmpl	$255, %ebp
	jg	.LBB0_13
.LBB0_14:                               # %while.end
                                        #   in Loop: Header=BB0_10 Depth=1
	testl	%ebp, %ebp
	je	.LBB0_16
# BB#15:                                # %if.then.112
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	232(%rsp), %rdi         # 8-byte Reload
	movl	%ebp, %edx
	callq	fprintf
.LBB0_16:                               # %if.end.114
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %esi
	movq	%r14, %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	44(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movl	%eax, %ebp
	incl	%ebp
	cmpl	60(%rsp), %ebp          # 4-byte Folded Reload
	movl	$0, %ecx
	movl	$0, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	%r13, %rbx
	jge	.LBB0_20
# BB#17:                                # %if.then.123
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	%ebp, %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	imull	%ecx, %eax
	cltq
	movq	112(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdi
	movl	%r12d, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	callq	memset
	cmpl	$1, 100(%r14)
	jg	.LBB0_19
# BB#18:                                # %lor.lhs.false.135
                                        #   in Loop: Header=BB0_10 Depth=1
	movzbl	110(%r14), %eax
	cmpl	$255, %eax
	movl	$0, %ecx
	movl	$0, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	jne	.LBB0_20
.LBB0_19:                               # %if.then.141
                                        #   in Loop: Header=BB0_10 Depth=1
	imull	148(%rsp), %ebp         # 4-byte Folded Reload
	movslq	%ebp, %rax
	leaq	(%rbx,%rax), %rdi
	movq	32(%rsp), %rcx          # 8-byte Reload
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	callq	memset
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_20:                               # %do.body
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_31 Depth 3
                                        #         Child Loop BB0_34 Depth 4
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_62 Depth 3
                                        #         Child Loop BB0_63 Depth 4
                                        #           Child Loop BB0_65 Depth 5
                                        #             Child Loop BB0_73 Depth 6
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	cmpl	$1, 100(%r14)
	jg	.LBB0_26
# BB#21:                                # %lor.lhs.false.157
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	110(%r14), %eax
	cmpl	$255, %eax
	je	.LBB0_26
# BB#22:                                #   in Loop: Header=BB0_20 Depth=2
	movq	216(%rsp), %r14         # 8-byte Reload
	jmp	.LBB0_49
	.align	16, 0x90
.LBB0_26:                               # %if.then.163
                                        #   in Loop: Header=BB0_20 Depth=2
	xorl	%edi, %edi
	movq	240(%rsp), %r13         # 8-byte Reload
	testq	%r13, %r13
	movq	%rbx, %rbp
	movq	112(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	movq	104(%rsp), %r13         # 8-byte Reload
	movl	%r13d, %r8d
	je	.LBB0_28
# BB#27:                                # %if.then.165
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rbp
	movq	%rbp, %rdx
	subq	%rbx, %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	movq	240(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %edi
	subl	%r14d, %edi
	movl	%edi, %eax
	cltd
	movq	96(%rsp), %rcx          # 8-byte Reload
	idivl	%ecx
	leal	(%rdi,%r13), %r8d
	subl	%edx, %r8d
	movq	%rsi, %rdx
.LBB0_28:                               # %for.cond.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	xorl	%r9d, %r9d
	cmpl	%r12d, %edi
	movq	216(%rsp), %r14         # 8-byte Reload
	jg	.LBB0_93
# BB#29:                                # %for.cond.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpq	192(%rsp), %rbp         # 8-byte Folded Reload
	jae	.LBB0_93
# BB#30:                                #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, %r13
	xorl	%eax, %eax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	80(%rsp), %r10          # 8-byte Reload
	movl	76(%rsp), %r11d         # 4-byte Reload
	.align	16, 0x90
.LBB0_31:                               # %for.body
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_34 Depth 4
	movl	%r8d, %eax
	testl	%r11d, %r11d
	setne	%cl
	cmpl	%eax, %edi
	sete	%bl
	leal	(%rdi,%r10), %r8d
	andb	%cl, %bl
	cmovel	%eax, %r8d
	testb	%bl, %bl
	movl	$0, %ecx
	cmovnel	188(%rsp), %ecx         # 4-byte Folded Reload
	movb	$0, (%rbp)
	cmpl	%r12d, %edi
	jg	.LBB0_44
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB0_31 Depth=3
	cmpl	$7, %ecx
	jg	.LBB0_44
# BB#33:                                # %for.body.199.lr.ph
                                        #   in Loop: Header=BB0_31 Depth=3
	movslq	%ecx, %rbx
	movl	$7, %ecx
	movl	%edi, %esi
	.align	16, 0x90
.LBB0_34:                               # %for.body.199
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	(%rdx), %al
	testb	%al, %al
	je	.LBB0_42
# BB#35:                                # %if.then.201
                                        #   in Loop: Header=BB0_34 Depth=4
	testb	%r9b, %r9b
	je	.LBB0_40
# BB#36:                                # %if.then.205
                                        #   in Loop: Header=BB0_34 Depth=4
	movzbl	%r9b, %edi
	movzbl	%al, %eax
	cmpl	%edi, %eax
	jne	.LBB0_38
# BB#37:                                # %if.then.210
                                        #   in Loop: Header=BB0_34 Depth=4
	movl	$1, %eax
	shll	%cl, %eax
	movzbl	(%rbp), %edi
	orl	%eax, %edi
	movb	%dil, (%rbp)
	jmp	.LBB0_41
	.align	16, 0x90
.LBB0_40:                               # %if.else.222
                                        #   in Loop: Header=BB0_34 Depth=4
	movl	$1, %eax
	shll	%cl, %eax
	movzbl	(%rbp), %edi
	orl	%eax, %edi
	movb	%dil, (%rbp)
	movb	(%rdx), %r9b
.LBB0_41:                               # %for.inc
                                        #   in Loop: Header=BB0_34 Depth=4
	movb	$0, (%rdx)
	jmp	.LBB0_42
.LBB0_38:                               # %if.else.213
                                        #   in Loop: Header=BB0_34 Depth=4
	movq	240(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB0_42
# BB#39:                                # %if.then.216
                                        #   in Loop: Header=BB0_34 Depth=4
	leaq	-7(%rcx,%rdx), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	%rbp, %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_42:                               # %for.inc
                                        #   in Loop: Header=BB0_34 Depth=4
	incq	%rdx
	leal	1(%rsi), %edi
	cmpl	%r12d, %esi
	jge	.LBB0_44
# BB#43:                                # %for.inc
                                        #   in Loop: Header=BB0_34 Depth=4
	cmpq	%rbx, %rcx
	leaq	-1(%rcx), %rcx
	movl	%edi, %esi
	jg	.LBB0_34
.LBB0_44:                               # %for.inc.230
                                        #   in Loop: Header=BB0_31 Depth=3
	incq	%rbp
	cmpl	%r12d, %edi
	jg	.LBB0_46
# BB#45:                                # %for.inc.230
                                        #   in Loop: Header=BB0_31 Depth=3
	cmpq	192(%rsp), %rbp         # 8-byte Folded Reload
	jb	.LBB0_31
.LBB0_46:                               # %for.end.232
                                        #   in Loop: Header=BB0_20 Depth=2
	movb	$0, (%rbp)
	testb	%r9b, %r9b
	je	.LBB0_48
# BB#47:                                # %if.then.234
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	%r9b, %edx
	xorl	$7, %edx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	232(%rsp), %rdi         # 8-byte Reload
	callq	fprintf
.LBB0_48:                               # %if.end.238
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r13, %rbx
	jmp	.LBB0_49
	.align	16, 0x90
.LBB0_93:                               # %for.end.232.thread
                                        #   in Loop: Header=BB0_20 Depth=2
	movb	$0, (%rbp)
	xorl	%eax, %eax
	movq	%rax, 240(%rsp)         # 8-byte Spill
.LBB0_49:                               # %if.end.238
                                        #   in Loop: Header=BB0_20 Depth=2
	movss	124(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jbe	.LBB0_50
# BB#54:                                # %for.cond.241.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	148(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	%r14, %rbp
	movl	%eax, %r13d
	jle	.LBB0_56
	.align	16, 0x90
.LBB0_55:                               # %for.body.244
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$3, %ecx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%rbp, %rdx
	callq	memflip8x8
	movq	176(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %rdi
	leaq	1(%rbp), %rdx
	movl	$3, %ecx
	movl	%r13d, %esi
	callq	memflip8x8
	movq	168(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %rdi
	leaq	2(%rbp), %rdx
	movl	$3, %ecx
	movl	%r13d, %esi
	callq	memflip8x8
	incq	%rbx
	addq	$24, %rbp
	cmpq	224(%rsp), %rbx         # 8-byte Folded Reload
	jb	.LBB0_55
	.align	16, 0x90
.LBB0_56:                               # %while.cond.257
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rbx
	cmpq	%r14, %rbx
	jbe	.LBB0_60
# BB#57:                                # %land.lhs.true.260
                                        #   in Loop: Header=BB0_56 Depth=3
	cmpb	$0, -1(%rbx)
	jne	.LBB0_60
# BB#58:                                # %land.lhs.true.265
                                        #   in Loop: Header=BB0_56 Depth=3
	cmpb	$0, -2(%rbx)
	jne	.LBB0_60
# BB#59:                                # %land.rhs.270
                                        #   in Loop: Header=BB0_56 Depth=3
	leaq	-3(%rbx), %rbp
	cmpb	$0, -3(%rbx)
	je	.LBB0_56
	jmp	.LBB0_60
	.align	16, 0x90
.LBB0_50:                               # %for.cond.280.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	148(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	%r14, %rbp
	movl	%eax, %r13d
	jle	.LBB0_52
	.align	16, 0x90
.LBB0_51:                               # %for.body.283
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1, %ecx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%rbp, %rdx
	callq	memflip8x8
	incq	%rbx
	addq	$8, %rbp
	cmpq	224(%rsp), %rbx         # 8-byte Folded Reload
	jb	.LBB0_51
	.align	16, 0x90
.LBB0_52:                               # %while.cond.288
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rbx
	cmpq	%r14, %rbx
	jbe	.LBB0_60
# BB#53:                                # %land.rhs.291
                                        #   in Loop: Header=BB0_52 Depth=3
	leaq	-1(%rbx), %rbp
	cmpb	$0, -1(%rbx)
	je	.LBB0_52
.LBB0_60:                               # %if.end.300
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r14, 216(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	212(%rsp), %eax         # 4-byte Folded Reload
	ja	.LBB0_86
# BB#61:                                # %for.cond.305.preheader.lr.ph
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	152(%rsp), %r14         # 8-byte Reload
	.align	16, 0x90
.LBB0_62:                               # %for.cond.305.preheader
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_63 Depth 4
                                        #           Child Loop BB0_65 Depth 5
                                        #             Child Loop BB0_73 Depth 6
	movq	216(%rsp), %r13         # 8-byte Reload
	jmp	.LBB0_63
.LBB0_80:                               # %if.end.403
                                        #   in Loop: Header=BB0_63 Depth=4
	movl	$.L.str.9, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	.align	16, 0x90
.LBB0_63:                               # %for.cond.305.preheader
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_62 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_65 Depth 5
                                        #             Child Loop BB0_73 Depth 6
	cmpq	%rbx, %r13
	jae	.LBB0_85
# BB#64:                                # %for.body.308.lr.ph
                                        #   in Loop: Header=BB0_63 Depth=4
	movq	%r13, %rdi
	movq	%rdi, %rsi
	.align	16, 0x90
.LBB0_65:                               # %for.body.308
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_62 Depth=3
                                        #         Parent Loop BB0_63 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_73 Depth 6
	cmpb	$0, (%rsi)
	jne	.LBB0_81
# BB#66:                                # %land.lhs.true.312
                                        #   in Loop: Header=BB0_65 Depth=5
	leaq	12(%rsi), %rax
	cmpq	%rbx, %rax
	ja	.LBB0_81
# BB#67:                                # %land.lhs.true.316
                                        #   in Loop: Header=BB0_65 Depth=5
	cmpb	$0, 1(%rsi)
	jne	.LBB0_81
# BB#68:                                # %land.lhs.true.321
                                        #   in Loop: Header=BB0_65 Depth=5
	cmpb	$0, 2(%rsi)
	jne	.LBB0_81
# BB#69:                                # %land.lhs.true.326
                                        #   in Loop: Header=BB0_65 Depth=5
	movb	4(%rsi), %cl
	orb	3(%rsi), %cl
	orb	5(%rsi), %cl
	jne	.LBB0_81
# BB#70:                                # %land.lhs.true.337
                                        #   in Loop: Header=BB0_65 Depth=5
	movb	7(%rsi), %cl
	orb	6(%rsi), %cl
	orb	8(%rsi), %cl
	jne	.LBB0_81
# BB#71:                                # %land.lhs.true.348
                                        #   in Loop: Header=BB0_65 Depth=5
	movb	10(%rsi), %cl
	orb	9(%rsi), %cl
	orb	11(%rsi), %cl
	je	.LBB0_72
	.align	16, 0x90
.LBB0_81:                               # %if.else.406
                                        #   in Loop: Header=BB0_65 Depth=5
	addq	%r15, %rsi
	movq	%rsi, %rbp
.LBB0_82:                               # %for.cond.305.backedge
                                        #   in Loop: Header=BB0_65 Depth=5
	cmpq	%rbx, %rbp
	movq	%rbp, %rsi
	jb	.LBB0_65
	jmp	.LBB0_83
.LBB0_72:                               #   in Loop: Header=BB0_65 Depth=5
	leaq	10(%rsi), %r8
	.align	16, 0x90
.LBB0_73:                               # %while.cond.361
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_62 Depth=3
                                        #         Parent Loop BB0_63 Depth=4
                                        #           Parent Loop BB0_65 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movq	%rax, %rbp
	leaq	3(%rbp), %rax
	cmpq	%rbx, %rax
	ja	.LBB0_77
# BB#74:                                # %land.lhs.true.365
                                        #   in Loop: Header=BB0_73 Depth=6
	cmpb	$0, (%rbp)
	jne	.LBB0_77
# BB#75:                                # %land.lhs.true.369
                                        #   in Loop: Header=BB0_73 Depth=6
	cmpb	$0, 1(%rbp)
	jne	.LBB0_77
# BB#76:                                # %land.rhs.374
                                        #   in Loop: Header=BB0_73 Depth=6
	cmpb	$0, 2(%rbp)
	je	.LBB0_73
.LBB0_77:                               # %while.end.382
                                        #   in Loop: Header=BB0_65 Depth=5
	movq	%rbp, %rax
	movq	216(%rsp), %r9          # 8-byte Reload
	subq	%r9, %rax
	cqto
	movq	88(%rsp), %rcx          # 8-byte Reload
	idivq	%rcx
	movq	%rax, %rdx
	movl	%ecx, %eax
	imull	%edx, %eax
	cltq
	leaq	(%rax,%r9), %r13
	cmpq	%r8, %r13
	jbe	.LBB0_82
# BB#78:                                # %if.then.395
                                        #   in Loop: Header=BB0_63 Depth=4
	cmpq	%rdi, %rsi
	movq	232(%rsp), %rbp         # 8-byte Reload
	jbe	.LBB0_80
# BB#79:                                # %if.then.398
                                        #   in Loop: Header=BB0_63 Depth=4
	subl	%edi, %esi
	movl	160(%rsp), %eax         # 4-byte Reload
	movsbl	%al, %ecx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	164(%rsp), %edx         # 4-byte Reload
	movq	%rbp, %r8
	movl	%r14d, %r9d
	callq	epsc_output_run
	movq	8(%rsp), %rdx           # 8-byte Reload
	jmp	.LBB0_80
	.align	16, 0x90
.LBB0_83:                               # %for.end.410
                                        #   in Loop: Header=BB0_62 Depth=3
	cmpq	%rdi, %rbp
	jbe	.LBB0_85
# BB#84:                                # %if.then.413
                                        #   in Loop: Header=BB0_62 Depth=3
	subl	%edi, %ebp
	movl	160(%rsp), %eax         # 4-byte Reload
	movsbl	%al, %ecx
	movl	%ebp, %esi
	movl	164(%rsp), %edx         # 4-byte Reload
	movq	232(%rsp), %r8          # 8-byte Reload
	movl	%r14d, %r9d
	callq	epsc_output_run
.LBB0_85:                               # %if.end.418
                                        #   in Loop: Header=BB0_62 Depth=3
	movl	$13, %edi
	movq	232(%rsp), %rsi         # 8-byte Reload
	callq	fputc
	cmpl	212(%rsp), %r14d        # 4-byte Folded Reload
	leal	1(%r14), %eax
	movl	%eax, %r14d
	jl	.LBB0_62
.LBB0_86:                               # %for.end.422
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$24, %ebp
	movq	240(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	movq	136(%rsp), %r14         # 8-byte Reload
	movq	128(%rsp), %rbx         # 8-byte Reload
	jne	.LBB0_20
# BB#87:                                #   in Loop: Header=BB0_10 Depth=1
	movq	%rbx, %r13
	movl	60(%rsp), %eax          # 4-byte Reload
.LBB0_88:                               # %cleanup
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	64(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	cmpl	836(%r14), %eax
	movl	%eax, %esi
	jl	.LBB0_10
.LBB0_89:                               # %while.end.428
	movl	$.L.str.10, %edi
	movq	232(%rsp), %rsi         # 8-byte Reload
	callq	fputs
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	216(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	cmpl	$1, 100(%r14)
	jg	.LBB0_91
# BB#90:                                # %lor.lhs.false.446
	xorl	%ebp, %ebp
	movzbl	110(%r14), %eax
	cmpl	$255, %eax
	jne	.LBB0_92
.LBB0_91:                               # %if.then.452
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.11, %edx
	movq	112(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	xorl	%ebp, %ebp
	jmp	.LBB0_92
.LBB0_2:                                # %if.then
	movq	%rax, %rbx
	testq	%rsi, %rsi
	je	.LBB0_4
# BB#3:                                 # %if.then.37
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
.LBB0_4:                                # %if.end
	movl	$-1, %ebp
	movq	%rbx, %rsi
	testq	%rsi, %rsi
	je	.LBB0_92
# BB#5:                                 # %if.then.44
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	jmp	.LBB0_92
.LBB0_24:                               # %if.then.75
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	216(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movl	$-1, %ebp
.LBB0_92:                               # %cleanup.460
	movl	%ebp, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	epsc_print_page, .Lfunc_end0-epsc_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	epson_map_rgb_color,@function
epson_map_rgb_color:                    # @epson_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %r8d
	movzwl	2(%rsi), %ecx
	movzwl	4(%rsi), %edx
	cmpl	$1, 100(%rdi)
	jg	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	movzbl	110(%rdi), %eax
	cmpl	$255, %eax
	je	.LBB1_2
# BB#3:                                 # %if.else
	jmp	gx_default_w_b_map_rgb_color # TAILCALL
.LBB1_2:                                # %cleanup
	shrq	$15, %rdx
	shrq	$15, %rcx
	addq	%rcx, %rcx
	shrq	$15, %r8
	leaq	rgb_color(%rcx,%r8,4), %rax
	movsbq	(%rdx,%rax), %rax
	xorq	$7, %rax
	retq
.Lfunc_end1:
	.size	epson_map_rgb_color, .Lfunc_end1-epson_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	epson_map_color_rgb,@function
epson_map_color_rgb:                    # @epson_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1, 100(%rdi)
	jg	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	movzbl	110(%rdi), %eax
	cmpl	$255, %eax
	je	.LBB2_2
# BB#11:                                # %if.else
	jmp	gx_default_w_b_map_color_rgb # TAILCALL
.LBB2_2:                                # %if.then
	movzwl	%si, %eax
	xorl	$7, %eax
	cmpl	$7, %eax
	ja	.LBB2_14
# BB#3:                                 # %if.then
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_12:                               # %sw.bb
	movl	$0, (%rdx)
	jmp	.LBB2_13
.LBB2_8:                                # %sw.bb.24
	movl	$65535, (%rdx)          # imm = 0xFFFF
	movw	$-1, 4(%rdx)
	xorl	%eax, %eax
	retq
.LBB2_6:                                # %sw.bb.16
	movl	$-65536, (%rdx)         # imm = 0xFFFFFFFFFFFF0000
	movw	$-1, 4(%rdx)
	xorl	%eax, %eax
	retq
.LBB2_4:                                # %sw.bb.8
	movl	$0, (%rdx)
	movw	$-1, 4(%rdx)
	xorl	%eax, %eax
	retq
.LBB2_9:                                # %sw.bb.28
	movl	$-1, (%rdx)
	jmp	.LBB2_13
.LBB2_7:                                # %sw.bb.20
	movl	$65535, (%rdx)          # imm = 0xFFFF
	jmp	.LBB2_13
.LBB2_5:                                # %sw.bb.12
	movl	$-65536, (%rdx)         # imm = 0xFFFFFFFFFFFF0000
.LBB2_13:                               # %return
	movw	$0, 4(%rdx)
.LBB2_14:                               # %return
	xorl	%eax, %eax
	retq
.LBB2_10:                               # %sw.bb.32
	movl	$-1, (%rdx)
	movw	$-1, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	epson_map_color_rgb, .Lfunc_end2-epson_map_color_rgb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_12
	.quad	.LBB2_8
	.quad	.LBB2_6
	.quad	.LBB2_4
	.quad	.LBB2_9
	.quad	.LBB2_7
	.quad	.LBB2_5
	.quad	.LBB2_10

	.text
	.align	16, 0x90
	.type	epsc_output_run,@function
epsc_output_run:                        # @epsc_output_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 96
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movq	%r8, %rbx
	movl	%ecx, %r13d
	movl	%edx, %r15d
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	%esi, 32(%rsp)          # 4-byte Spill
	movq	%rdi, %r14
	movl	%esi, %eax
	cltd
	idivl	%r15d
	movl	%eax, %ebp
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%r13b, %eax
	cmpl	$3, %eax
	jbe	.LBB3_1
# BB#2:                                 # %if.else
	movsbl	%r13b, %r13d
	movl	$42, %edi
	movq	%rbx, %rsi
	callq	fputc
	andl	$-129, %r13d
	movl	%r13d, %edi
	jmp	.LBB3_3
.LBB3_1:                                # %if.then
	movsbq	%r13b, %rax
	movsbl	.L.str.12(%rax), %edi
.LBB3_3:                                # %if.end
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	sarl	$8, %edi
	movq	%rbx, %rsi
	callq	fputc
	testl	%r12d, %r12d
	je	.LBB3_14
# BB#4:                                 # %for.cond.preheader
	testl	%ebp, %ebp
	jle	.LBB3_13
# BB#5:                                 # %for.cond.17.preheader.lr.ph
	leal	-1(%r15), %eax
	incq	%rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB3_6:                                # %for.cond.17.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	testl	%r15d, %r15d
	jle	.LBB3_12
# BB#7:                                 # %for.body.20.lr.ph
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%r12d, %ebp
	andl	$1, %ebp
	movq	%r14, 32(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB3_8:                                # %for.body.20
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	testl	%ebp, %ebp
	je	.LBB3_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB3_8 Depth=2
	movzbl	(%r14), %edi
.LBB3_10:                               # %cond.end
                                        #   in Loop: Header=BB3_8 Depth=2
	movq	%rbx, %rsi
	callq	_IO_putc
	incq	%r14
	decl	%r15d
	jne	.LBB3_8
# BB#11:                                # %for.cond.17.for.inc.25_crit_edge
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	32(%rsp), %r14          # 8-byte Reload
	addq	8(%rsp), %r14           # 8-byte Folded Reload
	movq	24(%rsp), %r15          # 8-byte Reload
	movl	20(%rsp), %ebp          # 4-byte Reload
.LBB3_12:                               # %for.inc.25
                                        #   in Loop: Header=BB3_6 Depth=1
	incl	%r13d
	incl	%r12d
	cmpl	%ebp, %r13d
	jne	.LBB3_6
.LBB3_13:                               # %if.end.29
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_14:                               # %if.then.12
	movslq	32(%rsp), %rdx          # 4-byte Folded Reload
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbx, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fwrite                  # TAILCALL
.Lfunc_end3:
	.size	epsc_output_run, .Lfunc_end3-epsc_output_run
	.cfi_endproc

	.type	epson_procs,@object     # @epson_procs
	.data
	.align	8
epson_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	epson_map_rgb_color
	.quad	epson_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	epson_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"epsonc"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_epsonc_device,@object # @gs_epsonc_device
	.section	.rodata,"a",@progbits
	.globl	gs_epsonc_device
	.align	8
gs_epsonc_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	epson_procs
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
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
	.long	1530                    # 0x5fa
	.long	1980                    # 0x7bc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.zero	8
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1099956224              # float 1.800000e+01
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
	.quad	epsc_print_page
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
	.size	gs_epsonc_device, 18472

	.type	rgb_color,@object       # @rgb_color
	.section	.rodata.cst8,"aM",@progbits,8
rgb_color:
	.ascii	"\000\003"
	.ascii	"\006\002"
	.ascii	"\005\001"
	.ascii	"\004\007"
	.size	rgb_color, 8

	.type	epsc_print_page.graphics_modes_9,@object # @epsc_print_page.graphics_modes_9
	.section	.rodata,"a",@progbits
	.align	16
epsc_print_page.graphics_modes_9:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	131                     # 0x83
	.size	epsc_print_page.graphics_modes_9, 20

	.type	epsc_print_page.graphics_modes_24,@object # @epsc_print_page.graphics_modes_24
	.align	16
epsc_print_page.graphics_modes_24:
	.long	4294967295              # 0xffffffff
	.long	32                      # 0x20
	.long	33                      # 0x21
	.long	39                      # 0x27
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	168                     # 0xa8
	.size	epsc_print_page.graphics_modes_24, 28

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"epsc_print_page(in)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"epsc_print_page(out)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata,"a",@progbits
.L.str.4:
	.asciz	"\033@\033P\033l\000\033Q\377\033U\001\r"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"epsc_print_page(color)"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033J\377"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033J%c"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033r%c"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033D%c%c\t"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\f\033@"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"epsc_print_page(rin)"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"KLYZ"
	.size	.L.str.12, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
