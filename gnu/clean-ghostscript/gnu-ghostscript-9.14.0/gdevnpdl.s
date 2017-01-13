	.text
	.file	"gdevnpdl.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1149304832              # float 1032
.LCPI0_1:
	.long	1146257408              # float 842
.LCPI0_2:
	.long	1145438208              # float 792
.LCPI0_3:
	.long	1144848384              # float 756
.LCPI0_4:
	.long	1144406016              # float 729
.LCPI0_5:
	.long	1142210560              # float 595
.LCPI0_6:
	.long	1141768192              # float 568
.LCPI0_7:
	.long	1137803264              # float 419
	.text
	.align	16, 0x90
	.type	npdl_print_page_copies,@function
npdl_print_page_copies:                 # @npdl_print_page_copies
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
	subq	$24, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 64
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ecx
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movl	18508(%rbx), %esi
	movl	%esi, %eax
	cltd
	idivl	18548(%rbx)
	subl	%edx, %esi
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	imull	%ecx, %esi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 18528(%rbx)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB0_35
# BB#1:                                 # %if.end
	cmpq	$0, 928(%rbx)
	jne	.LBB0_31
# BB#2:                                 # %if.then.9
	movl	$.L.str.2, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.4, %edi
	movq	%r14, %rsi
	callq	fputs
	movss	856(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	maxss	860(%rbx), %xmm0
	leaq	19(%rsp), %rdi
	ucomiss	.LCPI0_0(%rip), %xmm0
	jbe	.LBB0_3
# BB#13:                                # %sw.bb.20
	movl	$.L.str.8, %esi
	jmp	.LBB0_19
.LBB0_3:                                # %cond.false.9.i
	ucomiss	.LCPI0_1(%rip), %xmm0
	jbe	.LBB0_4
# BB#15:                                # %sw.bb.26
	movl	$.L.str.10, %esi
	jmp	.LBB0_19
.LBB0_4:                                # %cond.false.12.i
	ucomiss	.LCPI0_2(%rip), %xmm0
	jbe	.LBB0_5
# BB#12:                                # %sw.bb.17
	movl	$.L.str.7, %esi
	jmp	.LBB0_19
.LBB0_5:                                # %cond.false.15.i
	ucomiss	.LCPI0_3(%rip), %xmm0
	jbe	.LBB0_6
# BB#16:                                # %sw.bb.29
	movl	$.L.str.11, %esi
	jmp	.LBB0_19
.LBB0_6:                                # %cond.false.18.i
	ucomiss	.LCPI0_4(%rip), %xmm0
	jbe	.LBB0_7
# BB#17:                                # %sw.bb.32
	movl	$.L.str.12, %esi
	jmp	.LBB0_19
.LBB0_7:                                # %cond.false.21.i
	ucomiss	.LCPI0_5(%rip), %xmm0
	jbe	.LBB0_8
# BB#18:                                # %sw.bb.35
	movl	$.L.str.13, %esi
	jmp	.LBB0_19
.LBB0_8:                                # %cond.false.24.i
	ucomiss	.LCPI0_6(%rip), %xmm0
	jbe	.LBB0_9
# BB#14:                                # %sw.bb.23
	movl	$.L.str.9, %esi
	jmp	.LBB0_19
.LBB0_9:                                # %npdl_get_paper_size.exit
	ucomiss	.LCPI0_7(%rip), %xmm0
	jbe	.LBB0_10
# BB#11:                                # %sw.bb.14
	movl	$.L.str.6, %esi
	jmp	.LBB0_19
.LBB0_10:                               # %sw.bb
	movl	$.L.str.5, %esi
.LBB0_19:                               # %sw.epilog
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	18484(%rbx), %eax
	movss	856(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$76, %edx
	ucomiss	860(%rbx), %xmm0
	ja	.LBB0_21
# BB#20:                                # %select.mid
	movl	$80, %edx
.LBB0_21:                               # %select.end
	cvttss2si	12(%rsp), %ebp  # 4-byte Folded Reload
	testl	%eax, %eax
	je	.LBB0_23
# BB#22:                                # %if.then.39
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	jmp	.LBB0_24
.LBB0_23:                               # %if.else
	leaq	19(%rsp), %rcx
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_24:                               # %if.end.55
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	fprintf
	cmpl	$0, 17168(%rbx)
	jle	.LBB0_31
# BB#25:                                # %if.then.59
	cmpl	$0, 17164(%rbx)
	je	.LBB0_29
# BB#26:                                # %if.then.61
	cmpl	$0, 18492(%rbx)
	je	.LBB0_27
# BB#28:                                # %if.else.66
	movl	$.L.str.18, %esi
	jmp	.LBB0_30
.LBB0_29:                               # %if.else.69
	movl	$.L.str.19, %esi
	jmp	.LBB0_30
.LBB0_27:                               # %if.then.64
	movl	$.L.str.17, %esi
.LBB0_30:                               # %if.end.73
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_31:                               # %if.end.73
	cmpl	$99, %r15d
	movl	$99, %edx
	cmovlel	%r15d, %edx
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$0, 18480(%rbx)
	cmpl	$0, 18488(%rbx)
	je	.LBB0_33
# BB#32:                                # %if.then.80
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cvttss2si	884(%rbx), %edx
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	832(%rbx), %edx
	movl	836(%rbx), %r8d
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%edx, %ecx
	movl	%r8d, %r9d
	callq	fprintf
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_33:                               # %if.end.97
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lprn_print_image
	testl	%eax, %eax
	js	.LBB0_35
# BB#34:                                # %if.end.102
	movl	$.L.str.32, %edi
	movq	%r14, %rsi
	callq	fputs
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18528(%rbx), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_35:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	npdl_print_page_copies, .Lfunc_end0-npdl_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	npdl_image_out,@function
npdl_image_out:                         # @npdl_image_out
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 176
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%r8d, %ebx
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	cvttss2si	884(%r13), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movq	18528(%r13), %r12
	movl	%ebx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbx), %ecx
	sarl	$3, %ecx
	movl	%ecx, %eax
	imull	%r15d, %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	testl	%r15d, %r15d
	movl	$0, %r10d
	movl	$0, %r14d
	jle	.LBB1_117
# BB#1:                                 # %for.body.lr.ph.i
	movq	18520(%r13), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r13, 64(%rsp)          # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movslq	%r15d, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%r15d, 60(%rsp)         # 4-byte Spill
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
	jmp	.LBB1_2
	.align	16, 0x90
.LBB1_5:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%ecx, %ecx
	jle	.LBB1_11
# BB#6:                                 # %for.body.8.lr.ph.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r10d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r10), %esi
	movl	%esi, %eax
	andl	$-8, %eax
	subl	%eax, %r10d
	sarl	$3, %esi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_7:                                # %for.body.8.i.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r10d, %rax
	movl	$7, %edi
	subq	%rax, %rdi
	movb	mask(%rdi), %bl
	movzbl	eol(%rdx), %eax
	cmpl	$48, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then.14.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	notb	%bl
	movslq	%esi, %rax
	andb	%bl, (%r12,%rax)
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_9:                                # %if.else.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	movslq	%esi, %rax
	orb	%bl, (%r12,%rax)
.LBB1_10:                               # %if.end.30.i.i.i
                                        #   in Loop: Header=BB1_7 Depth=2
	cmpl	$6, %r10d
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %esi
	cmpl	$7, %r10d
	leal	1(%r10), %eax
	cmovgel	%r13d, %eax
	incq	%rdx
	cmpl	%edx, %ecx
	movl	%eax, %r10d
	jne	.LBB1_7
.LBB1_11:                               # %mh_set_eol.exit.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%ecx, %ecx
	je	.LBB1_131
# BB#12:                                # %if.end.i
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%r10d, %r10d
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$8, %eax
	jl	.LBB1_13
# BB#14:                                #   in Loop: Header=BB1_2 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	imulq	32(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
.LBB1_15:                               # %for.body.5.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_16 Depth 3
                                        #         Child Loop BB1_44 Depth 4
                                        #         Child Loop BB1_48 Depth 4
                                        #         Child Loop BB1_54 Depth 4
                                        #         Child Loop BB1_58 Depth 4
                                        #         Child Loop BB1_65 Depth 4
                                        #         Child Loop BB1_69 Depth 4
                                        #         Child Loop BB1_20 Depth 4
                                        #         Child Loop BB1_24 Depth 4
                                        #         Child Loop BB1_30 Depth 4
                                        #         Child Loop BB1_34 Depth 4
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	(%rcx,%rax), %rax
	cmpl	$1, %r14d
	sbbb	%dl, %dl
	movq	24(%rsp), %rcx          # 8-byte Reload
	xorb	(%rcx,%rax), %dl
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_16:                               # %for.body.17.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_44 Depth 4
                                        #         Child Loop BB1_48 Depth 4
                                        #         Child Loop BB1_54 Depth 4
                                        #         Child Loop BB1_58 Depth 4
                                        #         Child Loop BB1_65 Depth 4
                                        #         Child Loop BB1_69 Depth 4
                                        #         Child Loop BB1_20 Depth 4
                                        #         Child Loop BB1_24 Depth 4
                                        #         Child Loop BB1_30 Depth 4
                                        #         Child Loop BB1_34 Depth 4
	testb	mask(%rax), %dl
	je	.LBB1_17
# BB#41:                                # %if.else.34.i
                                        #   in Loop: Header=BB1_16 Depth=3
	cmpl	$2622, %r15d            # imm = 0xA3E
	jg	.LBB1_43
# BB#42:                                # %if.then.37.i
                                        #   in Loop: Header=BB1_16 Depth=3
	incl	%r15d
	jmp	.LBB1_76
	.align	16, 0x90
.LBB1_17:                               # %if.then.22.i
                                        #   in Loop: Header=BB1_16 Depth=3
	cmpl	$63, %r15d
	jle	.LBB1_18
# BB#19:                                # %if.then.i.325.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movb	%dl, 115(%rsp)          # 1-byte Spill
	movl	%r15d, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	leal	(%rax,%r15), %eax
	sarl	$6, %eax
	decl	%eax
	movslq	%r14d, %r8
	cltq
	imulq	$14, %rax, %rsi
	imulq	$560, %r8, %rax         # imm = 0x230
	leaq	makeup(%rax,%rsi), %rax
	movq	$-1, %r9
	.align	16, 0x90
.LBB1_20:                               # %for.cond.i.387.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpb	$0, 1(%rax,%r9)
	leaq	1(%r9), %r9
	jne	.LBB1_20
# BB#21:                                # %for.end.i.391.i
                                        #   in Loop: Header=BB1_16 Depth=3
	leal	(%r9,%r11), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	sarl	$3, %ecx
	cmpl	116(%rsp), %ecx         # 4-byte Folded Reload
	jge	.LBB1_131
# BB#22:                                # %if.end.i.393.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%r9d, %r9d
	jle	.LBB1_28
# BB#23:                                # %for.body.8.lr.ph.i.396.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movl	%r11d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r11), %edi
	movl	%edi, %eax
	andl	$-8, %eax
	movl	%r11d, %ebp
	subl	%eax, %ebp
	sarl	$3, %edi
	movslq	%r14d, %rax
	imulq	$560, %rax, %rax        # imm = 0x230
	leaq	makeup(%rax,%rsi), %rsi
	movl	%r9d, %ecx
	.align	16, 0x90
.LBB1_24:                               # %for.body.8.i.405.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%ebp, %rax
	movl	$7, %edx
	subq	%rax, %rdx
	movb	mask(%rdx), %al
	movzbl	(%rsi), %edx
	cmpl	$48, %edx
	jne	.LBB1_26
# BB#25:                                # %if.then.14.i.410.i
                                        #   in Loop: Header=BB1_24 Depth=4
	notb	%al
	movslq	%edi, %rdx
	andb	%al, (%r12,%rdx)
	jmp	.LBB1_27
	.align	16, 0x90
.LBB1_26:                               # %if.else.i.414.i
                                        #   in Loop: Header=BB1_24 Depth=4
	movslq	%edi, %rdx
	orb	%al, (%r12,%rdx)
.LBB1_27:                               # %if.end.30.i.423.i
                                        #   in Loop: Header=BB1_24 Depth=4
	cmpl	$6, %ebp
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %edi
	cmpl	$7, %ebp
	leal	1(%rbp), %eax
	cmovgel	%r13d, %eax
	incq	%rsi
	decl	%ecx
	movl	%eax, %ebp
	jne	.LBB1_24
.LBB1_28:                               # %mh_write_to_buffer.exit426.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%r9d, %r9d
	jne	.LBB1_29
	jmp	.LBB1_131
	.align	16, 0x90
.LBB1_43:                               # %if.else.38.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movb	%dl, 115(%rsp)          # 1-byte Spill
	movslq	%r14d, %rsi
	movl	%r14d, 92(%rsp)         # 4-byte Spill
	imulq	$560, %rsi, %rdx        # imm = 0x230
	movq	$-1, %rdi
	.align	16, 0x90
.LBB1_44:                               # %for.cond.i.276.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpb	$0, makeup+547(%rdx,%rdi)
	leaq	1(%rdi), %rdi
	jne	.LBB1_44
# BB#45:                                # %for.end.i.280.i
                                        #   in Loop: Header=BB1_16 Depth=3
	leal	(%rdi,%r11), %r14d
	movl	%r14d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r14), %r15d
	movl	%r15d, %ecx
	sarl	$3, %ecx
	cmpl	116(%rsp), %ecx         # 4-byte Folded Reload
	jge	.LBB1_131
# BB#46:                                # %if.end.i.282.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movq	%r11, %rbp
	testl	%edi, %edi
	jle	.LBB1_52
# BB#47:                                # %for.body.8.lr.ph.i.285.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbp), %r8d
	movl	%r8d, %eax
	andl	$-8, %eax
	movl	%ebp, %r11d
	subl	%eax, %r11d
	sarl	$3, %r8d
	leaq	makeup+546(%rdx), %rsi
	movl	%edi, %edx
	.align	16, 0x90
.LBB1_48:                               # %for.body.8.i.294.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%r11d, %rax
	movl	$7, %ebx
	subq	%rax, %rbx
	movb	mask(%rbx), %r9b
	movzbl	(%rsi), %eax
	cmpl	$48, %eax
	jne	.LBB1_50
# BB#49:                                # %if.then.14.i.299.i
                                        #   in Loop: Header=BB1_48 Depth=4
	notb	%r9b
	movslq	%r8d, %rax
	andb	%r9b, (%r12,%rax)
	jmp	.LBB1_51
	.align	16, 0x90
.LBB1_50:                               # %if.else.i.303.i
                                        #   in Loop: Header=BB1_48 Depth=4
	movslq	%r8d, %rax
	orb	%r9b, (%r12,%rax)
.LBB1_51:                               # %if.end.30.i.312.i
                                        #   in Loop: Header=BB1_48 Depth=4
	cmpl	$6, %r11d
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %r8d
	cmpl	$7, %r11d
	leal	1(%r11), %eax
	cmovgel	%r13d, %eax
	incq	%rsi
	decl	%edx
	movl	%eax, %r11d
	jne	.LBB1_48
.LBB1_52:                               # %mh_write_to_buffer.exit315.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%edi, %edi
	movq	%rbp, %r9
	movq	96(%rsp), %rax          # 8-byte Reload
	je	.LBB1_131
# BB#53:                                # %for.cond.i.232.i.preheader
                                        #   in Loop: Header=BB1_16 Depth=3
	imulq	$832, %rax, %rdx        # imm = 0x340
	movq	$-1, %rbx
	.align	16, 0x90
.LBB1_54:                               # %for.cond.i.232.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpb	$0, terminating+820(%rdx,%rbx)
	leaq	1(%rbx), %rbx
	jne	.LBB1_54
# BB#55:                                # %for.end.i.236.i
                                        #   in Loop: Header=BB1_16 Depth=3
	leal	(%rbx,%r14), %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$29, %esi
	addl	%eax, %esi
	sarl	$3, %esi
	cmpl	116(%rsp), %esi         # 4-byte Folded Reload
	jge	.LBB1_131
# BB#56:                                # %if.end.i.238.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%ebx, %ebx
	jle	.LBB1_62
# BB#57:                                # %for.body.8.lr.ph.i.241.i
                                        #   in Loop: Header=BB1_16 Depth=3
	andl	$-8, %r15d
	subl	%r15d, %r14d
	leaq	terminating+819(%rdx), %rsi
	movl	%ebx, %edx
	.align	16, 0x90
.LBB1_58:                               # %for.body.8.i.250.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%r14d, %rax
	movl	$7, %ebp
	subq	%rax, %rbp
	movb	mask(%rbp), %al
	movzbl	(%rsi), %ebp
	cmpl	$48, %ebp
	jne	.LBB1_60
# BB#59:                                # %if.then.14.i.255.i
                                        #   in Loop: Header=BB1_58 Depth=4
	notb	%al
	movslq	%ecx, %rbp
	andb	%al, (%r12,%rbp)
	jmp	.LBB1_61
	.align	16, 0x90
.LBB1_60:                               # %if.else.i.259.i
                                        #   in Loop: Header=BB1_58 Depth=4
	movslq	%ecx, %rbp
	orb	%al, (%r12,%rbp)
.LBB1_61:                               # %if.end.30.i.268.i
                                        #   in Loop: Header=BB1_58 Depth=4
	cmpl	$6, %r14d
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %ecx
	cmpl	$7, %r14d
	leal	1(%r14), %eax
	cmovgel	%r13d, %eax
	incq	%rsi
	decl	%edx
	movl	%eax, %r14d
	jne	.LBB1_58
.LBB1_62:                               # %mh_write_to_buffer.exit271.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%ebx, %ebx
	je	.LBB1_131
# BB#63:                                # %mh_write_to_buffer.exit271.i
                                        #   in Loop: Header=BB1_16 Depth=3
	addl	%edi, %ebx
	je	.LBB1_131
# BB#64:                                # %if.end.43.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movl	92(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	sete	%al
	movzbl	%al, %eax
	imulq	$832, %rax, %rax        # imm = 0x340
	leaq	terminating(%rax), %rax
	movq	$-1, %rcx
	.align	16, 0x90
.LBB1_65:                               # %for.cond.i.173.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpb	$0, 1(%rax,%rcx)
	leaq	1(%rcx), %rcx
	jne	.LBB1_65
# BB#66:                                # %for.end.i.177.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%edx, %edx
	sete	%r8b
	addl	%r9d, %ebx
	leal	(%rcx,%rbx), %r11d
	movl	%r11d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r11), %eax
	sarl	$3, %eax
	cmpl	116(%rsp), %eax         # 4-byte Folded Reload
	jge	.LBB1_131
# BB#67:                                # %if.end.i.179.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%ecx, %ecx
	jle	.LBB1_73
# BB#68:                                # %for.body.8.lr.ph.i.182.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%edx, %edx
	sete	%al
	movl	%ebx, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%rbx), %ebp
	movl	%ebp, %edx
	andl	$-8, %edx
	subl	%edx, %ebx
	sarl	$3, %ebp
	movzbl	%al, %eax
	imulq	$832, %rax, %rax        # imm = 0x340
	leaq	terminating(%rax), %rsi
	movl	%ecx, %edx
	.align	16, 0x90
.LBB1_69:                               # %for.body.8.i.191.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%ebx, %rax
	movl	$7, %edi
	subq	%rax, %rdi
	movb	mask(%rdi), %al
	movzbl	(%rsi), %edi
	cmpl	$48, %edi
	jne	.LBB1_71
# BB#70:                                # %if.then.14.i.196.i
                                        #   in Loop: Header=BB1_69 Depth=4
	notb	%al
	movslq	%ebp, %rdi
	andb	%al, (%r12,%rdi)
	jmp	.LBB1_72
	.align	16, 0x90
.LBB1_71:                               # %if.else.i.200.i
                                        #   in Loop: Header=BB1_69 Depth=4
	movslq	%ebp, %rdi
	orb	%al, (%r12,%rdi)
.LBB1_72:                               # %if.end.30.i.209.i
                                        #   in Loop: Header=BB1_69 Depth=4
	cmpl	$6, %ebx
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %ebp
	cmpl	$7, %ebx
	leal	1(%rbx), %eax
	cmovgel	%r13d, %eax
	incq	%rsi
	decl	%edx
	movl	%eax, %ebx
	jne	.LBB1_69
.LBB1_73:                               # %mh_write_to_buffer.exit212.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%ecx, %ecx
	je	.LBB1_131
# BB#74:                                # %if.end.52.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movzbl	%r8b, %r14d
	xorl	$1, %r14d
	movl	$1, %r15d
	movb	115(%rsp), %dl          # 1-byte Reload
	jmp	.LBB1_75
.LBB1_18:                               # %entry.if.end.6_crit_edge.i.318.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movb	%dl, 115(%rsp)          # 1-byte Spill
	movslq	%r14d, %r8
	xorl	%r9d, %r9d
.LBB1_29:                               # %if.end.6.i.335.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movl	%r15d, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	leal	(%rax,%r15), %eax
	andl	$-64, %eax
	subl	%eax, %r15d
	movslq	%r15d, %rax
	imulq	$13, %rax, %rax
	imulq	$832, %r8, %rcx         # imm = 0x340
	leaq	terminating(%rcx,%rax), %rdi
	movq	$-1, %rcx
	.align	16, 0x90
.LBB1_30:                               # %for.cond.i.343.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpb	$0, 1(%rdi,%rcx)
	leaq	1(%rcx), %rcx
	jne	.LBB1_30
# BB#31:                                # %for.end.i.347.i
                                        #   in Loop: Header=BB1_16 Depth=3
	leal	(%r9,%r11), %ebp
	leal	(%rcx,%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	addl	%eax, %edx
	sarl	$3, %edx
	cmpl	116(%rsp), %edx         # 4-byte Folded Reload
	jge	.LBB1_131
# BB#32:                                # %if.end.i.349.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%ecx, %ecx
	jle	.LBB1_38
# BB#33:                                # %for.body.8.lr.ph.i.352.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbp), %esi
	movl	%esi, %eax
	andl	$-8, %eax
	subl	%eax, %ebp
	sarl	$3, %esi
	movl	%ecx, %edx
	.align	16, 0x90
.LBB1_34:                               # %for.body.8.i.361.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%ebp, %rax
	movl	$7, %ebx
	subq	%rax, %rbx
	movb	mask(%rbx), %al
	movzbl	(%rdi), %ebx
	cmpl	$48, %ebx
	jne	.LBB1_36
# BB#35:                                # %if.then.14.i.366.i
                                        #   in Loop: Header=BB1_34 Depth=4
	notb	%al
	movslq	%esi, %rbx
	andb	%al, (%r12,%rbx)
	jmp	.LBB1_37
	.align	16, 0x90
.LBB1_36:                               # %if.else.i.370.i
                                        #   in Loop: Header=BB1_34 Depth=4
	movslq	%esi, %rbx
	orb	%al, (%r12,%rbx)
.LBB1_37:                               # %if.end.30.i.379.i
                                        #   in Loop: Header=BB1_34 Depth=4
	cmpl	$6, %ebp
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %esi
	cmpl	$7, %ebp
	leal	1(%rbp), %eax
	cmovgel	%r13d, %eax
	incq	%rdi
	decl	%edx
	movl	%eax, %ebp
	jne	.LBB1_34
.LBB1_38:                               # %mh_write_to_buffer.exit382.i
                                        #   in Loop: Header=BB1_16 Depth=3
	testl	%ecx, %ecx
	je	.LBB1_131
# BB#39:                                # %mh_write_to_buffer.exit382.i
                                        #   in Loop: Header=BB1_16 Depth=3
	addl	%ecx, %r9d
	je	.LBB1_131
# BB#40:                                # %if.end.27.i
                                        #   in Loop: Header=BB1_16 Depth=3
	addl	%r11d, %r9d
	testl	%r14d, %r14d
	sete	%al
	movzbl	%al, %r14d
	movb	115(%rsp), %dl          # 1-byte Reload
	notb	%dl
	movl	$1, %r15d
	movl	%r9d, %r11d
.LBB1_75:                               # %for.inc.i
                                        #   in Loop: Header=BB1_16 Depth=3
	movq	104(%rsp), %rax         # 8-byte Reload
.LBB1_76:                               # %for.inc.i
                                        #   in Loop: Header=BB1_16 Depth=3
	incq	%rax
	cmpq	$8, %rax
	jl	.LBB1_16
# BB#77:                                # %for.inc.60.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	8(%rsp), %rcx           # 8-byte Reload
	incq	%rcx
	cmpq	32(%rsp), %rcx          # 8-byte Folded Reload
	movq	(%rsp), %rax            # 8-byte Reload
	jl	.LBB1_15
# BB#78:                                # %for.end.62.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$63, %r15d
	jle	.LBB1_79
# BB#80:                                # %if.then.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	leal	(%rax,%r15), %eax
	sarl	$6, %eax
	decl	%eax
	movslq	%r14d, %rcx
	cltq
	imulq	$14, %rax, %rsi
	imulq	$560, %rcx, %rax        # imm = 0x230
	leaq	makeup(%rax,%rsi), %rax
	movq	$-1, %r10
.LBB1_81:                               # %for.cond.i.119.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%rax,%r10)
	leaq	1(%r10), %r10
	jne	.LBB1_81
# BB#82:                                # %for.end.i.123.i
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	(%r10,%r11), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	addl	%eax, %edx
	sarl	$3, %edx
	cmpl	116(%rsp), %edx         # 4-byte Folded Reload
	jge	.LBB1_131
# BB#83:                                # %if.end.i.125.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r10d, %r10d
	jle	.LBB1_89
# BB#84:                                # %for.body.8.lr.ph.i.128.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r11d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r11), %edi
	movl	%edi, %eax
	andl	$-8, %eax
	movl	%r11d, %ebp
	subl	%eax, %ebp
	sarl	$3, %edi
	movslq	%r14d, %rax
	imulq	$560, %rax, %rax        # imm = 0x230
	leaq	makeup(%rax,%rsi), %rsi
	movl	%r10d, %edx
.LBB1_85:                               # %for.body.8.i.137.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ebp, %rax
	movl	$7, %ebx
	subq	%rax, %rbx
	movb	mask(%rbx), %al
	movzbl	(%rsi), %ebx
	cmpl	$48, %ebx
	jne	.LBB1_87
# BB#86:                                # %if.then.14.i.142.i
                                        #   in Loop: Header=BB1_85 Depth=2
	notb	%al
	movslq	%edi, %rbx
	andb	%al, (%r12,%rbx)
	jmp	.LBB1_88
.LBB1_87:                               # %if.else.i.146.i
                                        #   in Loop: Header=BB1_85 Depth=2
	movslq	%edi, %rbx
	orb	%al, (%r12,%rbx)
.LBB1_88:                               # %if.end.30.i.155.i
                                        #   in Loop: Header=BB1_85 Depth=2
	cmpl	$6, %ebp
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %edi
	cmpl	$7, %ebp
	leal	1(%rbp), %eax
	cmovgel	%r13d, %eax
	incq	%rsi
	decl	%edx
	movl	%eax, %ebp
	jne	.LBB1_85
.LBB1_89:                               # %mh_write_to_buffer.exit158.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r10d, %r10d
	jne	.LBB1_90
	jmp	.LBB1_131
	.align	16, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_2 Depth=1
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	movslq	%r14d, %rcx
.LBB1_90:                               # %if.end.6.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	leal	(%rax,%r15), %eax
	andl	$-64, %eax
	subl	%eax, %r15d
	movslq	%r15d, %rax
	imulq	$13, %rax, %rax
	imulq	$832, %rcx, %rcx        # imm = 0x340
	leaq	terminating(%rcx,%rax), %rdi
	movq	$-1, %rcx
	.align	16, 0x90
.LBB1_91:                               # %for.cond.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 1(%rdi,%rcx)
	leaq	1(%rcx), %rcx
	jne	.LBB1_91
# BB#92:                                # %for.end.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	(%r10,%r11), %ebp
	leal	(%rcx,%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	addl	%eax, %edx
	sarl	$3, %edx
	cmpl	116(%rsp), %edx         # 4-byte Folded Reload
	jge	.LBB1_131
# BB#93:                                # %if.end.i.108.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%ecx, %ecx
	jle	.LBB1_99
# BB#94:                                # %for.body.8.lr.ph.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbp), %esi
	movl	%esi, %eax
	andl	$-8, %eax
	subl	%eax, %ebp
	sarl	$3, %esi
	movl	%ecx, %edx
	.align	16, 0x90
.LBB1_95:                               # %for.body.8.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ebp, %rax
	movl	$7, %ebx
	subq	%rax, %rbx
	movb	mask(%rbx), %al
	movzbl	(%rdi), %ebx
	cmpl	$48, %ebx
	jne	.LBB1_97
# BB#96:                                # %if.then.14.i.i
                                        #   in Loop: Header=BB1_95 Depth=2
	notb	%al
	movslq	%esi, %rbx
	andb	%al, (%r12,%rbx)
	jmp	.LBB1_98
	.align	16, 0x90
.LBB1_97:                               # %if.else.i.i
                                        #   in Loop: Header=BB1_95 Depth=2
	movslq	%esi, %rbx
	orb	%al, (%r12,%rbx)
.LBB1_98:                               # %if.end.30.i.i
                                        #   in Loop: Header=BB1_95 Depth=2
	cmpl	$6, %ebp
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %esi
	cmpl	$7, %ebp
	leal	1(%rbp), %eax
	cmovgel	%r13d, %eax
	incq	%rdi
	decl	%edx
	movl	%eax, %ebp
	jne	.LBB1_95
.LBB1_99:                               # %mh_write_to_buffer.exit.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%ecx, %ecx
	je	.LBB1_131
# BB#100:                               # %mh_write_to_buffer.exit.i
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	%ecx, %r10d
	je	.LBB1_131
# BB#101:                               # %if.end.67.i
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	%r11d, %r10d
	movq	72(%rsp), %rax          # 8-byte Reload
	incq	%rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	cmpq	16(%rsp), %rax          # 8-byte Folded Reload
	jl	.LBB1_2
	jmp	.LBB1_102
.LBB1_79:                               # %entry.if.end.6_crit_edge.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%r14d, %rcx
	jmp	.LBB1_90
	.align	16, 0x90
.LBB1_2:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_15 Depth 2
                                        #       Child Loop BB1_16 Depth 3
                                        #         Child Loop BB1_44 Depth 4
                                        #         Child Loop BB1_48 Depth 4
                                        #         Child Loop BB1_54 Depth 4
                                        #         Child Loop BB1_58 Depth 4
                                        #         Child Loop BB1_65 Depth 4
                                        #         Child Loop BB1_69 Depth 4
                                        #         Child Loop BB1_20 Depth 4
                                        #         Child Loop BB1_24 Depth 4
                                        #         Child Loop BB1_30 Depth 4
                                        #         Child Loop BB1_34 Depth 4
                                        #     Child Loop BB1_81 Depth 2
                                        #     Child Loop BB1_85 Depth 2
                                        #     Child Loop BB1_91 Depth 2
                                        #     Child Loop BB1_95 Depth 2
	movq	$-1, %rcx
	.align	16, 0x90
.LBB1_3:                                # %for.cond.i.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, eol+1(%rcx)
	leaq	1(%rcx), %rcx
	jne	.LBB1_3
# BB#4:                                 # %for.end.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	(%rcx,%r10), %r11d
	movl	%r11d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r11), %eax
	sarl	$3, %eax
	cmpl	116(%rsp), %eax         # 4-byte Folded Reload
	jl	.LBB1_5
	jmp	.LBB1_131
.LBB1_102:                              # %for.end.71.i
	movl	%r10d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r10), %eax
	andl	$-8, %eax
	movl	%r10d, %edx
	subl	%eax, %edx
	leal	72(%rdx), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	72(%rax,%rdx), %eax
	andl	$-8, %eax
	xorl	%r14d, %r14d
	subl	%eax, %ecx
	je	.LBB1_116
# BB#103:                               # %for.cond.preheader.i.i
	xorl	%r14d, %r14d
	movl	$8, %r8d
	subl	%ecx, %r8d
	jle	.LBB1_116
# BB#104:
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
.LBB1_105:                              # %for.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_106 Depth 2
                                        #     Child Loop BB1_110 Depth 2
	movq	$-1, %rbx
	.align	16, 0x90
.LBB1_106:                              # %for.cond.i.i.62.i
                                        #   Parent Loop BB1_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, fill+1(%rbx)
	leaq	1(%rbx), %rbx
	jne	.LBB1_106
# BB#107:                               # %for.end.i.i.66.i
                                        #   in Loop: Header=BB1_105 Depth=1
	leal	(%r14,%r10), %ecx
	leal	(%rbx,%rcx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	addl	%eax, %edx
	sarl	$3, %edx
	cmpl	116(%rsp), %edx         # 4-byte Folded Reload
	jge	.LBB1_131
# BB#108:                               # %if.end.i.i.68.i
                                        #   in Loop: Header=BB1_105 Depth=1
	testl	%ebx, %ebx
	jle	.LBB1_114
# BB#109:                               # %for.body.8.lr.ph.i.i.71.i
                                        #   in Loop: Header=BB1_105 Depth=1
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rcx), %ebp
	movl	%ebp, %eax
	andl	$-8, %eax
	subl	%eax, %ecx
	sarl	$3, %ebp
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_110:                              # %for.body.8.i.i.80.i
                                        #   Parent Loop BB1_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ecx, %rax
	movl	$7, %edi
	subq	%rax, %rdi
	movb	mask(%rdi), %al
	movzbl	fill(%rdx), %edi
	cmpl	$48, %edi
	jne	.LBB1_112
# BB#111:                               # %if.then.14.i.i.85.i
                                        #   in Loop: Header=BB1_110 Depth=2
	notb	%al
	movslq	%ebp, %rdi
	andb	%al, (%r12,%rdi)
	jmp	.LBB1_113
	.align	16, 0x90
.LBB1_112:                              # %if.else.i.i.89.i
                                        #   in Loop: Header=BB1_110 Depth=2
	movslq	%ebp, %rdi
	orb	%al, (%r12,%rdi)
.LBB1_113:                              # %if.end.30.i.i.96.i
                                        #   in Loop: Header=BB1_110 Depth=2
	cmpl	$6, %ecx
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %ebp
	cmpl	$7, %ecx
	leal	1(%rcx), %eax
	cmovgel	%r11d, %eax
	incq	%rdx
	cmpl	%edx, %ebx
	movl	%eax, %ecx
	jne	.LBB1_110
.LBB1_114:                              # %mh_write_to_buffer.exit.i.i
                                        #   in Loop: Header=BB1_105 Depth=1
	testl	%ebx, %ebx
	je	.LBB1_131
# BB#115:                               # %if.end.i.i
                                        #   in Loop: Header=BB1_105 Depth=1
	leal	(%r14,%rbx), %r14d
	incl	%r9d
	cmpl	%r8d, %r9d
	jl	.LBB1_105
.LBB1_116:
	movq	64(%rsp), %r13          # 8-byte Reload
	movl	60(%rsp), %r15d         # 4-byte Reload
.LBB1_117:                              # %for.body.10.i.preheader.i
	movl	%r15d, 60(%rsp)         # 4-byte Spill
	movq	%r13, 64(%rsp)          # 8-byte Spill
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB1_118:                              # %for.body.10.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_119 Depth 2
                                        #     Child Loop BB1_123 Depth 2
	movq	$-1, %rdi
	.align	16, 0x90
.LBB1_119:                              # %for.cond.i.22.i.i
                                        #   Parent Loop BB1_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, eol+1(%rdi)
	leaq	1(%rdi), %rdi
	jne	.LBB1_119
# BB#120:                               # %for.end.i.26.i.i
                                        #   in Loop: Header=BB1_118 Depth=1
	leal	(%r14,%r10), %ebp
	leal	(%rdi,%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	addl	%eax, %edx
	sarl	$3, %edx
	cmpl	116(%rsp), %edx         # 4-byte Folded Reload
	jge	.LBB1_131
# BB#121:                               # %if.end.i.28.i.i
                                        #   in Loop: Header=BB1_118 Depth=1
	testl	%edi, %edi
	movl	$0, %ecx
	jle	.LBB1_127
# BB#122:                               # %for.body.8.lr.ph.i.31.i.i
                                        #   in Loop: Header=BB1_118 Depth=1
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbp), %ebx
	movl	%ebx, %eax
	andl	$-8, %eax
	subl	%eax, %ebp
	sarl	$3, %ebx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_123:                              # %for.body.8.i.40.i.i
                                        #   Parent Loop BB1_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ebp, %rax
	movl	$7, %esi
	subq	%rax, %rsi
	movb	mask(%rsi), %al
	movzbl	eol(%rdx), %esi
	cmpl	$48, %esi
	jne	.LBB1_125
# BB#124:                               # %if.then.14.i.45.i.i
                                        #   in Loop: Header=BB1_123 Depth=2
	notb	%al
	movslq	%ebx, %rsi
	andb	%al, (%r12,%rsi)
	jmp	.LBB1_126
	.align	16, 0x90
.LBB1_125:                              # %if.else.i.49.i.i
                                        #   in Loop: Header=BB1_123 Depth=2
	movslq	%ebx, %rsi
	orb	%al, (%r12,%rsi)
.LBB1_126:                              # %if.end.30.i.58.i.i
                                        #   in Loop: Header=BB1_123 Depth=2
	cmpl	$6, %ebp
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %ebx
	cmpl	$7, %ebp
	leal	1(%rbp), %eax
	cmovgel	%ecx, %eax
	incq	%rdx
	cmpl	%edx, %edi
	movl	%eax, %ebp
	jne	.LBB1_123
.LBB1_127:                              # %mh_write_to_buffer.exit60.i.i
                                        #   in Loop: Header=BB1_118 Depth=1
	testl	%edi, %edi
	je	.LBB1_131
# BB#128:                               # %if.end.15.i.i
                                        #   in Loop: Header=BB1_118 Depth=1
	leal	(%r14,%rdi), %r14d
	incl	%r8d
	cmpl	$6, %r8d
	jl	.LBB1_118
# BB#129:                               # %mh_set_rtc.exit.i
	testl	%r14d, %r14d
	je	.LBB1_131
# BB#130:                               # %mh_compression.exit
	leal	7(%r14,%r10), %eax
	cmpl	$14, %eax
	ja	.LBB1_132
.LBB1_131:                              # %if.then
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	movq	80(%rsp), %rdx          # 8-byte Reload
	imull	%edx, %eax
	movl	%eax, %ebp
	sarl	$31, %ebp
	shrl	$29, %ebp
	addl	%eax, %ebp
	sarl	$3, %ebp
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	%ebp, %r8d
	movl	44(%rsp), %r9d          # 4-byte Reload
	callq	fprintf
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	18520(%rax), %rdi
.LBB1_133:                              # %if.else
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%rbx, %rcx
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fwrite                  # TAILCALL
.LBB1_132:                              # %if.else
	addl	%r10d, %r14d
	movl	%r14d, %ebp
	sarl	$31, %ebp
	shrl	$29, %ebp
	addl	%r14d, %ebp
	sarl	$3, %ebp
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	%ebp, %r8d
	movl	44(%rsp), %r9d          # 4-byte Reload
	callq	fprintf
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	18528(%rax), %rdi
	jmp	.LBB1_133
.Lfunc_end1:
	.size	npdl_image_out, .Lfunc_end1-npdl_image_out
	.cfi_endproc

	.align	16, 0x90
	.type	npdl_open,@function
npdl_open:                              # @npdl_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cvttss2si	884(%rbx), %eax
	cvttss2si	888(%rbx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_8
# BB#1:                                 # %if.else
	cmpl	$239, %eax
	jle	.LBB2_2
# BB#5:                                 # %if.else
	cmpl	$240, %eax
	je	.LBB2_4
# BB#6:                                 # %if.else
	cmpl	$600, %eax              # imm = 0x258
	je	.LBB2_4
# BB#7:                                 # %if.else
	cmpl	$400, %eax              # imm = 0x190
	je	.LBB2_4
	jmp	.LBB2_8
.LBB2_2:                                # %if.else
	cmpl	$160, %eax
	je	.LBB2_4
# BB#3:                                 # %if.else
	cmpl	$200, %eax
	jne	.LBB2_8
.LBB2_4:                                # %if.end.19
	movq	%rbx, %rdi
	callq	npdl_set_page_layout
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB2_8:                                # %cleanup
	movl	$-15, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	npdl_open, .Lfunc_end2-npdl_open
	.cfi_endproc

	.align	16, 0x90
	.type	npdl_close,@function
npdl_close:                             # @npdl_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	movq	17176(%rbx), %rsi
	movl	$.L.str.2, %edi
	callq	fputs
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end3:
	.size	npdl_close, .Lfunc_end3-npdl_close
	.cfi_endproc

	.align	16, 0x90
	.type	npdl_put_params,@function
npdl_put_params:                        # @npdl_put_params
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
	movq	%rdi, %r14
	callq	lprn_put_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB4_4
# BB#1:                                 # %if.end
	xorl	%ebx, %ebx
	cmpl	$0, 84(%r14)
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 18480(%r14)
	jne	.LBB4_4
# BB#3:                                 # %if.then.2
	movq	%r14, %rdi
	callq	npdl_set_page_layout
.LBB4_4:                                # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	npdl_put_params, .Lfunc_end4-npdl_put_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1149304832              # float 1032
.LCPI5_1:
	.long	1146257408              # float 842
.LCPI5_2:
	.long	1145438208              # float 792
.LCPI5_3:
	.long	1144848384              # float 756
.LCPI5_4:
	.long	1144406016              # float 729
.LCPI5_5:
	.long	1142210560              # float 595
.LCPI5_6:
	.long	1141768192              # float 568
.LCPI5_7:
	.long	1137803264              # float 419
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_8:
	.long	1050589266              # float 3.100000e-01
	.long	1039516303              # float 1.200000e-01
	.long	1047904911              # float 2.400000e-01
	.long	1045220557              # float 2.000000e-01
.LCPI5_9:
	.long	1045220557              # float 2.000000e-01
	.long	1050589266              # float 3.100000e-01
	.long	1039516303              # float 1.200000e-01
	.long	1047904911              # float 2.400000e-01
.LCPI5_10:
	.long	1045220557              # float 2.000000e-01
	.long	1050589266              # float 3.100000e-01
	.long	1042536202              # float 1.600000e-01
	.long	1042536202              # float 1.600000e-01
.LCPI5_11:
	.long	1050589266              # float 3.100000e-01
	.long	1042536202              # float 1.600000e-01
	.long	1042536202              # float 1.600000e-01
	.long	1045220557              # float 2.000000e-01
.LCPI5_12:
	.long	1050589266              # float 3.100000e-01
	.long	1047904911              # float 2.400000e-01
	.long	1042536202              # float 1.600000e-01
	.long	1045220557              # float 2.000000e-01
.LCPI5_13:
	.long	1045220557              # float 2.000000e-01
	.long	1050589266              # float 3.100000e-01
	.long	1047904911              # float 2.400000e-01
	.long	1042536202              # float 1.600000e-01
.LCPI5_14:
	.long	1045220557              # float 2.000000e-01
	.long	1045220557              # float 2.000000e-01
	.long	1045220557              # float 2.000000e-01
	.long	1045220557              # float 2.000000e-01
.LCPI5_15:
	.long	1050589266              # float 3.100000e-01
	.long	1047904911              # float 2.400000e-01
	.long	1045220557              # float 2.000000e-01
	.long	1045220557              # float 2.000000e-01
.LCPI5_16:
	.long	1045220557              # float 2.000000e-01
	.long	1050589266              # float 3.100000e-01
	.long	1047904911              # float 2.400000e-01
	.long	1045220557              # float 2.000000e-01
.LCPI5_17:
	.long	1050589266              # float 3.100000e-01
	.long	1045220557              # float 2.000000e-01
	.long	1042536202              # float 1.600000e-01
	.long	1045220557              # float 2.000000e-01
.LCPI5_18:
	.long	1045220557              # float 2.000000e-01
	.long	1050589266              # float 3.100000e-01
	.long	1045220557              # float 2.000000e-01
	.long	1042536202              # float 1.600000e-01
.LCPI5_19:
	.long	1045220557              # float 2.000000e-01
	.long	1045220557              # float 2.000000e-01
	.long	1047904911              # float 2.400000e-01
	.long	1045220557              # float 2.000000e-01
.LCPI5_20:
	.long	1045220557              # float 2.000000e-01
	.long	1047904911              # float 2.400000e-01
	.long	1045220557              # float 2.000000e-01
	.long	1045220557              # float 2.000000e-01
	.text
	.align	16, 0x90
	.type	npdl_set_page_layout,@function
npdl_set_page_layout:                   # @npdl_set_page_layout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movss	856(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	860(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm2
	maxss	%xmm1, %xmm2
	ucomiss	.LCPI5_0(%rip), %xmm2
	jbe	.LBB5_1
# BB#10:                                # %sw.bb
	leaq	(%rsp), %rsi
	ucomiss	%xmm1, %xmm0
	jbe	.LBB5_12
# BB#11:                                # %if.then
	movaps	.LCPI5_20(%rip), %xmm0  # xmm0 = [2.000000e-01,2.400000e-01,2.000000e-01,2.000000e-01]
	jmp	.LBB5_27
.LBB5_1:                                # %cond.false.9.i
	ucomiss	.LCPI5_1(%rip), %xmm2
	ja	.LBB5_24
# BB#2:                                 # %cond.false.9.i
	ucomiss	.LCPI5_2(%rip), %xmm2
	ja	.LBB5_24
# BB#3:                                 # %cond.false.15.i
	ucomiss	.LCPI5_3(%rip), %xmm2
	jbe	.LBB5_4
# BB#17:                                # %sw.bb.45
	leaq	(%rsp), %rsi
	ucomiss	%xmm1, %xmm0
	jbe	.LBB5_19
# BB#18:                                # %if.then.51
	movaps	.LCPI5_16(%rip), %xmm0  # xmm0 = [2.000000e-01,3.100000e-01,2.400000e-01,2.000000e-01]
	jmp	.LBB5_27
.LBB5_12:                               # %if.else
	movaps	.LCPI5_19(%rip), %xmm0  # xmm0 = [2.000000e-01,2.000000e-01,2.400000e-01,2.000000e-01]
	jmp	.LBB5_27
.LBB5_24:                               # %sw.default
	leaq	(%rsp), %rsi
	ucomiss	%xmm1, %xmm0
	jbe	.LBB5_26
# BB#25:                                # %if.then.89
	movaps	.LCPI5_18(%rip), %xmm0  # xmm0 = [2.000000e-01,3.100000e-01,2.000000e-01,1.600000e-01]
	jmp	.LBB5_27
.LBB5_4:                                # %cond.false.18.i
	ucomiss	.LCPI5_4(%rip), %xmm2
	ja	.LBB5_23
# BB#5:                                 # %cond.false.18.i
	ucomiss	.LCPI5_5(%rip), %xmm2
	ja	.LBB5_23
# BB#6:                                 # %cond.false.24.i
	leaq	(%rsp), %rsi
	ucomiss	.LCPI5_6(%rip), %xmm2
	jbe	.LBB5_7
# BB#14:                                # %sw.bb.28
	ucomiss	%xmm1, %xmm0
	jbe	.LBB5_16
# BB#15:                                # %if.then.34
	movaps	.LCPI5_13(%rip), %xmm0  # xmm0 = [2.000000e-01,3.100000e-01,2.400000e-01,1.600000e-01]
	jmp	.LBB5_27
.LBB5_26:                               # %if.else.94
	movaps	.LCPI5_17(%rip), %xmm0  # xmm0 = [3.100000e-01,2.000000e-01,1.600000e-01,2.000000e-01]
	jmp	.LBB5_27
.LBB5_19:                               # %if.else.56
	movaps	.LCPI5_15(%rip), %xmm0  # xmm0 = [3.100000e-01,2.400000e-01,2.000000e-01,2.000000e-01]
	jmp	.LBB5_27
.LBB5_23:                               # %sw.bb.79
	leaq	(%rsp), %rsi
	movaps	.LCPI5_14(%rip), %xmm0  # xmm0 = [2.000000e-01,2.000000e-01,2.000000e-01,2.000000e-01]
	jmp	.LBB5_27
.LBB5_7:                                # %npdl_get_paper_size.exit
	ucomiss	.LCPI5_7(%rip), %xmm2
	jbe	.LBB5_20
# BB#8:                                 # %sw.bb.11
	ucomiss	%xmm1, %xmm0
	jbe	.LBB5_13
# BB#9:                                 # %if.then.17
	movaps	.LCPI5_11(%rip), %xmm0  # xmm0 = [3.100000e-01,1.600000e-01,1.600000e-01,2.000000e-01]
	jmp	.LBB5_27
.LBB5_16:                               # %if.else.39
	movaps	.LCPI5_12(%rip), %xmm0  # xmm0 = [3.100000e-01,2.400000e-01,1.600000e-01,2.000000e-01]
	jmp	.LBB5_27
.LBB5_20:                               # %sw.bb.62
	ucomiss	%xmm1, %xmm0
	jbe	.LBB5_22
# BB#21:                                # %if.then.68
	movaps	.LCPI5_9(%rip), %xmm0   # xmm0 = [2.000000e-01,3.100000e-01,1.200000e-01,2.400000e-01]
	jmp	.LBB5_27
.LBB5_13:                               # %if.else.22
	movaps	.LCPI5_10(%rip), %xmm0  # xmm0 = [2.000000e-01,3.100000e-01,1.600000e-01,1.600000e-01]
	jmp	.LBB5_27
.LBB5_22:                               # %if.else.73
	movaps	.LCPI5_8(%rip), %xmm0   # xmm0 = [3.100000e-01,1.200000e-01,2.400000e-01,2.000000e-01]
.LBB5_27:                               # %sw.epilog
	movaps	%xmm0, (%rsp)
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	cmpl	$0, 84(%rbx)
	je	.LBB5_29
# BB#28:                                # %if.then.100
	movq	%rbx, %rdi
	callq	gdev_prn_close
	movq	%rbx, %rdi
	callq	gdev_prn_open
.LBB5_29:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	npdl_set_page_layout, .Lfunc_end5-npdl_set_page_layout
	.cfi_endproc

	.type	npdl_prn_procs,@object  # @npdl_prn_procs
	.data
	.align	8
npdl_prn_procs:
	.quad	npdl_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	npdl_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lprn_get_params
	.quad	npdl_put_params
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
	.size	npdl_prn_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"npdl"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_npdl_device,@object  # @gs_npdl_device
	.data
	.globl	gs_npdl_device
	.align	8
gs_npdl_device:
	.long	18576                   # 0x4890
	.zero	4
	.quad	npdl_prn_procs
	.quad	.L.str
	.quad	0
	.quad	0
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
	.long	1968                    # 0x7b0
	.long	2784                    # 0xae0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142135194              # float 5.904000e+02
	.long	1146145997              # float 8.352000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
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
	.quad	0
	.quad	npdl_print_page_copies
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
	.long	0                       # 0x0
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
	.quad	npdl_image_out
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	256                     # 0x100
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	32                      # 0x20
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	gs_npdl_device, 18576

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\033c1"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"npdl_print_page_copies(CompBuf)"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\034d240."
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"PC"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"A5"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"A4"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"A3"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"B5"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"B4"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"LT"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ENV4"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"UPPC"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\034f%cM0."
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\034f%c%s."
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\034<1/%d,i."
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\034'B,,1,0."
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\034'B,,2,0."
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\034'S,,,0."
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\034x%d."
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\034e0,0."
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\034Y"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"SU1,%d,0;"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"SG0,0;"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"NP;"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"PA%d,0,%d,%d,0,%d;"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"CP"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"EP;"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"FL0;"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\034Z"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\034\"R."
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\f"
	.size	.L.str.32, 2

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"\034e%d,%d."
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\034i%d,%d,0,1/1,1/1,%d,%d."
	.size	.L.str.34, 25

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\034i%d,%d,1,1/1,1/1,%d,%d."
	.size	.L.str.35, 25

	.type	mask,@object            # @mask
	.section	.rodata.cst8,"aM",@progbits,8
mask:
	.ascii	"\200@ \020\b\004\002\001"
	.size	mask, 8

	.type	eol,@object             # @eol
	.data
eol:
	.asciz	"000000000001"
	.size	eol, 13

	.type	makeup,@object          # @makeup
	.align	16
makeup:
	.asciz	"11011\000\000\000\000\000\000\000\000"
	.asciz	"10010\000\000\000\000\000\000\000\000"
	.asciz	"010111\000\000\000\000\000\000\000"
	.asciz	"0110111\000\000\000\000\000\000"
	.asciz	"00110110\000\000\000\000\000"
	.asciz	"00110111\000\000\000\000\000"
	.asciz	"01100100\000\000\000\000\000"
	.asciz	"01100101\000\000\000\000\000"
	.asciz	"01101000\000\000\000\000\000"
	.asciz	"01100111\000\000\000\000\000"
	.asciz	"011001100\000\000\000\000"
	.asciz	"011001101\000\000\000\000"
	.asciz	"011010010\000\000\000\000"
	.asciz	"011010011\000\000\000\000"
	.asciz	"011010100\000\000\000\000"
	.asciz	"011010101\000\000\000\000"
	.asciz	"011010110\000\000\000\000"
	.asciz	"011010111\000\000\000\000"
	.asciz	"011011000\000\000\000\000"
	.asciz	"011011001\000\000\000\000"
	.asciz	"011011010\000\000\000\000"
	.asciz	"011011011\000\000\000\000"
	.asciz	"010011000\000\000\000\000"
	.asciz	"010011001\000\000\000\000"
	.asciz	"010011010\000\000\000\000"
	.asciz	"011000\000\000\000\000\000\000\000"
	.asciz	"010011011\000\000\000\000"
	.asciz	"00000001000\000\000"
	.asciz	"00000001100\000\000"
	.asciz	"00000001101\000\000"
	.asciz	"000000010010\000"
	.asciz	"000000010011\000"
	.asciz	"000000010100\000"
	.asciz	"000000010101\000"
	.asciz	"000000010110\000"
	.asciz	"000000010111\000"
	.asciz	"000000011100\000"
	.asciz	"000000011101\000"
	.asciz	"000000011110\000"
	.asciz	"000000011111\000"
	.asciz	"0000001111\000\000\000"
	.asciz	"000011001000\000"
	.asciz	"000011001001\000"
	.asciz	"000001011011\000"
	.asciz	"000000110011\000"
	.asciz	"000000110100\000"
	.asciz	"000000110101\000"
	.asciz	"0000001101100"
	.asciz	"0000001101101"
	.asciz	"0000001001010"
	.asciz	"0000001001011"
	.asciz	"0000001001100"
	.asciz	"0000001001101"
	.asciz	"0000001110010"
	.asciz	"0000001110011"
	.asciz	"0000001110100"
	.asciz	"0000001110101"
	.asciz	"0000001110110"
	.asciz	"0000001110111"
	.asciz	"0000001010010"
	.asciz	"0000001010011"
	.asciz	"0000001010100"
	.asciz	"0000001010101"
	.asciz	"0000001011010"
	.asciz	"0000001011011"
	.asciz	"0000001100100"
	.asciz	"0000001100101"
	.asciz	"00000001000\000\000"
	.asciz	"00000001100\000\000"
	.asciz	"00000001101\000\000"
	.asciz	"000000010010\000"
	.asciz	"000000010011\000"
	.asciz	"000000010100\000"
	.asciz	"000000010101\000"
	.asciz	"000000010110\000"
	.asciz	"000000010111\000"
	.asciz	"000000011100\000"
	.asciz	"000000011101\000"
	.asciz	"000000011110\000"
	.asciz	"000000011111\000"
	.size	makeup, 1120

	.type	terminating,@object     # @terminating
	.align	16
terminating:
	.asciz	"00110101\000\000\000\000"
	.asciz	"000111\000\000\000\000\000\000"
	.asciz	"0111\000\000\000\000\000\000\000\000"
	.asciz	"1000\000\000\000\000\000\000\000\000"
	.asciz	"1011\000\000\000\000\000\000\000\000"
	.asciz	"1100\000\000\000\000\000\000\000\000"
	.asciz	"1110\000\000\000\000\000\000\000\000"
	.asciz	"1111\000\000\000\000\000\000\000\000"
	.asciz	"10011\000\000\000\000\000\000\000"
	.asciz	"10100\000\000\000\000\000\000\000"
	.asciz	"00111\000\000\000\000\000\000\000"
	.asciz	"01000\000\000\000\000\000\000\000"
	.asciz	"001000\000\000\000\000\000\000"
	.asciz	"000011\000\000\000\000\000\000"
	.asciz	"110100\000\000\000\000\000\000"
	.asciz	"110101\000\000\000\000\000\000"
	.asciz	"101010\000\000\000\000\000\000"
	.asciz	"101011\000\000\000\000\000\000"
	.asciz	"0100111\000\000\000\000\000"
	.asciz	"0001100\000\000\000\000\000"
	.asciz	"0001000\000\000\000\000\000"
	.asciz	"0010111\000\000\000\000\000"
	.asciz	"0000011\000\000\000\000\000"
	.asciz	"0000100\000\000\000\000\000"
	.asciz	"0101000\000\000\000\000\000"
	.asciz	"0101011\000\000\000\000\000"
	.asciz	"0010011\000\000\000\000\000"
	.asciz	"0100100\000\000\000\000\000"
	.asciz	"0011000\000\000\000\000\000"
	.asciz	"00000010\000\000\000\000"
	.asciz	"00000011\000\000\000\000"
	.asciz	"00011010\000\000\000\000"
	.asciz	"00011011\000\000\000\000"
	.asciz	"00010010\000\000\000\000"
	.asciz	"00010011\000\000\000\000"
	.asciz	"00010100\000\000\000\000"
	.asciz	"00010101\000\000\000\000"
	.asciz	"00010110\000\000\000\000"
	.asciz	"00010111\000\000\000\000"
	.asciz	"00101000\000\000\000\000"
	.asciz	"00101001\000\000\000\000"
	.asciz	"00101010\000\000\000\000"
	.asciz	"00101011\000\000\000\000"
	.asciz	"00101100\000\000\000\000"
	.asciz	"00101101\000\000\000\000"
	.asciz	"00000100\000\000\000\000"
	.asciz	"00000101\000\000\000\000"
	.asciz	"00001010\000\000\000\000"
	.asciz	"00001011\000\000\000\000"
	.asciz	"01010010\000\000\000\000"
	.asciz	"01010011\000\000\000\000"
	.asciz	"01010100\000\000\000\000"
	.asciz	"01010101\000\000\000\000"
	.asciz	"00100100\000\000\000\000"
	.asciz	"00100101\000\000\000\000"
	.asciz	"01011000\000\000\000\000"
	.asciz	"01011001\000\000\000\000"
	.asciz	"01011010\000\000\000\000"
	.asciz	"01011011\000\000\000\000"
	.asciz	"01001010\000\000\000\000"
	.asciz	"01001011\000\000\000\000"
	.asciz	"00110010\000\000\000\000"
	.asciz	"00110011\000\000\000\000"
	.asciz	"00110100\000\000\000\000"
	.asciz	"0000110111\000\000"
	.asciz	"010\000\000\000\000\000\000\000\000\000"
	.asciz	"11\000\000\000\000\000\000\000\000\000\000"
	.asciz	"10\000\000\000\000\000\000\000\000\000\000"
	.asciz	"011\000\000\000\000\000\000\000\000\000"
	.asciz	"0011\000\000\000\000\000\000\000\000"
	.asciz	"0010\000\000\000\000\000\000\000\000"
	.asciz	"00011\000\000\000\000\000\000\000"
	.asciz	"000101\000\000\000\000\000\000"
	.asciz	"000100\000\000\000\000\000\000"
	.asciz	"0000100\000\000\000\000\000"
	.asciz	"0000101\000\000\000\000\000"
	.asciz	"0000111\000\000\000\000\000"
	.asciz	"00000100\000\000\000\000"
	.asciz	"00000111\000\000\000\000"
	.asciz	"000011000\000\000\000"
	.asciz	"0000010111\000\000"
	.asciz	"0000011000\000\000"
	.asciz	"0000001000\000\000"
	.asciz	"00001100111\000"
	.asciz	"00001101000\000"
	.asciz	"00001101100\000"
	.asciz	"00000110111\000"
	.asciz	"00000101000\000"
	.asciz	"00000010111\000"
	.asciz	"00000011000\000"
	.asciz	"000011001010"
	.asciz	"000011001011"
	.asciz	"000011001100"
	.asciz	"000011001101"
	.asciz	"000001101000"
	.asciz	"000001101001"
	.asciz	"000001101010"
	.asciz	"000001101011"
	.asciz	"000011010010"
	.asciz	"000011010011"
	.asciz	"000011010100"
	.asciz	"000011010101"
	.asciz	"000011010110"
	.asciz	"000011010111"
	.asciz	"000001101100"
	.asciz	"000001101101"
	.asciz	"000011011010"
	.asciz	"000011011011"
	.asciz	"000001010100"
	.asciz	"000001010101"
	.asciz	"000001010110"
	.asciz	"000001010111"
	.asciz	"000001100100"
	.asciz	"000001100101"
	.asciz	"000001010010"
	.asciz	"000001010011"
	.asciz	"000000100100"
	.asciz	"000000110111"
	.asciz	"000000111000"
	.asciz	"000000100111"
	.asciz	"000000101000"
	.asciz	"000001011000"
	.asciz	"000001011001"
	.asciz	"000000101011"
	.asciz	"000000101100"
	.asciz	"000001011010"
	.asciz	"000001100110"
	.asciz	"000001100111"
	.size	terminating, 1664

	.type	fill,@object            # @fill
fill:
	.asciz	"0"
	.size	fill, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
