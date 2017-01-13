	.text
	.file	"gdevepsn.bc"
	.align	16, 0x90
	.type	epson_print_page,@function
epson_print_page:                       # @epson_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	$0, (%rsp)
	xorl	%edx, %edx
	movl	$eps_init_string, %ecx
	movl	$10, %r8d
	movl	$.L.str.5, %r9d
	callq	eps_print_page
	popq	%rdx
	retq
.Lfunc_end0:
	.size	epson_print_page, .Lfunc_end0-epson_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	eps9mid_print_page,@function
eps9mid_print_page:                     # @eps9mid_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	movl	$0, (%rsp)
	movl	$2, %edx
	movl	$eps_init_string, %ecx
	movl	$10, %r8d
	movl	$.L.str.5, %r9d
	callq	eps_print_page
	popq	%rdx
	retq
.Lfunc_end1:
	.size	eps9mid_print_page, .Lfunc_end1-eps9mid_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	eps9high_print_page,@function
eps9high_print_page:                    # @eps9high_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 16
	movl	$0, (%rsp)
	movl	$1, %edx
	movl	$eps_init_string, %ecx
	movl	$10, %r8d
	movl	$.L.str.5, %r9d
	callq	eps_print_page
	popq	%rdx
	retq
.Lfunc_end2:
	.size	eps9high_print_page, .Lfunc_end2-eps9high_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	ibmpro_print_page,@function
ibmpro_print_page:                      # @ibmpro_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp3:
	.cfi_def_cfa_offset 16
	movl	$1, (%rsp)
	xorl	%edx, %edx
	movl	$ibmpro_print_page.ibmpro_init_string, %ecx
	movl	$4, %r8d
	movl	$.L.str.14, %r9d
	callq	eps_print_page
	popq	%rdx
	retq
.Lfunc_end3:
	.size	ibmpro_print_page, .Lfunc_end3-ibmpro_print_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1116733440              # float 72
.LCPI4_1:
	.long	1092616192              # float 10
	.text
	.align	16, 0x90
	.type	eps_print_page,@function
eps_print_page:                         # @eps_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp7:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp10:
	.cfi_def_cfa_offset 352
.Ltmp11:
	.cfi_offset %rbx, -56
.Ltmp12:
	.cfi_offset %r12, -48
.Ltmp13:
	.cfi_offset %r13, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movl	%r8d, 264(%rsp)         # 4-byte Spill
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	movl	%edx, %r12d
	movq	%rsi, 240(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	jne	.LBB4_2
# BB#1:                                 # %cond.false
	movss	888(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI4_0(%rip), %xmm0
	seta	%al
	movzbl	%al, %ebx
.LBB4_2:                                # %cond.end
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	testl	%r12d, %r12d
	movl	%r12d, 212(%rsp)        # 4-byte Spill
	setne	280(%rsp)               # 1-byte Folded Spill
	movl	%ebx, %eax
	orl	%r12d, %eax
	setne	%al
	movzbl	%al, %ebp
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	addl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_device_raster
	movl	%eax, %r15d
	movq	%r15, 160(%rsp)         # 8-byte Spill
	leal	8(,%rbp,8), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	%eax, %ebp
	imull	%r15d, %ebp
	movl	%ebp, 68(%rsp)          # 4-byte Spill
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.6, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r13
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.7, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	cvttss2si	884(%r14), %edi
	testl	%ebx, %ebx
	movl	$eps_print_page.graphics_modes_24, %ecx
	movl	$eps_print_page.graphics_modes_9, %esi
	cmovneq	%rcx, %rsi
	cmpl	$2, %r12d
	setne	%bl
	movzbl	280(%rsp), %edx         # 1-byte Folded Reload
	leal	(%rdi,%rdi,4), %ecx
	testq	%r13, %r13
	je	.LBB4_4
# BB#3:                                 # %cond.end
	testq	%rax, %rax
	je	.LBB4_4
# BB#8:                                 # %if.end.55
	movq	%rdi, 280(%rsp)         # 8-byte Spill
	movb	%bl, 224(%rsp)          # 1-byte Spill
	movq	%rsi, 232(%rsp)         # 8-byte Spill
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	%r14, 88(%rsp)          # 8-byte Spill
	leal	(%rcx,%rcx,2), %r12d
	movslq	%r12d, %rax
	imulq	$1717986919, %rax, %r14 # imm = 0x66666667
	movq	%r14, %rax
	shrq	$63, %rax
	sarq	$34, %r14
	addl	%eax, %r14d
	movslq	264(%rsp), %rbx         # 4-byte Folded Reload
	movl	$1, %esi
	movq	272(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	movq	240(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
	movzbl	-1(%rbx,%rbp), %eax
	cmpl	$81, %eax
	jne	.LBB4_10
# BB#9:                                 # %if.then.63
	movq	88(%rsp), %rax          # 8-byte Reload
	cvtsi2ssl	832(%rax), %xmm0
	divss	884(%rax), %xmm0
	mulss	.LCPI4_1(%rip), %xmm0
	cvttss2si	%xmm0, %edi
	addl	$2, %edi
	movq	240(%rsp), %rsi         # 8-byte Reload
	callq	fputc
.LBB4_10:                               # %if.end.71
	cmpl	$100, %r12d
	movl	$10, %eax
	cmovll	%eax, %r14d
	movslq	%r14d, %rax
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movq	88(%rsp), %r14          # 8-byte Reload
	cmpl	$0, 836(%r14)
	movq	280(%rsp), %rcx         # 8-byte Reload
	jle	.LBB4_72
# BB#11:                                # %while.body.lr.ph
	movslq	%ecx, %rdx
	imulq	$-2004318071, %rdx, %rsi # imm = 0xFFFFFFFF88888889
	shrq	$32, %rsi
	imulq	$1717986919, %rdx, %rcx # imm = 0x66666667
	addl	%esi, %edx
	movl	%edx, %esi
	shrl	$31, %esi
	sarl	$5, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	movq	232(%rsp), %rsi         # 8-byte Reload
	movb	(%rsi,%rdx), %dl
	movb	%dl, 151(%rsp)          # 1-byte Spill
	shrb	$6, %dl
	andb	$1, %dl
	movq	%rcx, %rsi
	shrq	$63, %rsi
	sarq	$34, %rcx
	movzbl	%dl, %ebp
	movl	%ebp, 220(%rsp)         # 4-byte Spill
	movzbl	224(%rsp), %edx         # 1-byte Folded Reload
	movq	176(%rsp), %rdi         # 8-byte Reload
	leal	1(%rdi,%rdi), %r8d
	movl	%r8d, 144(%rsp)         # 4-byte Spill
	incl	%edx
	negl	%ebp
	addl	%esi, %ecx
	movq	256(%rsp), %rsi         # 8-byte Reload
	leal	1(%rsi,%rsi), %edi
	movl	%edi, 36(%rsp)          # 4-byte Spill
	andl	%edx, %ebp
	movl	%ebp, 232(%rsp)         # 4-byte Spill
	movq	248(%rsp), %rdx         # 8-byte Reload
	leal	1(%rdx,%rdx), %edx
	imull	%r8d, %ecx
	leal	(%rax,%rax,2), %eax
	leal	-1(%r15), %esi
	movslq	%esi, %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	leal	-1(%rdx), %esi
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	cltq
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leal	-3(%rax), %eax
	cltq
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	$25, %eax
	subl	%edx, %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	%edi, %ecx
	imull	%r15d, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	cmpl	$2, 212(%rsp)           # 4-byte Folded Reload
	setne	%al
	testl	%ecx, %ecx
	setle	%dl
	orb	%al, %dl
	movb	%dl, 55(%rsp)           # 1-byte Spill
	movl	%ecx, %eax
	andl	$1, %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	%r15d, %eax
	shll	$4, %eax
	cltq
	movq	%rax, 272(%rsp)         # 8-byte Spill
	movslq	%r15d, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	%r8d, %eax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	leal	(,%r15,8), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	cltq
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	8(%rsp), %r13           # 8-byte Reload
	xorl	%ebp, %ebp
                                        # implicit-def: R12
	xorl	%ebx, %ebx
	jmp	.LBB4_12
.LBB4_74:                               # %if.then.88
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	$3, %eax
	xorl	%edx, %edx
	divl	36(%rsp)                # 4-byte Folded Reload
	addl	%eax, %ebp
	movl	$1, %eax
	jmp	.LBB4_71
	.align	16, 0x90
.LBB4_12:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
                                        #     Child Loop BB4_24 Depth 2
                                        #     Child Loop BB4_27 Depth 2
                                        #     Child Loop BB4_30 Depth 2
                                        #       Child Loop BB4_33 Depth 3
                                        #         Child Loop BB4_36 Depth 4
                                        #         Child Loop BB4_37 Depth 4
                                        #         Child Loop BB4_40 Depth 4
                                        #         Child Loop BB4_41 Depth 4
                                        #         Child Loop BB4_47 Depth 4
                                        #           Child Loop BB4_48 Depth 5
                                        #             Child Loop BB4_54 Depth 6
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	200(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	leaq	288(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	288(%rsp), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB4_14
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	1(%rdi), %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB4_74
.LBB4_14:                               # %while.cond.92.preheader
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	cmpl	$255, %ebp
	movq	240(%rsp), %rbx         # 8-byte Reload
	jle	.LBB4_16
	.align	16, 0x90
.LBB4_15:                               # %while.body.95
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.8, %edi
	movq	%rbx, %rsi
	callq	fputs
	addl	$-255, %ebp
	cmpl	$255, %ebp
	jg	.LBB4_15
.LBB4_16:                               # %while.end
                                        #   in Loop: Header=BB4_12 Depth=1
	testl	%ebp, %ebp
	je	.LBB4_18
# BB#17:                                # %if.then.99
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	fprintf
.LBB4_18:                               # %if.end.101
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	88(%rsp), %rdi          # 8-byte Reload
	movl	96(%rsp), %esi          # 4-byte Reload
	movq	%r14, %rbx
	movq	%rbx, %rdx
	movl	68(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	cmpl	84(%rsp), %eax          # 4-byte Folded Reload
	jge	.LBB4_20
# BB#19:                                # %if.then.106
                                        #   in Loop: Header=BB4_12 Depth=1
	imull	%r15d, %eax
	cltq
	leaq	(%rbx,%rax), %rdi
	movl	68(%rsp), %ecx          # 4-byte Reload
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB4_20:                               # %if.end.113
                                        #   in Loop: Header=BB4_12 Depth=1
	cmpb	$0, 55(%rsp)            # 1-byte Folded Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %r14          # 8-byte Reload
	jne	.LBB4_25
# BB#21:                                # %for.body.preheader
                                        #   in Loop: Header=BB4_12 Depth=1
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	movl	$0, %eax
	je	.LBB4_23
# BB#22:                                # %for.body.prol
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	288(%rsp), %rax
	movb	(%rax,%r14), %cl
	orb	%cl, (%rax)
	movl	$1, %eax
.LBB4_23:                               # %for.body.preheader.split
                                        #   in Loop: Header=BB4_12 Depth=1
	cmpl	$1, %esi
	je	.LBB4_25
	.align	16, 0x90
.LBB4_24:                               # %for.body
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	288(%rsp), %rcx
	leaq	(%rcx,%r14), %rdx
	movb	(%rax,%rdx), %dl
	orb	%dl, (%rcx,%rax)
	movq	288(%rsp), %rcx
	leaq	1(%rcx,%r14), %rdx
	movb	(%rax,%rdx), %dl
	orb	%dl, 1(%rcx,%rax)
	addq	$2, %rax
	cmpl	%eax, %esi
	jne	.LBB4_24
.LBB4_25:                               # %if.end.130
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	$-24, %rbp
	cmpl	$0, 212(%rsp)           # 4-byte Folded Reload
	je	.LBB4_26
	.align	16, 0x90
.LBB4_27:                               # %for.body.137
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	eps_print_page.index+24(%rbp), %rax
	imulq	%r14, %rax
	leaq	(%rax,%r13), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, %rbx
	incq	%rbp
	jne	.LBB4_27
# BB#28:                                #   in Loop: Header=BB4_12 Depth=1
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	%r13, %rax
	movq	240(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB4_29
	.align	16, 0x90
.LBB4_26:                               #   in Loop: Header=BB4_12 Depth=1
	movq	%r13, 248(%rsp)         # 8-byte Spill
	movq	240(%rsp), %rbx         # 8-byte Reload
	movq	200(%rsp), %rax         # 8-byte Reload
.LBB4_29:                               # %if.end.152
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	%r14, 72(%rsp)          # 8-byte Spill
	leaq	(%rax,%r14), %rax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	movl	220(%rsp), %ebp         # 4-byte Reload
	movq	168(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB4_30:                               # %for.cond.157.preheader
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_33 Depth 3
                                        #         Child Loop BB4_36 Depth 4
                                        #         Child Loop BB4_37 Depth 4
                                        #         Child Loop BB4_40 Depth 4
                                        #         Child Loop BB4_41 Depth 4
                                        #         Child Loop BB4_47 Depth 4
                                        #           Child Loop BB4_48 Depth 5
                                        #             Child Loop BB4_54 Depth 6
	cmpl	232(%rsp), %ebp         # 4-byte Folded Reload
	jbe	.LBB4_32
# BB#31:                                #   in Loop: Header=BB4_30 Depth=2
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movq	%rax, 128(%rsp)         # 8-byte Spill
	jmp	.LBB4_67
	.align	16, 0x90
.LBB4_32:                               # %for.body.160.lr.ph
                                        #   in Loop: Header=BB4_30 Depth=2
	movslq	%eax, %rcx
	movq	%rcx, 264(%rsp)         # 8-byte Spill
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	%r14d, %eax
	movq	%r14, 120(%rsp)         # 8-byte Spill
	notl	%eax
	andl	$1, %eax
	movl	%eax, 216(%rsp)         # 4-byte Spill
	movl	%ebp, %eax
	.align	16, 0x90
.LBB4_33:                               # %for.body.160
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_36 Depth 4
                                        #         Child Loop BB4_37 Depth 4
                                        #         Child Loop BB4_40 Depth 4
                                        #         Child Loop BB4_41 Depth 4
                                        #         Child Loop BB4_47 Depth 4
                                        #           Child Loop BB4_48 Depth 5
                                        #             Child Loop BB4_54 Depth 6
	movq	%rax, 256(%rsp)         # 8-byte Spill
	cmpl	%ebp, %eax
	movq	248(%rsp), %r14         # 8-byte Reload
	jne	.LBB4_45
# BB#34:                                # %if.then.163
                                        #   in Loop: Header=BB4_33 Depth=3
	movq	176(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB4_35
# BB#39:                                # %for.cond.168.preheader
                                        #   in Loop: Header=BB4_33 Depth=3
	testl	%r15d, %r15d
	movq	%r14, %rbp
	movq	200(%rsp), %rbx         # 8-byte Reload
	jle	.LBB4_41
	.align	16, 0x90
.LBB4_40:                               # %for.body.171
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_30 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$3, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%rbp, %rdx
	callq	memflip8x8
	leaq	(%rbx,%r13), %rdi
	leaq	1(%rbp), %rdx
	movl	$3, %ecx
	movl	%r15d, %esi
	callq	memflip8x8
	movq	272(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %rdi
	leaq	2(%rbp), %rdx
	movl	$3, %ecx
	movl	%r15d, %esi
	callq	memflip8x8
	incq	%rbx
	addq	$24, %rbp
	cmpq	280(%rsp), %rbx         # 8-byte Folded Reload
	jb	.LBB4_40
	.align	16, 0x90
.LBB4_41:                               # %while.cond.183
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_30 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbp, %r12
	cmpq	%r14, %r12
	jbe	.LBB4_45
# BB#42:                                # %land.lhs.true.186
                                        #   in Loop: Header=BB4_41 Depth=4
	cmpb	$0, -1(%r12)
	jne	.LBB4_45
# BB#43:                                # %land.lhs.true.191
                                        #   in Loop: Header=BB4_41 Depth=4
	cmpb	$0, -2(%r12)
	jne	.LBB4_45
# BB#44:                                # %land.rhs
                                        #   in Loop: Header=BB4_41 Depth=4
	leaq	-3(%r12), %rbp
	cmpb	$0, -3(%r12)
	je	.LBB4_41
	jmp	.LBB4_45
.LBB4_35:                               # %for.cond.203.preheader
                                        #   in Loop: Header=BB4_33 Depth=3
	testl	%r15d, %r15d
	movq	%r14, %rbx
	movq	200(%rsp), %rbp         # 8-byte Reload
	jle	.LBB4_37
	.align	16, 0x90
.LBB4_36:                               # %for.body.206
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_30 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	264(%rsp), %rax         # 8-byte Reload
	leaq	(%rbp,%rax), %rdi
	movl	$1, %ecx
	movl	%r15d, %esi
	movq	%rbx, %rdx
	callq	memflip8x8
	incq	%rbp
	addq	$8, %rbx
	cmpq	280(%rsp), %rbp         # 8-byte Folded Reload
	jb	.LBB4_36
	.align	16, 0x90
.LBB4_37:                               # %while.cond.215
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_30 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbx, %r12
	cmpq	%r14, %r12
	jbe	.LBB4_45
# BB#38:                                # %land.rhs.218
                                        #   in Loop: Header=BB4_37 Depth=4
	leaq	-1(%r12), %rbx
	cmpb	$0, -1(%r12)
	je	.LBB4_37
	.align	16, 0x90
.LBB4_45:                               # %if.end.228
                                        #   in Loop: Header=BB4_33 Depth=3
	cmpq	%r12, %r14
	jae	.LBB4_66
# BB#46:                                # %for.body.232.lr.ph.lr.ph
                                        #   in Loop: Header=BB4_33 Depth=3
	cmpl	$2, 212(%rsp)           # 4-byte Folded Reload
	movq	256(%rsp), %rax         # 8-byte Reload
	cmovel	216(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movq	248(%rsp), %r14         # 8-byte Reload
.LBB4_47:                               # %for.body.232.lr.ph
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_30 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_48 Depth 5
                                        #             Child Loop BB4_54 Depth 6
	movq	%r14, %r10
	movq	%r10, %rbp
	movq	192(%rsp), %r8          # 8-byte Reload
	movl	352(%rsp), %ebx
	movq	224(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB4_48:                               # %for.body.232
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_30 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        #         Parent Loop BB4_47 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_54 Depth 6
	testl	%ebx, %ebx
	jne	.LBB4_62
# BB#49:                                # %land.lhs.true.234
                                        #   in Loop: Header=BB4_48 Depth=5
	cmpb	$0, (%rbp)
	jne	.LBB4_62
# BB#50:                                # %land.lhs.true.238
                                        #   in Loop: Header=BB4_48 Depth=5
	movq	%r12, %rax
	subq	%rbp, %rax
	cmpq	%r8, %rax
	jl	.LBB4_62
# BB#51:                                # %land.lhs.true.242
                                        #   in Loop: Header=BB4_48 Depth=5
	movb	2(%rbp), %al
	orb	1(%rbp), %al
	jne	.LBB4_62
# BB#52:                                # %land.lhs.true.250
                                        #   in Loop: Header=BB4_48 Depth=5
	leaq	3(%rbp), %rsi
	movq	%rbp, %rdi
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	%r8, %r14
	movq	%rcx, %r13
	movq	%r10, %r15
	callq	memcmp
	movq	%r15, %r10
	movq	%r13, %rcx
	movq	168(%rsp), %r13         # 8-byte Reload
	movq	160(%rsp), %r15         # 8-byte Reload
	movq	%r14, %r8
	testl	%eax, %eax
	je	.LBB4_53
	.align	16, 0x90
.LBB4_62:                               # %if.else.318
                                        #   in Loop: Header=BB4_48 Depth=5
	addq	%rcx, %rbp
	movq	%rbp, %rsi
.LBB4_63:                               # %for.cond.229.backedge
                                        #   in Loop: Header=BB4_48 Depth=5
	cmpq	%r12, %rsi
	movq	%rsi, %rbp
	jb	.LBB4_48
	jmp	.LBB4_64
.LBB4_53:                               # %if.then.256
                                        #   in Loop: Header=BB4_48 Depth=5
	leaq	(%rbp,%r8), %rax
	.align	16, 0x90
.LBB4_54:                               # %while.cond.259
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_30 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        #         Parent Loop BB4_47 Depth=4
                                        #           Parent Loop BB4_48 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movq	%rax, %rsi
	leaq	3(%rsi), %rax
	cmpq	%r12, %rax
	ja	.LBB4_58
# BB#55:                                # %land.lhs.true.263
                                        #   in Loop: Header=BB4_54 Depth=6
	cmpb	$0, (%rsi)
	jne	.LBB4_58
# BB#56:                                # %land.lhs.true.267
                                        #   in Loop: Header=BB4_54 Depth=6
	cmpb	$0, 1(%rsi)
	jne	.LBB4_58
# BB#57:                                # %land.rhs.272
                                        #   in Loop: Header=BB4_54 Depth=6
	cmpb	$0, 2(%rsi)
	je	.LBB4_54
.LBB4_58:                               # %while.end.280
                                        #   in Loop: Header=BB4_48 Depth=5
	movq	%rsi, %rax
	movq	248(%rsp), %r9          # 8-byte Reload
	subq	%r9, %rax
	cqto
	movq	136(%rsp), %rdi         # 8-byte Reload
	idivq	%rdi
	movq	%rax, %rdx
	movl	%edi, %eax
	imull	%edx, %eax
	cltq
	leaq	(%rax,%r9), %r14
	leaq	10(%rbp), %rax
	cmpq	%rax, %r14
	jbe	.LBB4_63
# BB#59:                                # %if.then.293
                                        #   in Loop: Header=BB4_47 Depth=4
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	cmpq	%r10, %rbp
	jbe	.LBB4_61
# BB#60:                                # %if.then.296
                                        #   in Loop: Header=BB4_47 Depth=4
	subl	%r10d, %ebp
	movsbl	151(%rsp), %ecx         # 1-byte Folded Reload
	movq	%r10, %rdi
	movl	%ebp, %esi
	movq	%rdx, %rbx
	movl	144(%rsp), %edx         # 4-byte Reload
	movq	240(%rsp), %r8          # 8-byte Reload
	movl	188(%rsp), %r9d         # 4-byte Reload
	callq	eps_output_run
	movq	%rbx, %rdx
.LBB4_61:                               # %if.end.313
                                        #   in Loop: Header=BB4_47 Depth=4
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	240(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	callq	fprintf
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$9, %edi
	movq	%rbp, %rsi
	callq	fputc
	cmpq	%r12, %r14
	jb	.LBB4_47
	jmp	.LBB4_66
	.align	16, 0x90
.LBB4_64:                               # %for.end.322
                                        #   in Loop: Header=BB4_33 Depth=3
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	cmpq	%r10, %rsi
	jbe	.LBB4_66
# BB#65:                                # %if.then.325
                                        #   in Loop: Header=BB4_33 Depth=3
	subl	%r10d, %esi
	cmpl	$2, 212(%rsp)           # 4-byte Folded Reload
	movq	256(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r9d
	cmovel	216(%rsp), %r9d         # 4-byte Folded Reload
	movsbl	151(%rsp), %ecx         # 1-byte Folded Reload
	movq	%r10, %rdi
	movl	144(%rsp), %edx         # 4-byte Reload
	movq	240(%rsp), %r8          # 8-byte Reload
	callq	eps_output_run
.LBB4_66:                               # %if.end.338
                                        #   in Loop: Header=BB4_33 Depth=3
	movl	$13, %edi
	movq	240(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputc
	movq	256(%rsp), %rax         # 8-byte Reload
	cmpl	232(%rsp), %eax         # 4-byte Folded Reload
	leal	1(%rax), %eax
	movl	220(%rsp), %ebp         # 4-byte Reload
	jl	.LBB4_33
.LBB4_67:                               # %for.end.342
                                        #   in Loop: Header=BB4_30 Depth=2
	movq	120(%rsp), %r14         # 8-byte Reload
	cmpq	112(%rsp), %r14         # 8-byte Folded Reload
	jge	.LBB4_69
# BB#68:                                # %if.then.346
                                        #   in Loop: Header=BB4_30 Depth=2
	movl	$.L.str.12, %edi
	movq	%rbx, %rsi
	callq	fputs
.LBB4_69:                               # %for.inc.349
                                        #   in Loop: Header=BB4_30 Depth=2
	incq	%r14
	movq	128(%rsp), %rax         # 8-byte Reload
	addl	100(%rsp), %eax         # 4-byte Folded Reload
	cmpq	104(%rsp), %r14         # 8-byte Folded Reload
	jl	.LBB4_30
# BB#70:                                #   in Loop: Header=BB4_12 Depth=1
	movq	%r13, 168(%rsp)         # 8-byte Spill
	movq	%rbx, 240(%rsp)         # 8-byte Spill
	movl	84(%rsp), %eax          # 4-byte Reload
	movl	64(%rsp), %ebp          # 4-byte Reload
	movq	248(%rsp), %r13         # 8-byte Reload
	movl	96(%rsp), %ebx          # 4-byte Reload
.LBB4_71:                               # %cleanup
                                        #   in Loop: Header=BB4_12 Depth=1
	addl	%eax, %ebx
	movq	88(%rsp), %r14          # 8-byte Reload
	cmpl	836(%r14), %ebx
	jl	.LBB4_12
.LBB4_72:                               # %while.end.362
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	240(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rsi
	callq	fputs
	movq	%rbp, %rdi
	callq	fflush
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%ebp, %ebp
	jmp	.LBB4_73
.LBB4_4:                                # %if.then
	testq	%r13, %r13
	je	.LBB4_6
# BB#5:                                 # %if.then.40
	movq	24(%r14), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.6, %edx
	movq	%r13, %rsi
	movq	%rax, %rbx
	callq	*24(%rdi)
	movq	%rbx, %rax
.LBB4_6:                                # %if.end
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB4_73
# BB#7:                                 # %if.then.47
	movq	24(%r14), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.7, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
.LBB4_73:                               # %cleanup.377
	movl	%ebp, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	eps_print_page, .Lfunc_end4-eps_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	eps_output_run,@function
eps_output_run:                         # @eps_output_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 96
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
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
	jbe	.LBB5_1
# BB#2:                                 # %if.else
	movsbl	%r13b, %r13d
	movl	$42, %edi
	movq	%rbx, %rsi
	callq	fputc
	andl	$-65, %r13d
	movl	%r13d, %edi
	jmp	.LBB5_3
.LBB5_1:                                # %if.then
	movsbq	%r13b, %rax
	movsbl	.L.str.13(%rax), %edi
.LBB5_3:                                # %if.end
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
	je	.LBB5_14
# BB#4:                                 # %for.cond.preheader
	testl	%ebp, %ebp
	jle	.LBB5_13
# BB#5:                                 # %for.cond.17.preheader.lr.ph
	leal	-1(%r15), %eax
	incq	%rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB5_6:                                # %for.cond.17.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	testl	%r15d, %r15d
	jle	.LBB5_12
# BB#7:                                 # %for.body.20.lr.ph
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	%r12d, %ebp
	andl	$1, %ebp
	movq	%r14, 32(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB5_8:                                # %for.body.20
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	testl	%ebp, %ebp
	je	.LBB5_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB5_8 Depth=2
	movzbl	(%r14), %edi
.LBB5_10:                               # %cond.end
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	%rbx, %rsi
	callq	_IO_putc
	incq	%r14
	decl	%r15d
	jne	.LBB5_8
# BB#11:                                # %for.cond.17.for.inc.25_crit_edge
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	32(%rsp), %r14          # 8-byte Reload
	addq	8(%rsp), %r14           # 8-byte Folded Reload
	movq	24(%rsp), %r15          # 8-byte Reload
	movl	20(%rsp), %ebp          # 4-byte Reload
.LBB5_12:                               # %for.inc.25
                                        #   in Loop: Header=BB5_6 Depth=1
	incl	%r13d
	incl	%r12d
	cmpl	%ebp, %r13d
	jne	.LBB5_6
.LBB5_13:                               # %if.end.29
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_14:                               # %if.then.12
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
.Lfunc_end5:
	.size	eps_output_run, .Lfunc_end5-eps_output_run
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"epson"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_epson_device,@object # @gs_epson_device
	.section	.rodata,"a",@progbits
	.globl	gs_epson_device
	.align	8
gs_epson_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
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
	.long	2040                    # 0x7f8
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1131413504              # float 2.400000e+02
	.long	1116733440              # float 7.200000e+01
	.long	1131413504              # float 2.400000e+02
	.long	1116733440              # float 7.200000e+01
	.long	3262119936              # float -6.000000e+01
	.long	3253102182              # float -2.880000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1069044204              # float 1.440000e+00
	.long	1099956224              # float 1.800000e+01
	.long	1105618534              # float 2.880000e+01
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
	.quad	epson_print_page
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
	.size	gs_epson_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"eps9mid"
	.size	.L.str.2, 8

	.type	gs_eps9mid_device,@object # @gs_eps9mid_device
	.section	.rodata,"a",@progbits
	.globl	gs_eps9mid_device
	.align	8
gs_eps9mid_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
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
	.long	2040                    # 0x7f8
	.long	2376                    # 0x948
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1131413504              # float 2.400000e+02
	.long	1129840640              # float 2.160000e+02
	.long	1131413504              # float 2.400000e+02
	.long	1129840640              # float 2.160000e+02
	.long	3258974208              # float -4.800000e+01
	.long	2147483648              # float -0.000000e+00
	.long	1097229926              # float 1.440000e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
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
	.quad	eps9mid_print_page
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
	.size	gs_eps9mid_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"eps9high"
	.size	.L.str.3, 9

	.type	gs_eps9high_device,@object # @gs_eps9high_device
	.section	.rodata,"a",@progbits
	.globl	gs_eps9high_device
	.align	8
gs_eps9high_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
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
	.long	2040                    # 0x7f8
	.long	2376                    # 0x948
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1131413504              # float 2.400000e+02
	.long	1129840640              # float 2.160000e+02
	.long	1131413504              # float 2.400000e+02
	.long	1129840640              # float 2.160000e+02
	.long	3258974208              # float -4.800000e+01
	.long	2147483648              # float -0.000000e+00
	.long	1097229926              # float 1.440000e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
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
	.quad	eps9high_print_page
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
	.size	gs_eps9high_device, 18472

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"ibmpro"
	.size	.L.str.4, 7

	.type	gs_ibmpro_device,@object # @gs_ibmpro_device
	.section	.rodata,"a",@progbits
	.globl	gs_ibmpro_device
	.align	8
gs_ibmpro_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
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
	.long	2040                    # 0x7f8
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1131413504              # float 2.400000e+02
	.long	1116733440              # float 7.200000e+01
	.long	1131413504              # float 2.400000e+02
	.long	1116733440              # float 7.200000e+01
	.long	3258974208              # float -4.800000e+01
	.long	2147483648              # float -0.000000e+00
	.long	1097229926              # float 1.440000e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
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
	.quad	ibmpro_print_page
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
	.size	gs_ibmpro_device, 18472

	.type	eps_init_string,@object # @eps_init_string
eps_init_string:
	.ascii	"\033@\033P\033l\000\r\033Q"
	.size	eps_init_string, 10

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"\f\033@"
	.size	.L.str.5, 4

	.type	eps_print_page.graphics_modes_9,@object # @eps_print_page.graphics_modes_9
	.section	.rodata,"a",@progbits
eps_print_page.graphics_modes_9:
	.ascii	"\377\000\001\007C"
	.size	eps_print_page.graphics_modes_9, 5

	.type	eps_print_page.graphics_modes_24,@object # @eps_print_page.graphics_modes_24
eps_print_page.graphics_modes_24:
	.ascii	"\377 !'c\377h"
	.size	eps_print_page.graphics_modes_24, 7

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"eps_print_page(buf1)"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"eps_print_page(buf2)"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033J\377"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033J%c"
	.size	.L.str.9, 5

	.type	eps_print_page.index,@object # @eps_print_page.index
	.section	.rodata,"a",@progbits
	.align	16
eps_print_page.index:
	.ascii	"\000\b\020\001\t\021\002\n\022\003\013\023\004\f\024\005\r\025\006\016\026\007\017\027"
	.size	eps_print_page.index, 24

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"\033D%c"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033J\001"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"KLYZ"
	.size	.L.str.13, 5

	.type	ibmpro_print_page.ibmpro_init_string,@object # @ibmpro_print_page.ibmpro_init_string
	.section	.rodata,"a",@progbits
ibmpro_print_page.ibmpro_init_string:
	.ascii	"\021\03330"
	.size	ibmpro_print_page.ibmpro_init_string, 4

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"\f"
	.size	.L.str.14, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
