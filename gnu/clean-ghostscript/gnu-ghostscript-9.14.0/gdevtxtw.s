	.text
	.file	"gdevtxtw.bc"
	.align	16, 0x90
	.type	txtwrite_open_device,@function
txtwrite_open_device:                   # @txtwrite_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gx_device_fill_in_procs
	movl	$-22, %eax
	cmpb	$0, 1752(%rbx)
	je	.LBB0_2
# BB#1:                                 # %if.end
	movl	$0, 1728(%rbx)
	movq	$0, 1736(%rbx)
	movq	$0, 5848(%rbx)
	xorl	%eax, %eax
.LBB0_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end0:
	.size	txtwrite_open_device, .Lfunc_end0-txtwrite_open_device
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4604930618986332160     # double 0.75
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_1:
	.zero	16
	.text
	.align	16, 0x90
	.type	txtwrite_output_page,@function
txtwrite_output_page:                   # @txtwrite_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp8:
	.cfi_def_cfa_offset 736
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r13
	movq	%r13, 16(%rsp)          # 8-byte Spill
	leaq	5848(%r13), %r12
	cmpq	$0, 5848(%r13)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	1752(%r13), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movq	%r12, %r8
	callq	gx_device_open_output_file
	testl	%eax, %eax
	js	.LBB1_106
.LBB1_2:                                # %if.end.3
	movl	5856(%r13), %ecx
	cmpl	$2, %ecx
	jae	.LBB1_3
# BB#5:                                 # %sw.bb
	testl	%ecx, %ecx
	je	.LBB1_6
# BB#13:                                # %if.else.i
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	%r13, %rdi
	callq	merge_vertically
	movq	%r13, %rdi
	callq	merge_horizontally
	movq	1736(%r13), %rbp
	movq	5848(%r13), %rcx
	movl	$.L.str.9, %edi
	movl	$1, %esi
	movl	$7, %edx
	callq	fwrite
	leaq	160(%rsp), %r14
	leaq	128(%rsp), %r15
	.align	16, 0x90
.LBB1_14:                               # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
                                        #       Child Loop BB1_17 Depth 3
                                        #         Child Loop BB1_18 Depth 4
                                        #     Child Loop BB1_58 Depth 2
                                        #       Child Loop BB1_59 Depth 3
                                        #         Child Loop BB1_62 Depth 4
	xorl	%esi, %esi
	movl	$24, %edx
	leaq	104(%rsp), %rdi
	callq	memset
	xorl	%esi, %esi
	movl	$16, %edx
	leaq	80(%rsp), %rdi
	callq	memset
	testq	%rbp, %rbp
	jne	.LBB1_15
	jmp	.LBB1_57
.LBB1_46:                               # %if.then.233.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	(%rbp), %rdx
	movq	8(%rbp), %rbx
	testq	%rdx, %rdx
	movl	$0, %eax
	movq	%rbx, %rcx
	je	.LBB1_48
# BB#47:                                # %if.then.237.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	%rbx, 8(%rdx)
	movq	8(%rbp), %rcx
	movq	%rdx, %rax
.LBB1_48:                               # %if.end.241.i
                                        #   in Loop: Header=BB1_15 Depth=2
	testq	%rcx, %rcx
	je	.LBB1_50
# BB#49:                                # %if.then.244.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	%rax, (%rcx)
	jmp	.LBB1_52
.LBB1_50:                               # %if.else.248.i
                                        #   in Loop: Header=BB1_15 Depth=2
	testq	%rax, %rax
	jne	.LBB1_52
# BB#51:                                # %if.then.252.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	$0, 1736(%r13)
.LBB1_52:                               # %if.end.256.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	cmpq	%rbp, 1736(%r13)
	jne	.LBB1_56
# BB#53:                                # %if.then.267.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	%rbx, 1736(%r13)
	jmp	.LBB1_56
	.align	16, 0x90
.LBB1_15:                               # %while.body.50.i
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_17 Depth 3
                                        #         Child Loop BB1_18 Depth 4
	movq	112(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB1_45
# BB#16:                                # %if.then.53.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	40(%rbp), %r13
	testq	%r13, %r13
	je	.LBB1_55
.LBB1_17:                               # %while.body.58.lr.ph.i
                                        #   Parent Loop BB1_14 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_18 Depth 4
	movss	88(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB1_18:                               # %while.body.58.i
                                        #   Parent Loop BB1_14 Depth=1
                                        #     Parent Loop BB1_15 Depth=2
                                        #       Parent Loop BB1_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsd	16(%r13), %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	ja	.LBB1_33
# BB#19:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movss	80(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	ucomisd	32(%r13), %xmm1
	ja	.LBB1_33
# BB#20:                                # %lor.lhs.false.71.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movsd	24(%r13), %xmm1         # xmm1 = mem[0],zero
	movss	84(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	92(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	addss	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	ucomisd	%xmm2, %xmm1
	ja	.LBB1_33
# BB#21:                                # %if.else.82.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$48, %edx
	movl	$.L.str.14, %ecx
	callq	*88(%rdi)
	movq	%rax, 8(%rbx)
	xorl	%esi, %esi
	movl	$48, %edx
	movq	%rax, %rdi
	callq	memset
	movq	8(%rbx), %rbx
	movq	%r13, 40(%rbx)
	movq	8(%r13), %rcx
	testq	%rcx, %rcx
	movl	$0, %eax
	je	.LBB1_23
# BB#22:                                # %if.then.94.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movq	(%r13), %rax
	movq	%rax, (%rcx)
	movq	%rcx, %rax
.LBB1_23:                               # %if.end.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movq	(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB1_34
# BB#24:                                # %if.then.99.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movq	%rax, 8(%rcx)
	jmp	.LBB1_25
.LBB1_34:                               # %if.else.103.i
                                        #   in Loop: Header=BB1_18 Depth=4
	testq	%rax, %rax
	je	.LBB1_35
.LBB1_25:                               # %if.end.146.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movsd	16(%r13), %xmm0         # xmm0 = mem[0],zero
	movss	80(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_27
# BB#26:                                # %if.then.154.i
                                        #   in Loop: Header=BB1_18 Depth=4
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 80(%rsp)
.LBB1_27:                               # %if.end.160.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movsd	24(%r13), %xmm0         # xmm0 = mem[0],zero
	movss	84(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_29
# BB#28:                                # %if.then.168.i
                                        #   in Loop: Header=BB1_18 Depth=4
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 84(%rsp)
.LBB1_29:                               # %if.end.174.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movsd	32(%r13), %xmm1         # xmm1 = mem[0],zero
	movss	88(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB1_31
# BB#30:                                # %if.then.182.i
                                        #   in Loop: Header=BB1_18 Depth=4
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 88(%rsp)
.LBB1_31:                               # %if.end.188.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movsd	40(%r13), %xmm1         # xmm1 = mem[0],zero
	addsd	72(%r13), %xmm1
	movss	92(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB1_33
# BB#32:                                # %if.then.199.i
                                        #   in Loop: Header=BB1_18 Depth=4
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 92(%rsp)
	.align	16, 0x90
.LBB1_33:                               # %if.end.210.i
                                        #   in Loop: Header=BB1_18 Depth=4
	movq	8(%r13), %r13
	testq	%r13, %r13
	jne	.LBB1_18
	jmp	.LBB1_44
.LBB1_35:                               # %if.then.107.i
                                        #   in Loop: Header=BB1_17 Depth=3
	movq	(%rbp), %rdx
	movq	%rbp, %rsi
	movq	8(%rsi), %rbp
	testq	%rdx, %rdx
	movl	$0, %eax
	movq	%rbp, %rcx
	je	.LBB1_37
# BB#36:                                # %if.then.111.i
                                        #   in Loop: Header=BB1_17 Depth=3
	movq	%rbp, 8(%rdx)
	movq	8(%rsi), %rcx
	movq	%rdx, %rax
.LBB1_37:                               # %if.end.115.i
                                        #   in Loop: Header=BB1_17 Depth=3
	testq	%rcx, %rcx
	je	.LBB1_39
# BB#38:                                # %if.then.118.i
                                        #   in Loop: Header=BB1_17 Depth=3
	movq	%rax, (%rcx)
	jmp	.LBB1_41
.LBB1_39:                               # %if.else.122.i
                                        #   in Loop: Header=BB1_17 Depth=3
	testq	%rax, %rax
	jne	.LBB1_41
# BB#40:                                # %if.then.126.i
                                        #   in Loop: Header=BB1_17 Depth=3
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	$0, 1736(%rax)
.LBB1_41:                               # %if.end.130.i
                                        #   in Loop: Header=BB1_17 Depth=3
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	callq	*24(%rdi)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, 1736(%rax)
	jne	.LBB1_43
# BB#42:                                # %if.then.140.i
                                        #   in Loop: Header=BB1_17 Depth=3
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbp, 1736(%rax)
.LBB1_43:                               # %while.cond.56.outer.backedge.i
                                        #   in Loop: Header=BB1_17 Depth=3
	movq	8(%r13), %r13
	testq	%r13, %r13
	jne	.LBB1_17
	.align	16, 0x90
.LBB1_44:                               # %if.end.300.i
                                        #   in Loop: Header=BB1_15 Depth=2
	testq	%rbp, %rbp
	jne	.LBB1_55
	jmp	.LBB1_57
	.align	16, 0x90
.LBB1_45:                               # %if.else.213.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	24(%r13), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$48, %edx
	movl	$.L.str.14, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movq	%rbx, 112(%rsp)
	xorl	%esi, %esi
	movl	$48, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	40(%rbp), %rax
	movq	%rax, 40(%rbx)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, 40(%rbp)
	testq	%rax, %rax
	je	.LBB1_46
# BB#54:                                # %if.end.300.thread.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	40(%rbx), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 80(%rsp)
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 84(%rsp)
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 88(%rsp)
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	72(%rax), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 92(%rsp)
.LBB1_55:                               # %if.then.302.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	8(%rbp), %rbx
.LBB1_56:                               # %while.cond.48.backedge.i
                                        #   in Loop: Header=BB1_15 Depth=2
	testq	%rbx, %rbx
	movq	%rbx, %rbp
	jne	.LBB1_15
.LBB1_57:                               # %while.end.305.i
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	(%r12), %rcx
	movl	$.L.str.15, %edi
	movl	$1, %esi
	movl	$8, %edx
	callq	fwrite
	movq	112(%rsp), %r13
	testq	%r13, %r13
	movq	(%r12), %rcx
	je	.LBB1_65
	.align	16, 0x90
.LBB1_58:                               # %while.body.311.i
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_59 Depth 3
                                        #         Child Loop BB1_62 Depth 4
	movl	$.L.str.16, %edi
	movl	$1, %esi
	movl	$7, %edx
	callq	fwrite
	movq	40(%r13), %rbx
	jmp	.LBB1_59
	.align	16, 0x90
.LBB1_63:                               # %for.end.371.i
                                        #   in Loop: Header=BB1_59 Depth=3
	movq	(%r12), %rcx
	movl	$.L.str.12, %edi
	movl	$1, %esi
	movl	$8, %edx
	callq	fwrite
	movq	8(%rbx), %rbx
.LBB1_59:                               # %while.body.311.i
                                        #   Parent Loop BB1_14 Depth=1
                                        #     Parent Loop BB1_58 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_62 Depth 4
	testq	%rbx, %rbx
	je	.LBB1_64
# BB#60:                                # %while.body.317.i
                                        #   in Loop: Header=BB1_59 Depth=3
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	32(%rbx), %xmm2         # xmm2 = mem[0],zero
	movsd	40(%rbx), %xmm3         # xmm3 = mem[0],zero
	movq	136(%rbx), %rdx
	movsd	160(%rbx), %xmm4        # xmm4 = mem[0],zero
	movl	$.L.str.10, %esi
	movb	$5, %al
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	(%r12), %rcx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	fwrite
	cmpl	$0, 96(%rbx)
	jle	.LBB1_63
# BB#61:                                # %for.body.342.lr.ph.i
                                        #   in Loop: Header=BB1_59 Depth=3
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 32(%rsp)         # 4-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_62:                               # %for.body.342.i
                                        #   Parent Loop BB1_14 Depth=1
                                        #     Parent Loop BB1_58 Depth=2
                                        #       Parent Loop BB1_59 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	88(%rbx), %rax
	movzwl	(%rax,%rbp,2), %edi
	movq	%r15, %rsi
	callq	escaped_Unicode
	movss	32(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movq	80(%rbx), %rax
	movss	(%rax,%rbp,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movsd	24(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	40(%rbx), %xmm3         # xmm3 = mem[0],zero
	movl	$.L.str.11, %esi
	movb	$4, %al
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	(%r12), %rcx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	fwrite
	movq	80(%rbx), %rax
	movss	32(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	(%rax,%rbp,4), %xmm0
	movss	%xmm0, 32(%rsp)         # 4-byte Spill
	incq	%rbp
	movslq	96(%rbx), %rax
	cmpq	%rax, %rbp
	jl	.LBB1_62
	jmp	.LBB1_63
	.align	16, 0x90
.LBB1_64:                               # %while.end.375.i
                                        #   in Loop: Header=BB1_58 Depth=2
	movq	(%r12), %rcx
	movl	$.L.str.17, %edi
	movl	$1, %esi
	movl	$8, %edx
	callq	fwrite
	movq	8(%r13), %r13
	movq	(%r12), %rcx
	testq	%r13, %r13
	jne	.LBB1_58
.LBB1_65:                               # %while.end.379.i
                                        #   in Loop: Header=BB1_14 Depth=1
	movl	$.L.str.18, %edi
	movl	$1, %esi
	movl	$9, %edx
	callq	fwrite
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	1736(%r13), %rbp
	testq	%rbp, %rbp
	jne	.LBB1_14
# BB#66:                                # %do.end.i
	movq	(%r12), %rcx
	movl	$.L.str.13, %edi
	movl	$1, %esi
	movl	$8, %edx
	callq	fwrite
	movl	28(%rsp), %edx          # 4-byte Reload
	jmp	.LBB1_89
.LBB1_3:                                # %if.end.3
	jne	.LBB1_4
# BB#68:                                # %sw.bb.8
	movq	(%r12), %rcx
	movl	$txtwrite_output_page.BOM, %edi
	movl	$1, %esi
	movl	$2, %edx
	callq	fwrite
	jmp	.LBB1_69
.LBB1_4:                                # %if.end.3
	movl	$-15, %eax
	cmpl	$3, %ecx
	jne	.LBB1_106
.LBB1_69:                               # %sw.bb.11
	movw	$32, 128(%rsp)
	movl	$655373, 160(%rsp)      # imm = 0xA000D
	movq	%r13, %rdi
	callq	merge_vertically
	movq	%r13, %rdi
	callq	merge_horizontally
	cvtsi2ssl	832(%r13), %xmm5
	movq	1736(%r13), %r15
	testq	%r15, %r15
	movaps	%xmm5, %xmm0
	je	.LBB1_83
# BB#70:
	movq	%r15, %rax
	movaps	%xmm5, %xmm0
	.align	16, 0x90
.LBB1_71:                               # %while.body.i.77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_72 Depth 2
	movq	40(%rax), %rcx
	jmp	.LBB1_72
	.align	16, 0x90
.LBB1_75:                               # %while.body.4.i
                                        #   in Loop: Header=BB1_72 Depth=2
	movq	8(%rcx), %rcx
.LBB1_72:                               # %while.body.i.77
                                        #   Parent Loop BB1_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rcx, %rcx
	je	.LBB1_76
# BB#73:                                # %while.body.4.i
                                        #   in Loop: Header=BB1_72 Depth=2
	movsd	160(%rcx), %xmm1        # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB1_75
# BB#74:                                #   in Loop: Header=BB1_72 Depth=2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	jmp	.LBB1_75
	.align	16, 0x90
.LBB1_76:                               # %while.end.i.83
                                        #   in Loop: Header=BB1_71 Depth=1
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.LBB1_71
# BB#77:                                # %while.body.15.lr.ph.i
	cvtss2sd	%xmm0, %xmm1
	mulsd	.LCPI1_0(%rip), %xmm1
	movq	%r15, %rax
	.align	16, 0x90
.LBB1_78:                               # %while.body.15.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_79 Depth 2
	movq	40(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB1_82
	.align	16, 0x90
.LBB1_79:                               # %while.body.20.i
                                        #   Parent Loop BB1_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	32(%rcx), %xmm2         # xmm2 = mem[0],zero
	subsd	16(%rcx), %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sdl	96(%rcx), %xmm3
	divsd	%xmm3, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm2, %xmm3
	ucomisd	%xmm1, %xmm3
	movaps	%xmm0, %xmm3
	jb	.LBB1_81
# BB#80:                                # %while.body.20.i
                                        #   in Loop: Header=BB1_79 Depth=2
	movaps	%xmm2, %xmm3
.LBB1_81:                               # %while.body.20.i
                                        #   in Loop: Header=BB1_79 Depth=2
	cmpnltss	%xmm0, %xmm2
	movaps	%xmm2, %xmm4
	andnps	%xmm3, %xmm4
	andps	%xmm0, %xmm2
	orps	%xmm4, %xmm2
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	movaps	%xmm2, %xmm0
	jne	.LBB1_79
.LBB1_82:                               # %while.end.33.i
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.LBB1_78
.LBB1_83:                               # %while.end.35.i
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movl	%ebx, %r12d
	movaps	%xmm5, %xmm1
	movss	%xmm5, 28(%rsp)         # 4-byte Spill
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	callq	ceil
	testq	%r15, %r15
	je	.LBB1_88
# BB#84:                                # %while.body.50.lr.ph.i
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	28(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, 28(%rsp)         # 4-byte Spill
	leaq	160(%rsp), %r14
	leaq	128(%rsp), %rbp
	.align	16, 0x90
.LBB1_85:                               # %while.body.50.i.89
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_86 Depth 2
                                        #       Child Loop BB1_95 Depth 3
	movq	40(%r15), %rbx
	xorps	%xmm0, %xmm0
	jmp	.LBB1_86
	.align	16, 0x90
.LBB1_96:                               # %while.end.63.i
                                        #   in Loop: Header=BB1_86 Depth=2
	movq	88(%rbx), %rdi
	movl	96(%rbx), %esi
	movq	%r13, %rdx
	callq	write_simple_text
	xorps	%xmm0, %xmm0
	cvtsi2ssl	96(%rbx), %xmm0
	mulss	28(%rsp), %xmm0         # 4-byte Folded Reload
	movss	32(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	8(%rbx), %rbx
.LBB1_86:                               # %while.body.50.i.89
                                        #   Parent Loop BB1_85 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_95 Depth 3
	testq	%rbx, %rbx
	jne	.LBB1_95
	jmp	.LBB1_87
	.align	16, 0x90
.LBB1_94:                               # %while.body.61.i
                                        #   in Loop: Header=BB1_95 Depth=3
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	write_simple_text
	movss	32(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	28(%rsp), %xmm0         # 4-byte Folded Reload
.LBB1_95:                               # %while.body.61.i
                                        #   Parent Loop BB1_85 Depth=1
                                        #     Parent Loop BB1_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	%xmm0, 32(%rsp)         # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB1_94
	jmp	.LBB1_96
	.align	16, 0x90
.LBB1_87:                               # %while.end.75.i
                                        #   in Loop: Header=BB1_85 Depth=1
	movl	$2, %esi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	write_simple_text
	movq	8(%r15), %r15
	testq	%r15, %r15
	jne	.LBB1_85
.LBB1_88:                               # %simple_text_output.exit
	movl	%r12d, %edx
	jmp	.LBB1_89
.LBB1_6:                                # %if.then.i
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	5848(%r13), %rcx
	movl	$.L.str.9, %edi
	movl	$1, %esi
	movl	$7, %edx
	callq	fwrite
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	1744(%r13), %r13
	testq	%r13, %r13
	je	.LBB1_12
# BB#7:
	leaq	160(%rsp), %r14
	leaq	128(%rsp), %r15
	.align	16, 0x90
.LBB1_8:                                # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	movq	8(%r13), %rbp
	movsd	16(%r13), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%r13), %xmm1         # xmm1 = mem[0],zero
	movsd	32(%r13), %xmm2         # xmm2 = mem[0],zero
	movsd	40(%r13), %xmm3         # xmm3 = mem[0],zero
	movq	136(%r13), %rdx
	movsd	160(%r13), %xmm4        # xmm4 = mem[0],zero
	movl	$.L.str.10, %esi
	movb	$5, %al
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	(%r12), %rcx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	fwrite
	cmpl	$0, 96(%r13)
	jle	.LBB1_11
# BB#9:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB1_8 Depth=1
	movsd	16(%r13), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 32(%rsp)         # 4-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_10:                               # %for.body.i
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	88(%r13), %rax
	movzwl	(%rax,%rbx,2), %edi
	movq	%r15, %rsi
	callq	escaped_Unicode
	movss	32(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movq	80(%r13), %rax
	movss	(%rax,%rbx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movsd	24(%r13), %xmm1         # xmm1 = mem[0],zero
	movsd	40(%r13), %xmm3         # xmm3 = mem[0],zero
	movl	$.L.str.11, %esi
	movb	$4, %al
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	(%r12), %rcx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	fwrite
	movq	80(%r13), %rax
	movss	32(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	(%rax,%rbx,4), %xmm0
	movss	%xmm0, 32(%rsp)         # 4-byte Spill
	incq	%rbx
	movslq	96(%r13), %rax
	cmpq	%rax, %rbx
	jl	.LBB1_10
.LBB1_11:                               # %for.end.i
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	(%r12), %rcx
	movl	$.L.str.12, %edi
	movl	$1, %esi
	movl	$8, %edx
	callq	fwrite
	testq	%rbp, %rbp
	movq	%rbp, %r13
	jne	.LBB1_8
.LBB1_12:                               # %while.end.i
	movq	(%r12), %rcx
	movl	$.L.str.13, %edi
	movl	$1, %esi
	movl	$8, %edx
	callq	fwrite
	movq	16(%rsp), %r13          # 8-byte Reload
	movl	28(%rsp), %edx          # 4-byte Reload
.LBB1_89:                               # %sw.epilog
	movl	12(%rsp), %esi          # 4-byte Reload
	movq	%r13, %rdi
	callq	gx_default_output_page
	testl	%eax, %eax
	js	.LBB1_106
# BB#90:                                # %if.end.19
	movq	1736(%r13), %r14
	testq	%r14, %r14
	jne	.LBB1_91
	jmp	.LBB1_101
	.align	16, 0x90
.LBB1_99:                               # %while.cond.backedge
                                        #   in Loop: Header=BB1_91 Depth=1
	movq	(%rbx), %rsi
	movl	$.L.str.6, %edx
	callq	*%rax
	movq	%rbx, %r14
.LBB1_91:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_92 Depth 2
	movq	40(%r14), %rbp
	testq	%rbp, %rbp
	jne	.LBB1_92
	jmp	.LBB1_98
	.align	16, 0x90
.LBB1_93:                               # %while.cond.21.backedge
                                        #   in Loop: Header=BB1_92 Depth=2
	movq	(%rbx), %rsi
	movl	$.L.str.5, %edx
	callq	*%rax
	movq	%rbx, %rbp
.LBB1_92:                               # %while.body.23
                                        #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movq	88(%rbp), %rsi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movq	80(%rbp), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movq	136(%rbp), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	8(%rbp), %rbx
	testq	%rbx, %rbx
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movq	24(%rdi), %rax
	jne	.LBB1_93
# BB#97:                                # %while.cond.21.while.end_crit_edge
                                        #   in Loop: Header=BB1_91 Depth=1
	movl	$.L.str.5, %edx
	movq	%rbp, %rsi
	callq	*%rax
.LBB1_98:                               # %while.end
                                        #   in Loop: Header=BB1_91 Depth=1
	movq	8(%r14), %rbx
	testq	%rbx, %rbx
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movq	24(%rdi), %rax
	jne	.LBB1_99
# BB#100:                               # %while.cond.while.end.73_crit_edge
	movl	$.L.str.6, %edx
	movq	%r14, %rsi
	callq	*%rax
.LBB1_101:                              # %while.end.73
	movq	$0, 1736(%r13)
	movq	1744(%r13), %rbp
	testq	%rbp, %rbp
	je	.LBB1_103
	.align	16, 0x90
.LBB1_102:                              # %while.body.79
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbp), %rbx
	movq	88(%rbp), %rsi
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movq	80(%rbp), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movq	136(%rbp), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.8, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	testq	%rbx, %rbx
	movq	%rbx, %rbp
	jne	.LBB1_102
.LBB1_103:                              # %while.end.108
	movq	$0, 1744(%r13)
	leaq	1752(%r13), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	24(%r13), %r8
	leaq	48(%rsp), %rdi
	leaq	40(%rsp), %rsi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	callq	gx_parse_output_file_name
	testl	%eax, %eax
	js	.LBB1_106
# BB#104:                               # %while.end.108
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_106
# BB#105:                               # %if.then.121
	movq	5848(%r13), %rdx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	gx_device_close_output_file
	movq	$0, 5848(%r13)
.LBB1_106:                              # %cleanup
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	txtwrite_output_page, .Lfunc_end1-txtwrite_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	txtwrite_close_device,@function
txtwrite_close_device:                  # @txtwrite_close_device
	.cfi_startproc
# BB#0:                                 # %entry
	movq	5848(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB2_1
# BB#2:                                 # %if.then
	leaq	1752(%rdi), %rsi
	jmp	gx_device_close_output_file # TAILCALL
.LBB2_1:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	txtwrite_close_device, .Lfunc_end2-txtwrite_close_device
	.cfi_endproc

	.align	16, 0x90
	.type	txtwrite_fill_rectangle,@function
txtwrite_fill_rectangle:                # @txtwrite_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	txtwrite_fill_rectangle, .Lfunc_end3-txtwrite_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	txtwrite_get_params,@function
txtwrite_get_params:                    # @txtwrite_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$1, 20(%rsp)
	callq	gx_default_get_params
	testl	%eax, %eax
	js	.LBB4_6
# BB#1:                                 # %if.end
	leaq	1752(%r14), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB4_6
# BB#2:                                 # %if.end.8
	leaq	20(%rsp), %rdx
	movl	$.L.str.35, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_6
# BB#3:                                 # %if.end.13
	leaq	20(%rsp), %rdx
	movl	$.L.str.36, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_6
# BB#4:                                 # %if.end.18
	leaq	20(%rsp), %rdx
	movl	$.L.str.37, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_6
# BB#5:                                 # %if.end.23
	xorl	%edx, %edx
	movl	$txt_param_items, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_param_write_items
.LBB4_6:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	txtwrite_get_params, .Lfunc_end4-txtwrite_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	txtwrite_put_params,@function
txtwrite_put_params:                    # @txtwrite_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 80
.Ltmp26:
	.cfi_offset %rbx, -48
.Ltmp27:
	.cfi_offset %r12, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	16(%rsp), %rdx
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_1
# BB#3:                                 # %sw.bb
	cmpl	$0, 960(%r14)
	je	.LBB5_5
# BB#4:                                 # %land.lhs.true
	movq	16(%rsp), %r12
	movl	24(%rsp), %r15d
	leaq	1752(%r14), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	callq	bytes_compare
	movl	$-7, %ebp
	testl	%eax, %eax
	jne	.LBB5_6
.LBB5_5:                                # %if.end
	movl	$-13, %ebp
	cmpl	$4096, 24(%rsp)         # imm = 0x1000
	jb	.LBB5_7
	jmp	.LBB5_6
.LBB5_1:                                # %entry
	cmpl	$1, %ebp
	jne	.LBB5_6
# BB#2:                                 # %sw.epilog.thread34
	movq	$0, 16(%rsp)
	jmp	.LBB5_7
.LBB5_6:                                # %sw.epilog
	movq	(%rbx), %rax
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movq	$0, 16(%rsp)
	testl	%ebp, %ebp
	js	.LBB5_16
.LBB5_7:                                # %if.end.16
	leaq	5856(%r14), %rdx
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_16
# BB#8:                                 # %if.end.21
	leaq	12(%rsp), %rdx
	movl	$.L.str.35, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_16
# BB#9:                                 # %if.end.26
	leaq	12(%rsp), %rdx
	movl	$.L.str.37, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_16
# BB#10:                                # %if.end.31
	leaq	12(%rsp), %rdx
	movl	$.L.str.36, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_16
# BB#11:                                # %if.end.36
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_default_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_16
# BB#12:                                # %if.end.41
	movq	16(%rsp), %rsi
	xorl	%ebp, %ebp
	testq	%rsi, %rsi
	je	.LBB5_16
# BB#13:                                # %if.then.45
	movq	5848(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_15
# BB#14:                                # %if.then.48
	callq	fclose
	movq	$0, 5848(%r14)
	movq	16(%rsp), %rsi
.LBB5_15:                               # %if.end.52
	leaq	1752(%r14), %rdi
	movl	24(%rsp), %edx
	callq	memcpy
	movl	24(%rsp), %eax
	movb	$0, 1752(%r14,%rax)
.LBB5_16:                               # %cleanup
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	txtwrite_put_params, .Lfunc_end5-txtwrite_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	txtwrite_fill_path,@function
txtwrite_fill_path:                     # @txtwrite_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	txtwrite_fill_path, .Lfunc_end6-txtwrite_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	txtwrite_stroke_path,@function
txtwrite_stroke_path:                   # @txtwrite_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	txtwrite_stroke_path, .Lfunc_end7-txtwrite_stroke_path
	.cfi_endproc

	.align	16, 0x90
	.type	txtwrite_strip_copy_rop,@function
txtwrite_strip_copy_rop:                # @txtwrite_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	txtwrite_strip_copy_rop, .Lfunc_end8-txtwrite_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	txtwrite_text_begin,@function
txtwrite_text_begin:                    # @txtwrite_text_begin
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
	subq	$56, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 112
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
	movq	%r9, %r12
	movq	%r8, %r13
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	120(%rsp), %r14
	movl	$st_textw_text_enum, %esi
	movl	$.L.str.39, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB9_6
# BB#1:                                 # %do.body.1
	movq	$1, 160(%rbx)
	movq	%r14, 168(%rbx)
	movq	$rc_free_text_enum, 176(%rbx)
	movl	$0, 456(%rbx)
	movl	$0, 460(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 432(%rbx)
	movq	$0, 552(%rbx)
	movl	$0, 560(%rbx)
	movq	24(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$168, %edx
	movl	$.L.str.33, %ecx
	callq	*88(%rdi)
	movq	%rax, 568(%rbx)
	testq	%rax, %rax
	je	.LBB9_6
# BB#2:                                 # %if.end.21
	movq	112(%rsp), %rbp
	xorl	%esi, %esi
	movl	$168, %edx
	movq	%rax, %rdi
	callq	memset
	movq	%r14, 24(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%r12, 8(%rsp)
	movq	%r13, (%rsp)
	movl	$textw_text_procs, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	gs_text_enum_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_3
# BB#4:                                 # %if.end.36
	movq	120(%rbx), %rdi
	movq	%rbx, %rsi
	addq	$448, %rsi              # imm = 0x1C0
	callq	gx_path_current_point
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB9_6
# BB#5:                                 # %if.end.41
	movq	128(%rsp), %rax
	movq	%rbx, (%rax)
	xorl	%ebp, %ebp
	jmp	.LBB9_6
.LBB9_3:                                # %if.then.26
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	568(%rbx), %rsi
	movl	$.L.str.40, %edx
	callq	*24(%rdi)
	movq	$0, 568(%rbx)
	movl	$.L.str.41, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
.LBB9_6:                                # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	txtwrite_text_begin, .Lfunc_end9-txtwrite_text_begin
	.cfi_endproc

	.align	16, 0x90
	.type	escaped_Unicode,@function
escaped_Unicode:                        # @escaped_Unicode
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rcx
	movl	%edi, %edx
	cmpl	$38, %edx
	jle	.LBB10_1
# BB#4:                                 # %entry
	cmpl	$39, %edx
	je	.LBB10_11
# BB#5:                                 # %entry
	cmpl	$62, %edx
	jne	.LBB10_6
# BB#9:                                 # %sw.bb.1
	movl	$.L.str.20, %esi
	jmp	.LBB10_8
.LBB10_1:                               # %entry
	cmpl	$34, %edx
	jne	.LBB10_2
# BB#10:                                # %sw.bb.5
	movl	$.L.str.22, %esi
	jmp	.LBB10_8
.LBB10_11:                              # %sw.bb.7
	movl	$.L.str.23, %esi
	jmp	.LBB10_8
.LBB10_6:                               # %entry
	cmpl	$60, %edx
	jne	.LBB10_12
# BB#7:                                 # %sw.bb
	movl	$.L.str.19, %esi
	jmp	.LBB10_8
.LBB10_2:                               # %entry
	cmpl	$38, %edx
	jne	.LBB10_12
# BB#3:                                 # %sw.bb.3
	movl	$.L.str.21, %esi
.LBB10_8:                               # %sw.bb
	xorl	%eax, %eax
	movq	%rcx, %rdi
	jmp	gs_sprintf              # TAILCALL
.LBB10_12:                              # %sw.default
	leal	-32(%rdx), %eax
	movzwl	%ax, %eax
	cmpl	$95, %eax
	ja	.LBB10_15
# BB#13:                                # %if.then
	movl	$.L.str.24, %esi
	jmp	.LBB10_14
.LBB10_15:                              # %if.else
	movl	$.L.str.25, %esi
.LBB10_14:                              # %if.then
	xorl	%eax, %eax
	movq	%rcx, %rdi
	jmp	gs_sprintf              # TAILCALL
.Lfunc_end10:
	.size	escaped_Unicode, .Lfunc_end10-escaped_Unicode
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1048576000              # float 0.25
	.text
	.align	16, 0x90
	.type	merge_vertically,@function
merge_vertically:                       # @merge_vertically
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp48:
	.cfi_def_cfa_offset 48
.Ltmp49:
	.cfi_offset %rbx, -40
.Ltmp50:
	.cfi_offset %r12, -32
.Ltmp51:
	.cfi_offset %r14, -24
.Ltmp52:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	1736(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB11_33
# BB#1:                                 # %land.rhs.lr.ph.lr.ph
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB11_33
# BB#2:
	leaq	8(%rsi), %r15
	movss	.LCPI11_0(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB11_4:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
                                        #       Child Loop BB11_8 Depth 3
                                        #         Child Loop BB11_10 Depth 4
                                        #       Child Loop BB11_21 Depth 3
	movq	%rsi, %r12
	movq	%rax, %rsi
.LBB11_5:                               # %while.body
                                        #   Parent Loop BB11_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_8 Depth 3
                                        #         Child Loop BB11_10 Depth 4
                                        #       Child Loop BB11_21 Depth 3
	movss	36(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	addsd	24(%r12), %xmm1
	movss	32(%rsi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	addsd	24(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	subss	32(%r12), %xmm0
	mulss	%xmm3, %xmm0
	ucomiss	%xmm0, %xmm1
	jb	.LBB11_3
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	40(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB11_15
# BB#7:                                 # %while.body.18.lr.ph
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	40(%rsi), %rax
	movq	%rdi, %rcx
.LBB11_8:                               # %while.body.18
                                        #   Parent Loop BB11_4 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_10 Depth 4
	testq	%rax, %rax
	je	.LBB11_14
# BB#9:                                 # %while.body.26.lr.ph
                                        #   in Loop: Header=BB11_8 Depth=3
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdx
	.align	16, 0x90
.LBB11_10:                              # %while.body.26
                                        #   Parent Loop BB11_4 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        #       Parent Loop BB11_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jae	.LBB11_11
# BB#12:                                # %if.else
                                        #   in Loop: Header=BB11_10 Depth=4
	movsd	32(%rcx), %xmm2         # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jbe	.LBB11_13
	jmp	.LBB11_3
	.align	16, 0x90
.LBB11_11:                              # %if.then.32
                                        #   in Loop: Header=BB11_10 Depth=4
	movsd	32(%rdx), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_3
.LBB11_13:                              # %if.end.47
                                        #   in Loop: Header=BB11_10 Depth=4
	movq	8(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB11_10
.LBB11_14:                              # %while.end
                                        #   in Loop: Header=BB11_8 Depth=3
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB11_8
	.align	16, 0x90
.LBB11_15:                              # %if.then.52
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	40(%rsi), %r8
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	ucomisd	16(%r8), %xmm0
	jbe	.LBB11_17
# BB#16:                                # %if.then.61
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	8(%r8), %rcx
	movq	%rdi, %rdx
	jmp	.LBB11_18
	.align	16, 0x90
.LBB11_17:                              # %if.else.63
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	8(%rdi), %rdx
	movq	%r8, %rcx
	movq	%rdi, %r8
.LBB11_18:                              # %while.cond.66.preheader
                                        #   in Loop: Header=BB11_5 Depth=2
	testq	%rdx, %rdx
	setne	%bl
	testq	%rcx, %rcx
	setne	%al
	je	.LBB11_19
# BB#20:                                # %while.cond.66.preheader
                                        #   in Loop: Header=BB11_5 Depth=2
	testq	%rdx, %rdx
	movq	%r8, %rdi
	je	.LBB11_26
	.align	16, 0x90
.LBB11_21:                              # %while.body.71
                                        #   Parent Loop BB11_4 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	16(%rdx), %xmm0
	jbe	.LBB11_23
# BB#22:                                # %if.then.78
                                        #   in Loop: Header=BB11_21 Depth=3
	movq	%rdx, 8(%rdi)
	movq	%rdi, (%rdx)
	movq	%rdx, %rdi
	movq	8(%rdx), %rdx
	jmp	.LBB11_24
	.align	16, 0x90
.LBB11_23:                              # %if.else.81
                                        #   in Loop: Header=BB11_21 Depth=3
	movq	%rcx, 8(%rdi)
	movq	%rdi, (%rcx)
	movq	%rcx, %rdi
	movq	8(%rcx), %rcx
.LBB11_24:                              # %if.end.85
                                        #   in Loop: Header=BB11_21 Depth=3
	testq	%rdx, %rdx
	setne	%bl
	testq	%rcx, %rcx
	setne	%al
	je	.LBB11_26
# BB#25:                                # %if.end.85
                                        #   in Loop: Header=BB11_21 Depth=3
	testq	%rdx, %rdx
	jne	.LBB11_21
	jmp	.LBB11_26
.LBB11_19:                              #   in Loop: Header=BB11_5 Depth=2
	movq	%r8, %rdi
.LBB11_26:                              # %while.end.87
                                        #   in Loop: Header=BB11_5 Depth=2
	testb	%bl, %bl
	je	.LBB11_28
# BB#27:                                # %if.then.89
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	%rdi, (%rdx)
	movq	%rdx, 8(%rdi)
	jmp	.LBB11_30
	.align	16, 0x90
.LBB11_28:                              # %if.else.92
                                        #   in Loop: Header=BB11_5 Depth=2
	testb	%al, %al
	je	.LBB11_30
# BB#29:                                # %if.then.94
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	%rdi, (%rcx)
	movq	%rcx, 8(%rdi)
.LBB11_30:                              # %if.end.98
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	%r8, 40(%r12)
	movq	8(%rsi), %rax
	movq	%rax, (%r15)
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB11_32
# BB#31:                                # %if.then.104
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	%r12, (%rax)
.LBB11_32:                              # %if.end.107
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	movss	.LCPI11_0(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	jne	.LBB11_5
	jmp	.LBB11_33
	.align	16, 0x90
.LBB11_3:                               # %land.rhs.lr.ph.backedge
                                        #   in Loop: Header=BB11_4 Depth=1
	leaq	8(%rsi), %r15
	movq	8(%rsi), %rax
	testq	%rax, %rax
	jne	.LBB11_4
.LBB11_33:                              # %while.end.114
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	merge_vertically, .Lfunc_end11-merge_vertically
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI12_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	merge_horizontally,@function
merge_horizontally:                     # @merge_horizontally
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 80
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movw	$32, 22(%rsp)
	movq	1736(%r15), %rax
	jmp	.LBB12_1
	.align	16, 0x90
.LBB12_17:                              # %while.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	8(%rax), %rax
.LBB12_1:                               # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
                                        #       Child Loop BB12_6 Depth 3
	testq	%rax, %rax
	je	.LBB12_18
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	40(%rax), %r14
	testq	%r14, %r14
	je	.LBB12_17
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	8(%r14), %rbx
	jmp	.LBB12_4
	.align	16, 0x90
.LBB12_12:                              # %while.cond.1.outer.backedge
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	8(%rbx), %rbx
.LBB12_4:                               # %while.body
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_6 Depth 3
	testq	%rbx, %rbx
	je	.LBB12_17
# BB#5:                                 # %while.body.4.lr.ph
                                        #   in Loop: Header=BB12_4 Depth=2
	leaq	32(%r14), %rbp
	.align	16, 0x90
.LBB12_6:                               # %while.body.4
                                        #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	32(%r14), %xmm1         # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	subsd	16(%r14), %xmm1
	movl	96(%r14), %esi
	cvtsi2sdl	%esi, %xmm2
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movaps	%xmm1, %xmm2
	mulss	.LCPI12_0(%rip), %xmm2
	cvtss2sd	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB12_19
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB12_6 Depth=3
	movq	24(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	addl	96(%rbx), %esi
	movl	$2, %edx
	movl	$.L.str.26, %ecx
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	24(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	96(%rbx), %esi
	addl	96(%r14), %esi
	movl	$4, %edx
	movl	$.L.str.27, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	testq	%r12, %r12
	je	.LBB12_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB12_6 Depth=3
	testq	%r13, %r13
	je	.LBB12_9
# BB#13:                                # %if.else
                                        #   in Loop: Header=BB12_6 Depth=3
	movq	88(%r14), %rsi
	movslq	96(%r14), %rdx
	addq	%rdx, %rdx
	movq	%r12, %rdi
	callq	memcpy
	movslq	96(%r14), %rax
	leaq	(%r12,%rax,2), %rdi
	movq	88(%rbx), %rsi
	movslq	96(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy
	movq	80(%r14), %rsi
	movslq	96(%r14), %rdx
	shlq	$2, %rdx
	movq	%r13, %rdi
	callq	memcpy
	movslq	96(%r14), %rax
	leaq	(%r13,%rax,4), %rdi
	movq	80(%rbx), %rsi
	movslq	96(%rbx), %rdx
	shlq	$2, %rdx
	callq	memcpy
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	88(%r14), %rsi
	movl	$.L.str.29, %edx
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	88(%rbx), %rsi
	movl	$.L.str.29, %edx
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	80(%r14), %rsi
	movl	$.L.str.30, %edx
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	80(%rbx), %rsi
	movl	$.L.str.30, %edx
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	136(%rbx), %rsi
	movl	$.L.str.31, %edx
	callq	*24(%rdi)
	movq	%r12, 88(%r14)
	movl	96(%rbx), %eax
	addl	%eax, 96(%r14)
	jmp	.LBB12_14
	.align	16, 0x90
.LBB12_19:                              # %if.else.121
                                        #   in Loop: Header=BB12_6 Depth=3
	addss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_11
# BB#20:                                # %if.then.131
                                        #   in Loop: Header=BB12_6 Depth=3
	movq	24(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	96(%rbx), %eax
	leal	1(%rsi,%rax), %esi
	movl	$2, %edx
	movl	$.L.str.33, %ecx
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	24(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	96(%r14), %eax
	movl	96(%rbx), %ecx
	leal	1(%rax,%rcx), %esi
	movl	$4, %edx
	movl	$.L.str.27, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	testq	%r12, %r12
	je	.LBB12_9
# BB#21:                                # %if.then.131
                                        #   in Loop: Header=BB12_6 Depth=3
	testq	%r13, %r13
	je	.LBB12_9
# BB#22:                                # %if.else.175
                                        #   in Loop: Header=BB12_6 Depth=3
	movq	88(%r14), %rsi
	movslq	96(%r14), %rdx
	addq	%rdx, %rdx
	movq	%r12, %rdi
	callq	memcpy
	movslq	96(%r14), %rax
	leaq	(%r12,%rax,2), %rdi
	movl	$2, %edx
	leaq	22(%rsp), %rsi
	callq	memcpy
	movslq	96(%r14), %rax
	leaq	2(%r12,%rax,2), %rdi
	movq	88(%rbx), %rsi
	movslq	96(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy
	movq	80(%r14), %rsi
	movslq	96(%r14), %rdx
	shlq	$2, %rdx
	movq	%r13, %rdi
	callq	memcpy
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	32(%r14), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	96(%r14), %rax
	movss	%xmm0, (%r13,%rax,4)
	leaq	4(%r13,%rax,4), %rdi
	movq	80(%rbx), %rsi
	movslq	96(%rbx), %rdx
	shlq	$2, %rdx
	callq	memcpy
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	88(%r14), %rsi
	movl	$.L.str.29, %edx
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	88(%rbx), %rsi
	movl	$.L.str.29, %edx
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	80(%r14), %rsi
	movl	$.L.str.30, %edx
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	80(%rbx), %rsi
	movl	$.L.str.30, %edx
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movq	136(%rbx), %rsi
	movl	$.L.str.31, %edx
	callq	*24(%rdi)
	movq	%r12, 88(%r14)
	movl	96(%rbx), %eax
	movl	96(%r14), %ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, 96(%r14)
.LBB12_14:                              # %if.else
                                        #   in Loop: Header=BB12_6 Depth=3
	movq	%r13, 80(%r14)
	movupd	32(%rbx), %xmm0
	movupd	%xmm0, (%rbp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.LBB12_16
# BB#15:                                # %if.then.110
                                        #   in Loop: Header=BB12_6 Depth=3
	movq	%r14, (%rax)
.LBB12_16:                              # %if.end.112
                                        #   in Loop: Header=BB12_6 Depth=3
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.32, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	8(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB12_6
	jmp	.LBB12_17
	.align	16, 0x90
.LBB12_9:                               # %if.then.34
                                        #   in Loop: Header=BB12_4 Depth=2
	testq	%r12, %r12
	je	.LBB12_11
# BB#10:                                # %if.then.36
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.28, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB12_11:                              # %while.cond.1.outer.backedge
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	8(%r14), %r14
	testq	%r14, %r14
	jne	.LBB12_12
	jmp	.LBB12_17
.LBB12_18:                              # %while.end.282
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	merge_horizontally, .Lfunc_end12-merge_horizontally
	.cfi_endproc

	.align	16, 0x90
	.type	write_simple_text,@function
write_simple_text:                      # @write_simple_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp70:
	.cfi_def_cfa_offset 48
.Ltmp71:
	.cfi_offset %rbx, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	5856(%r14), %eax
	cmpl	$3, %eax
	jne	.LBB13_1
# BB#3:                                 # %sw.bb.1
	testl	%ebp, %ebp
	jle	.LBB13_11
# BB#4:                                 # %for.body.lr.ph
	leaq	5(%rsp), %r15
	.align	16, 0x90
.LBB13_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %eax
	cmpl	$127, %eax
	ja	.LBB13_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB13_5 Depth=1
	movb	%al, 5(%rsp)
	movq	5848(%r14), %rcx
	movl	$1, %esi
	movl	$1, %edx
	jmp	.LBB13_10
	.align	16, 0x90
.LBB13_7:                               # %if.else
                                        #   in Loop: Header=BB13_5 Depth=1
	cmpl	$2047, %eax             # imm = 0x7FF
	ja	.LBB13_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB13_5 Depth=1
	shrl	$6, %eax
	addl	$192, %eax
	movb	%al, 5(%rsp)
	movb	(%rbx), %al
	andb	$63, %al
	orb	$-128, %al
	movb	%al, 6(%rsp)
	movq	5848(%r14), %rcx
	movl	$1, %esi
	movl	$2, %edx
	jmp	.LBB13_10
	.align	16, 0x90
.LBB13_9:                               # %if.else.25
                                        #   in Loop: Header=BB13_5 Depth=1
	shrl	$12, %eax
	orl	$224, %eax
	movb	%al, 5(%rsp)
	movzwl	(%rbx), %eax
	shrl	$6, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, 6(%rsp)
	movb	(%rbx), %al
	andb	$63, %al
	orb	$-128, %al
	movb	%al, 7(%rsp)
	movq	5848(%r14), %rcx
	movl	$1, %esi
	movl	$3, %edx
.LBB13_10:                              # %if.end.45
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	%r15, %rdi
	callq	fwrite
	addq	$2, %rbx
	decl	%ebp
	jne	.LBB13_5
	jmp	.LBB13_11
.LBB13_1:                               # %entry
	cmpl	$2, %eax
	jne	.LBB13_11
# BB#2:                                 # %sw.bb
	movslq	%ebp, %rdx
	movq	5848(%r14), %rcx
	movl	$2, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fwrite                  # TAILCALL
.LBB13_11:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	write_simple_text, .Lfunc_end13-write_simple_text
	.cfi_endproc

	.align	16, 0x90
	.type	textw_text_resync,@function
textw_text_resync:                      # @textw_text_resync
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_text_resync          # TAILCALL
.Lfunc_end14:
	.size	textw_text_resync, .Lfunc_end14-textw_text_resync
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_0:
	.quad	4652007308841189376     # double 1.000000e+03
	.quad	4652007308841189376     # double 1.000000e+03
.LCPI15_2:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_1:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	textw_text_process,@function
textw_text_process:                     # @textw_text_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 56
	subq	$744, %rsp              # imm = 0x2E8
.Ltmp81:
	.cfi_def_cfa_offset 800
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	88(%rbx), %r14
	movq	112(%rbx), %rbp
	movq	192(%rbx), %r15
	cmpq	$0, 552(%rbx)
	jne	.LBB15_3
# BB#1:                                 # %if.then
	movq	24(%r14), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	16(%rbx), %esi
	shll	$2, %esi
	movl	$2, %edx
	movl	$.L.str.43, %ecx
	callq	*88(%rdi)
	movq	%rax, 552(%rbx)
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB15_107
# BB#2:                                 # %if.end
	movq	24(%r14), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	16(%rbx), %esi
	movl	$4, %edx
	movl	$.L.str.44, %ecx
	callq	*88(%rdi)
	movq	%rax, 544(%rbx)
	testq	%rax, %rax
	je	.LBB15_107
.LBB15_3:                               # %if.end.23
	movl	$-15, %r12d
	movl	128(%rbp), %eax
	cmpq	$54, %rax
	ja	.LBB15_107
# BB#4:                                 # %if.end.23
	movabsq	$31529595438104590, %rcx # imm = 0x7004000000000E
	btq	%rax, %rcx
	jae	.LBB15_5
# BB#33:                                # %sw.bb.25
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%r14, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 16(%rbx)
	je	.LBB15_55
# BB#34:                                # %for.body.lr.ph.i
	movq	112(%rbx), %rbp
	movl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movl	%eax, %ecx
	andl	$20, %ecx
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	%eax, %ecx
	andl	$40, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	andl	$8, %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	leaq	8(%rbx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	80(%rbp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 96(%rsp)         # 16-byte Spill
	xorl	%r14d, %r14d
                                        # implicit-def: R15
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB15_35:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 92(%rsp)            # 4-byte Folded Reload
	je	.LBB15_37
# BB#36:                                # %if.then.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movl	232(%rbx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 232(%rbx)
	movq	8(%rbx), %rcx
	movzbl	(%rcx,%rax), %r15d
	jmp	.LBB15_41
	.align	16, 0x90
.LBB15_37:                              # %if.else.i.67
                                        #   in Loop: Header=BB15_35 Depth=1
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB15_39
# BB#38:                                # %if.then.6.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movl	232(%rbx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 232(%rbx)
	movq	8(%rbx), %rcx
	movq	(%rcx,%rax,8), %r15
	jmp	.LBB15_41
.LBB15_39:                              # %if.else.13.i
                                        #   in Loop: Header=BB15_35 Depth=1
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	cmovneq	40(%rsp), %r14          # 8-byte Folded Reload
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	je	.LBB15_41
# BB#40:                                # %if.then.19.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movl	232(%rbx), %r14d
	leal	1(%r14), %eax
	shlq	$6, %r14
	addq	8(%rbx), %r14
	movl	%eax, 232(%rbx)
	.align	16, 0x90
.LBB15_41:                              # %if.end.30.i
                                        #   in Loop: Header=BB15_35 Depth=1
	testq	%r14, %r14
	je	.LBB15_42
# BB#43:                                # %cond.false.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movq	(%r14), %r12
	jmp	.LBB15_44
	.align	16, 0x90
.LBB15_42:                              # %cond.true.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movq	112(%rbx), %rdi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	*200(%rdi)
	movq	%rax, %r12
.LBB15_44:                              # %cond.end.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movl	148(%rbp), %esi
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rdx
	movq	%rbp, %rcx
	leaq	288(%rsp), %r8
	callq	txt_glyph_widths
	movl	$0, 460(%rbx)
	movq	112(%rbx), %rdx
	movq	568(%rbx), %rdi
	movq	%rbx, %rsi
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	txt_update_text_state
	movq	112(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_48
# BB#45:                                # %land.lhs.true.i.i.73
                                        #   in Loop: Header=BB15_35 Depth=1
	movl	128(%rdi), %eax
	cmpq	$54, %rax
	ja	.LBB15_48
# BB#46:                                # %land.lhs.true.i.i.73
                                        #   in Loop: Header=BB15_35 Depth=1
	movabsq	$31525197391593480, %rcx # imm = 0x70000000000008
	btq	%rax, %rcx
	jae	.LBB15_48
# BB#47:                                # %if.then.i.i.80
                                        #   in Loop: Header=BB15_35 Depth=1
	movss	104(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$104, %rdi
	cvtss2sd	%xmm0, %xmm0
	mulsd	296(%rsp), %xmm0
	movsd	%xmm0, 296(%rsp)
	movq	$0, 304(%rsp)
	movsd	336(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	344(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	336(%rsp), %rsi
	callq	gs_distance_transform
	movsd	336(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	344(%rsp), %xmm1        # xmm1 = mem[0],zero
	jmp	.LBB15_49
	.align	16, 0x90
.LBB15_48:                              # %if.else.i.i.85
                                        #   in Loop: Header=BB15_35 Depth=1
	movupd	296(%rsp), %xmm0
	movapd	.LCPI15_0(%rip), %xmm1  # xmm1 = [1.000000e+03,1.000000e+03]
	divpd	%xmm1, %xmm0
	movupd	%xmm0, 296(%rsp)
	movupd	336(%rsp), %xmm0
	divpd	%xmm1, %xmm0
	movupd	%xmm0, 336(%rsp)
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
.LBB15_49:                              # %txt_char_widths_to_uts.exit.i.88
                                        #   in Loop: Header=BB15_35 Depth=1
	movq	568(%rbx), %rdi
	movsd	160(%rdi), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	addq	$104, %rdi
	leaq	176(%rsp), %rsi
	callq	gs_distance_transform
	movapd	176(%rsp), %xmm0
	movupd	432(%rbx), %xmm1
	addpd	%xmm0, %xmm1
	movupd	%xmm1, 432(%rbx)
	cvtsd2ss	%xmm0, %xmm0
	movl	232(%rbx), %eax
	decl	%eax
	movq	544(%rbx), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movl	(%rbx), %eax
	testb	$64, %al
	je	.LBB15_51
# BB#50:                                # %if.then.65.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rbx), %xmm1         # xmm1 = mem[0],zero
	movq	104(%rbx), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	leaq	144(%rsp), %rsi
	callq	gs_distance_transform
	movapd	96(%rsp), %xmm0         # 16-byte Reload
	addpd	144(%rsp), %xmm0
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
	movl	(%rbx), %eax
.LBB15_51:                              # %if.end.78.i
                                        #   in Loop: Header=BB15_35 Depth=1
	testb	$-128, %al
	je	.LBB15_54
# BB#52:                                # %land.lhs.true.i.92
                                        #   in Loop: Header=BB15_35 Depth=1
	cmpq	56(%rbx), %r15
	jne	.LBB15_54
# BB#53:                                # %if.then.86.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	48(%rbx), %xmm1         # xmm1 = mem[0],zero
	movq	104(%rbx), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	leaq	144(%rsp), %rsi
	callq	gs_distance_transform
	movapd	96(%rsp), %xmm0         # 16-byte Reload
	addpd	144(%rsp), %xmm0
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
.LBB15_54:                              # %if.end.102.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movupd	432(%rbx), %xmm0
	addpd	96(%rsp), %xmm0         # 16-byte Folded Reload
	movupd	%xmm0, 432(%rbx)
	movq	112(%rbx), %rdi
	movslq	560(%rbx), %rcx
	addq	%rcx, %rcx
	addq	552(%rbx), %rcx
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	get_unicode
	incl	560(%rbx)
	movl	232(%rbx), %eax
	decl	%eax
	movq	544(%rbx), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	96(%rsp), %xmm0         # 16-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rax,4)
	incl	%r13d
	cmpl	16(%rbx), %r13d
	jb	.LBB15_35
.LBB15_55:                              # %sw.epilog.thread
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB15_56:                              # %if.then.27
	movsd	376(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	392(%rbp), %xmm0
	jne	.LBB15_57
	jnp	.LBB15_58
.LBB15_57:                              # %if.then.37
	leaq	104(%rbx), %r14
	movq	104(%rbx), %rax
	movups	132(%rax), %xmm0
	movaps	%xmm0, 288(%rsp)
	movq	$0, 304(%rsp)
	leaq	80(%rbp), %rdi
	leaq	288(%rsp), %r15
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	gs_matrix_multiply
	movsd	376(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	384(%rbp), %xmm1        # xmm1 = mem[0],zero
	leaq	176(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform
	movsd	376(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	400(%rbp), %xmm1        # xmm1 = mem[0],zero
	leaq	144(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform
	movsd	384(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	392(%rbp), %xmm0        # xmm0 = mem[0],zero
	leaq	128(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform
	movsd	392(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	400(%rbp), %xmm1        # xmm1 = mem[0],zero
	leaq	112(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform
	movq	568(%rbx), %rax
	movapd	176(%rsp), %xmm0
	movapd	144(%rsp), %xmm1
	minpd	%xmm1, %xmm0
	minpd	128(%rsp), %xmm1
	minpd	%xmm1, %xmm0
	movupd	%xmm0, 48(%rax)
	movapd	176(%rsp), %xmm0
	movapd	144(%rsp), %xmm1
	maxpd	%xmm1, %xmm0
	maxpd	128(%rsp), %xmm1
	maxpd	%xmm1, %xmm0
	movupd	%xmm0, 64(%rax)
.LBB15_60:                              # %if.end.236
	movq	88(%rbx), %rax
	movq	24(%rax), %rdi
	movq	(%r14), %rsi
	callq	*128(%rdi)
	movl	$st_gs_state, %ecx
	movl	$-28, %r12d
	cmpq	%rcx, %rax
	jne	.LBB15_107
# BB#61:                                # %txt_shift_text_currentpoint.exit
	movq	104(%rbx), %rbp
	movq	%rbp, %rdi
	callq	gx_current_path
	xorps	%xmm0, %xmm0
	cvtsi2sdl	448(%rbx), %xmm0
	movsd	.LCPI15_1(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	432(%rbx), %xmm0
	cvtsi2sdl	452(%rbx), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	440(%rbx), %xmm1
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	gs_moveto_aux
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jne	.LBB15_107
# BB#62:                                # %if.end.240
	movq	24(%r13), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$168, %edx
	movl	$.L.str.48, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB15_107
# BB#63:                                # %if.end.i.114
	cvtsi2sdl	448(%rbx), %xmm0
	movsd	.LCPI15_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movq	568(%rbx), %rsi
	movsd	%xmm0, 16(%rsi)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	452(%rbx), %xmm1
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 24(%rsi)
	addsd	432(%rbx), %xmm0
	movsd	%xmm0, 32(%rsi)
	addsd	440(%rbx), %xmm1
	movsd	%xmm1, 40(%rsi)
	movl	560(%rbx), %eax
	movl	%eax, 96(%rsi)
	movl	$168, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	24(%r13), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	560(%rbx), %esi
	movl	$2, %edx
	movl	$.L.str.49, %ecx
	callq	*88(%rdi)
	movq	568(%rbx), %rcx
	movq	%rax, 88(%rcx)
	testq	%rax, %rax
	je	.LBB15_107
# BB#64:                                # %if.end.44.i
	movq	552(%rbx), %rsi
	movslq	560(%rbx), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	24(%r13), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	560(%rbx), %esi
	movl	$4, %edx
	movl	$.L.str.50, %ecx
	callq	*88(%rdi)
	movq	568(%rbx), %rcx
	movq	%rax, 80(%rcx)
	testq	%rax, %rax
	je	.LBB15_107
# BB#65:                                # %if.end.66.i
	movq	544(%rbx), %rsi
	movslq	560(%rbx), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	24(%r13), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	560(%rbx), %esi
	movl	$2, %edx
	movl	$.L.str.51, %ecx
	callq	*88(%rdi)
	movq	%rax, 88(%rbp)
	testq	%rax, %rax
	je	.LBB15_107
# BB#66:                                # %if.end.88.i
	movq	552(%rbx), %rsi
	movslq	560(%rbx), %rdx
	addq	%rdx, %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	24(%r13), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	560(%rbx), %esi
	movl	$4, %edx
	movl	$.L.str.50, %ecx
	callq	*88(%rdi)
	movq	%rax, 80(%rbp)
	testq	%rax, %rax
	je	.LBB15_107
# BB#67:                                # %if.end.109.i
	movq	544(%rbx), %rsi
	movslq	560(%rbx), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	24(%r13), %rax
	movq	(%rax), %rax
	movq	200(%rax), %r15
	movq	88(%r15), %r14
	movq	568(%rbx), %rax
	movq	136(%rax), %rdi
	callq	strlen
	leal	1(%rax), %esi
	movl	$2, %edx
	movl	$.L.str.51, %ecx
	movq	%r15, %rdi
	callq	*%r14
	movq	%rax, %r15
	movq	%r15, 136(%rbp)
	cmpq	$0, 88(%rbp)
	je	.LBB15_107
# BB#68:                                # %if.end.133.i
	movq	568(%rbx), %rax
	movq	136(%rax), %r12
	movq	%r12, %rdi
	callq	strlen
	leaq	(%rax,%rax), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	568(%rbx), %rax
	movq	136(%rax), %rdi
	callq	strlen
	movq	136(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	1744(%r13), %rax
	testq	%rax, %rax
	je	.LBB15_108
# BB#69:
	movl	$-25, %r12d
.LBB15_70:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	8(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB15_70
# BB#71:                                # %while.end.i
	movq	%rbp, 8(%rcx)
	movq	$0, 8(%rbp)
	movq	%rcx, (%rbp)
	jmp	.LBB15_72
.LBB15_5:                               # %if.end.23
	movl	$2561, %ecx             # imm = 0xA01
	btq	%rax, %rcx
	jae	.LBB15_107
# BB#6:                                 # %sw.bb
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%r14, 32(%rsp)          # 8-byte Spill
	leaq	288(%rsp), %r13
	movl	$448, %edx              # imm = 0x1C0
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	leaq	464(%rbx), %r14
	xorl	%r12d, %r12d
	leaq	144(%rsp), %rbp
                                        # implicit-def: EAX
	movl	%eax, 92(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB15_7:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	400(%rsp), %rax
	movq	%r13, %rdi
	leaq	272(%rsp), %rsi
	leaq	280(%rsp), %rdx
	callq	*256(%rax)
	cmpl	$2, %eax
	jae	.LBB15_8
# BB#10:                                # %sw.bb.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movslq	528(%rsp), %rax
	shlq	$4, %rax
	movq	536(%rsp,%rax), %r15
	movq	400(%rsp), %rax
	movl	148(%rax), %esi
	movq	280(%rsp), %rdx
	cmpl	$0, 460(%rbx)
	movq	%r14, %r9
	jne	.LBB15_12
# BB#11:                                # %select.mid
                                        #   in Loop: Header=BB15_7 Depth=1
	xorl	%r9d, %r9d
.LBB15_12:                              # %select.end
                                        #   in Loop: Header=BB15_7 Depth=1
	movq	%r15, %rdi
	movq	%r15, %rcx
	leaq	176(%rsp), %r8
	callq	txt_glyph_widths
	cmpl	$3, %eax
	jne	.LBB15_14
# BB#13:                                # %sw.epilog.thread.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movl	$1, 460(%rbx)
	movq	280(%rsp), %rax
	movq	%rax, 424(%rbx)
	movq	%rax, 712(%rsp)
	movq	%r15, 192(%rbx)
	movq	%r15, 480(%rsp)
	movl	$2, %ecx
	movl	$3, %r12d
	jmp	.LBB15_29
	.align	16, 0x90
.LBB15_8:                               # %for.cond.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movl	$1, %ecx
	jne	.LBB15_24
# BB#9:                                 #   in Loop: Header=BB15_7 Depth=1
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	jmp	.LBB15_29
	.align	16, 0x90
.LBB15_14:                              # %if.else.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movl	$0, 460(%rbx)
	movl	520(%rsp), %eax
	movl	%eax, 232(%rbx)
	addq	$80, %r15
	movq	112(%rbx), %rsi
	addq	$80, %rsi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	gs_matrix_multiply
	movq	112(%rbx), %rdx
	movq	568(%rbx), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rcx
	callq	txt_update_text_state
	movq	112(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_18
# BB#15:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movl	128(%rdi), %eax
	cmpq	$54, %rax
	ja	.LBB15_18
# BB#16:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movabsq	$31525197391593480, %rcx # imm = 0x70000000000008
	btq	%rax, %rcx
	jae	.LBB15_18
# BB#17:                                # %if.then.i.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movss	104(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$104, %rdi
	cvtss2sd	%xmm0, %xmm0
	mulsd	184(%rsp), %xmm0
	movsd	%xmm0, 184(%rsp)
	movq	$0, 192(%rsp)
	movsd	224(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	232(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	224(%rsp), %rsi
	callq	gs_distance_transform
	movsd	224(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	232(%rsp), %xmm1        # xmm1 = mem[0],zero
	jmp	.LBB15_19
	.align	16, 0x90
.LBB15_18:                              # %if.else.i.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movupd	184(%rsp), %xmm0
	movapd	.LCPI15_0(%rip), %xmm1  # xmm1 = [1.000000e+03,1.000000e+03]
	divpd	%xmm1, %xmm0
	movupd	%xmm0, 184(%rsp)
	movupd	224(%rsp), %xmm0
	divpd	%xmm1, %xmm0
	movupd	%xmm0, 224(%rsp)
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
.LBB15_19:                              # %txt_char_widths_to_uts.exit.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movq	568(%rbx), %rdi
	movsd	160(%rdi), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	addq	$104, %rdi
	leaq	128(%rsp), %rsi
	callq	gs_distance_transform
	movapd	128(%rsp), %xmm0
	movupd	432(%rbx), %xmm1
	addpd	%xmm0, %xmm1
	movupd	%xmm1, 432(%rbx)
	cvtsd2ss	%xmm0, %xmm0
	movl	232(%rbx), %eax
	decl	%eax
	movq	544(%rbx), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movl	(%rbx), %eax
	xorpd	%xmm1, %xmm1
	testb	$64, %al
	je	.LBB15_21
# BB#20:                                # %if.then.45.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rbx), %xmm1         # xmm1 = mem[0],zero
	movq	104(%rbx), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	leaq	112(%rsp), %rsi
	callq	gs_distance_transform
	movapd	112(%rsp), %xmm1
	addpd	.LCPI15_2, %xmm1
	movl	(%rbx), %eax
.LBB15_21:                              # %if.end.58.i
                                        #   in Loop: Header=BB15_7 Depth=1
	testb	$-128, %al
	je	.LBB15_26
# BB#22:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movapd	%xmm1, 96(%rsp)         # 16-byte Spill
	movq	272(%rsp), %rax
	cmpq	56(%rbx), %rax
	jne	.LBB15_23
# BB#25:                                # %if.then.66.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	48(%rbx), %xmm1         # xmm1 = mem[0],zero
	movq	104(%rbx), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	leaq	112(%rsp), %rsi
	callq	gs_distance_transform
	movapd	96(%rsp), %xmm1         # 16-byte Reload
	addpd	112(%rsp), %xmm1
	jmp	.LBB15_26
.LBB15_24:                              # %sw.default.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movl	%eax, 92(%rsp)          # 4-byte Spill
	jmp	.LBB15_29
.LBB15_23:                              #   in Loop: Header=BB15_7 Depth=1
	movapd	96(%rsp), %xmm1         # 16-byte Reload
.LBB15_26:                              # %sw.epilog.i
                                        #   in Loop: Header=BB15_7 Depth=1
	movapd	%xmm1, 96(%rsp)         # 16-byte Spill
	movupd	432(%rbx), %xmm0
	addpd	%xmm1, %xmm0
	movupd	%xmm0, 432(%rbx)
	movq	112(%rbx), %rdi
	movq	280(%rsp), %rsi
	movq	272(%rsp), %rdx
	movslq	560(%rbx), %rcx
	addq	%rcx, %rcx
	addq	552(%rbx), %rcx
	callq	get_unicode
	incl	560(%rbx)
	movl	232(%rbx), %eax
	leal	-1(%rax), %ecx
	movq	544(%rbx), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	96(%rsp), %xmm0         # 16-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rcx,4)
	movl	$2, %ecx
	testl	%r12d, %r12d
	jne	.LBB15_29
# BB#27:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB15_7 Depth=1
	xorl	%r12d, %r12d
	cmpl	16(%rbx), %eax
	movl	$0, %ecx
	jb	.LBB15_29
# BB#28:                                # %select.mid296
                                        #   in Loop: Header=BB15_7 Depth=1
	movl	$2, %ecx
	.align	16, 0x90
.LBB15_29:                              # %cleanup.i
                                        #   in Loop: Header=BB15_7 Depth=1
	testl	%ecx, %ecx
	je	.LBB15_7
# BB#30:                                # %cleanup.i
	cmpl	$2, %ecx
	movq	32(%rsp), %r13          # 8-byte Reload
	jne	.LBB15_32
# BB#31:                                # %sw.epilog.loopexit148
	movl	%r12d, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
.LBB15_32:                              # %sw.epilog
	movl	92(%rsp), %r12d         # 4-byte Reload
	testl	%r12d, %r12d
	movq	24(%rsp), %rbp          # 8-byte Reload
	jne	.LBB15_107
	jmp	.LBB15_56
.LBB15_58:                              # %lor.lhs.false
	movsd	384(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	400(%rbp), %xmm0
	jne	.LBB15_57
	jp	.LBB15_57
# BB#59:                                # %lor.lhs.false.if.end.236_crit_edge
	leaq	104(%rbx), %r14
	jmp	.LBB15_60
.LBB15_108:                             # %if.then.147.i
	movq	%rbp, 1744(%r13)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%rbp)
	movl	$-25, %r12d
.LBB15_72:                              # %if.end.158.i
	movq	1736(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB15_83
# BB#73:                                # %while.cond.i.preheader.i
	movq	568(%rbx), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
.LBB15_74:                              # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbp
	movq	8(%rbp), %rcx
	movsd	24(%rbp), %xmm1         # xmm1 = mem[0],zero
	testq	%rcx, %rcx
	je	.LBB15_76
# BB#75:                                # %while.cond.i.i
                                        #   in Loop: Header=BB15_74 Depth=1
	ucomisd	%xmm1, %xmm0
	ja	.LBB15_74
.LBB15_76:                              # %while.end.i.i
	ucomisd	%xmm0, %xmm1
	jne	.LBB15_96
	jp	.LBB15_96
# BB#77:                                # %if.then.38.i.i
	movq	40(%rbp), %rdx
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
.LBB15_78:                              # %while.cond.40.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	movq	8(%rcx), %rdx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	testq	%rdx, %rdx
	je	.LBB15_80
# BB#79:                                # %while.cond.40.i.i
                                        #   in Loop: Header=BB15_78 Depth=1
	ucomisd	%xmm1, %xmm0
	ja	.LBB15_78
.LBB15_80:                              # %while.end.52.i.i
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_86
# BB#81:                                # %if.then.59.i.i
	movq	%rcx, 8(%rax)
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	%rax, (%rcx)
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB15_82
# BB#85:                                # %if.else.73.i.i
	movq	%rax, 8(%rcx)
	jmp	.LBB15_88
.LBB15_83:                              # %if.then.i.i.123
	movq	24(%r13), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$48, %edx
	movl	$.L.str.52, %ecx
	callq	*88(%rdi)
	movq	%rax, 1736(%r13)
	testq	%rax, %rax
	je	.LBB15_107
# BB#84:                                # %if.end.i.i
	xorl	%esi, %esi
	movl	$48, %edx
	movq	%rax, %rdi
	callq	memset
	movq	568(%rbx), %rax
	movq	1736(%r13), %rcx
	movq	%rax, 40(%rcx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%rcx)
	movupd	16(%rax), %xmm0
	movupd	%xmm0, 16(%rcx)
	jmp	.LBB15_106
.LBB15_96:                              # %if.else.148.i.i
	movq	24(%r13), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$48, %edx
	movl	$.L.str.14, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB15_107
# BB#97:                                # %if.end.160.i.i
	movq	568(%rbx), %rcx
	movq	%rcx, 40(%rax)
	movups	16(%rcx), %xmm0
	movups	%xmm0, 16(%rax)
	movq	568(%rbx), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	72(%rcx), %xmm2         # xmm2 = mem[0],zero
	cvtsd2ss	%xmm2, %xmm1
	ucomisd	%xmm2, %xmm0
	jbe	.LBB15_99
# BB#98:                                # %if.then.174.i.i
	movss	%xmm1, 32(%rax)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 36(%rax)
	jmp	.LBB15_100
.LBB15_86:                              # %if.else.79.i.i
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rax, 8(%rcx)
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB15_88
# BB#87:                                # %if.then.90.i.i
	movq	%rax, (%rcx)
	jmp	.LBB15_88
.LBB15_82:                              # %if.then.70.i.i
	movq	%rax, 40(%rbp)
.LBB15_88:                              # %if.end.96.i.i
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movss	32(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB15_90
# BB#89:                                # %if.then.101.i.i
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 32(%rbp)
.LBB15_90:                              # %if.end.107.i.i
	movss	36(%rbp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm3
	ucomisd	%xmm3, %xmm1
	jbe	.LBB15_92
# BB#91:                                # %if.then.114.i.i
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm1, %xmm2
	movss	%xmm2, 36(%rbp)
.LBB15_92:                              # %if.end.120.i.i
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_94
# BB#93:                                # %if.then.127.i.i
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 32(%rbp)
.LBB15_94:                              # %if.end.133.i.i
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_106
# BB#95:                                # %if.then.141.i.i
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 36(%rbp)
	jmp	.LBB15_106
.LBB15_99:                              # %if.else.185.i.i
	movss	%xmm1, 36(%rax)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 32(%rax)
.LBB15_100:                             # %if.end.196.i.i
	movsd	24(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	24(%rcx), %xmm0
	jbe	.LBB15_104
# BB#101:                               # %if.then.204.i.i
	movq	%rbp, 8(%rax)
	movq	(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	%rax, (%rbp)
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB15_102
# BB#103:                               # %if.else.214.i.i
	movq	%rax, 8(%rcx)
	jmp	.LBB15_106
.LBB15_104:                             # %if.else.218.i.i
	movq	8(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%rbp, (%rax)
	movq	%rax, 8(%rbp)
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB15_106
# BB#105:                               # %if.then.225.i.i
	movq	%rax, (%rcx)
	jmp	.LBB15_106
.LBB15_102:                             # %if.then.211.i.i
	movq	%rax, 1736(%r13)
.LBB15_106:                             # %if.end.234.i.i
	movq	$0, 568(%rbx)
	xorl	%r12d, %r12d
.LBB15_107:                             # %cleanup
	movl	%r12d, %eax
	addq	$744, %rsp              # imm = 0x2E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	textw_text_process, .Lfunc_end15-textw_text_process
	.cfi_endproc

	.align	16, 0x90
	.type	textw_text_is_width_only,@function
textw_text_is_width_only:               # @textw_text_is_width_only
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	textw_text_is_width_only, .Lfunc_end16-textw_text_is_width_only
	.cfi_endproc

	.align	16, 0x90
	.type	textw_text_current_width,@function
textw_text_current_width:               # @textw_text_current_width
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_text_current_width   # TAILCALL
.Lfunc_end17:
	.size	textw_text_current_width, .Lfunc_end17-textw_text_current_width
	.cfi_endproc

	.align	16, 0x90
	.type	textw_text_set_cache,@function
textw_text_set_cache:                   # @textw_text_set_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp88:
	.cfi_def_cfa_offset 16
	cmpl	$2, %edx
	jae	.LBB18_1
# BB#5:                                 # %sw.bb
	popq	%rax
	jmp	gs_text_set_cache       # TAILCALL
.LBB18_1:                               # %entry
	movl	$-15, %eax
	jne	.LBB18_4
# BB#2:                                 # %sw.bb.1
	cmpl	$0, 460(%rdi)
	je	.LBB18_6
# BB#3:                                 # %if.then
	addq	$464, %rdi              # imm = 0x1D0
	movl	$80, %edx
	callq	memcpy
	xorl	%eax, %eax
.LBB18_4:                               # %cleanup
	popq	%rdx
	retq
.LBB18_6:                               # %if.end
	movl	$2, %edx
	popq	%rax
	jmp	gs_text_set_cache       # TAILCALL
.Lfunc_end18:
	.size	textw_text_set_cache, .Lfunc_end18-textw_text_set_cache
	.cfi_endproc

	.align	16, 0x90
	.type	textw_text_retry,@function
textw_text_retry:                       # @textw_text_retry
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_text_retry           # TAILCALL
.Lfunc_end19:
	.size	textw_text_retry, .Lfunc_end19-textw_text_retry
	.cfi_endproc

	.align	16, 0x90
	.type	textw_text_release,@function
textw_text_release:                     # @textw_text_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 32
.Ltmp92:
	.cfi_offset %rbx, -32
.Ltmp93:
	.cfi_offset %r14, -24
.Ltmp94:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	88(%rbx), %r15
	movq	552(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.53, %edx
	callq	*24(%rdi)
.LBB20_2:                               # %if.end
	movq	544(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB20_4
# BB#3:                                 # %if.then.5
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.54, %edx
	callq	*24(%rdi)
.LBB20_4:                               # %if.end.13
	movq	568(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB20_6
# BB#5:                                 # %if.then.15
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.40, %edx
	callq	*24(%rdi)
.LBB20_6:                               # %if.end.23
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_text_release         # TAILCALL
.Lfunc_end20:
	.size	textw_text_release, .Lfunc_end20-textw_text_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4652007308841189376     # double 1000
.LCPI21_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	txt_glyph_widths,@function
txt_glyph_widths:                       # @txt_glyph_widths
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp98:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp99:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 56
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp101:
	.cfi_def_cfa_offset 528
.Ltmp102:
	.cfi_offset %rbx, -56
.Ltmp103:
	.cfi_offset %r12, -48
.Ltmp104:
	.cfi_offset %r13, -40
.Ltmp105:
	.cfi_offset %r14, -32
.Ltmp106:
	.cfi_offset %r15, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, %rbx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %rbp
	movl	%esi, %r12d
	movq	%rdi, %r13
	movl	128(%rcx), %eax
	movl	%eax, %r14d
	andl	$-3, %r14d
	cmpl	$9, %r14d
	sete	39(%rsp)                # 1-byte Folded Spill
	movl	$-28, %r15d
	testl	%eax, %eax
	je	.LBB21_54
# BB#1:                                 # %if.end
	leaq	184(%rsp), %rdx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	glyph_orig_matrix
	movq	%rbp, %rsi
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB21_54
# BB#2:                                 # %if.end.7
	leaq	160(%rsp), %rdx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rsi, %rbp
	callq	glyph_orig_matrix
	movq	%rbp, %rcx
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB21_54
# BB#3:                                 # %if.end.11
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	184(%rsp), %rdi
	movapd	%xmm0, %xmm1
	movq	%rdi, %rsi
	movq	%rcx, %rbp
	callq	gs_matrix_scale
	leaq	160(%rsp), %rdi
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	movq	%rbp, %rsi
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 24(%rbx)
	movupd	%xmm0, 64(%rbx)
	movl	$0, 80(%rbx)
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	jne	.LBB21_5
# BB#4:                                 # %if.then.23
	leaq	184(%rsp), %rdx
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%rbx, %rcx
	callq	get_missing_width
	movl	%eax, %r15d
	jmp	.LBB21_54
.LBB21_5:                               # %if.end.25
	leaq	24(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	$1, %eax
	movl	%r12d, %ebx
	movb	%bl, %cl
	shll	%cl, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	$64, %ebp
	movb	%bl, %cl
	shll	%cl, %ebp
	movl	$65, %eax
	movb	%bl, %cl
	shll	%cl, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	%eax, %ecx
	orl	$33, %ecx
	leaq	208(%rsp), %r8
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%rsi, %r12
	callq	*224(%r13)
	movl	%eax, %r15d
	movl	128(%r13), %eax
	addl	$-52, %eax
	cmpl	$3, %eax
	jb	.LBB21_18
# BB#6:                                 # %land.lhs.true.37
	cmpl	$-21, %r15d
	je	.LBB21_8
# BB#7:                                 # %lor.lhs.false
	movl	32(%rsp), %eax          # 4-byte Reload
	testl	208(%rsp), %eax
	je	.LBB21_8
.LBB21_18:                              # %if.else.72
	testl	%r15d, %r15d
	js	.LBB21_54
# BB#19:                                # %if.else.75
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movl	%ebx, %r12d
	movslq	%r12d, %rax
	shlq	$4, %rax
	movsd	216(%rsp,%rax), %xmm0   # xmm0 = mem[0],zero
	movsd	224(%rsp,%rax), %xmm1   # xmm1 = mem[0],zero
	movq	16(%rsp), %rbx          # 8-byte Reload
	leaq	8(%rbx), %r15
	leaq	184(%rsp), %rdi
	movq	%r15, %rsi
	callq	gs_distance_transform
	leaq	16(%rbx), %rax
	testl	%r12d, %r12d
	movq	%r15, %rcx
	cmoveq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	$1, %edx
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB21_21
	jp	.LBB21_21
# BB#20:                                # %if.end.13.i
	testl	%r12d, %r12d
	cmoveq	%r15, %rax
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	256(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	184(%rsp), %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	gs_distance_transform
	xorl	%edx, %edx
.LBB21_21:                              # %if.end.80
	testl	208(%rsp), %ebp
	je	.LBB21_23
# BB#22:                                # %if.then.86
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	256(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	184(%rsp), %rdi
	leaq	144(%rsp), %rsi
	movl	%edx, %ebp
	callq	gs_distance_transform
	movl	%ebp, %edx
	jmp	.LBB21_24
.LBB21_8:                               # %if.then.40
	leaq	184(%rsp), %rdx
	movq	%r13, %rdi
	movl	%ebx, %r15d
	movl	%r15d, %esi
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	get_missing_width
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB21_9
# BB#10:                                # %if.else
	movq	32(%rbx), %rax
	movq	%rax, 152(%rsp)
	jmp	.LBB21_11
.LBB21_23:                              # %if.else.92
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 144(%rsp)
.LBB21_24:                              # %if.end.95
	movl	%r12d, %r15d
	movq	8(%rsp), %rsi           # 8-byte Reload
	testl	%r15d, %r15d
	movq	40(%rsp), %rdi          # 8-byte Reload
	je	.LBB21_25
# BB#26:                                # %land.lhs.true.97
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	128(%rax), %eax
	orl	$2, %eax
	cmpl	$11, %eax
	jne	.LBB21_25
# BB#27:                                # %if.then.103
	movl	%edx, %r12d
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	32(%rsp), %eax          # 4-byte Reload
	testl	208(%rsp), %eax
	je	.LBB21_29
# BB#28:                                # %if.then.108
	movsd	216(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	224(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	184(%rsp), %rdi
	leaq	312(%rsp), %rsi
	callq	gs_distance_transform
	movsd	312(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI21_1(%rip), %xmm0
	movsd	%xmm0, 144(%rsp)
	movl	%r12d, %edx
	movl	%edx, (%rsp)            # 4-byte Spill
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB21_33
.LBB21_25:
	movl	%edx, (%rsp)            # 4-byte Spill
	movq	24(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB21_33
.LBB21_9:                               # %if.then.43
	movq	$0, 152(%rsp)
.LBB21_11:                              # %if.end.49
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	testl	%r15d, %r15d
	je	.LBB21_17
# BB#12:                                # %land.lhs.true.51
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	128(%rax), %eax
	orl	$2, %eax
	cmpl	$11, %eax
	jne	.LBB21_17
# BB#13:                                # %if.then.57
	movl	%edx, %r12d
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	leaq	312(%rsp), %rcx
	xorl	%esi, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	%r13, %rdi
	callq	*184(%r13)
	testl	%eax, %eax
	js	.LBB21_14
# BB#15:                                # %if.else.62
	movl	372(%rsp), %eax
	cvtsi2sdl	%eax, %xmm0
	leaq	104(%rsp), %rsi
	leaq	184(%rsp), %rdi
	xorpd	%xmm1, %xmm1
	callq	gs_distance_transform
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	%rax, 96(%rsp)
	movq	%rax, 56(%rsp)
	movq	$0, 88(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rsp)
	movd	%rax, %xmm0
	mulsd	.LCPI21_1(%rip), %xmm0
	jmp	.LBB21_16
.LBB21_17:                              # %if.else.66
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, 144(%rsp)
	movl	$0, (%rsp)              # 4-byte Folded Spill
	jmp	.LBB21_33
.LBB21_29:                              # %if.else.117
	leaq	312(%rsp), %rcx
	xorl	%esi, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	%r13, %rdi
	callq	*184(%r13)
	testl	%eax, %eax
	js	.LBB21_30
# BB#31:                                # %if.else.123
	movl	372(%rsp), %eax
	cvtsi2sdl	%eax, %xmm0
	leaq	104(%rsp), %rsi
	leaq	184(%rsp), %rdi
	xorpd	%xmm1, %xmm1
	callq	gs_distance_transform
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	%rax, 96(%rsp)
	movq	%rax, 56(%rsp)
	movq	$0, 88(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rsp)
	movd	%rax, %xmm0
	mulsd	.LCPI21_1(%rip), %xmm0
	jmp	.LBB21_32
.LBB21_14:                              # %if.then.60
	xorpd	%xmm0, %xmm0
.LBB21_16:                              # %if.end.65
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%r12d, %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movsd	%xmm0, 144(%rsp)
	movl	$0, (%rsp)              # 4-byte Folded Spill
	jmp	.LBB21_33
.LBB21_30:                              # %if.then.121
	xorpd	%xmm0, %xmm0
.LBB21_32:                              # %if.end.128
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%r12d, %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movsd	%xmm0, 144(%rsp)
	movl	%edx, (%rsp)            # 4-byte Spill
.LBB21_33:                              # %if.end.132
	movapd	144(%rsp), %xmm0
	movupd	%xmm0, (%rcx)
	testl	%edx, %edx
	jle	.LBB21_36
# BB#34:                                # %land.lhs.true.136
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	128(%rax), %eax
	orl	$2, %eax
	cmpl	$11, %eax
	je	.LBB21_36
# BB#35:                                # %if.then.142
	movq	$0, 16(%rbx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%rbx)
.LBB21_36:                              # %if.end.151
	leaq	40(%rbx), %r13
	testq	%rdi, %rdi
	je	.LBB21_37
# BB#39:                                # %if.else.170
	movups	(%rdi), %xmm0
	movups	%xmm0, 216(%rsp)
	movupd	48(%rdi), %xmm0
	movupd	%xmm0, 232(%rsp)
	testl	%r15d, %r15d
	je	.LBB21_41
# BB#40:                                # %cond.true
	movq	64(%rdi), %rax
	movq	%rax, 248(%rsp)
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	jmp	.LBB21_42
.LBB21_37:                              # %if.then.153
	movl	%r15d, %r12d
	movzbl	39(%rsp), %ecx          # 1-byte Folded Reload
	shll	$8, %ecx
	movl	$0, 208(%rsp)
	orl	4(%rsp), %ecx           # 4-byte Folded Reload
	leaq	208(%rsp), %r8
	xorl	%edx, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	*224(%rdi)
	movl	%eax, %r15d
	movl	208(%rsp), %eax
	testb	$1, %ah
	jne	.LBB21_38
# BB#43:                                # %if.end.205
	cmpl	$-21, %r15d
	je	.LBB21_45
	jmp	.LBB21_44
.LBB21_41:                              # %cond.end.196.critedge
	movq	$0, 248(%rsp)
	xorpd	%xmm0, %xmm0
.LBB21_42:                              # %if.end.205.thread
	testl	%r15d, %r15d
	movl	%r15d, %r12d
	setne	%al
	movsd	%xmm0, 256(%rsp)
	movzbl	%al, %eax
	shll	$7, %eax
	orl	32(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 208(%rsp)
	xorl	%r15d, %r15d
.LBB21_44:                              # %lor.lhs.false.207
	testl	32(%rsp), %eax          # 4-byte Folded Reload
	je	.LBB21_45
# BB#46:                                # %if.else.215
	testl	%r15d, %r15d
	js	.LBB21_54
# BB#47:                                # %if.else.218
	testb	$-64, %al
	je	.LBB21_49
# BB#48:                                # %if.then.222
	movl	$1, 80(%rbx)
	jmp	.LBB21_50
.LBB21_45:                              # %if.then.212
	movq	32(%rbx), %rax
	movq	%rax, 32(%r13)
	movupd	(%rbx), %xmm0
	movupd	16(%rbx), %xmm1
	movupd	%xmm1, 16(%r13)
	movupd	%xmm0, (%r13)
	movl	(%rsp), %r15d           # 4-byte Reload
	jmp	.LBB21_54
.LBB21_38:                              # %if.then.165
	cmpl	$9, %r14d
	movl	$3, %eax
	movl	$-15, %r15d
	cmovel	%eax, %r15d
	jmp	.LBB21_54
.LBB21_49:                              # %if.else.224
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 248(%rsp)
.LBB21_50:                              # %if.end.229
	movslq	%r12d, %rax
	shlq	$4, %rax
	movsd	216(%rsp,%rax), %xmm0   # xmm0 = mem[0],zero
	movsd	224(%rsp,%rax), %xmm1   # xmm1 = mem[0],zero
	leaq	48(%rbx), %rbp
	leaq	160(%rsp), %rdi
	movq	%rbp, %rsi
	callq	gs_distance_transform
	leaq	64(%rbx), %r14
	addq	$56, %rbx
	testl	%r12d, %r12d
	movq	%rbp, %rax
	cmoveq	%rbx, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB21_51
	jnp	.LBB21_52
.LBB21_51:                              # %if.end.229.if.end.234_crit_edge
	movl	$1, %r15d
	jmp	.LBB21_53
.LBB21_52:                              # %if.end.13.i.123
	testl	%r12d, %r12d
	cmoveq	%rbp, %rbx
	movq	(%rbx), %rax
	movq	%rax, (%r13)
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	256(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	160(%rsp), %rdi
	movq	%r14, %rsi
	callq	gs_distance_transform
	xorl	%r15d, %r15d
.LBB21_53:                              # %if.end.234
	orl	(%rsp), %r15d           # 4-byte Folded Reload
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	256(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	160(%rsp), %rdi
	movq	%r14, %rsi
	callq	gs_distance_transform
.LBB21_54:                              # %cleanup
	movl	%r15d, %eax
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	txt_glyph_widths, .Lfunc_end21-txt_glyph_widths
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4634766966517661696     # double 72
.LCPI22_1:
	.quad	4576918229304087675     # double 0.01
.LCPI22_3:
	.quad	4571153621781053440     # double 0.00390625
.LCPI22_4:
	.quad	4562254508917369340     # double 0.001
.LCPI22_5:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI22_2:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	txt_update_text_state,@function
txt_update_text_state:                  # @txt_update_text_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp111:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp112:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp114:
	.cfi_def_cfa_offset 240
.Ltmp115:
	.cfi_offset %rbx, -56
.Ltmp116:
	.cfi_offset %r12, -48
.Ltmp117:
	.cfi_offset %r13, -40
.Ltmp118:
	.cfi_offset %r14, -32
.Ltmp119:
	.cfi_offset %r15, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	88(%rbx), %r15
	movq	192(%rbx), %rbp
	movq	120(%rbx), %rdi
	leaq	152(%rsp), %rsi
	callq	gx_path_current_point
	testl	%eax, %eax
	js	.LBB22_37
# BB#1:                                 # %if.end
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	104(%rbx), %r14
	movq	%r15, 72(%rsp)          # 8-byte Spill
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	888(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI22_0(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	leaq	160(%rsp), %rbx
	movq	$-1, %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	txtwrite_font_orig_matrix
	leaq	128(%rsp), %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gs_matrix_invert
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	gs_matrix_multiply
	movups	132(%r14), %xmm0
	movaps	%xmm0, 96(%rsp)
	movq	$0, 112(%rsp)
	leaq	96(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rsi, %rdx
	callq	gs_matrix_multiply
	movss	104(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	108(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB22_3
# BB#2:                                 # %call.sqrt
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB22_3:                               # %if.end.split
	divsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	movsd	.LCPI22_1(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	48(%rsp), %r15d         # 4-byte Reload
	movq	40(%rsp), %r14          # 8-byte Reload
	jbe	.LBB22_7
# BB#4:                                 # %if.then.i
	movss	16(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI22_0(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movss	96(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	100(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB22_6
# BB#5:                                 # %call.sqrt29
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB22_6:                               # %if.then.i.split
	divsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm3
	movsd	.LCPI22_1(%rip), %xmm1  # xmm1 = mem[0],zero
.LBB22_7:                               # %txt_calculate_text_size.exit
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm1
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	32(%rsp), %rbx          # 8-byte Reload
	jbe	.LBB22_9
# BB#8:
	movss	.LCPI22_2(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
.LBB22_9:                               # %txt_calculate_text_size.exit
	movl	(%rbx), %eax
	testb	$64, %al
	je	.LBB22_18
# BB#10:                                # %if.then.3
	movq	192(%rbx), %rcx
	cmpl	$0, 148(%rcx)
	jne	.LBB22_18
# BB#11:                                # %if.then.6
	movaps	%xmm3, 48(%rsp)         # 16-byte Spill
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rbx), %xmm1         # xmm1 = mem[0],zero
	leaq	128(%rsp), %rdi
	leaq	80(%rsp), %rsi
	callq	gs_distance_transform_inverse
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB22_17
# BB#12:                                # %if.end.i
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	xorl	%r15d, %r15d
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB22_13
	jnp	.LBB22_17
.LBB22_13:                              # %if.end.4.i
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	leaq	128(%rsp), %rdi
	leaq	160(%rsp), %rsi
	xorpd	%xmm1, %xmm1
	callq	gs_distance_transform
	testl	%eax, %eax
	js	.LBB22_17
# BB#14:                                # %if.end.9.i
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	24(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI22_1(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_17
# BB#15:                                # %land.lhs.true.i
	movsd	168(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	32(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI22_1(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_17
# BB#16:                                # %if.then.19.i
	movq	$0, 88(%rsp)
.LBB22_17:                              # %transform_delta_inverse.exit
	movl	(%rbx), %eax
	movaps	48(%rsp), %xmm3         # 16-byte Reload
.LBB22_18:                              # %if.end.17
	testb	$-128, %al
	je	.LBB22_26
# BB#19:                                # %if.then.22
	movaps	%xmm3, 48(%rsp)         # 16-byte Spill
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	48(%rbx), %xmm1         # xmm1 = mem[0],zero
	leaq	128(%rsp), %rdi
	leaq	80(%rsp), %rsi
	callq	gs_distance_transform_inverse
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB22_25
# BB#20:                                # %if.end.i.11
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	xorl	%r15d, %r15d
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB22_21
	jnp	.LBB22_25
.LBB22_21:                              # %if.end.4.i.15
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	leaq	128(%rsp), %rdi
	leaq	160(%rsp), %rsi
	xorpd	%xmm1, %xmm1
	callq	gs_distance_transform
	testl	%eax, %eax
	js	.LBB22_25
# BB#22:                                # %if.end.9.i.20
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	40(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI22_1(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_25
# BB#23:                                # %land.lhs.true.i.25
	movsd	168(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	48(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI22_1(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_25
# BB#24:                                # %if.then.19.i.26
	movq	$0, 88(%rsp)
.LBB22_25:                              # %transform_delta_inverse.exit28
	movaps	48(%rsp), %xmm3         # 16-byte Reload
.LBB22_26:                              # %if.end.44
	movaps	96(%rsp), %xmm0
	movaps	%xmm3, %xmm1
	shufps	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	divps	%xmm1, %xmm0
	movaps	%xmm0, 96(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	152(%rsp), %xmm0
	movsd	.LCPI22_3(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	112(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 112(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	156(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movss	116(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 116(%rsp)
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	%xmm0, 160(%rbp)
	movq	112(%rsp), %rax
	movq	%rax, 120(%rbp)
	movaps	96(%rsp), %xmm0
	movups	%xmm0, 104(%rbp)
	movq	104(%rbx), %rax
	movl	252(%rax), %eax
	movl	%eax, 100(%rbp)
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	372(%r14), %edx
	incl	%edx
	movl	$1, %esi
	movl	$.L.str.45, %ecx
	callq	*88(%rdi)
	movq	%rax, 136(%rbp)
	testq	%rax, %rax
	je	.LBB22_37
# BB#27:                                # %if.end.71
	leaq	324(%r14), %rsi
	movl	372(%r14), %edx
	movq	%rax, %rdi
	callq	memcpy
	movl	372(%r14), %eax
	movq	136(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movl	148(%r14), %eax
	movl	%eax, 100(%rbp)
	cmpl	$2, 152(%r14)
	jne	.LBB22_37
# BB#28:                                # %land.lhs.true.85
	movq	104(%rbx), %r12
	cmpl	$0, 252(%r12)
	jne	.LBB22_37
# BB#29:                                # %if.then.90
	movq	192(%rbx), %rax
	movss	92(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	156(%rax), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm2, %xmm1
	cvtss2sd	%xmm2, %xmm2
	jne	.LBB22_32
# BB#30:                                # %if.then.90
	jp	.LBB22_32
# BB#31:                                # %if.then.90
	movsd	.LCPI22_4(%rip), %xmm2  # xmm2 = mem[0],zero
.LBB22_32:                              # %if.then.90
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	movl	24(%r12), %r14d
	movq	72(%rsp), %rcx          # 8-byte Reload
	movss	888(%rcx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI22_0(%rip), %xmm3  # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, 72(%rsp)         # 8-byte Spill
	ucomiss	%xmm1, %xmm0
	jne	.LBB22_33
	jnp	.LBB22_34
.LBB22_33:                              # %if.then.106
	movss	116(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movss	108(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB22_35
.LBB22_34:                              # %if.else.117
	movss	108(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movss	100(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
.LBB22_35:                              # %if.end.129
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	$1, 100(%rbp)
	movsd	%xmm0, 152(%rbp)
	mulsd	.LCPI22_5(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%r12)
	testl	%r15d, %r15d
	js	.LBB22_37
# BB#36:                                # %if.end.138
	movl	%r14d, 24(%r12)
.LBB22_37:                              # %cleanup.153
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	txt_update_text_state, .Lfunc_end22-txt_update_text_state
	.cfi_endproc

	.align	16, 0x90
	.type	get_unicode,@function
get_unicode:                            # @get_unicode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp121:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp123:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp125:
	.cfi_def_cfa_offset 64
.Ltmp126:
	.cfi_offset %rbx, -40
.Ltmp127:
	.cfi_offset %r12, -32
.Ltmp128:
	.cfi_offset %r14, -24
.Ltmp129:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	*208(%rbx)
	cmpq	$-1, %rax
	jne	.LBB23_6
# BB#1:                                 # %if.then
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*240(%rbx)
	testl	%eax, %eax
	js	.LBB23_5
# BB#2:                                 # %land.lhs.true
	cmpl	$7, 16(%rsp)
	jne	.LBB23_5
# BB#3:                                 # %if.then.10
	movq	8(%rsp), %rbx
	movl	$.L.str.46, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB23_5
# BB#4:                                 # %if.then.12
	movzbl	3(%rbx), %esi
	movl	$.L.str.47, %edi
	callq	strchr
	movq	8(%rsp), %rax
	movzbl	4(%rax), %esi
	movl	$.L.str.47, %edi
	callq	strchr
	movq	8(%rsp), %rax
	movzbl	5(%rax), %esi
	movl	$.L.str.47, %edi
	callq	strchr
	movq	8(%rsp), %rax
	movzbl	6(%rax), %esi
	movl	$.L.str.47, %edi
	callq	strchr
.LBB23_5:                               # %cleanup.278
	movq	%r15, %rax
.LBB23_6:                               # %cleanup.278
	movw	%ax, (%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end23:
	.size	get_unicode, .Lfunc_end23-get_unicode
	.cfi_endproc

	.align	16, 0x90
	.type	glyph_orig_matrix,@function
glyph_orig_matrix:                      # @glyph_orig_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp131:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp132:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp134:
	.cfi_def_cfa_offset 48
.Ltmp135:
	.cfi_offset %rbx, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	txtwrite_font_orig_matrix
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_5
# BB#1:                                 # %if.then
	cmpl	$9, 128(%r15)
	jne	.LBB24_5
# BB#2:                                 # %if.then.2
	movl	$2147483648, %eax       # imm = 0x80000000
	testq	$-2147483648, %rbx      # imm = 0xFFFFFFFF80000000
	cmoveq	%rax, %rbx
	leaq	4(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*528(%r15)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB24_4
# BB#3:                                 # %if.end.11
	leaq	4(%rsp), %rcx
	movl	$2147483648, %esi       # imm = 0x80000000
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	*528(%r15)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_5
.LBB24_4:                               # %if.then.13
	movl	4(%rsp), %esi
	movq	%r15, %rdi
	callq	gs_cid0_indexed_font
	leaq	80(%rax), %rdi
	movq	%r14, %rsi
	movq	%r14, %rdx
	callq	gs_matrix_multiply
.LBB24_5:                               # %if.end.18
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	glyph_orig_matrix, .Lfunc_end24-glyph_orig_matrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	-4620693217682128896    # double -0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	get_missing_width,@function
get_missing_width:                      # @get_missing_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 32
	subq	$160, %rsp
.Ltmp142:
	.cfi_def_cfa_offset 192
.Ltmp143:
	.cfi_offset %rbx, -32
.Ltmp144:
	.cfi_offset %r14, -24
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movl	%esi, %ebp
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	movl	$2048, %edx             # imm = 0x800
	callq	*184(%rdi)
	testl	%eax, %eax
	js	.LBB25_5
# BB#1:                                 # %if.end
	testl	%ebp, %ebp
	movl	60(%rsp), %eax
	je	.LBB25_3
# BB#2:                                 # %if.then.1
	negl	%eax
	cvtsi2sdl	%eax, %xmm1
	leaq	48(%rbx), %rsi
	xorps	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	gs_distance_transform
	movq	$0, 8(%rbx)
	movq	56(%rbx), %rax
	movq	%rax, 16(%rbx)
	movq	%rax, 40(%rbx)
	movq	%rax, (%rbx)
	movd	%rax, %xmm0
	movsd	.LCPI25_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rbx)
	xorpd	.LCPI25_1(%rip), %xmm0
	movlpd	%xmm0, 32(%rbx)
	jmp	.LBB25_4
.LBB25_3:                               # %if.else
	cvtsi2sdl	%eax, %xmm0
	leaq	48(%rbx), %rsi
	xorpd	%xmm1, %xmm1
	movq	%r14, %rdi
	callq	gs_distance_transform
	movq	48(%rbx), %rax
	movq	%rax, 8(%rbx)
	movq	%rax, 40(%rbx)
	movq	%rax, (%rbx)
	movq	$0, 32(%rbx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 16(%rbx)
.LBB25_4:                               # %cleanup
	movl	$1, %eax
.LBB25_5:                               # %cleanup
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	get_missing_width, .Lfunc_end25-get_missing_width
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI26_0:
	.long	973078528               # float 4.8828125E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI26_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_2:
	.quad	4562254508917369340     # double 0.001
	.text
	.align	16, 0x90
	.type	txtwrite_font_orig_matrix,@function
txtwrite_font_orig_matrix:              # @txtwrite_font_orig_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp149:
	.cfi_def_cfa_offset 48
.Ltmp150:
	.cfi_offset %rbx, -32
.Ltmp151:
	.cfi_offset %r14, -24
.Ltmp152:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	128(%rbx), %ecx
	movl	$-15, %eax
	cmpq	$54, %rcx
	ja	.LBB26_27
# BB#1:                                 # %entry
	movabsq	$31525197391593998, %rdx # imm = 0x7000000000020E
	btq	%rcx, %rdx
	jae	.LBB26_7
# BB#2:
	movq	%rbx, %rdx
	.align	16, 0x90
.LBB26_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rax
	movq	64(%rax), %rdx
	cmpq	%rax, %rdx
	jne	.LBB26_3
# BB#4:                                 # %while.end
	movl	%ecx, %edx
	cmpl	$54, %ecx
	ja	.LBB26_9
# BB#5:                                 # %while.end
	movabsq	$31525197391593480, %rcx # imm = 0x70000000000008
	btq	%rdx, %rcx
	jae	.LBB26_9
# BB#6:                                 # %if.then
	movq	96(%rax), %rcx
	movq	%rcx, 16(%r14)
	movupd	80(%rax), %xmm0
	movupd	%xmm0, (%r14)
	jmp	.LBB26_21
.LBB26_9:                               # %if.else
	movss	104(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB26_13
	jp	.LBB26_13
# BB#10:                                # %lor.lhs.false.14
	movss	108(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB26_13
	jp	.LBB26_13
# BB#11:                                # %lor.lhs.false.17
	movss	112(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB26_13
	jp	.LBB26_13
# BB#12:                                # %lor.lhs.false.20
	movss	116(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB26_13
	jnp	.LBB26_15
.LBB26_13:                              # %if.then.23
	addq	$104, %rax
.LBB26_14:                              # %if.end.55
	movq	16(%rax), %rcx
	movq	%rcx, 16(%r14)
	movupd	(%rax), %xmm0
	movupd	%xmm0, (%r14)
.LBB26_21:                              # %if.end.55
	xorl	%eax, %eax
	cmpq	$-1, %r15
	je	.LBB26_27
# BB#22:                                # %if.end.55
	cmpl	$9, 128(%rbx)
	jne	.LBB26_27
# BB#23:                                # %if.then.62
	movl	$2147483648, %eax       # imm = 0x80000000
	testq	$-2147483648, %r15      # imm = 0xFFFFFFFF80000000
	cmoveq	%rax, %r15
	leaq	12(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*528(%rbx)
	testl	%eax, %eax
	jns	.LBB26_25
# BB#24:                                # %if.end.74
	leaq	12(%rsp), %rcx
	movl	$2147483648, %esi       # imm = 0x80000000
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	*528(%rbx)
	testl	%eax, %eax
	js	.LBB26_26
.LBB26_25:                              # %if.then.77
	movl	12(%rsp), %esi
	movq	%rbx, %rdi
	callq	gs_cid0_indexed_font
	leaq	80(%rax), %rdi
	movq	%r14, %rsi
	movq	%r14, %rdx
	callq	gs_matrix_multiply
	jmp	.LBB26_26
.LBB26_7:                               # %entry
	movabsq	$4398046513153, %rdx    # imm = 0x40000000801
	btq	%rcx, %rdx
	jae	.LBB26_27
# BB#8:                                 # %sw.bb
	movq	%r14, %rdi
	callq	gs_make_identity
.LBB26_26:                              # %if.end.81
	xorl	%eax, %eax
.LBB26_27:                              # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB26_15:                              # %if.else.25
	movss	80(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI26_0(%rip), %xmm0
	jne	.LBB26_20
	jp	.LBB26_20
# BB#16:                                # %land.lhs.true
	movss	84(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB26_20
	jp	.LBB26_20
# BB#17:                                # %land.lhs.true.34
	movss	88(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB26_20
	jp	.LBB26_20
# BB#18:                                # %land.lhs.true.39
	movss	92(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI26_1(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	movaps	%xmm0, %xmm3
	cmpltss	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
	andnps	%xmm0, %xmm2
	andps	%xmm1, %xmm3
	orps	%xmm2, %xmm3
	ucomiss	.LCPI26_0(%rip), %xmm3
	jne	.LBB26_20
	jp	.LBB26_20
# BB#19:                                # %if.then.51
	addq	$80, %rax
	jmp	.LBB26_14
.LBB26_20:                              # %if.else.53
	movsd	.LCPI26_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movq	%r14, %rdi
	callq	gs_make_scaling
	jmp	.LBB26_21
.Lfunc_end26:
	.size	txtwrite_font_orig_matrix, .Lfunc_end26-txtwrite_font_orig_matrix
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"txtwrite"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_txtwrite_device,@object # @gs_txtwrite_device
	.section	.rodata,"a",@progbits
	.globl	gs_txtwrite_device
	.align	8
gs_txtwrite_device:
	.long	5864                    # 0x16e8
	.zero	4
	.quad	0
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
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
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
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	txtwrite_open_device
	.quad	0
	.quad	0
	.quad	txtwrite_output_page
	.quad	txtwrite_close_device
	.quad	0
	.quad	0
	.quad	txtwrite_fill_rectangle
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	txtwrite_get_params
	.quad	txtwrite_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	txtwrite_fill_path
	.quad	txtwrite_stroke_path
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	txtwrite_strip_copy_rop
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_null_create_compositor
	.quad	0
	.quad	txtwrite_text_begin
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
	.zero	24
	.zero	4096
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.size	gs_txtwrite_device, 5864

	.type	txtwrite_output_page.BOM,@object # @txtwrite_output_page.BOM
txtwrite_output_page.BOM:
	.ascii	"\376\377"
	.size	txtwrite_output_page.BOM, 2

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"txtwrite free text fragment text buffer"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"txtwrite free widths array"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"txtwrite free Font Name"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"txtwrite free text fragment"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"txtwrite free text list"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"txtwrite free unsorted text fragment text buffer"
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"txtwrite free unsorted text fragment"
	.size	.L.str.8, 37

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"<page>\n"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"<span bbox=\"%0.0f %0.0f %0.0f %0.0f\" font=\"%s\" size=\"%0.4f\">\n"
	.size	.L.str.10, 62

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"<char bbox=\"%0.0f %0.0f %0.0f %0.0f\" c=\"%s\">\n"
	.size	.L.str.11, 46

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"</span>\n"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"</page>\n"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"txtwrite alloc Y-list"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<block>\n"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"<line>\n"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"</line>\n"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"</block>\n"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"&lt;"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"&gt;"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"&amp;"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"&quot;"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"&apos;"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%c"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"&#x%x;"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"txtwrite alloc working text buffer"
	.size	.L.str.26, 35

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"txtwrite alloc Widths array"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"free working text fragment"
	.size	.L.str.28, 27

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"free consolidated text fragment"
	.size	.L.str.29, 32

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"free consolidated Widths array"
	.size	.L.str.30, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"free FontName"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"free consolidated fragment"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"txtwrite alloc text state"
	.size	.L.str.33, 26

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"OutputFile"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"WantsToUnicode"
	.size	.L.str.35, 15

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"PreserveTrMode"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"HighLevelDevice"
	.size	.L.str.37, 16

	.type	txt_param_items,@object # @txt_param_items
	.section	.rodata,"a",@progbits
	.align	16
txt_param_items:
	.quad	.L.str.38
	.byte	2                       # 0x2
	.zero	1
	.short	5856                    # 0x16e0
	.zero	4
	.zero	16
	.size	txt_param_items, 32

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"TextFormat"
	.size	.L.str.38, 11

	.type	st_textw_text_enum,@object # @st_textw_text_enum
	.section	.rodata,"a",@progbits
	.align	8
st_textw_text_enum:
	.long	576                     # 0x240
	.zero	4
	.quad	.L.str.42
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	textw_text_enum_reloc_ptrs
	.size	st_textw_text_enum, 64

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"gdev_textw_text_begin"
	.size	.L.str.39, 22

	.type	textw_text_procs,@object # @textw_text_procs
	.section	.rodata,"a",@progbits
	.align	8
textw_text_procs:
	.quad	textw_text_resync
	.quad	textw_text_process
	.quad	textw_text_is_width_only
	.quad	textw_text_current_width
	.quad	textw_text_set_cache
	.quad	textw_text_retry
	.quad	textw_text_release
	.size	textw_text_procs, 56

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"txtwrite free text state"
	.size	.L.str.40, 25

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"textwrite_text_begin"
	.size	.L.str.41, 21

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"textw_text_enum_t"
	.size	.L.str.42, 18

	.type	textw_text_enum_reloc_ptrs,@object # @textw_text_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
textw_text_enum_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_text_enum
	.quad	0
	.size	textw_text_enum_reloc_ptrs, 24

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"txtwrite temporary text buffer"
	.size	.L.str.43, 31

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"txtwrite temporary widths array"
	.size	.L.str.44, 32

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"txtwrite alloc font name"
	.size	.L.str.45, 25

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"uni"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"txtwrite alloc sorted text state"
	.size	.L.str.48, 33

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"txtwrite alloc text buffer"
	.size	.L.str.49, 27

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"txtwrite alloc widths array"
	.size	.L.str.50, 28

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"txtwrite alloc sorted text buffer"
	.size	.L.str.51, 34

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"txtwrite alloc Y list entry"
	.size	.L.str.52, 28

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"txtwrite free temporary text buffer"
	.size	.L.str.53, 36

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"txtwrite free temporary widths array"
	.size	.L.str.54, 37


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
