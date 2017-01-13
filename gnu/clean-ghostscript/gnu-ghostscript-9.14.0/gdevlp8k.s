	.text
	.file	"gdevlp8k.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4598175219545276416     # double 0.25
	.text
	.align	16, 0x90
	.type	lp8000_print_page,@function
lp8000_print_page:                      # @lp8000_print_page
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
	subq	$88, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 144
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
	movq	%rsi, %rbx
	movq	%rdi, %r12
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebp
	movl	%ebp, 48(%rsp)          # 4-byte Spill
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.2, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r14
	testq	%r15, %r15
	je	.LBB0_2
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB0_2
# BB#6:                                 # %if.end.27
	movq	%r14, 72(%rsp)          # 8-byte Spill
	movl	$.L.str.4, %edi
	movl	$1, %esi
	movl	$8, %edx
	movq	%r12, %r14
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.5, %edi
	movl	$1, %esi
	movl	$20, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.6, %edi
	movl	$1, %esi
	movl	$12, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.7, %edi
	movl	$1, %esi
	movl	$20, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.8, %edi
	movl	$1, %esi
	movl	$27, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.5, %edi
	movl	$1, %esi
	movl	$20, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.9, %edi
	movl	$1, %esi
	movl	$23, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.10, %edi
	movl	$1, %esi
	movl	$23, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.11, %edi
	movl	$1, %esi
	movl	$26, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.12, %edi
	movl	$1, %esi
	movl	$15, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.13, %edi
	movl	$1, %esi
	movl	$17, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.14, %edi
	movl	$1, %esi
	movl	$11, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.15, %edi
	movl	$1, %esi
	movl	$16, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.16, %edi
	movl	$1, %esi
	movl	$16, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.17, %edi
	movl	$1, %esi
	movl	$16, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	cvttsd2si	%xmm0, %ebp
	addl	$-60, %ebp
	andl	$-8, %ebp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	$.L.str.18, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movl	$.L.str.20, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.21, %edi
	movl	$1, %esi
	movl	$5, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movss	888(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %r12d
	cvtsi2sdl	836(%r14), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ebx
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	cmpl	%ebx, %r12d
	jge	.LBB0_43
# BB#7:                                 # %for.body.lr.ph
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	832(%r14), %ecx
	subl	%eax, %ecx
	sarl	$3, %eax
	sarl	$3, %ecx
	subl	%eax, %ecx
	cltq
	movq	%r15, %r13
	addq	%rax, %r13
	movslq	%ecx, %rax
	leaq	(%rax,%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	48(%rsp), %eax          # 4-byte Reload
	decl	%eax
	movslq	%eax, %rbp
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	%eax, 52(%rsp)          # 4-byte Spill
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_11:                               # %while.body
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	%r12d
.LBB0_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_33 Depth 3
	movq	%r14, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	leaq	80(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	80(%rsp), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB0_12
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_8 Depth=1
	leaq	1(%rdi), %rsi
	movq	%rbp, %rdx
	callq	memcmp
	cmpl	%ebx, %r12d
	jge	.LBB0_12
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_8 Depth=1
	testl	%eax, %eax
	je	.LBB0_11
.LBB0_12:                               # %while.end
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpl	%ebx, %r12d
	je	.LBB0_43
# BB#13:                                # %if.end.92
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%r14, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movl	48(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movq	8(%rsp), %rax           # 8-byte Reload
	.align	16, 0x90
.LBB0_14:                               # %while.cond.97
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r15
	xorl	%r8d, %r8d
	cmpq	%r13, %r15
	jbe	.LBB0_15
# BB#16:                                # %land.rhs.100
                                        #   in Loop: Header=BB0_14 Depth=2
	leaq	-1(%r15), %rax
	cmpb	$0, -1(%r15)
	je	.LBB0_14
# BB#17:                                # %land.rhs.111.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB0_18:                               # %land.rhs.111
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%r13,%r8)
	jne	.LBB0_20
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB0_18 Depth=2
	leaq	1(%r13,%r8), %rcx
	incq	%r8
	cmpq	%r15, %rcx
	jb	.LBB0_18
.LBB0_20:                               # %land.rhs.111.for.end.loopexit_crit_edge
                                        #   in Loop: Header=BB0_8 Depth=1
	leaq	(%r13,%r8), %r9
	jmp	.LBB0_21
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	movq	%r13, %r9
.LBB0_21:                               # %for.end
                                        #   in Loop: Header=BB0_8 Depth=1
	leaq	1(%r9), %rsi
	cmpq	%r15, %rsi
	movq	%r9, %rcx
	movq	72(%rsp), %r14          # 8-byte Reload
	jae	.LBB0_37
	.align	16, 0x90
.LBB0_22:                               # %for.body.125
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_33 Depth 3
	movzbl	(%rcx), %edi
	leaq	1(%rsi), %rdx
	movzbl	(%rsi), %ebp
	cmpl	%ebp, %edi
	jne	.LBB0_31
# BB#23:                                # %for.cond.134.preheader
                                        #   in Loop: Header=BB0_22 Depth=2
	cmpq	%r15, %rdx
	jae	.LBB0_30
# BB#24:                                # %for.cond.134.preheader
                                        #   in Loop: Header=BB0_22 Depth=2
	movzbl	(%rdx), %edx
	movzbl	%dil, %ebx
	cmpl	%edx, %ebx
	jne	.LBB0_30
# BB#25:                                # %for.inc.144.preheader
                                        #   in Loop: Header=BB0_22 Depth=2
	addq	$2, %rsi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_26:                               # %for.inc.144
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	(%rsi,%rdx), %rax
	leaq	1(%rdx), %rbp
	cmpq	%r15, %rax
	jae	.LBB0_28
# BB#27:                                # %for.inc.144
                                        #   in Loop: Header=BB0_26 Depth=3
	movzbl	(%rsi,%rdx), %eax
	cmpl	%eax, %ebx
	movq	%rbp, %rdx
	je	.LBB0_26
.LBB0_28:                               # %while.cond.148.preheader
                                        #   in Loop: Header=BB0_22 Depth=2
	leal	1(%rbp), %edx
	addl	$2, %ebp
	movb	%dil, (%r14)
	movb	(%rcx), %bl
	movb	%bl, 1(%r14)
	cmpl	$257, %edx              # imm = 0x101
	jl	.LBB0_29
# BB#32:                                # %while.body.151.preheader
                                        #   in Loop: Header=BB0_22 Depth=2
	addq	$2, %r14
	movq	%r14, %rsi
	.align	16, 0x90
.LBB0_33:                               # %while.body.151
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %r14
	movb	$-1, (%r14)
	addl	$-257, %ebp             # imm = 0xFFFFFFFFFFFFFEFF
	movb	257(%rcx), %al
	movb	%al, 1(%r14)
	movb	257(%rcx), %al
	leaq	257(%rcx), %rcx
	movb	%al, 2(%r14)
	leaq	3(%r14), %rsi
	cmpl	$257, %ebp              # imm = 0x101
	jg	.LBB0_33
# BB#34:                                #   in Loop: Header=BB0_22 Depth=2
	incq	%r14
	jmp	.LBB0_35
	.align	16, 0x90
.LBB0_31:                               # %if.then.131
                                        #   in Loop: Header=BB0_22 Depth=2
	incq	%rcx
	movb	%dil, (%r14)
	incq	%r14
	movq	%rcx, %rdi
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_30:                               # %while.cond.148.preheader.thread
                                        #   in Loop: Header=BB0_22 Depth=2
	movb	%dil, (%r14)
	movb	(%rcx), %dl
	leaq	2(%r14), %rsi
	movb	%dl, 1(%r14)
	movl	$2, %ebp
	jmp	.LBB0_35
.LBB0_29:                               #   in Loop: Header=BB0_22 Depth=2
	leaq	2(%r14), %rsi
.LBB0_35:                               # %while.end.157
                                        #   in Loop: Header=BB0_22 Depth=2
	leal	254(%rbp), %eax
	addq	$3, %r14
	movb	%al, (%rsi)
	movslq	%ebp, %rax
	leaq	(%rcx,%rax), %rdi
	leaq	1(%rcx,%rax), %rdx
.LBB0_36:                               # %for.cond.122.backedge
                                        #   in Loop: Header=BB0_22 Depth=2
	cmpq	%r15, %rdx
	movq	%rdx, %rsi
	movq	%rdi, %rcx
	jb	.LBB0_22
.LBB0_37:                               # %for.end.167
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r8,8), %ebx
	leaq	-1(%r15), %rax
	cmpq	%rax, %rcx
	je	.LBB0_39
# BB#38:                                #   in Loop: Header=BB0_8 Depth=1
	movq	%r9, 64(%rsp)           # 8-byte Spill
	jmp	.LBB0_40
.LBB0_39:                               # %if.then.171
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movb	(%rax), %al
	movb	%al, (%r14)
	incq	%r14
.LBB0_40:                               # %if.end.173
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpl	52(%rsp), %ebx          # 4-byte Folded Reload
	je	.LBB0_42
# BB#41:                                # %if.then.176
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.18, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	fprintf
	movl	$.L.str.20, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbp, %rcx
	callq	fwrite
	movl	%ebx, 52(%rsp)          # 4-byte Spill
.LBB0_42:                               # %cleanup.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.18, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	leal	-60(%r12), %edx
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movl	$.L.str.22, %edi
	movl	$1, %esi
	movl	$2, %edx
	movq	%rbp, %rcx
	callq	fwrite
	movq	72(%rsp), %rbx          # 8-byte Reload
	subq	%rbx, %r14
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	fprintf
	subq	64(%rsp), %r15          # 8-byte Folded Reload
	shlq	$3, %r15
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r15, %rdx
	callq	fprintf
	movl	$.L.str.24, %edi
	movl	$1, %esi
	movl	$7, %edx
	movq	%rbp, %rcx
	callq	fwrite
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rbp, %rcx
	callq	fwrite
	incl	%r12d
	movl	20(%rsp), %ebx          # 4-byte Reload
	cmpl	%ebx, %r12d
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	(%rsp), %rbp            # 8-byte Reload
	jl	.LBB0_8
.LBB0_43:                               # %for.end.203
	movl	$.L.str.25, %edi
	movl	$1, %esi
	movl	$5, %edx
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.26, %edi
	movl	$1, %esi
	movl	$5, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.27, %edi
	movl	$1, %esi
	movl	$4, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.4, %edi
	movl	$1, %esi
	movl	$8, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.7, %edi
	movl	$1, %esi
	movl	$20, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.8, %edi
	movl	$1, %esi
	movl	$27, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.5, %edi
	movl	$1, %esi
	movl	$20, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.9, %edi
	movl	$1, %esi
	movl	$23, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.10, %edi
	movl	$1, %esi
	movl	$23, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.11, %edi
	movl	$1, %esi
	movl	$26, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.12, %edi
	movl	$1, %esi
	movl	$15, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.13, %edi
	movl	$1, %esi
	movl	$17, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.14, %edi
	movl	$1, %esi
	movl	$11, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.15, %edi
	movl	$1, %esi
	movl	$16, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.16, %edi
	movl	$1, %esi
	movl	$16, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.27, %edi
	movl	$1, %esi
	movl	$4, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.4, %edi
	movl	$1, %esi
	movl	$8, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.4, %edi
	movl	$1, %esi
	movl	$8, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movq	%rbx, %rdi
	callq	fflush
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	72(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	xorl	%ebx, %ebx
	jmp	.LBB0_44
.LBB0_2:                                # %if.then
	testq	%r15, %r15
	je	.LBB0_4
# BB#3:                                 # %if.then.12
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB0_4:                                # %if.end
	movl	$-25, %ebx
	testq	%r14, %r14
	je	.LBB0_44
# BB#5:                                 # %if.then.19
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB0_44:                               # %cleanup.235
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lp8000_print_page, .Lfunc_end0-lp8000_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lp8000"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_lp8000_device,@object # @gs_lp8000_device
	.data
	.globl	gs_lp8000_device
	.align	8
gs_lp8000_device:
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3264610304              # float -7.500000e+01
	.long	3264610304              # float -7.500000e+01
	.long	1099956224              # float 1.800000e+01
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
	.quad	lp8000_print_page
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
	.size	gs_lp8000_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"lp8000_print_page(buf1)"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"lp8000_print_page(buf2)"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033\001@EJL \n"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"@EJL EN LA=ESC/PAGE\n"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\035rhE\033\001@EJL \n"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"@EJL SE LA=ESC/PAGE\n"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"@EJL SET PU=1 PS=A4 ZO=OFF\n"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\0350;0.24muE\0352;300;300drE"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\0350;300;300drE\0351tsE\0351mmE"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\0357isE\0355iaF\0355ipP\03514psE\0350poE"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\03560;60loE\0350X\0350Y"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\0350;0;2360;3388caE"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\0351cmE\0350alfP"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\0350affP\0350boP\0350abP"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\0354ilG\0350bcI\0350sarG"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\0351;0;100spE\0352owE"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\035"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%d"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"X"
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\0353bcI"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Y\035"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%d;"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"1;0bi{I"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\0350bcI"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\0351coO"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\035rhE"
	.size	.L.str.27, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
