	.text
	.file	"triostr.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1098907648              # float 16
.LCPI0_1:
	.long	1031798784              # float 0.0625
.LCPI0_2:
	.long	1073741824              # float 2
.LCPI0_3:
	.long	1092616192              # float 10
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_4:
	.quad	1602224128              # 0x5f800000
	.text
	.globl	trio_to_long_double
	.align	16, 0x90
	.type	trio_to_long_double,@function
trio_to_long_double:                    # @trio_to_long_double
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
	subq	$104, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 160
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
	movq	%rsi, %r14
	movq	%rdi, %r13
	movzbl	(%r13), %ebx
	cmpl	$48, %ebx
	jne	.LBB0_36
# BB#1:                                 # %land.lhs.true
	movb	1(%r13), %al
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$120, %eax
	jne	.LBB0_2
# BB#3:                                 # %if.then
	movsbq	2(%r13), %rbx
	addq	$2, %r13
	callq	__ctype_b_loc
	movq	(%rax), %r12
	movzwl	(%r12,%rbx,2), %eax
	fldz
	testb	$16, %ah
	jne	.LBB0_5
# BB#4:
	fld	%st(0)
	jmp	.LBB0_13
.LBB0_36:                               # %if.else
	movzbl	%bl, %eax
	cmpl	$45, %eax
	sete	%cl
	movzbl	%cl, %r15d
	je	.LBB0_38
# BB#37:                                # %if.else
	cmpl	$43, %eax
	jne	.LBB0_39
.LBB0_38:                               # %if.then.111
	movb	1(%r13), %bl
	incq	%r13
	jmp	.LBB0_39
.LBB0_2:
	movb	$48, %bl
	xorl	%r15d, %r15d
.LBB0_39:                               # %while.cond.114.preheader
	movsbq	%bl, %rbp
	callq	__ctype_b_loc
	movq	(%rax), %rax
	fldz
	testb	$8, 1(%rax,%rbp,2)
	jne	.LBB0_41
# BB#40:
	fld	%st(0)
	jmp	.LBB0_43
.LBB0_41:
	fld	%st(0)
	.align	16, 0x90
.LBB0_42:                               # %while.body.122
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%bl, %ecx
	fmuls	.LCPI0_3(%rip)
	addl	$-48, %ecx
	movl	%ecx, 92(%rsp)
	fiaddl	92(%rsp)
	movsbq	1(%r13), %rbx
	incq	%r13
	testb	$8, 1(%rax,%rbx,2)
	jne	.LBB0_42
.LBB0_43:                               # %while.end.129
	movzbl	%bl, %ecx
	cmpl	$46, %ecx
	jne	.LBB0_44
# BB#45:                                # %while.cond.135.preheader
	fstp	%st(1)
	movsbq	1(%r13), %rbx
	incq	%r13
	fld1
	fldz
	testb	$8, 1(%rax,%rbx,2)
	jne	.LBB0_47
# BB#46:
	fstp	%st(1)
	fldz
	jmp	.LBB0_49
.LBB0_44:
	fldz
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(1)
	jmp	.LBB0_49
.LBB0_5:
	fld	%st(0)
	.align	16, 0x90
.LBB0_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%bl, %ecx
	fmuls	.LCPI0_0(%rip)
	testb	$8, %ah
	jne	.LBB0_7
# BB#8:                                 # %cond.false
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%ecx, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB0_9
# BB#10:                                # %cond.true.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	fstp	%st(1)
	movslq	%ecx, %rbx
	fstpt	68(%rsp)                # 10-byte Folded Spill
	callq	__ctype_toupper_loc
	fldt	68(%rsp)                # 10-byte Folded Reload
	fldz
	movq	(%rax), %rax
	movl	(%rax,%rbx,4), %ecx
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_7:                                # %cond.true
                                        #   in Loop: Header=BB0_6 Depth=1
	addl	$-48, %ecx
	fxch	%st(1)
	jmp	.LBB0_12
	.align	16, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	fxch	%st(1)
.LBB0_11:                               # %internal_to_upper.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	addl	$-55, %ecx
.LBB0_12:                               # %cond.end
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%ecx, 100(%rsp)
	fxch	%st(1)
	fiaddl	100(%rsp)
	movsbq	1(%r13), %rbx
	incq	%r13
	movzwl	(%r12,%rbx,2), %eax
	testb	$16, %ah
	jne	.LBB0_6
.LBB0_13:                               # %while.end
	fld	%st(0)
	fstpt	44(%rsp)                # 10-byte Folded Spill
	xorl	%r15d, %r15d
	movzbl	%bl, %eax
	cmpl	$46, %eax
	jne	.LBB0_14
# BB#15:                                # %while.cond.31.preheader
	fstp	%st(1)
	leaq	1(%r13), %rbx
	movsbq	1(%r13), %rax
	movzwl	(%r12,%rax,2), %ecx
	fld1
	fldz
	testb	$16, %ch
	jne	.LBB0_17
# BB#16:
	fstp	%st(1)
	fldz
	jmp	.LBB0_25
.LBB0_47:
	fxch	%st(1)
	.align	16, 0x90
.LBB0_48:                               # %while.body.143
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%bl, %ecx
	fdivs	.LCPI0_3(%rip)
	addl	$-48, %ecx
	movl	%ecx, 88(%rsp)
	fld	%st(0)
	fimull	88(%rsp)
	faddp	%st(2)
	movsbq	1(%r13), %rbx
	incq	%r13
	testb	$8, 1(%rax,%rbx,2)
	jne	.LBB0_48
.LBB0_49:                               # %if.end.152
	fstp	%st(0)
	addb	$-68, %bl
	movzbl	%bl, %ecx
	cmpl	$33, %ecx
	ja	.LBB0_27
# BB#50:                                # %if.end.152
	movabsq	$12884901891, %rdx      # imm = 0x300000003
	btq	%rcx, %rdx
	jae	.LBB0_27
# BB#51:                                # %if.then.168
	movzbl	1(%r13), %ecx
	cmpl	$45, %ecx
	sete	%dl
	je	.LBB0_54
# BB#52:                                # %if.then.168
	movzbl	%cl, %esi
	cmpl	$43, %esi
	jne	.LBB0_53
.LBB0_54:                               # %if.then.180
	movb	2(%r13), %cl
	addq	$2, %r13
	jmp	.LBB0_55
.LBB0_14:
	fxch	%st(1)
	jmp	.LBB0_27
.LBB0_17:
	fxch	%st(1)
	.align	16, 0x90
.LBB0_18:                               # %while.body.39
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%al, %eax
	fmuls	.LCPI0_1(%rip)
	testb	$8, %ch
	jne	.LBB0_19
# BB#20:                                # %cond.false.50
                                        #   in Loop: Header=BB0_18 Depth=1
	fxch	%st(1)
	fstpt	68(%rsp)                # 10-byte Folded Spill
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB0_21
# BB#22:                                # %cond.true.i.i.89
                                        #   in Loop: Header=BB0_18 Depth=1
	fstp	%st(1)
	movslq	%eax, %rbp
	fstpt	56(%rsp)                # 10-byte Folded Spill
	callq	__ctype_toupper_loc
	fldt	56(%rsp)                # 10-byte Folded Reload
	fldt	44(%rsp)                # 10-byte Folded Reload
	movq	(%rax), %rax
	movl	(%rax,%rbp,4), %eax
	fldt	68(%rsp)                # 10-byte Folded Reload
	jmp	.LBB0_23
	.align	16, 0x90
.LBB0_19:                               # %cond.true.47
                                        #   in Loop: Header=BB0_18 Depth=1
	addl	$-48, %eax
	fxch	%st(2)
	fxch	%st(1)
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	fldt	68(%rsp)                # 10-byte Folded Reload
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(1)
.LBB0_23:                               # %internal_to_upper.exit91
                                        #   in Loop: Header=BB0_18 Depth=1
	addl	$-55, %eax
.LBB0_24:                               # %cond.end.55
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	%eax, 96(%rsp)
	fld	%st(2)
	fimull	96(%rsp)
	faddp	%st(1)
	movsbq	1(%rbx), %rax
	movzwl	(%r12,%rax,2), %ecx
	movq	%rbx, %r13
	leaq	1(%rbx), %rbx
	testb	$16, %ch
	fxch	%st(1)
	fxch	%st(2)
	jne	.LBB0_18
.LBB0_25:                               # %while.end.61
	fstp	%st(0)
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$112, %eax
	jne	.LBB0_26
# BB#28:                                # %if.then.69
	movzbl	2(%r13), %eax
	cmpl	$45, %eax
	je	.LBB0_31
# BB#29:                                # %if.then.69
	movzbl	%al, %ecx
	cmpl	$43, %ecx
	jne	.LBB0_30
.LBB0_31:                               # %if.then.78
	movzbl	%al, %eax
	cmpl	$45, %eax
	sete	%al
	movzbl	%al, %ebx
	movb	3(%r13), %al
	addq	$3, %r13
	jmp	.LBB0_32
.LBB0_53:
	incq	%r13
.LBB0_55:                               # %while.cond.183.preheader
	movsbq	%cl, %rsi
	xorl	%ecx, %ecx
	testb	$8, 1(%rax,%rsi,2)
	je	.LBB0_27
# BB#56:
	movzbl	%dl, %ebx
	flds	.LCPI0_3(%rip)
	.align	16, 0x90
.LBB0_57:                               # %while.body.191
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%rcx,4), %rcx
	leaq	-48(%rsi,%rcx,2), %rcx
	movsbq	1(%r13), %rsi
	incq	%r13
	testb	$8, 1(%rax,%rsi,2)
	jne	.LBB0_57
# BB#58:
	movl	%r15d, %ebp
	jmp	.LBB0_59
.LBB0_26:
	movq	%rbx, %r13
	jmp	.LBB0_27
.LBB0_30:
	addq	$2, %r13
	xorl	%ebx, %ebx
.LBB0_32:                               # %while.cond.83.preheader
	movsbq	%al, %rax
	xorl	%r15d, %r15d
	testb	$8, 1(%r12,%rax,2)
	jne	.LBB0_33
.LBB0_27:                               # %if.end.202.thread180
	faddp	%st(1)
	movl	%r15d, %ebp
.LBB0_64:                               # %if.end.217
	testl	%ebp, %ebp
	fld	%st(0)
	fchs
	fcmove	%st(1), %st(0)
	fstp	%st(1)
	testq	%r14, %r14
	je	.LBB0_66
# BB#65:                                # %if.then.223
	movq	%r13, (%r14)
.LBB0_66:                               # %if.end.224
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_33:
	flds	.LCPI0_2(%rip)
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_34:                               # %while.body.91
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%r15,4), %rcx
	leaq	-48(%rax,%rcx,2), %r15
	movsbq	1(%r13), %rax
	incq	%r13
	testb	$8, 1(%r12,%rax,2)
	jne	.LBB0_34
# BB#35:
	movq	%r15, %rcx
.LBB0_59:                               # %if.end.202
	fxch	%st(2)
	faddp	%st(1)
	testq	%rcx, %rcx
	je	.LBB0_60
# BB#61:                                # %if.then.206
	fstpt	68(%rsp)                # 10-byte Folded Spill
	movq	%rcx, 80(%rsp)
	setns	%al
	movzbl	%al, %eax
	fildll	80(%rsp)
	fadds	.LCPI0_4(,%rax,4)
	fxch	%st(1)
	fstpt	(%rsp)
	fstpt	16(%rsp)
	callq	powl
	testl	%ebx, %ebx
	je	.LBB0_63
# BB#62:                                # %if.then.208
	fldt	68(%rsp)                # 10-byte Folded Reload
	fdivp	%st(1)
	jmp	.LBB0_64
.LBB0_60:
	fstp	%st(1)
	jmp	.LBB0_64
.LBB0_63:                               # %if.else.212
	fldt	68(%rsp)                # 10-byte Folded Reload
	fmulp	%st(1)
	jmp	.LBB0_64
.Lfunc_end0:
	.size	trio_to_long_double, .Lfunc_end0-trio_to_long_double
	.cfi_endproc

	.globl	trio_to_float
	.align	16, 0x90
	.type	trio_to_float,@function
trio_to_float:                          # @trio_to_float
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	strtof                  # TAILCALL
.Lfunc_end1:
	.size	trio_to_float, .Lfunc_end1-trio_to_float
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
