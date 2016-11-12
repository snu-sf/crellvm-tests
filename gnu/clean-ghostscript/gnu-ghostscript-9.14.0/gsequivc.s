	.text
	.file	"gsequivc.bc"
	.globl	update_spot_equivalent_cmyk_colors
	.align	16, 0x90
	.type	update_spot_equivalent_cmyk_colors,@function
update_spot_equivalent_cmyk_colors:     # @update_spot_equivalent_cmyk_colors
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
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp6:
	.cfi_def_cfa_offset 528
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
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	leaq	56(%rsp), %rsi
	callq	*1680(%rdi)
	cmpl	$0, (%r12)
	jne	.LBB0_73
# BB#1:                                 # %if.end
	movl	32(%r13), %eax
	testl	%eax, %eax
	je	.LBB0_2
# BB#3:                                 # %if.end.3
	movq	1744(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB0_73
# BB#4:                                 # %if.then.5
	movq	(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	$4, %ecx
	je	.LBB0_20
# BB#5:                                 # %if.then.5
	cmpl	$12, %ecx
	jne	.LBB0_6
# BB#49:                                # %land.lhs.true
	movq	56(%rsp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB0_73
# BB#50:                                # %if.then.25
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	leaq	64(%rsp), %rsi
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	*1680(%rdi)
	movl	32(%r13), %ecx
	testl	%ecx, %ecx
	jle	.LBB0_69
# BB#51:                                # %for.body.i.78.preheader
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%r13, 24(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB0_52:                               # %for.body.i.78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_56 Depth 2
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_62 Depth 2
	leaq	(%r14,%r14,2), %rax
	cmpl	$0, 4(%r12,%rax,4)
	jne	.LBB0_68
# BB#53:                                # %if.then.i.79
                                        #   in Loop: Header=BB0_52 Depth=1
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movq	64(%rsp), %rax
	movq	(%rax), %rcx
	movq	176(%rax), %rax
	movq	8(%rax), %r15
	movzbl	(%rcx), %ecx
	testq	%rcx, %rcx
	je	.LBB0_60
# BB#54:                                # %for.body.9.lr.ph.i
                                        #   in Loop: Header=BB0_52 Depth=1
	movl	%ecx, %esi
	andl	$7, %esi
	cmpl	%esi, %ecx
	movl	$0, %edx
	je	.LBB0_57
# BB#55:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_52 Depth=1
	movq	%rcx, %rdx
	subq	%rsi, %rdx
	movl	%ecx, %edi
	andl	$7, %edi
	movq	%rcx, %rsi
	subq	%rdi, %rsi
	leaq	232(%rsp), %rdi
	.align	16, 0x90
.LBB0_56:                               # %vector.body
                                        #   Parent Loop BB0_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, -16(%rdi)
	movups	%xmm0, (%rdi)
	addq	$32, %rdi
	addq	$-8, %rsi
	jne	.LBB0_56
.LBB0_57:                               # %middle.block
                                        #   in Loop: Header=BB0_52 Depth=1
	subq	%rdx, %rcx
	je	.LBB0_60
# BB#58:                                # %for.body.9.i.preheader
                                        #   in Loop: Header=BB0_52 Depth=1
	leaq	216(%rsp), %rsi
	leaq	(%rsi,%rdx,4), %rdx
	.align	16, 0x90
.LBB0_59:                               # %for.body.9.i
                                        #   Parent Loop BB0_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$0, (%rdx)
	addq	$4, %rdx
	decq	%rcx
	jne	.LBB0_59
.LBB0_60:                               # %for.cond.12.preheader.i
                                        #   in Loop: Header=BB0_52 Depth=1
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jle	.LBB0_67
# BB#61:                                # %for.body.16.lr.ph.i
                                        #   in Loop: Header=BB0_52 Depth=1
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movq	%r14, %rax
	shlq	$4, %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	48(%rcx,%rax), %r12
	movslq	40(%rcx,%rax), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_62:                               # %for.body.16.i
                                        #   Parent Loop BB0_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	8(%r15), %ebp
	jne	.LBB0_65
# BB#63:                                # %land.lhs.true.i.85
                                        #   in Loop: Header=BB0_62 Depth=2
	movq	(%r12), %rdi
	movq	(%r15), %rsi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB0_64
.LBB0_65:                               # %if.end.i
                                        #   in Loop: Header=BB0_62 Depth=2
	movq	16(%r15), %r15
	incl	%ebx
	cmpl	%r13d, %ebx
	xorps	%xmm0, %xmm0
	jl	.LBB0_62
# BB#66:                                #   in Loop: Header=BB0_52 Depth=1
	movq	40(%rsp), %r12          # 8-byte Reload
.LBB0_67:                               # %for.inc.33.i
                                        #   in Loop: Header=BB0_52 Depth=1
	movl	32(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB0_68
.LBB0_64:                               # %if.then.24.i
                                        #   in Loop: Header=BB0_52 Depth=1
	movslq	%ebx, %rax
	movl	$1065353216, 216(%rsp,%rax,4) # imm = 0x3F800000
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	208(%rsp), %rdx
	movq	8(%rsp), %rcx           # 8-byte Reload
	movl	%r14d, %r8d
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	%r12, %r9
	callq	capture_spot_equivalent_cmyk_colors
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	32(%rax), %ecx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB0_68:                               # %for.inc.33.i
                                        #   in Loop: Header=BB0_52 Depth=1
	incq	%r14
	movslq	%ecx, %rax
	cmpq	%rax, %r14
	jl	.LBB0_52
.LBB0_69:                               # %update_ICC_spot_equivalent_cmyk_colors.exit
	movslq	%ecx, %rcx
	leaq	1(%rcx), %rax
	leal	-1(%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	4(%r12,%rcx,4), %rcx
	.align	16, 0x90
.LBB0_70:                               # %for.cond.i.92
                                        # =>This Inner Loop Header: Depth=1
	decq	%rax
	movl	$1, %edx
	testq	%rax, %rax
	jle	.LBB0_72
# BB#71:                                # %for.body.i.97
                                        #   in Loop: Header=BB0_70 Depth=1
	xorl	%edx, %edx
	cmpl	$0, (%rcx)
	leaq	-12(%rcx), %rcx
	jne	.LBB0_70
	jmp	.LBB0_72
.LBB0_2:                                # %if.then.1
	movl	$1, (%r12)
	jmp	.LBB0_73
.LBB0_20:                               # %if.then.15
	movq	%r14, 16(%rsp)          # 8-byte Spill
	cmpl	$0, 80(%rbp)
	je	.LBB0_32
# BB#21:                                # %for.body.lr.ph.i.44
	xorl	%ebx, %ebx
	leaq	192(%rsp), %r14
	leaq	204(%rsp), %r15
	.align	16, 0x90
.LBB0_22:                               # %for.body.i.49
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	%ebx, %eax
	movq	72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	*112(%rbp)
	cmpl	$4, 204(%rsp)
	jne	.LBB0_42
# BB#23:                                # %land.lhs.true.i.51
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	192(%rsp), %rsi
	cmpq	$3, %rcx
	ja	.LBB0_40
# BB#24:                                # %cond.true.11.i
                                        #   in Loop: Header=BB0_22 Depth=1
	movzbl	(%rsi), %edx
	movl	$78, %eax
	subl	%edx, %eax
	testq	%rcx, %rcx
	je	.LBB0_41
# BB#25:                                # %cond.true.11.i
                                        #   in Loop: Header=BB0_22 Depth=1
	testl	%eax, %eax
	jne	.LBB0_41
# BB#26:                                # %if.then.i.52
                                        #   in Loop: Header=BB0_22 Depth=1
	movzbl	1(%rsi), %edx
	movl	$111, %eax
	subl	%edx, %eax
	cmpq	$2, %rcx
	jb	.LBB0_41
# BB#27:                                # %if.then.i.52
                                        #   in Loop: Header=BB0_22 Depth=1
	testl	%eax, %eax
	jne	.LBB0_41
# BB#28:                                # %if.then.30.i
                                        #   in Loop: Header=BB0_22 Depth=1
	movzbl	2(%rsi), %edx
	movl	$110, %eax
	subl	%edx, %eax
	cmpq	$3, %rcx
	jb	.LBB0_41
# BB#29:                                # %if.then.30.i
                                        #   in Loop: Header=BB0_22 Depth=1
	testl	%eax, %eax
	jne	.LBB0_41
# BB#30:                                # %if.then.40.i
                                        #   in Loop: Header=BB0_22 Depth=1
	movzbl	3(%rsi), %ecx
	movl	$101, %eax
	subl	%ecx, %eax
	jmp	.LBB0_41
.LBB0_40:                               # %cond.false.49.i
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$.L.str, %edi
	movl	$4, %edx
	callq	strncmp
.LBB0_41:                               # %cond.end.51.i
                                        #   in Loop: Header=BB0_22 Depth=1
	testl	%eax, %eax
	je	.LBB0_45
.LBB0_42:                               # %for.inc.i.54
                                        #   in Loop: Header=BB0_22 Depth=1
	incl	%ebx
	cmpl	80(%rbp), %ebx
	jb	.LBB0_22
# BB#31:                                # %for.cond.57.preheader.i.loopexit
	movl	32(%r13), %eax
.LBB0_32:                               # %for.cond.57.preheader.i
	testl	%eax, %eax
	jle	.LBB0_46
# BB#33:                                # %for.body.60.lr.ph.i
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB0_34:                               # %for.body.60.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movq	%r13, %rbx
	leaq	(%r14,%r14,2), %rax
	cmpl	$0, 4(%r12,%rax,4)
	jne	.LBB0_44
# BB#35:                                # %for.cond.71.preheader.i
                                        #   in Loop: Header=BB0_34 Depth=1
	cmpl	$0, 80(%rbp)
	je	.LBB0_44
# BB#36:                                # %for.body.77.lr.ph.i
                                        #   in Loop: Header=BB0_34 Depth=1
	movq	%r14, %rax
	shlq	$4, %rax
	leaq	40(%rbx,%rax), %r13
	leaq	48(%rbx,%rax), %r15
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_37:                               # %for.body.77.i
                                        #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	%r12d, %r12d
	movq	72(%rbp), %rax
	movq	(%rax,%r12,8), %rsi
	leaq	192(%rsp), %rdx
	leaq	204(%rsp), %rcx
	callq	*112(%rbp)
	movslq	(%r13), %rdx
	cmpl	204(%rsp), %edx
	jne	.LBB0_43
# BB#38:                                # %land.lhs.true.90.i
                                        #   in Loop: Header=BB0_37 Depth=2
	movq	(%r15), %rdi
	movq	192(%rsp), %rsi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB0_39
.LBB0_43:                               # %for.inc.105.i
                                        #   in Loop: Header=BB0_37 Depth=2
	incl	%r12d
	cmpl	80(%rbp), %r12d
	jb	.LBB0_37
	jmp	.LBB0_44
.LBB0_39:                               # %if.then.96.i
                                        #   in Loop: Header=BB0_34 Depth=1
	movq	112(%rbp), %rax
	movq	%rax, 176(%rsp)
	movups	96(%rbp), %xmm0
	movaps	%xmm0, 160(%rsp)
	movups	80(%rbp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	64(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movups	48(%rbp), %xmm3
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	xorl	%esi, %esi
	movl	$264, %edx              # imm = 0x108
	leaq	208(%rsp), %r15
	movq	%r15, %rdi
	callq	memset
	movl	$1, 168(%rsp)
	movl	$1065353216, 216(%rsp,%r12,4) # imm = 0x3F800000
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rdx
	leaq	64(%rsp), %rcx
	movl	%r14d, %r8d
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	capture_spot_equivalent_cmyk_colors
	.align	16, 0x90
.LBB0_44:                               # %for.inc.109.i
                                        #   in Loop: Header=BB0_34 Depth=1
	incq	%r14
	movq	%rbx, %r13
	movslq	32(%r13), %rax
	cmpq	%rax, %r14
	movq	40(%rsp), %r12          # 8-byte Reload
	jl	.LBB0_34
	jmp	.LBB0_46
.LBB0_6:                                # %if.then.5
	cmpl	$9, %ecx
	jne	.LBB0_73
# BB#7:                                 # %if.then.7
	testl	%eax, %eax
	jle	.LBB0_8
# BB#9:                                 # %for.body.lr.ph.i
	movq	%r14, 16(%rsp)          # 8-byte Spill
	leaq	48(%r13), %r14
	leaq	4(%r12), %r15
	movq	%r12, %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_10:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r15)
	jne	.LBB0_15
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movq	72(%rbp), %rsi
	leaq	192(%rsp), %rdx
	leaq	204(%rsp), %rcx
	callq	*96(%rbp)
	movslq	-8(%r14), %rdx
	cmpl	204(%rsp), %edx
	jne	.LBB0_14
# BB#12:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	(%r14), %rdi
	movq	192(%rsp), %rsi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB0_13
.LBB0_14:                               # %cleanup.i
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	32(%r13), %eax
.LBB0_15:                               # %for.inc.i
                                        #   in Loop: Header=BB0_10 Depth=1
	incq	%r12
	movslq	%eax, %rcx
	addq	$16, %r14
	addq	$12, %r15
	cmpq	%rcx, %r12
	jl	.LBB0_10
	jmp	.LBB0_16
.LBB0_45:                               # %update_DeviceN_spot_equivalent_cmyk_colors.exit.loopexit100
	movl	32(%r13), %eax
.LBB0_46:                               # %update_DeviceN_spot_equivalent_cmyk_colors.exit
	movslq	%eax, %rcx
	leaq	1(%rcx), %rax
	leal	-1(%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	4(%r12,%rcx,4), %rcx
	.align	16, 0x90
.LBB0_47:                               # %for.cond.i.65
                                        # =>This Inner Loop Header: Depth=1
	decq	%rax
	movl	$1, %edx
	testq	%rax, %rax
	jle	.LBB0_72
# BB#48:                                # %for.body.i.70
                                        #   in Loop: Header=BB0_47 Depth=1
	xorl	%edx, %edx
	cmpl	$0, (%rcx)
	leaq	-12(%rcx), %rcx
	jne	.LBB0_47
.LBB0_72:                               # %check_all_colors_known.exit99
	movl	%edx, (%r12)
	jmp	.LBB0_73
.LBB0_8:
	movq	%r12, %rbx
	jmp	.LBB0_16
.LBB0_13:                               # %if.then.12.i
	movq	112(%rbp), %rax
	movq	%rax, 176(%rsp)
	movups	96(%rbp), %xmm0
	movaps	%xmm0, 160(%rsp)
	movups	80(%rbp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	64(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movups	48(%rbp), %xmm3
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movl	$1, 156(%rsp)
	movl	$1065353216, 216(%rsp)  # imm = 0x3F800000
	leaq	208(%rsp), %rdx
	leaq	64(%rsp), %rcx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	%r12d, %r8d
	movq	%rbx, %r9
	callq	capture_spot_equivalent_cmyk_colors
	movl	32(%r13), %eax
.LBB0_16:                               # %update_Separation_spot_equivalent_cmyk_colors.exit
	movslq	%eax, %rcx
	leaq	1(%rcx), %rax
	leal	-1(%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rbx, %r13
	leaq	4(%r13,%rcx,4), %rcx
	.align	16, 0x90
.LBB0_17:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	decq	%rax
	movl	$1, %edx
	testq	%rax, %rax
	jle	.LBB0_19
# BB#18:                                # %for.body.i.37
                                        #   in Loop: Header=BB0_17 Depth=1
	xorl	%edx, %edx
	cmpl	$0, (%rcx)
	leaq	-12(%rcx), %rcx
	jne	.LBB0_17
.LBB0_19:                               # %check_all_colors_known.exit
	movl	%edx, (%r13)
.LBB0_73:                               # %cleanup
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	update_spot_equivalent_cmyk_colors, .Lfunc_end0-update_spot_equivalent_cmyk_colors
	.cfi_endproc

	.globl	capture_spot_equivalent_cmyk_colors
	.align	16, 0x90
	.type	capture_spot_equivalent_cmyk_colors,@function
capture_spot_equivalent_cmyk_colors:    # @capture_spot_equivalent_cmyk_colors
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
	subq	$21032, %rsp            # imm = 0x5228
.Ltmp19:
	.cfi_def_cfa_offset 21088
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
	movq	%r9, %r12
	movl	%r8d, %r13d
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	leaq	19416(%rsp), %rdi
	movl	$1616, %edx             # imm = 0x650
	callq	memcpy
	leaq	928(%rsp), %rdi
	xorl	%esi, %esi
	movl	$18480, %edx            # imm = 0x4830
	callq	memset
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	leaq	240(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*1680(%rbp)
	movl	1112(%rbp), %edi
	movq	240(%rsp), %rsi
	leaq	232(%rsp), %rdx
	leaq	248(%rsp), %rcx
	callq	gsicc_extract_profile
	leaq	1024(%rsp), %rdi
	leaq	96(%rbp), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movl	%r13d, 19400(%rsp)
	movq	%r12, 19408(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 952(%rsp)
	movl	$1, 184(%rsp)
	movq	$0, 164(%rsp)
	movq	264(%rsp), %rax
	movq	%rax, 72(%rsp)
	movups	248(%rsp), %xmm0
	movups	%xmm0, 56(%rsp)
	movq	264(%rsp), %rax
	movq	%rax, 96(%rsp)
	movups	248(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	movq	264(%rsp), %rax
	movq	%rax, 120(%rsp)
	movups	248(%rsp), %xmm0
	movups	%xmm0, 104(%rsp)
	movq	264(%rsp), %rax
	movq	%rax, 144(%rsp)
	movups	248(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 2032(%rsp)
	movq	232(%rsp), %rax
	cmpl	$4, 16(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	19752(%rsp), %rax
	movq	24(%rax), %rax
.LBB1_2:                                # %if.else
	movq	%rax, (%rsp)
	movq	$gx_default_get_profile, 2608(%rsp)
	movq	$cmap_capture_cmyk_color, 20432(%rsp)
	movl	$1, 20440(%rsp)
	movq	(%r15), %rax
	leaq	272(%rsp), %rdx
	leaq	19416(%rsp), %rcx
	leaq	928(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*72(%rax)
	addq	$21032, %rsp            # imm = 0x5228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	capture_spot_equivalent_cmyk_colors, .Lfunc_end1-capture_spot_equivalent_cmyk_colors
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_gray_capture_cmyk_color,@function
cmap_gray_capture_cmyk_color:           # @cmap_gray_capture_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	18480(%rcx), %rax
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%edi, %edx
	movslq	18472(%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movw	$0, 8(%rax,%rcx,4)
	movw	$0, 10(%rax,%rcx,4)
	movw	$0, 12(%rax,%rcx,4)
	movw	%dx, 14(%rax,%rcx,4)
	movl	$1, 4(%rax,%rcx,4)
	retq
.Lfunc_end2:
	.size	cmap_gray_capture_cmyk_color, .Lfunc_end2-cmap_gray_capture_cmyk_color
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_rgb_capture_cmyk_color,@function
cmap_rgb_capture_cmyk_color:            # @cmap_rgb_capture_cmyk_color
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
	movq	18480(%r9), %rbx
	movslq	18472(%r9), %r14
	movq	24(%r9), %r9
	leaq	(%rsp), %rax
	movq	%r8, %rcx
	movq	%rax, %r8
	callq	color_rgb_to_cmyk
	movw	(%rsp), %ax
	leaq	(%r14,%r14,2), %rcx
	movw	%ax, 8(%rbx,%rcx,4)
	movw	2(%rsp), %ax
	movw	%ax, 10(%rbx,%rcx,4)
	movw	4(%rsp), %ax
	movw	%ax, 12(%rbx,%rcx,4)
	movw	6(%rsp), %ax
	movw	%ax, 14(%rbx,%rcx,4)
	movl	$1, 4(%rbx,%rcx,4)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	cmap_rgb_capture_cmyk_color, .Lfunc_end3-cmap_rgb_capture_cmyk_color
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_cmyk_capture_cmyk_color,@function
cmap_cmyk_capture_cmyk_color:           # @cmap_cmyk_capture_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsp), %r8
	movq	18480(%r8), %r9
	movslq	18472(%r8), %rax
	leaq	(%rax,%rax,2), %rax
	movw	%di, 8(%r9,%rax,4)
	movw	%si, 10(%r9,%rax,4)
	movw	%dx, 12(%r9,%rax,4)
	movw	%cx, 14(%r9,%rax,4)
	movl	$1, 4(%r9,%rax,4)
	retq
.Lfunc_end4:
	.size	cmap_cmyk_capture_cmyk_color, .Lfunc_end4-cmap_cmyk_capture_cmyk_color
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_rgb_alpha_capture_cmyk_color,@function
cmap_rgb_alpha_capture_cmyk_color:      # @cmap_rgb_alpha_capture_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -24
.Ltmp35:
	.cfi_offset %r14, -16
	movq	32(%rsp), %rax
	movq	18480(%rax), %rbx
	movslq	18472(%rax), %r14
	movq	24(%rax), %rax
	leaq	(%rsp), %r8
	movq	%r9, %rcx
	movq	%rax, %r9
	callq	color_rgb_to_cmyk
	movw	(%rsp), %ax
	leaq	(%r14,%r14,2), %rcx
	movw	%ax, 8(%rbx,%rcx,4)
	movw	2(%rsp), %ax
	movw	%ax, 10(%rbx,%rcx,4)
	movw	4(%rsp), %ax
	movw	%ax, 12(%rbx,%rcx,4)
	movw	6(%rsp), %ax
	movw	%ax, 14(%rbx,%rcx,4)
	movl	$1, 4(%rbx,%rcx,4)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	cmap_rgb_alpha_capture_cmyk_color, .Lfunc_end5-cmap_rgb_alpha_capture_cmyk_color
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_separation_capture_cmyk_color,@function
cmap_separation_capture_cmyk_color:     # @cmap_separation_capture_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdx), %rdi
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	jmp	errprintf               # TAILCALL
.Lfunc_end6:
	.size	cmap_separation_capture_cmyk_color, .Lfunc_end6-cmap_separation_capture_cmyk_color
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_devicen_capture_cmyk_color,@function
cmap_devicen_capture_cmyk_color:        # @cmap_devicen_capture_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdx), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	jmp	errprintf               # TAILCALL
.Lfunc_end7:
	.size	cmap_devicen_capture_cmyk_color, .Lfunc_end7-cmap_devicen_capture_cmyk_color
	.cfi_endproc

	.type	cmap_capture_cmyk_color,@object # @cmap_capture_cmyk_color
	.section	.rodata,"a",@progbits
	.align	8
cmap_capture_cmyk_color:
	.quad	cmap_gray_capture_cmyk_color
	.quad	cmap_rgb_capture_cmyk_color
	.quad	cmap_cmyk_capture_cmyk_color
	.quad	cmap_rgb_alpha_capture_cmyk_color
	.quad	cmap_separation_capture_cmyk_color
	.quad	cmap_devicen_capture_cmyk_color
	.quad	0
	.size	cmap_capture_cmyk_color, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"None"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"cmap_separation_capture_cmyk_color - this routine should not be executed\n"
	.size	.L.str.1, 74

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cmap_devicen_capture_cmyk_color - this routine should not be executed\n"
	.size	.L.str.2, 71


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
