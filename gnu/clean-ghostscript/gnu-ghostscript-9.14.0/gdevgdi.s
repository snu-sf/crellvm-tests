	.text
	.file	"gdevgdi.bc"
	.align	16, 0x90
	.type	gdi_print_page,@function
gdi_print_page:                         # @gdi_print_page
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
	subq	$1864, %rsp             # imm = 0x748
.Ltmp6:
	.cfi_def_cfa_offset 1920
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
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	cvttss2si	888(%rbp), %ebx
	movl	$1, %esi
	callq	gx_device_raster
	movl	%eax, %r14d
	movq	%rbp, %rdi
	callq	gdev_pcl_paper_size
	xorl	%ecx, %ecx
	cmpl	$26, %eax
	je	.LBB0_4
# BB#1:                                 # %entry
	cmpl	$3, %eax
	je	.LBB0_3
# BB#2:                                 # %entry
	cmpl	$2, %eax
.LBB0_3:                                # %sw.default
	movl	$1, %ecx
.LBB0_4:                                # %sw.epilog
	movl	GDI_BAND_WIDTH(,%rcx,4), %eax
	leal	31(%rax), %ecx
	sarl	$31, %ecx
	shrl	$27, %ecx
	leal	31(%rax,%rcx), %edx
	sarl	$5, %edx
	cmpl	$600, %ebx              # imm = 0x258
	sete	%cl
	movl	$128, %eax
	movl	$256, %r13d             # imm = 0x100
	cmovel	%eax, %r13d
	incb	%cl
	shll	%cl, %edx
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	imull	%r13d, %eax
	movl	%eax, 204(%rsp)         # 4-byte Spill
	movslq	%eax, %rbx
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movq	%rbp, 184(%rsp)         # 8-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	movq	%r15, 192(%rsp)         # 8-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	imulq	$13, %rbx, %rax
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	imulq	%rcx
	movq	%rdx, %rsi
	movq	%rsi, %rax
	shrq	$63, %rax
	sarq	$2, %rsi
	addq	%rax, %rsi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	%r12, 168(%rsp)         # 8-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	movl	%r14d, %esi
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%r15, %r15
	movl	$-25, %eax
	je	.LBB0_114
# BB#5:                                 # %sw.epilog
	testq	%r12, %r12
	je	.LBB0_114
# BB#6:                                 # %sw.epilog
	testq	%rbp, %rbp
	je	.LBB0_114
# BB#7:                                 # %if.end.56
	movq	184(%rsp), %rax         # 8-byte Reload
	cvttss2si	888(%rax), %r15d
	leaq	256(%rsp), %rbx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	strcpy
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	strcat
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcat
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcat
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	strcat
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	strcat
	leaq	256(%rsp), %rdi
	cmpl	$600, %r15d             # imm = 0x258
	jne	.LBB0_9
# BB#8:                                 # %if.then.i
	movl	$.L.str.13, %esi
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.i
	movl	$.L.str.14, %esi
.LBB0_10:                               # %if.end.i
	callq	strcat
	leaq	256(%rsp), %rdi
	movl	$.L.str.15, %esi
	callq	strcat
	movq	184(%rsp), %rdi         # 8-byte Reload
	callq	gdev_pcl_paper_size
	cmpl	$2, %eax
	je	.LBB0_15
# BB#11:                                # %if.end.i
	cmpl	$3, %eax
	jne	.LBB0_12
# BB#14:                                # %sw.bb.24.i
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	leaq	256(%rsp), %rdi
	movl	$.L.str.18, %esi
	jmp	.LBB0_17
.LBB0_15:                               # %sw.bb.21.i
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	jmp	.LBB0_16
.LBB0_12:                               # %if.end.i
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	cmpl	$26, %eax
	jne	.LBB0_16
# BB#13:                                # %sw.bb.i
	leaq	256(%rsp), %rdi
	movl	$.L.str.16, %esi
	jmp	.LBB0_17
.LBB0_16:                               # %sw.default.i
	leaq	256(%rsp), %rdi
	movl	$.L.str.17, %esi
.LBB0_17:                               # %WritePJLHeaderData.exit
	callq	strcat
	leaq	256(%rsp), %rbx
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	strcat
	movq	%rbx, %rdi
	callq	strlen
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	movq	184(%rsp), %rdi         # 8-byte Reload
	callq	gdev_prn_print_scan_lines
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leal	-1(%r13,%rax), %eax
	cltd
	idivl	%r13d
	movq	%r13, %rcx
	movl	%eax, %edx
	movl	%edx, 36(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB0_113
# BB#18:                                # %for.body.lr.ph
	movl	%r14d, 132(%rsp)        # 4-byte Spill
	movq	232(%rsp), %r13         # 8-byte Reload
	cmpl	%r13d, %r14d
	movslq	%r14d, %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movl	%r14d, %eax
	cmovgl	%r13d, %eax
	cltq
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	%r13d, %eax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	leal	(,%r13,8), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	movl	%ecx, %eax
	shrl	$8, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	%r13d, %eax
	shrl	$5, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	%ecx, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movslq	%r13d, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	$0, 68(%rsp)            # 4-byte Folded Spill
	movl	$0, 164(%rsp)           # 4-byte Folded Spill
	.align	16, 0x90
.LBB0_19:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_27 Depth 2
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_30 Depth 4
                                        #           Child Loop BB0_31 Depth 5
                                        #             Child Loop BB0_48 Depth 6
                                        #           Child Loop BB0_70 Depth 5
                                        #           Child Loop BB0_76 Depth 5
                                        #           Child Loop BB0_78 Depth 5
                                        #           Child Loop BB0_39 Depth 5
                                        #       Child Loop BB0_89 Depth 3
	movl	164(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	movq	%rbp, 248(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movq	192(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	176(%rsp), %rdx         # 8-byte Reload
	callq	memset
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movq	56(%rsp), %r15          # 8-byte Reload
	subl	%ebp, %r15d
	movl	%ebp, %r13d
	xorl	%ebp, %ebp
	movq	40(%rsp), %r14          # 8-byte Reload
	.align	16, 0x90
.LBB0_20:                               # %for.body.75
                                        #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	144(%rsp), %rdx         # 8-byte Reload
	callq	memset
	cmpl	%ebp, %r15d
	je	.LBB0_21
# BB#22:                                # %if.end.81
                                        #   in Loop: Header=BB0_20 Depth=2
	leaq	(%r13,%rbp), %rsi
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	movl	132(%rsp), %ecx         # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	js	.LBB0_24
# BB#23:                                # %if.end.86
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rax, 136(%rsp)         # 8-byte Spill
	incl	164(%rsp)               # 4-byte Folded Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	callq	memcpy
	incq	%rbp
	addq	104(%rsp), %rbx         # 8-byte Folded Reload
	cmpq	112(%rsp), %rbp         # 8-byte Folded Reload
	jl	.LBB0_20
	jmp	.LBB0_26
	.align	16, 0x90
.LBB0_21:                               #   in Loop: Header=BB0_19 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	jmp	.LBB0_25
	.align	16, 0x90
.LBB0_24:                               # %if.end.81.for.end_crit_edge
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	248(%rsp), %rax         # 8-byte Reload
	leal	1(%rax,%rbp), %eax
.LBB0_25:                               # %for.end
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	%eax, 164(%rsp)         # 4-byte Spill
.LBB0_26:                               # %for.end
                                        #   in Loop: Header=BB0_19 Depth=1
	xorl	%r8d, %r8d
	cmpl	$65, 68(%rsp)           # 4-byte Folded Reload
	movq	192(%rsp), %r14         # 8-byte Reload
	jg	.LBB0_112
	jmp	.LBB0_27
	.align	16, 0x90
.LBB0_86:                               # %if.then.102
                                        #   in Loop: Header=BB0_27 Depth=2
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.LBB0_88
# BB#87:                                # %if.then.107
                                        #   in Loop: Header=BB0_27 Depth=2
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %ebx
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	movl	204(%rsp), %esi         # 4-byte Reload
	callq	*88(%rdi)
	movq	%rax, %r14
.LBB0_88:                               # %if.end.118
                                        #   in Loop: Header=BB0_27 Depth=2
	movq	%r14, %rdi
	movq	192(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rsi
	movq	176(%rsp), %rdx         # 8-byte Reload
	callq	memcpy
	leal	1(%rbx), %r8d
	movl	204(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	%r14, %rcx
	movq	%rbp, %rdx
	jle	.LBB0_27
	.align	16, 0x90
.LBB0_89:                               # %for.body.125
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, %ebx
	je	.LBB0_106
# BB#90:                                # %for.body.125
                                        #   in Loop: Header=BB0_89 Depth=3
	cmpl	$2, %ebx
	jne	.LBB0_91
# BB#101:                               # %cond.true.159
                                        #   in Loop: Header=BB0_89 Depth=3
	movzbl	(%rdx), %edi
	testw	$240, %di
	movb	$-16, %sil
	jne	.LBB0_103
# BB#102:                               # %cond.true.159
                                        #   in Loop: Header=BB0_89 Depth=3
	xorl	%esi, %esi
.LBB0_103:                              # %cond.true.159
                                        #   in Loop: Header=BB0_89 Depth=3
	testb	$15, %dil
	movb	$15, %dil
	jne	.LBB0_105
# BB#104:                               # %cond.true.159
                                        #   in Loop: Header=BB0_89 Depth=3
	xorl	%edi, %edi
.LBB0_105:                              # %cond.true.159
                                        #   in Loop: Header=BB0_89 Depth=3
	orb	%dil, %sil
	jmp	.LBB0_108
	.align	16, 0x90
.LBB0_106:                              # %cond.true.179
                                        #   in Loop: Header=BB0_89 Depth=3
	movb	$15, %sil
	cmpb	$0, (%rdx)
	jne	.LBB0_108
	jmp	.LBB0_107
	.align	16, 0x90
.LBB0_91:                               # %for.body.125
                                        #   in Loop: Header=BB0_89 Depth=3
	cmpl	$1, %ebx
	jne	.LBB0_107
# BB#92:                                # %cond.true
                                        #   in Loop: Header=BB0_89 Depth=3
	movzbl	(%rdx), %edi
	testw	$192, %di
	movb	$-64, %sil
	jne	.LBB0_94
# BB#93:                                # %cond.true
                                        #   in Loop: Header=BB0_89 Depth=3
	xorl	%esi, %esi
.LBB0_94:                               # %cond.true
                                        #   in Loop: Header=BB0_89 Depth=3
	testb	$48, %dil
	movb	$48, %bpl
	jne	.LBB0_96
# BB#95:                                # %cond.true
                                        #   in Loop: Header=BB0_89 Depth=3
	xorl	%ebp, %ebp
.LBB0_96:                               # %cond.true
                                        #   in Loop: Header=BB0_89 Depth=3
	orb	%bpl, %sil
	testb	$12, %dil
	movb	$12, %bpl
	jne	.LBB0_98
# BB#97:                                # %cond.true
                                        #   in Loop: Header=BB0_89 Depth=3
	xorl	%ebp, %ebp
.LBB0_98:                               # %cond.true
                                        #   in Loop: Header=BB0_89 Depth=3
	orb	%bpl, %sil
	testb	$3, %dil
	movb	$3, %dil
	jne	.LBB0_100
# BB#99:                                # %cond.true
                                        #   in Loop: Header=BB0_89 Depth=3
	xorl	%edi, %edi
.LBB0_100:                              # %cond.true
                                        #   in Loop: Header=BB0_89 Depth=3
	orb	%dil, %sil
	jmp	.LBB0_108
	.align	16, 0x90
.LBB0_107:                              # %select.mid
                                        #   in Loop: Header=BB0_89 Depth=3
	xorl	%esi, %esi
.LBB0_108:                              # %cond.end.191
                                        #   in Loop: Header=BB0_89 Depth=3
	movb	%sil, (%rcx)
	incq	%rdx
	incq	%rcx
	decl	%eax
	jne	.LBB0_89
.LBB0_27:                               # %do.body
                                        #   Parent Loop BB0_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_30 Depth 4
                                        #           Child Loop BB0_31 Depth 5
                                        #             Child Loop BB0_48 Depth 6
                                        #           Child Loop BB0_70 Depth 5
                                        #           Child Loop BB0_76 Depth 5
                                        #           Child Loop BB0_78 Depth 5
                                        #           Child Loop BB0_39 Depth 5
                                        #       Child Loop BB0_89 Depth 3
	movq	%r8, 208(%rsp)          # 8-byte Spill
	movq	%r14, 216(%rsp)         # 8-byte Spill
	xorl	%r11d, %r11d
	xorl	%r13d, %r13d
	movq	%r14, %r10
	movq	%r12, %r15
	.align	16, 0x90
.LBB0_28:                               # %while.body.outer.i.preheader.i
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_30 Depth 4
                                        #           Child Loop BB0_31 Depth 5
                                        #             Child Loop BB0_48 Depth 6
                                        #           Child Loop BB0_70 Depth 5
                                        #           Child Loop BB0_76 Depth 5
                                        #           Child Loop BB0_78 Depth 5
                                        #           Child Loop BB0_39 Depth 5
	movq	%r13, %rbx
	movq	%r15, %r9
	movq	%r10, %r8
	movq	232(%rsp), %r12         # 8-byte Reload
	jmp	.LBB0_30
.LBB0_29:                               # %while.cond.110.while.body.loopexit_crit_edge.i.i
                                        #   in Loop: Header=BB0_30 Depth=4
	addl	%edx, %edi
	leaq	2(%rsi,%rdi), %r9
	movq	248(%rsp), %r8          # 8-byte Reload
	addq	%rdi, %r8
	.align	16, 0x90
.LBB0_30:                               # %while.body.outer.i.i
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_31 Depth 5
                                        #             Child Loop BB0_48 Depth 6
                                        #           Child Loop BB0_70 Depth 5
                                        #           Child Loop BB0_76 Depth 5
                                        #           Child Loop BB0_78 Depth 5
                                        #           Child Loop BB0_39 Depth 5
	leaq	1(%r8), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	leaq	2(%r8), %r14
.LBB0_31:                               # %while.body.i.i
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        #         Parent Loop BB0_30 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_48 Depth 6
	testl	%r12d, %r12d
	je	.LBB0_34
# BB#32:                                # %while.body.i.i
                                        #   in Loop: Header=BB0_31 Depth=5
	cmpl	$1, %r12d
	je	.LBB0_33
# BB#37:                                # %if.end.4.i.i
                                        #   in Loop: Header=BB0_31 Depth=5
	movzbl	(%r8), %eax
	movzbl	1(%r8), %edx
	cmpl	%edx, %eax
	je	.LBB0_38
# BB#44:                                # %if.else.46.i.i
                                        #   in Loop: Header=BB0_31 Depth=5
	movq	%rbx, %r13
	cmpl	$3, %r12d
	jb	.LBB0_46
# BB#45:                                # %if.then.49.i.i
                                        #   in Loop: Header=BB0_31 Depth=5
	movl	%r12d, %ebp
	addl	$-2, %ebp
	je	.LBB0_46
# BB#47:                                # %while.body.58.lr.ph.i.i
                                        #   in Loop: Header=BB0_31 Depth=5
	leal	-3(%r12), %ebx
	movq	%r14, %rax
	.align	16, 0x90
.LBB0_48:                               # %while.body.58.i.i
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        #         Parent Loop BB0_30 Depth=4
                                        #           Parent Loop BB0_31 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leaq	1(%rax), %rdi
	movzbl	(%rax), %esi
	movzbl	%dl, %ecx
	cmpl	%esi, %ecx
	jne	.LBB0_49
# BB#50:                                # %if.then.64.i.i
                                        #   in Loop: Header=BB0_48 Depth=6
	movl	$2, %edx
	cmpl	$2, %ebx
	jb	.LBB0_56
# BB#51:                                # %if.else.68.i.i
                                        #   in Loop: Header=BB0_48 Depth=6
	movzbl	1(%rax), %esi
	addq	$2, %rax
	movl	$3, %edx
	cmpl	%esi, %ecx
	je	.LBB0_55
# BB#52:                                #   in Loop: Header=BB0_48 Depth=6
	addl	$-2, %ebp
	movl	%ebp, %ebx
	jmp	.LBB0_53
	.align	16, 0x90
.LBB0_49:                               #   in Loop: Header=BB0_48 Depth=6
	movq	%rdi, %rax
.LBB0_53:                               # %while.cond.55.backedge.i.i
                                        #   in Loop: Header=BB0_48 Depth=6
	movl	%ebx, %ebp
	leal	-1(%rbp), %ebx
	testl	%ebp, %ebp
	movb	%sil, %dl
	jne	.LBB0_48
# BB#54:                                #   in Loop: Header=BB0_31 Depth=5
	xorl	%edx, %edx
.LBB0_55:                               # %if.end.80.i.i
                                        #   in Loop: Header=BB0_31 Depth=5
	movq	%rax, %rdi
	jmp	.LBB0_56
	.align	16, 0x90
.LBB0_46:                               #   in Loop: Header=BB0_31 Depth=5
	xorl	%edx, %edx
	movq	%r14, %rdi
.LBB0_56:                               # %if.end.80.i.i
                                        #   in Loop: Header=BB0_31 Depth=5
	subl	%r8d, %edi
	movl	%edi, %eax
	subl	%edx, %eax
	movl	%edx, %ecx
	negl	%ecx
	cmpl	%r12d, %eax
	cmoval	%eax, %r12d
	leal	-1(%rdi,%rcx), %esi
	cmpl	$64, %esi
	jb	.LBB0_58
# BB#57:                                # %if.then.95.i.i
                                        #   in Loop: Header=BB0_31 Depth=5
	movl	%esi, %ecx
	shrl	$8, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, (%r9)
	movb	%sil, 1(%r9)
	leaq	1(%r9), %rsi
	jmp	.LBB0_59
	.align	16, 0x90
.LBB0_58:                               # %if.else.105.i.i
                                        #   in Loop: Header=BB0_31 Depth=5
	andb	$63, %sil
	movb	%sil, (%r9)
	movq	%r9, %rsi
.LBB0_59:                               # %while.cond.110.preheader.i.i
                                        #   in Loop: Header=BB0_31 Depth=5
	movq	%r13, %rbx
	subl	%eax, %r12d
	leaq	1(%rsi), %r9
	cmpl	%edx, %edi
	je	.LBB0_31
# BB#60:                                # %while.body.113.lr.ph.i.i
                                        #   in Loop: Header=BB0_30 Depth=4
	leal	-1(%rax), %ebp
	leaq	1(%rbp), %r13
	movq	%r13, %r14
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %r14
	je	.LBB0_61
# BB#62:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_30 Depth=4
	leaq	(%r8,%rbp), %rcx
	cmpq	%rcx, %r9
	ja	.LBB0_65
# BB#63:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_30 Depth=4
	leaq	(%r9,%rbp), %rcx
	cmpq	%rcx, %r8
	ja	.LBB0_65
# BB#64:                                #   in Loop: Header=BB0_30 Depth=4
	xorl	%r14d, %r14d
	jmp	.LBB0_73
.LBB0_38:                               # %if.then.10.i.i
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	$2, %esi
	subl	%r12d, %esi
	.align	16, 0x90
.LBB0_39:                               # %while.cond.15.i.i
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        #         Parent Loop BB0_30 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%r14, %rdx
	testl	%esi, %esi
	je	.LBB0_41
# BB#40:                                # %while.body.17.i.i
                                        #   in Loop: Header=BB0_39 Depth=5
	leaq	1(%rdx), %r14
	movzbl	(%rdx), %ecx
	movzbl	%al, %edi
	incl	%esi
	cmpl	%ecx, %edi
	je	.LBB0_39
.LBB0_41:                               # %while.end.i.i
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	%edx, %ecx
	subl	%r8d, %ecx
	subl	%ecx, %r12d
	movl	$1, %esi
	subl	%ecx, %esi
	addl	$-2, %ecx
	cmpl	$64, %ecx
	jb	.LBB0_43
# BB#42:                                # %if.then.31.i.i
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	%esi, %ecx
	shrl	$8, %ecx
	orl	$192, %ecx
	movb	%cl, (%r9)
	movb	%sil, 1(%r9)
	movb	%al, 2(%r9)
	addq	$3, %r9
	movq	%rdx, %r8
	jmp	.LBB0_30
.LBB0_43:                               # %if.else.39.i.i
                                        #   in Loop: Header=BB0_30 Depth=4
	andb	$127, %sil
	movb	%sil, (%r9)
	movb	%al, 1(%r9)
	addq	$2, %r9
	movq	%rdx, %r8
	jmp	.LBB0_30
.LBB0_61:                               #   in Loop: Header=BB0_30 Depth=4
	xorl	%r14d, %r14d
	jmp	.LBB0_73
.LBB0_65:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_30 Depth=4
	movq	%r13, 88(%rsp)          # 8-byte Spill
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	leaq	1(%rbp), %rcx
	movabsq	$8589934560, %rsi       # imm = 0x1FFFFFFE0
	andq	%rsi, %rcx
	addq	$-32, %rcx
	movq	%rcx, %rsi
	shrq	$5, %rsi
	btq	$5, %rcx
	movl	$0, %ebx
	jb	.LBB0_67
# BB#66:                                # %vector.body.prol
                                        #   in Loop: Header=BB0_30 Depth=4
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movq	152(%rsp), %rcx         # 8-byte Reload
	movups	%xmm0, 1(%rcx)
	movups	%xmm1, 17(%rcx)
	movl	$32, %ebx
.LBB0_67:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB0_30 Depth=4
	leaq	(%r9,%r14), %r13
	leaq	(%r8,%r14), %rcx
	subl	%r14d, %eax
	testq	%rsi, %rsi
	je	.LBB0_68
# BB#69:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB0_30 Depth=4
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	incq	%rbp
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rbp
	subq	%rbx, %rbp
	leaq	48(%r8,%rbx), %rsi
	leaq	48(%r9,%rbx), %rcx
	.align	16, 0x90
.LBB0_70:                               # %vector.body
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        #         Parent Loop BB0_30 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	-48(%rsi), %xmm0
	movups	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rcx)
	movups	%xmm1, -32(%rcx)
	movups	-16(%rsi), %xmm0
	movups	(%rsi), %xmm1
	movups	%xmm0, -16(%rcx)
	movups	%xmm1, (%rcx)
	addq	$64, %rsi
	addq	$64, %rcx
	addq	$-64, %rbp
	jne	.LBB0_70
# BB#71:                                #   in Loop: Header=BB0_30 Depth=4
	movq	72(%rsp), %r9           # 8-byte Reload
	movq	80(%rsp), %r8           # 8-byte Reload
	jmp	.LBB0_72
.LBB0_68:                               #   in Loop: Header=BB0_30 Depth=4
	movq	%r13, %r9
	movq	%rcx, %r8
.LBB0_72:                               # %middle.block
                                        #   in Loop: Header=BB0_30 Depth=4
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	152(%rsp), %rsi         # 8-byte Reload
	movq	88(%rsp), %r13          # 8-byte Reload
.LBB0_73:                               # %middle.block
                                        #   in Loop: Header=BB0_30 Depth=4
	notl	%edx
	cmpq	%r14, %r13
	je	.LBB0_29
# BB#74:                                # %while.body.113.i.i.preheader
                                        #   in Loop: Header=BB0_30 Depth=4
	leal	-1(%rax), %r14d
	movq	%rsi, %rbp
	testb	$7, %al
	je	.LBB0_77
# BB#75:                                # %while.body.113.i.i.prol.preheader
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	%eax, %esi
	andl	$7, %esi
	negl	%esi
	.align	16, 0x90
.LBB0_76:                               # %while.body.113.i.i.prol
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        #         Parent Loop BB0_30 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	decl	%eax
	movb	(%r8), %cl
	incq	%r8
	movb	%cl, (%r9)
	incq	%r9
	incl	%esi
	jne	.LBB0_76
.LBB0_77:                               # %while.body.113.i.i.preheader.split
                                        #   in Loop: Header=BB0_30 Depth=4
	cmpl	$7, %r14d
	movq	%rbp, %rsi
	jb	.LBB0_29
	.align	16, 0x90
.LBB0_78:                               # %while.body.113.i.i
                                        #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        #         Parent Loop BB0_30 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movb	(%r8), %cl
	movb	%cl, (%r9)
	movb	1(%r8), %cl
	movb	%cl, 1(%r9)
	movb	2(%r8), %cl
	movb	%cl, 2(%r9)
	movb	3(%r8), %cl
	movb	%cl, 3(%r9)
	movb	4(%r8), %cl
	movb	%cl, 4(%r9)
	movb	5(%r8), %cl
	movb	%cl, 5(%r9)
	movb	6(%r8), %cl
	movb	%cl, 6(%r9)
	addl	$-8, %eax
	movb	7(%r8), %cl
	leaq	8(%r8), %r8
	movb	%cl, 7(%r9)
	leaq	8(%r9), %r9
	jne	.LBB0_78
	jmp	.LBB0_29
.LBB0_33:                               # %if.then.1.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movb	$0, (%r9)
	movb	(%r8), %al
	movb	%al, 1(%r9)
	addq	$2, %r9
	.align	16, 0x90
.LBB0_34:                               # %FrameTiff_Comp.exit.i
                                        #   in Loop: Header=BB0_28 Depth=3
	subq	%r15, %r9
	addq	224(%rsp), %r10         # 8-byte Folded Reload
	movl	%r9d, %r13d
	addq	%r13, %r15
	addq	%rbx, %r13
	incl	%r11d
	movq	240(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r11d
	jne	.LBB0_28
# BB#35:                                # %if.then.12.i
                                        #   in Loop: Header=BB0_27 Depth=2
	addl	%ebx, %r9d
	andl	$3, %r9d
	cmpq	$3, %r9
	je	.LBB0_36
# BB#79:                                # %if.then.12.i
                                        #   in Loop: Header=BB0_27 Depth=2
	cmpq	$2, %r9
	je	.LBB0_83
# BB#80:                                # %if.then.12.i
                                        #   in Loop: Header=BB0_27 Depth=2
	cmpq	$1, %r9
	jne	.LBB0_81
# BB#82:                                # %sw.bb.i.133
                                        #   in Loop: Header=BB0_27 Depth=2
	movb	$0, (%r15)
	incq	%r15
	incq	%r13
.LBB0_83:                               # %sw.bb.14.i
                                        #   in Loop: Header=BB0_27 Depth=2
	movq	168(%rsp), %r12         # 8-byte Reload
	movq	216(%rsp), %r14         # 8-byte Reload
	movq	208(%rsp), %rax         # 8-byte Reload
	movb	$0, (%r15)
	incq	%r15
	incq	%r13
	jmp	.LBB0_84
	.align	16, 0x90
.LBB0_36:                               #   in Loop: Header=BB0_27 Depth=2
	movq	168(%rsp), %r12         # 8-byte Reload
	movq	216(%rsp), %r14         # 8-byte Reload
	movq	208(%rsp), %rax         # 8-byte Reload
.LBB0_84:                               # %sw.bb.17.i
                                        #   in Loop: Header=BB0_27 Depth=2
	movb	$0, (%r15)
	incq	%r13
	jmp	.LBB0_85
.LBB0_81:                               #   in Loop: Header=BB0_27 Depth=2
	movq	168(%rsp), %r12         # 8-byte Reload
	movq	216(%rsp), %r14         # 8-byte Reload
	movq	208(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB0_85:                               # %FrameTiffComp.exit
                                        #   in Loop: Header=BB0_27 Depth=2
	cmpq	$65528, %r13            # imm = 0xFFF8
	jge	.LBB0_86
# BB#109:                               # %oh_well
                                        #   in Loop: Header=BB0_19 Depth=1
	cmpl	$2, %eax
	jl	.LBB0_111
# BB#110:                               # %if.then.204
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB0_111:                              # %sw.epilog.217
                                        #   in Loop: Header=BB0_19 Depth=1
	xorl	%esi, %esi
	movl	$50, %edx
	leaq	256(%rsp), %rbx
	movq	%rbx, %rdi
	callq	memset
	leaq	8(%r13), %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 256(%rsp)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 257(%rsp)
	movb	%ah, 258(%rsp)  # NOREX
	movb	%al, 259(%rsp)
	movl	68(%rsp), %eax          # 4-byte Reload
	movb	%ah, 260(%rsp)  # NOREX
	movb	%al, 261(%rsp)
	movb	$6, 262(%rsp)
	movb	$0, 263(%rsp)
	movl	16(%rsp), %eax          # 4-byte Reload
	movb	%al, 264(%rsp)
	movq	240(%rsp), %rax         # 8-byte Reload
	movb	%al, 265(%rsp)
	movl	12(%rsp), %eax          # 4-byte Reload
	movb	%al, 266(%rsp)
	movl	20(%rsp), %eax          # 4-byte Reload
	movb	%al, 267(%rsp)
	movl	$1, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	fwrite
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rcx
	callq	fwrite
.LBB0_112:                              # %for.inc.221
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	68(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	cmpl	36(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB0_19
.LBB0_113:                              # %for.end.223
	leaq	256(%rsp), %r14
	xorl	%esi, %esi
	movl	$200, %edx
	movq	%r14, %rdi
	callq	memset
	movl	$.L.str.20, %esi
	movq	%r14, %rdi
	callq	strcpy
	movl	$.L.str.21, %esi
	movq	%r14, %rdi
	callq	strcat
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	strcat
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	callq	strcat
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	callq	strcat
	movl	$.L.str.25, %esi
	movq	%r14, %rdi
	callq	strcat
	movq	%r14, %rdi
	callq	strlen
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	movq	184(%rsp), %rbx         # 8-byte Reload
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	192(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	136(%rsp), %rax         # 8-byte Reload
.LBB0_114:                              # %cleanup
	addq	$1864, %rsp             # imm = 0x748
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gdi_print_page, .Lfunc_end0-gdi_print_page
	.cfi_endproc

	.globl	SaveScanData
	.align	16, 0x90
	.type	SaveScanData,@function
SaveScanData:                           # @SaveScanData
	.cfi_startproc
# BB#0:                                 # %entry
	subl	%ecx, %r8d
	cmpl	$4095, %esi             # imm = 0xFFF
	ja	.LBB1_2
# BB#1:                                 # %entry
	movzwl	%dx, %eax
	cmpl	$4, %eax
	jae	.LBB1_2
# BB#3:                                 # %if.else
	movzwl	%si, %ecx
	cmpl	$63, %ecx
	ja	.LBB1_6
# BB#4:                                 # %if.else
	cmpl	$1, %eax
	ja	.LBB1_6
# BB#5:                                 # %if.else
	movl	%r8d, %ecx
	subl	$-128, %ecx
	movzwl	%cx, %ecx
	cmpl	$256, %ecx              # imm = 0x100
	jae	.LBB1_6
# BB#7:                                 # %if.else.25
	cmpl	$1, %eax
	sete	%al
	shlb	$6, %al
	andb	$63, %sil
	orb	%al, %sil
	movb	%sil, (%rdi)
	movl	%r8d, %eax
	shrl	$8, %eax
	andb	$-128, %al
	andb	$127, %r8b
	orb	%al, %r8b
	movb	%r8b, 1(%rdi)
	movl	$2, %eax
	retq
.LBB1_2:                                # %if.then
	movzwl	%r9w, %eax
	movzwl	%dx, %ecx
	imulq	%rax, %rcx
	movswq	%r8w, %rax
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, %rcx
	shrq	$34, %rcx
	andl	$536870912, %ecx        # imm = 0x20000000
	movl	%eax, %edx
	andl	$520093696, %edx        # imm = 0x1F000000
	orl	%ecx, %edx
	shrl	$24, %edx
	orl	$192, %edx
	movb	%dl, (%rdi)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 1(%rdi)
	movb	%ah, 2(%rdi)  # NOREX
	movb	%al, 3(%rdi)
	movl	%esi, %eax
	andl	$16128, %eax            # imm = 0x3F00
	shrl	$8, %eax
	orl	$192, %eax
	movb	%al, 4(%rdi)
	movb	%sil, 5(%rdi)
	movl	$6, %eax
	retq
.LBB1_6:                                # %if.then.23
	movl	%r8d, %eax
	shrl	$2, %eax
	andl	$8192, %eax             # imm = 0x2000
	movl	%r8d, %ecx
	andl	$7936, %ecx             # imm = 0x1F00
	orl	%eax, %ecx
	movzwl	%cx, %eax
	shrl	$8, %eax
	orl	$128, %eax
	movb	%al, (%rdi)
	movb	%r8b, 1(%rdi)
	shll	$12, %edx
	movl	%esi, %eax
	andl	$3840, %eax             # imm = 0xF00
	orl	%edx, %eax
	andl	$16128, %eax            # imm = 0x3F00
	shrl	$8, %eax
	orl	$128, %eax
	movb	%al, 2(%rdi)
	movb	%sil, 3(%rdi)
	movl	$4, %eax
	retq
.Lfunc_end1:
	.size	SaveScanData, .Lfunc_end1-SaveScanData
	.cfi_endproc

	.globl	UpdateScanSize
	.align	16, 0x90
	.type	UpdateScanSize,@function
UpdateScanSize:                         # @UpdateScanSize
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$4095, %esi             # imm = 0xFFF
	ja	.LBB2_3
# BB#1:                                 # %entry
	movzwl	%dx, %eax
	cmpl	$3, %eax
	ja	.LBB2_3
# BB#2:                                 # %if.else
	movl	$128, %edx
	subl	%ecx, %edx
	addl	%edx, %r8d
	movzwl	%r8w, %ecx
	cmpl	$255, %ecx
	seta	%cl
	cmpl	$1, %eax
	movzwl	%si, %edx
	movzbl	%cl, %eax
	leaq	2(%rax,%rax), %rax
	movl	$4, %ecx
	cmovaq	%rcx, %rax
	cmpl	$63, %edx
	cmovaq	%rcx, %rax
	retq
.LBB2_3:                                # %if.end.25
	movl	$6, %eax
	retq
.Lfunc_end2:
	.size	UpdateScanSize, .Lfunc_end2-UpdateScanSize
	.cfi_endproc

	.align	16, 0x90
	.type	gdi_open,@function
gdi_open:                               # @gdi_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$gdi_open.m_a4, %eax
	movl	$gdi_open.m_letter, %esi
	cmoveq	%rax, %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end3:
	.size	gdi_open, .Lfunc_end3-gdi_open
	.cfi_endproc

	.align	16, 0x90
	.type	gdi_close,@function
gdi_close:                              # @gdi_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 17168(%rbx)
	js	.LBB4_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 17164(%rbx)
	je	.LBB4_3
# BB#2:                                 # %if.then
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gdev_prn_open_printer
	movq	17176(%rbx), %rsi
	movl	$.L.str.3, %edi
	callq	fputs
.LBB4_3:                                # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end4:
	.size	gdi_close, .Lfunc_end4-gdi_close
	.cfi_endproc

	.type	GDI_BAND_WIDTH,@object  # @GDI_BAND_WIDTH
	.data
	.globl	GDI_BAND_WIDTH
	.align	4
GDI_BAND_WIDTH:
	.long	4768                    # 0x12a0
	.long	4928                    # 0x1340
	.size	GDI_BAND_WIDTH, 8

	.type	prn_gdi_procs,@object   # @prn_gdi_procs
	.align	8
prn_gdi_procs:
	.quad	gdi_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdi_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
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
	.size	prn_gdi_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gdi"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_gdi_device,@object   # @gs_gdi_device
	.data
	.globl	gs_gdi_device
	.align	8
gs_gdi_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_gdi_procs
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
	.long	3270508544              # float -1.200000e+02
	.long	3272998912              # float -1.500000e+02
	.long	1097229926              # float 1.440000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
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
	.quad	gdi_print_page
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
	.size	gs_gdi_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"samsunggdi"
	.size	.L.str.2, 11

	.type	gs_samsunggdi_device,@object # @gs_samsunggdi_device
	.data
	.globl	gs_samsunggdi_device
	.align	8
gs_samsunggdi_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_gdi_procs
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
	.long	3270508544              # float -1.200000e+02
	.long	3272998912              # float -1.500000e+02
	.long	1097229926              # float 1.440000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
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
	.quad	gdi_print_page
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
	.size	gs_samsunggdi_device, 18472

	.type	UpdateScanLine,@object  # @UpdateScanLine
	.globl	UpdateScanLine
	.align	16
UpdateScanLine:
	.quad	SaveScanData
	.quad	UpdateScanSize
	.size	UpdateScanLine, 16

	.type	gdi_open.m_a4,@object   # @gdi_open.m_a4
	.section	.rodata,"a",@progbits
	.align	16
gdi_open.m_a4:
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.size	gdi_open.m_a4, 16

	.type	gdi_open.m_letter,@object # @gdi_open.m_letter
	.align	16
gdi_open.m_letter:
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.size	gdi_open.m_letter, 16

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"\033&l0H"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gdi_print_page"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gdi_print_page/fudge"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gdi_line_buffer"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033%-12345X"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"@PJL SET PAPERTYPE = NORMAL ON\r\n"
	.size	.L.str.8, 33

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"@PJL SET DENSITY = 1\r\n"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"@PJL SET TONERSAVE = OFF\r\n"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"@PJL ENTER LANGUAGE = SMART\r\n"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"$PJL JOB START\r\n"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"$PJL RESOLUTION = 600\r\n"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"$PJL RESOLUTION = 300\r\n"
	.size	.L.str.14, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"$PJL COPIES = 1\r\n"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"$PJL PAGE A4 AUTO\r\n"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"$PJL PAGE LETTER AUTO\r\n"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"$PJL PAGE LEGAL AUTO\r\n"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"$PJL BITMAP START\r\n"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"$PJL PRINT 4\r\n"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"$PJL EOJ\r\n"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"$PJL SYNC\r\n"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"$PJL RELEASE 0 2047\r\n"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"$PJL GARBAGE\r\n"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\033%-12345X\r\n"
	.size	.L.str.25, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
