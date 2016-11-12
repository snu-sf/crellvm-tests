	.text
	.file	"gdevhl12.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.text
	.align	16, 0x90
	.type	hl1250_print_page_copies,@function
hl1250_print_page_copies:               # @hl1250_print_page_copies
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
	subq	$360, %rsp              # imm = 0x168
.Ltmp6:
	.cfi_def_cfa_offset 416
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
	movl	%edx, 224(%rsp)         # 4-byte Spill
	movq	%rsi, %r14
	cvttss2si	884(%rdi), %r12d
	cvttss2si	888(%rdi), %eax
	movl	%eax, 252(%rsp)         # 4-byte Spill
	movl	18472(%rdi), %ebx
	movl	18476(%rdi), %edx
	movl	18480(%rdi), %eax
	movq	%rdi, %r13
	decl	%eax
	movl	$.L.str.17, %r15d
	movl	$.L.str.18, %ecx
	cmpl	$3, %eax
	ja	.LBB0_2
# BB#1:                                 # %switch.lookup
	cltq
	movq	.Lswitch.table(,%rax,8), %rcx
	movq	.Lswitch.table.1(,%rax,8), %r15
.LBB0_2:                                # %sw.epilog
	cmpq	$0, 928(%r13)
	jne	.LBB0_6
# BB#3:                                 # %if.then
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movl	$.L.str.4, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.25, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.26, %esi
	movl	$.L.str.6, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%ebx, %ebx
	setne	%al
	movzbl	%al, %eax
	movq	hl1250_print_page_copies.onoff(,%rax,8), %rdx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%ebx, %ebx
	je	.LBB0_5
# BB#4:                                 # %if.then.17
	movl	$3, %edx
	subl	%ebx, %edx
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_5:                                # %if.end
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	hl1250_print_page_copies.papertypes(,%rax,8), %rdx
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	fprintf
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	252(%rsp), %edx         # 4-byte Reload
	callq	fprintf
	cmpl	$1200, %r12d            # imm = 0x4B0
	sete	%al
	movzbl	%al, %eax
	movq	hl1250_print_page_copies.onoff(,%rax,8), %rdx
	movl	$.L.str.32, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.33, %edi
	movq	%r14, %rsi
	callq	fputs
	movq	216(%rsp), %rcx         # 8-byte Reload
.LBB0_6:                                # %if.end.30
	cmpl	$1200, %r12d            # imm = 0x4B0
	jne	.LBB0_7
# BB#9:                                 # %if.end.38
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movq	%r13, %rbx
	movq	%rbx, %rdi
	callq	gx_device_raster
	movl	%eax, %r12d
	movq	%rbx, %rdi
	callq	gdev_prn_print_scan_lines
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	movl	%eax, %ebp
	movq	24(%rbx), %rdi
	movl	$1, %esi
	movl	$147468, %edx           # imm = 0x2400C
	movl	$.L.str.35, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB0_8
# BB#10:                                # %if.end.i
	movl	$0, 188(%rsp)           # 4-byte Folded Spill
	xorl	%esi, %esi
	movl	$147468, %edx           # imm = 0x2400C
	movq	%r13, %rdi
	callq	memset
	cmpl	$1280, %r12d            # imm = 0x500
	movl	$1280, %eax             # imm = 0x500
	cmovbel	%r12d, %eax
	movl	%eax, 252(%rsp)         # 4-byte Spill
	cmpq	$0, 928(%rbx)
	movq	%rbx, %r15
	jne	.LBB0_12
# BB#11:                                # %if.then.11.i
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	fprintf
.LBB0_12:                               # %if.end.13.i
	movl	$.L.str.37, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.38, %edi
	movq	%r14, %rsi
	callq	fputs
	movq	216(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	224(%rsp), %edx         # 4-byte Reload
	callq	fprintf
	movl	$.L.str.40, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.41, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.42, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.43, %edi
	movq	%r14, %rsi
	movq	%r14, 104(%rsp)         # 8-byte Spill
	callq	fputs
	movl	148(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jle	.LBB0_32
# BB#13:                                # %for.body.lr.ph.i
	leaq	20(%r13), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movslq	%eax, %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	leaq	65548(%r13), %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	leaq	65550(%r13), %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	leaq	65556(%r13), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	movl	$0, 188(%rsp)           # 4-byte Folded Spill
	jmp	.LBB0_14
.LBB0_7:                                # %if.then.33
	leaq	256(%rsp), %rbp
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	252(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %edx
	callq	gs_sprintf
	movq	%rbp, (%rsp)
	movl	$0, 8(%rsp)
	movl	$404, %r8d              # imm = 0x194
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	224(%rsp), %edx         # 4-byte Reload
	movl	%ebx, %ecx
	movq	%rbp, %r9
	callq	dljet_mono_print_page_copies
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_87:                               # %for.inc.for.body_crit_edge.i.i
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	%rbp, 216(%rsp)         # 8-byte Spill
	movl	(%r13), %eax
	movl	4(%r13), %ebp
	movl	8(%r13), %edx
	addq	$1280, %r9              # imm = 0x500
	addq	$1280, %r10             # imm = 0x500
.LBB0_35:                               # %for.body.i.i
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_39 Depth 3
                                        #         Child Loop BB0_40 Depth 4
                                        #         Child Loop BB0_48 Depth 4
	movl	%eax, %ecx
	movl	%edx, %r8d
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	leal	(%rsi,%rdi), %edx
	andq	%rdi, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	shlq	$8, %rdx
	cmpq	%rsi, %r8
	leaq	65548(%r13,%rdx), %rdx
	leaq	(%rdx,%rcx,2), %rdi
	movl	$0, %edx
	cmovaeq	%rdx, %rdi
	subl	%eax, %ebp
	movq	216(%rsp), %rax         # 8-byte Reload
	movl	%eax, %eax
	leaq	20(%r13,%rax,2), %r11
	jne	.LBB0_38
# BB#36:                                #   in Loop: Header=BB0_35 Depth=2
	movq	216(%rsp), %rax         # 8-byte Reload
	jmp	.LBB0_37
.LBB0_38:                               # %while.body.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_35 Depth=2
	movl	%ebx, 184(%rsp)         # 4-byte Spill
	movq	%r15, 80(%rsp)          # 8-byte Spill
	leaq	(%rsi,%rsi,4), %rax
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	shlq	$8, %rax
	leaq	65548(%r13,%rax), %rax
	leaq	(%rax,%rcx,2), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	(%r9,%rcx,2), %rdx
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%r9, 88(%rsp)           # 8-byte Spill
	leaq	(%r10,%rcx,2), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	%r10, 72(%rsp)          # 8-byte Spill
	movq	%rax, %r10
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rdi, %r15
	movq	%r15, 192(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_39:                               # %while.body.i.i.i
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_40 Depth 4
                                        #         Child Loop BB0_48 Depth 4
	movl	%r9d, %r14d
	movslq	%r9d, %rdi
	movw	(%r10,%rdi,2), %r12w
	movzwl	%r12w, %edx
	leal	1(%rdi), %eax
	cltq
	movq	200(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,2), %rbx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB0_40:                               # %for.cond.i.i.i
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        #       Parent Loop BB0_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rsi, %rax
	leal	1(%r14,%rax), %esi
	cmpl	%ebp, %esi
	jae	.LBB0_102
# BB#41:                                # %for.body.i.37.i.i
                                        #   in Loop: Header=BB0_40 Depth=4
	movzwl	(%rbx,%rax,2), %ecx
	leaq	1(%rax), %rsi
	cmpl	%edx, %ecx
	je	.LBB0_40
# BB#42:                                # %for.body.i.37.i.i.for.end.i.38.i.i_crit_edge
                                        #   in Loop: Header=BB0_39 Depth=3
	movw	%r12w, 208(%rsp)        # 2-byte Spill
	leal	1(%r14,%rax), %esi
	jmp	.LBB0_43
	.align	16, 0x90
.LBB0_102:                              # %for.end.i.38.i.isplit
                                        #   in Loop: Header=BB0_39 Depth=3
	movw	%r12w, 208(%rsp)        # 2-byte Spill
	leal	1(%r9,%rax), %esi
.LBB0_43:                               # %for.end.i.38.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movq	224(%rsp), %rbx         # 8-byte Reload
	subl	%r9d, %esi
	xorl	%r12d, %r12d
	testq	%r15, %r15
	je	.LBB0_52
# BB#44:                                # %for.cond.25.preheader.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	cmpl	%ebp, %r14d
	jae	.LBB0_45
# BB#46:                                # %for.body.28.i.preheader.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movzwl	(%r15,%rdi,2), %eax
	cmpl	%eax, %edx
	jne	.LBB0_50
# BB#47:                                # %for.inc.39.i.i.i.preheader
                                        #   in Loop: Header=BB0_39 Depth=3
	leal	1(%r14), %r12d
	.align	16, 0x90
.LBB0_48:                               # %for.inc.39.i.i.i
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        #       Parent Loop BB0_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	%ebp, %r12d
	jae	.LBB0_51
# BB#49:                                # %for.inc.39.for.body.28_crit_edge.i.i.i
                                        #   in Loop: Header=BB0_48 Depth=4
	movzwl	2(%r15,%rdi,2), %eax
	movzwl	(%rbx,%rdi,2), %ecx
	leaq	1(%rdi), %rdi
	incl	%r12d
	cmpl	%eax, %ecx
	je	.LBB0_48
.LBB0_50:                               # %for.body.28.for.end.41_crit_edge.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	%edi, %r12d
	jmp	.LBB0_51
	.align	16, 0x90
.LBB0_45:                               # %for.cond.25.preheader.i.i.i.for.end.41.i.i.i_crit_edge
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	%r14d, %r12d
.LBB0_51:                               # %for.end.41.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	subl	%r14d, %r12d
.LBB0_52:                               # %if.end.43.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	cmpl	%esi, %r12d
	jae	.LBB0_53
# BB#54:                                # %if.else.i.41.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	%edx, %r15d
	shrl	$8, %r15d
	movzbl	%dl, %eax
	cmpl	%r15d, %eax
	jne	.LBB0_60
# BB#55:                                # %if.else.54.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	%edx, %eax
	shrl	$4, %eax
	xorl	%edx, %eax
	testb	$15, %al
	je	.LBB0_58
# BB#56:                                # %if.then.61.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	cmpl	$31, %esi
	ja	.LBB0_60
# BB#57:                                # %if.then.64.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	%esi, %eax
	shll	$8, %eax
	orl	%eax, %r15d
	orl	$49152, %r15d           # imm = 0xC000
	movl	$1, %ecx
	jmp	.LBB0_61
	.align	16, 0x90
.LBB0_53:                               # %if.then.46.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	%r12d, %r15d
	orl	$57344, %r15d           # imm = 0xE000
	movl	$1, %ecx
	jmp	.LBB0_62
.LBB0_58:                               # %if.else.74.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	cmpl	$511, %esi              # imm = 0x1FF
	ja	.LBB0_60
# BB#59:                                # %if.then.77.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	andl	$15, %edx
	shll	$9, %edx
	orl	%esi, %edx
	orl	$40960, %edx            # imm = 0xA000
	movl	$1, %ecx
	movl	%esi, %r12d
	movl	%edx, %r15d
	jmp	.LBB0_62
	.align	16, 0x90
.LBB0_60:                               # %if.else.84.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	%esi, %r15d
	orl	$32768, %r15d           # imm = 0x8000
	movl	$2, %ecx
.LBB0_61:                               # %if.end.90.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	%esi, %r12d
.LBB0_62:                               # %if.end.90.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	testl	%r8d, %r8d
	setne	%al
	movzbl	%al, %eax
	leal	(%rax,%rcx), %eax
	cmpl	%eax, %r12d
	jae	.LBB0_64
# BB#63:                                # %if.then.96.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movq	%rbx, 224(%rsp)         # 8-byte Spill
	leal	(%r8,%r12), %r8d
	jmp	.LBB0_81
	.align	16, 0x90
.LBB0_64:                               # %if.else.98.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	testl	%r8d, %r8d
	je	.LBB0_65
# BB#66:                                # %if.then.100.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	leal	1(%rax,%r8), %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	cmpl	$32764, %eax            # imm = 0x7FFC
	ja	.LBB0_67
# BB#74:                                # %if.end.106.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movq	%rbx, 224(%rsp)         # 8-byte Spill
	movl	%r8d, %eax
	shll	$4, %eax
	rolw	$8, %ax
	leaq	2(%r11), %rdi
	movw	%ax, (%r11)
	subl	%r8d, %r9d
	leaq	(%r10,%r9,2), %rsi
	movl	%r8d, %ebx
	leaq	(%rbx,%rbx), %rdx
	movq	%r11, 168(%rsp)         # 8-byte Spill
	callq	memcpy
	movq	168(%rsp), %r11         # 8-byte Reload
	leaq	2(%r11,%rbx,2), %r11
	movq	176(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB0_75
.LBB0_65:                               #   in Loop: Header=BB0_39 Depth=3
	movq	%rbx, 224(%rsp)         # 8-byte Spill
.LBB0_75:                               # %if.end.114.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movq	216(%rsp), %rax         # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	cmpl	$32764, %eax            # imm = 0x7FFC
	movl	184(%rsp), %ebx         # 4-byte Reload
	ja	.LBB0_76
# BB#77:                                # %if.end.119.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	rolw	$8, %r15w
	movw	%r15w, (%r11)
	xorl	%r8d, %r8d
	cmpl	$2, %ecx
	jne	.LBB0_78
# BB#79:                                # %if.then.124.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movw	208(%rsp), %ax          # 2-byte Reload
	movw	%ax, 2(%r11)
	addq	$4, %r11
	jmp	.LBB0_80
	.align	16, 0x90
.LBB0_78:                               #   in Loop: Header=BB0_39 Depth=3
	addq	$2, %r11
.LBB0_80:                               # %if.end.127.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movq	160(%rsp), %r10         # 8-byte Reload
.LBB0_81:                               # %if.end.127.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movq	192(%rsp), %r15         # 8-byte Reload
	addl	%r14d, %r12d
	cmpl	%ebp, %r12d
	movl	%r12d, %r9d
	jb	.LBB0_39
# BB#82:                                # %while.end.i.i.i
                                        #   in Loop: Header=BB0_35 Depth=2
	testl	%r8d, %r8d
	je	.LBB0_83
# BB#84:                                # %if.then.130.i.i.i
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	216(%rsp), %rax         # 8-byte Reload
	leal	1(%r8,%rax), %eax
	cmpl	$32764, %eax            # imm = 0x7FFC
	movq	64(%rsp), %r14          # 8-byte Reload
	ja	.LBB0_67
# BB#85:                                # %hl1250_compress_line.exit.thread104.i.i
                                        #   in Loop: Header=BB0_35 Depth=2
	movl	%r8d, %eax
	shll	$4, %eax
	rolw	$8, %ax
	leaq	2(%r11), %rdi
	movw	%ax, (%r11)
	subl	%r8d, %ebp
	leaq	(%r10,%rbp,2), %rsi
	movl	%r8d, %ebx
	leaq	(%rbx,%rbx), %rdx
	movq	%r11, %rbp
	callq	memcpy
	leaq	2(%rbp,%rbx,2), %rbp
	subq	120(%rsp), %rbp         # 8-byte Folded Reload
	shrq	%rbp
	movl	%ebp, 16(%r13)
	movq	80(%rsp), %r15          # 8-byte Reload
	movl	184(%rsp), %ebx         # 4-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	88(%rsp), %r9           # 8-byte Reload
	movq	72(%rsp), %r10          # 8-byte Reload
	jmp	.LBB0_86
.LBB0_83:                               #   in Loop: Header=BB0_35 Depth=2
	movq	80(%rsp), %r15          # 8-byte Reload
	movl	184(%rsp), %ebx         # 4-byte Reload
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %r14          # 8-byte Reload
	movq	88(%rsp), %r9           # 8-byte Reload
	movq	72(%rsp), %r10          # 8-byte Reload
.LBB0_37:                               # %hl1250_compress_line.exit.i.i
                                        #   in Loop: Header=BB0_35 Depth=2
	subq	120(%rsp), %r11         # 8-byte Folded Reload
	shrq	%r11
	movl	%r11d, 16(%r13)
	cmpl	$32765, %eax            # imm = 0x7FFD
	movl	%r11d, %ebp
	jae	.LBB0_69
.LBB0_86:                               # %for.inc.i.i
                                        #   in Loop: Header=BB0_35 Depth=2
	incq	%rsi
	cmpq	%r14, %rsi
	jb	.LBB0_87
	jmp	.LBB0_100
.LBB0_76:                               #   in Loop: Header=BB0_14 Depth=1
	movq	80(%rsp), %r15          # 8-byte Reload
	jmp	.LBB0_68
.LBB0_67:                               #   in Loop: Header=BB0_14 Depth=1
	movq	80(%rsp), %r15          # 8-byte Reload
	movl	184(%rsp), %ebx         # 4-byte Reload
.LBB0_68:                               # %hl1250_compress_line.exit.thread.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	96(%rsp), %rsi          # 8-byte Reload
	subq	120(%rsp), %r11         # 8-byte Folded Reload
	shrq	%r11
	movl	%r11d, 16(%r13)
.LBB0_69:                               # %if.end.4.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	%ebx, 184(%rsp)         # 4-byte Spill
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	addl	%eax, %esi
	movl	$.L.str.45, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	(%r13), %r14d
	movq	%r14, 200(%rsp)         # 8-byte Spill
	movl	8(%r13), %r11d
	movq	%r11, 192(%rsp)         # 8-byte Spill
	movl	12(%r13), %edi
	movl	%edi, 176(%rsp)         # 4-byte Spill
	cmpl	%edi, %r11d
	movq	120(%rsp), %rbp         # 8-byte Reload
	movdqa	.LCPI0_0(%rip), %xmm7   # xmm7 = [65535,65535,65535,65535]
	jae	.LBB0_99
# BB#70:                                # %for.body.lr.ph.i.51.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	4(%r13), %ecx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movl	%ecx, %esi
	subl	%r14d, %esi
	movl	%esi, %edx
	shll	$4, %edx
	rolw	$8, %dx
	movl	%edx, 96(%rsp)          # 4-byte Spill
	orl	$57344, %esi            # imm = 0xE000
	rolw	$8, %si
	movl	%esi, 160(%rsp)         # 4-byte Spill
	leal	-1(%rcx), %eax
	movl	%eax, %r9d
	subl	%r14d, %r9d
	leaq	2(%r9), %rbp
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	incq	%r9
	movq	%r9, 224(%rsp)          # 8-byte Spill
	subl	%r14d, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	128(%rsp), %r8          # 8-byte Reload
	leaq	(%r8,%r14,2), %rbp
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	leaq	(%rax,%rax), %rax
	leaq	(%rax,%r14,2), %rax
	leaq	(%rax,%r8), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r14,2), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	subl	%r14d, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	xorl	%r12d, %r12d
	movl	%r11d, %eax
	movq	120(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB0_71:                               # %for.body.i.54.i.i
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_96 Depth 3
	movl	%eax, %r8d
	leal	(%r11,%r12,2), %ebx
	leaq	2(%rbp), %r10
	cmpl	%r14d, %ecx
	movw	%dx, (%rbp)
	je	.LBB0_98
# BB#72:                                # %for.body.17.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_71 Depth=2
	movq	%r8, %rcx
	shlq	$8, %rcx
	leaq	(%rcx,%rcx,4), %rsi
	incl	%eax
	cmpl	%edi, %eax
	movl	%eax, %r11d
	cmovaeq	%r8, %r11
	testb	$2, %r8b
	movl	$43690, %r14d           # imm = 0xAAAA
	movl	$21845, %eax            # imm = 0x5555
	cmovnel	%eax, %r14d
	testq	%r9, %r9
	je	.LBB0_73
# BB#88:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_71 Depth=2
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	shlq	$8, %rbx
	leaq	(%rbx,%rbx,4), %rax
	movq	208(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rax), %r15
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	72(%rsp), %rdx          # 8-byte Reload
	leaq	2(%rbp,%rdx,2), %rdi
	movq	%r11, %rbx
	shlq	$8, %rbx
	leaq	(%rbx,%rbx,4), %rbx
	leaq	(%rsi,%rbx), %rsi
	leaq	(%rbx,%rcx), %rbx
	cmpq	%rax, %r10
	setbe	%dl
	cmpq	%rdi, %r15
	setbe	%cl
	cmpq	%rbx, %r10
	setbe	%al
	cmpq	%rdi, %rsi
	setbe	%bl
	testb	%cl, %dl
	jne	.LBB0_89
# BB#90:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_71 Depth=2
	andb	%bl, %al
	movq	216(%rsp), %rsi         # 8-byte Reload
	jne	.LBB0_73
# BB#91:                                # %vector.ph
                                        #   in Loop: Header=BB0_71 Depth=2
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rsi), %rbx
	leaq	(%r10,%r9,2), %r10
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	(%r11,%r11,4), %rax
	shlq	$8, %rax
	leaq	(%rax,%rcx), %r15
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_92:                               # %vector.body
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rbx,%rax,2), %xmm2  # xmm2 = mem[0],zero
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movq	(%rbx,%rax,2), %xmm1    # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movq	-8(%r15,%rax,2), %xmm3  # xmm3 = mem[0],zero
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movq	(%r15,%rax,2), %xmm4    # xmm4 = mem[0],zero
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	movdqa	%xmm3, %xmm5
	pand	%xmm0, %xmm5
	movdqa	%xmm4, %xmm6
	pand	%xmm0, %xmm6
	pand	%xmm2, %xmm3
	pand	%xmm0, %xmm2
	pand	%xmm1, %xmm4
	pand	%xmm0, %xmm1
	por	%xmm3, %xmm2
	por	%xmm4, %xmm1
	por	%xmm5, %xmm2
	por	%xmm6, %xmm1
	pand	%xmm7, %xmm2
	pand	%xmm7, %xmm1
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	movq	%xmm2, 2(%rbp,%rax,2)
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, 10(%rbp,%rax,2)
	addq	$8, %rax
	cmpq	%rax, %r9
	jne	.LBB0_92
# BB#93:                                #   in Loop: Header=BB0_71 Depth=2
	movq	%rbp, %r15
	movq	%r9, %rdi
	jmp	.LBB0_94
	.align	16, 0x90
.LBB0_73:                               #   in Loop: Header=BB0_71 Depth=2
	movq	%rbp, %r15
	xorl	%edi, %edi
	jmp	.LBB0_94
.LBB0_89:                               #   in Loop: Header=BB0_71 Depth=2
	movq	%rbp, %r15
	xorl	%edi, %edi
	movq	216(%rsp), %rsi         # 8-byte Reload
	.align	16, 0x90
.LBB0_94:                               # %middle.block
                                        #   in Loop: Header=BB0_71 Depth=2
	cmpq	%rdi, 224(%rsp)         # 8-byte Folded Reload
	je	.LBB0_97
# BB#95:                                # %for.body.17.i.i.i.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	movl	60(%rsp), %eax          # 4-byte Reload
	subl	%edi, %eax
	leaq	(%r11,%r11,4), %rcx
	shlq	$8, %rcx
	leaq	(%rcx,%rdi,2), %rcx
	movq	208(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rbx
	leaq	(%rsi,%rdi,2), %rcx
	leaq	(%rcx,%rdx), %rdi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_96:                               # %for.body.17.i.i.i
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rdi,%rcx,2), %edx
	movzwl	(%rbx,%rcx,2), %esi
	movl	%esi, %ebp
	andl	%edx, %ebp
	andl	%r14d, %edx
	orl	%ebp, %edx
	andl	%r14d, %esi
	orl	%edx, %esi
	movw	%si, (%r10,%rcx,2)
	incq	%rcx
	cmpl	%ecx, %eax
	jne	.LBB0_96
.LBB0_97:                               # %for.cond.14.for.end_crit_edge.i.i.i
                                        #   in Loop: Header=BB0_71 Depth=2
	movq	%r15, %rbp
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rbp,%rax,2), %r10
	movq	224(%rsp), %rax         # 8-byte Reload
	leaq	(%rbp,%rax,2), %rbp
	movq	200(%rsp), %r14         # 8-byte Reload
	movq	192(%rsp), %r11         # 8-byte Reload
	movl	176(%rsp), %edi         # 4-byte Reload
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	160(%rsp), %esi         # 4-byte Reload
	movl	96(%rsp), %edx          # 4-byte Reload
.LBB0_98:                               # %for.end.i.63.i.i
                                        #   in Loop: Header=BB0_71 Depth=2
	addq	$4, %rbp
	movw	%si, (%r10)
	addl	$2, %r8d
	incl	%r12d
	cmpl	%edi, %r8d
	movl	%r8d, %eax
	jb	.LBB0_71
.LBB0_99:                               # %hl1250_lose_resolution.exit.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	subq	120(%rsp), %rbp         # 8-byte Folded Reload
	shrq	%rbp
	movl	%ebp, 16(%r13)
	movq	80(%rsp), %r15          # 8-byte Reload
	movl	184(%rsp), %ebx         # 4-byte Reload
.LBB0_100:                              # %for.end.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	testl	%ebp, %ebp
	je	.LBB0_31
# BB#101:                               # %if.then.8.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	%ebp, %eax
	leaq	9(%rax,%rax), %rdx
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	callq	fprintf
	movl	16(%r13), %eax
	movl	%ebx, %r14d
	leal	7(%rax,%rax), %ebx
	movzbl	%bh, %edi  # NOREX
	movq	%rbp, %rsi
	callq	_IO_putc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	_IO_putc
	movl	(%r13), %ebx
	movl	%ebx, %eax
	shrl	$4, %eax
	movzbl	%al, %edi
	movq	%rbp, %rsi
	callq	_IO_putc
	andl	$15, %ebx
	shll	$4, %ebx
	movl	%ebx, %edi
	movq	%rbp, %rsi
	callq	_IO_putc
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%r14d, %ecx
	addl	%eax, %ecx
	movzbl	%ch, %edi  # NOREX
	movl	%ecx, %ebx
	movq	%rbp, %rsi
	callq	_IO_putc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	_IO_putc
	movl	28(%rsp), %edi          # 4-byte Reload
	movq	%rbp, %rsi
	callq	_IO_putc
	movl	4(%r13), %ebx
	subl	(%r13), %ebx
	movzbl	%bh, %edi  # NOREX
	movq	%rbp, %rsi
	callq	_IO_putc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	_IO_putc
	movl	16(%r13), %edx
	movl	$2, %esi
	movq	120(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	jmp	.LBB0_31
	.align	16, 0x90
.LBB0_14:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_18 Depth 3
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_39 Depth 3
                                        #         Child Loop BB0_40 Depth 4
                                        #         Child Loop BB0_48 Depth 4
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_96 Depth 3
	movq	%rdx, %rsi
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	leaq	64(%rsi), %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	cmpq	%rcx, %rdx
	movl	%edx, %r12d
	cmovgl	%eax, %r12d
	movslq	%r12d, %r14
	cmpq	%rsi, %r14
	movq	128(%rsp), %rbp         # 8-byte Reload
	movq	%rsi, %rbx
	movl	188(%rsp), %eax         # 4-byte Reload
	jle	.LBB0_15
	.align	16, 0x90
.LBB0_21:                               # %for.body.31.i
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%rbp, %rdx
	movl	252(%rsp), %ecx         # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	js	.LBB0_22
# BB#20:                                # %for.cond.28.i
                                        #   in Loop: Header=BB0_21 Depth=2
	incq	%rbx
	addq	$1280, %rbp             # imm = 0x500
	cmpq	%r14, %rbx
	jl	.LBB0_21
.LBB0_15:                               # %for.end.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movl	$0, 8(%r13)
	movl	%r12d, %ebx
	movq	152(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ebx
	movl	%ebx, 12(%r13)
	movabsq	$2727304232960, %rax    # imm = 0x27B00000000
	movq	%rax, (%r13)
	movl	$0, 16(%r13)
	je	.LBB0_30
# BB#16:                                # %for.body.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	%ebx, %r9d
	movl	$635, %eax              # imm = 0x27B
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_17:                               # %for.body.7.i.i.preheader.i
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_18 Depth 3
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_18:                               # %for.body.7.i.i.i
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	(%rsi,%rsi,4), %rdx
	shlq	$8, %rdx
	leaq	(%rdx,%r13), %rdx
	cmpw	$0, 65548(%rdx,%rbx,2)
	je	.LBB0_19
# BB#23:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB0_18 Depth=3
	movl	%eax, %edx
	cmpq	%rbx, %rdx
	cmoval	%ebx, %eax
	movl	%ebp, %edx
	cmpq	%rbx, %rdx
	leaq	1(%rbx), %rbx
	cmovbel	%ebx, %ebp
	movl	$1, %edi
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_19:                               # %for.body.7.for.inc_crit_edge.i.i.i
                                        #   in Loop: Header=BB0_18 Depth=3
	incq	%rbx
.LBB0_24:                               # %for.inc.i.i.i
                                        #   in Loop: Header=BB0_18 Depth=3
	cmpq	$635, %rbx              # imm = 0x27B
	jb	.LBB0_18
# BB#25:                                # %for.end.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=2
	testl	%edi, %edi
	movl	%ecx, %ebx
	je	.LBB0_26
# BB#27:                                # %if.then.17.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	%ebx, %edx
	cmpq	%rsi, %rdx
	cmoval	%esi, %ebx
	movl	%r10d, %edx
	cmpq	%rsi, %rdx
	leaq	1(%rsi), %rsi
	cmovbel	%esi, %r10d
	movl	$1, %r8d
	jmp	.LBB0_28
	.align	16, 0x90
.LBB0_26:                               # %for.end.for.inc.26_crit_edge.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=2
	incq	%rsi
.LBB0_28:                               # %for.inc.26.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=2
	cmpq	%r9, %rsi
	jb	.LBB0_17
# BB#29:                                # %for.end.28.i.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	testl	%r8d, %r8d
	je	.LBB0_30
# BB#33:                                # %if.end.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	%ebp, 4(%r13)
	movl	%ebx, 8(%r13)
	movl	%r10d, 12(%r13)
	andl	$-2, %eax
	movl	%eax, (%r13)
	movl	%r10d, %ecx
	subl	%ebx, %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	jbe	.LBB0_31
# BB#34:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	%ebx, %esi
	movl	%r10d, %r14d
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movq	%rsi, %rcx
	shlq	$8, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	128(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx), %r9
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %r10
	xorl	%ecx, %ecx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movl	%ebx, %edx
	jmp	.LBB0_35
	.align	16, 0x90
.LBB0_30:                               # %hl1250_check_area.exit.thread.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	$0, 4(%r13)
	movl	$0, 12(%r13)
.LBB0_31:                               # %for.cond.backedge.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	136(%rsp), %rdx         # 8-byte Reload
	cmpq	%rcx, %rdx
	movl	148(%rsp), %eax         # 4-byte Reload
	jl	.LBB0_14
	jmp	.LBB0_32
.LBB0_22:
	movl	%eax, 188(%rsp)         # 4-byte Spill
.LBB0_32:                               # %error_out.i
	movl	$.L.str.44, %edi
	movq	104(%rsp), %rsi         # 8-byte Reload
	callq	fputs
	movq	24(%r15), %rdi
	movl	$.L.str.35, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movl	188(%rsp), %eax         # 4-byte Reload
.LBB0_8:                                # %cleanup
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	hl1250_print_page_copies, .Lfunc_end0-hl1250_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	hl1250_open,@function
hl1250_open:                            # @hl1250_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cvttss2si	884(%rbx), %ebp
	callq	gdev_pcl_paper_size
	cmpl	$1200, %ebp             # imm = 0x4B0
	jne	.LBB1_5
# BB#1:                                 # %if.then
	cmpl	$26, %eax
	jne	.LBB1_4
# BB#2:                                 # %if.then.4
	movl	$hl1250_open.margins_a4_1200, %esi
	movl	$1, %edx
	jmp	.LBB1_9
.LBB1_5:                                # %if.else.5
	cmpl	$26, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.8
	movl	$hl1250_open.margins_a4_600, %esi
	jmp	.LBB1_8
.LBB1_4:                                # %if.else
	movl	$hl1250_open.margins_letter_1200, %esi
	movl	$1, %edx
	jmp	.LBB1_9
.LBB1_7:                                # %if.else.9
	movl	$hl1250_open.margins_letter_600, %esi
.LBB1_8:                                # %if.end.11
	xorl	%edx, %edx
.LBB1_9:                                # %if.end.11
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end1:
	.size	hl1250_open, .Lfunc_end1-hl1250_open
	.cfi_endproc

	.align	16, 0x90
	.type	hl1250_close,@function
hl1250_close:                           # @hl1250_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movl	$1, %esi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB2_1
# BB#2:                                 # %if.end
	movq	17176(%r14), %rbx
	movl	$.L.str.3, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.4, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.5, %esi
	movl	$.L.str.6, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.4, %edi
	movq	%rbx, %rsi
	callq	fputs
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gdev_prn_close          # TAILCALL
.LBB2_1:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	hl1250_close, .Lfunc_end2-hl1250_close
	.cfi_endproc

	.align	16, 0x90
	.type	hl1250_get_params,@function
hl1250_get_params:                      # @hl1250_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB3_4
# BB#1:                                 # %if.end
	movl	18472(%rbx), %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB3_4
# BB#2:                                 # %if.end.4
	movl	18476(%rbx), %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB3_4
# BB#3:                                 # %if.end.8
	movl	18480(%rbx), %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_write_int
.LBB3_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	hl1250_get_params, .Lfunc_end3-hl1250_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	hl1250_put_params,@function
hl1250_put_params:                      # @hl1250_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 80
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	18472(%rbx), %r15d
	movl	18476(%rbx), %r12d
	movl	18480(%rbx), %r13d
	leaq	12(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_read_int
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB4_5
# BB#1:                                 # %entry
	testl	%eax, %eax
	jne	.LBB4_4
# BB#2:                                 # %sw.bb.i
	movl	12(%rsp), %r15d
	movl	$1, %ebp
	cmpl	$3, %r15d
	jb	.LBB4_5
# BB#3:                                 # %if.then.i
	movq	(%r14), %rax
	movl	$.L.str.7, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	movl	12(%rsp), %r15d
	jmp	.LBB4_5
.LBB4_4:                                # %sw.default.i
	movl	%eax, %ebp
.LBB4_5:                                # %hl1250_put_param_int.exit
	leaq	16(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	je	.LBB4_11
# BB#6:                                 # %hl1250_put_param_int.exit
	testl	%eax, %eax
	jne	.LBB4_10
# BB#7:                                 # %sw.bb.i.23
	movl	16(%rsp), %r12d
	cmpl	$5, %r12d
	jb	.LBB4_9
# BB#8:                                 # %if.then.i.28
	movq	(%r14), %rax
	movl	$.L.str.8, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	movl	16(%rsp), %r12d
.LBB4_9:                                # %if.end.i.29
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB4_11
.LBB4_10:                               # %sw.default.i.30
	movl	%eax, %ebp
.LBB4_11:                               # %hl1250_put_param_int.exit32
	leaq	20(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	je	.LBB4_16
# BB#12:                                # %hl1250_put_param_int.exit32
	testl	%eax, %eax
	jne	.LBB4_15
# BB#13:                                # %sw.bb.i.38
	movl	20(%rsp), %r13d
	cmpl	$5, %r13d
	jb	.LBB4_16
# BB#14:                                # %if.then.i.43
	movq	(%r14), %rax
	movl	$.L.str.9, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	movl	20(%rsp), %r13d
	jmp	.LBB4_16
.LBB4_15:                               # %sw.default.i.47
	movl	%eax, %ebp
.LBB4_16:                               # %hl1250_put_param_int.exit49
	testl	%ebp, %ebp
	js	.LBB4_19
# BB#17:                                # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_19
# BB#18:                                # %if.end.9
	movl	%r15d, 18472(%rbx)
	movl	%r12d, 18476(%rbx)
	movl	%r13d, 18480(%rbx)
	xorl	%ebp, %ebp
.LBB4_19:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	hl1250_put_params, .Lfunc_end4-hl1250_put_params
	.cfi_endproc

	.type	prn_hl1250_procs,@object # @prn_hl1250_procs
	.section	.rodata,"a",@progbits
	.align	8
prn_hl1250_procs:
	.quad	hl1250_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	hl1250_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	hl1250_get_params
	.quad	hl1250_put_params
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
	.size	prn_hl1250_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hl1250"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_hl1250_device,@object # @gs_hl1250_device
	.section	.rodata,"a",@progbits
	.globl	gs_hl1250_device
	.align	8
gs_hl1250_device:
	.long	18488                   # 0x4838
	.zero	4
	.quad	prn_hl1250_procs
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
	.long	10200                   # 0x27d8
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150681088              # float 1.200000e+03
	.long	1142292480              # float 6.000000e+02
	.long	1150681088              # float 1.200000e+03
	.long	1142292480              # float 6.000000e+02
	.zero	8
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
	.quad	gx_print_page_single_copy
	.quad	hl1250_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_hl1250_device, 18488

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"hl1240"
	.size	.L.str.2, 7

	.type	gs_hl1240_device,@object # @gs_hl1240_device
	.section	.rodata,"a",@progbits
	.globl	gs_hl1240_device
	.align	8
gs_hl1240_device:
	.long	18488                   # 0x4838
	.zero	4
	.quad	prn_hl1250_procs
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
	.zero	8
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
	.quad	gx_print_page_single_copy
	.quad	hl1250_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_hl1240_device, 18488

	.type	hl1250_open.margins_a4_600,@object # @hl1250_open.margins_a4_600
	.align	16
hl1250_open.margins_a4_600:
	.long	1028443341              # float 5.000000e-02
	.long	1041865114              # float 1.500000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1041865114              # float 1.500000e-01
	.size	hl1250_open.margins_a4_600, 16

	.type	hl1250_open.margins_a4_1200,@object # @hl1250_open.margins_a4_1200
	.align	16
hl1250_open.margins_a4_1200:
	.long	1028443341              # float 5.000000e-02
	.long	1045220557              # float 2.000000e-01
	.long	1036831949              # float 1.000000e-01
	.long	1041865114              # float 1.500000e-01
	.size	hl1250_open.margins_a4_1200, 16

	.type	hl1250_open.margins_letter_600,@object # @hl1250_open.margins_letter_600
	.align	16
hl1250_open.margins_letter_600:
	.long	1028443341              # float 5.000000e-02
	.long	1041865114              # float 1.500000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1041865114              # float 1.500000e-01
	.size	hl1250_open.margins_letter_600, 16

	.type	hl1250_open.margins_letter_1200,@object # @hl1250_open.margins_letter_1200
	.align	16
hl1250_open.margins_letter_1200:
	.long	1028443341              # float 5.000000e-02
	.long	1045220557              # float 2.000000e-01
	.long	1036831949              # float 1.000000e-01
	.long	1041865114              # float 1.500000e-01
	.size	hl1250_open.margins_letter_1200, 16

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"\033&l1T\033E"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033%-12345X"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"@PJL EOJ NAME=\"%s\"\r\n"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Ghost"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"EconoMode"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"PaperType"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"SourceTray"
	.size	.L.str.9, 11

	.type	hl1250_print_page_copies.onoff,@object # @hl1250_print_page_copies.onoff
	.section	.rodata,"a",@progbits
	.align	16
hl1250_print_page_copies.onoff:
	.quad	.L.str.10
	.quad	.L.str.11
	.size	hl1250_print_page_copies.onoff, 16

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"OFF"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ON"
	.size	.L.str.11, 3

	.type	hl1250_print_page_copies.papertypes,@object # @hl1250_print_page_copies.papertypes
	.section	.rodata,"a",@progbits
	.align	16
hl1250_print_page_copies.papertypes:
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.size	hl1250_print_page_copies.papertypes, 40

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"REGULAR"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"THIN"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"THICK"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"THICK2"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"TRANSPARENCY"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"AUTO"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.zero	1
	.size	.L.str.18, 1

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\033&l0H"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"TRAY1"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\033&l1H"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"TRAY2"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\033&l5H"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\033&l2H"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"@PJL \r\n"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"@PJL JOB NAME=\"%s\"\r\n"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"@PJL SET ECONOMODE=%s\n"
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"@PJL SET ECONOLEVEL=%d\n"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"@PJL SET MEDIATYPE=%s\n"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"@PJL SET SOURCETRAY=%s\n"
	.size	.L.str.30, 24

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"@PJL SET RESOLUTION=%d\n"
	.size	.L.str.31, 24

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"@PJL SET RAS1200MODE=%s\n"
	.size	.L.str.32, 25

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"@PJL ENTER LANGUAGE=PCL\n"
	.size	.L.str.33, 25

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\033&l-120U\033*r0F\033&u%dD%s"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"hl1250_print_1200dpi"
	.size	.L.str.35, 21

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"\033E\033&l%dA"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"\033&u1200D"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"\033&l0o0l0E"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"\033&l%dX"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"\033*rB\033*p0x0Y"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"\033*t600R"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\033*r1A"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\033*b1027M"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\033*rB\f"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"hl1250: compression failed (y=%u), doing 1200x300 dpi\n"
	.size	.L.str.45, 55

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"\033*b%uW"
	.size	.L.str.46, 7

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.quad	.L.str.19
	.quad	.L.str.21
	.quad	.L.str.23
	.quad	.L.str.24
	.size	.Lswitch.table, 32

	.type	.Lswitch.table.1,@object # @switch.table.1
	.align	16
.Lswitch.table.1:
	.quad	.L.str.17
	.quad	.L.str.20
	.quad	.L.str.22
	.quad	.L.str.17
	.size	.Lswitch.table.1, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
