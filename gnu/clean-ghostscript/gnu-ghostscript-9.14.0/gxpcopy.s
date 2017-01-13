	.text
	.file	"gxpcopy.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
.LCPI0_1:
	.quad	4643211215818981376     # double 2.560000e+02
	.quad	4643211215818981376     # double 2.560000e+02
	.text
	.globl	gx_path_copy_reducing
	.align	16, 0x90
	.type	gx_path_copy_reducing,@function
gx_path_copy_reducing:                  # @gx_path_copy_reducing
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
	subq	$136, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 192
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
	movl	%r8d, %r12d
	movq	%rcx, %rbx
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%r15, %rdi
	callq	gx_path_unshare
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB0_69
# BB#1:                                 # %if.end
	movl	%r12d, %eax
	andl	$4, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	pxor	%xmm0, %xmm0
	je	.LBB0_3
# BB#2:                                 # %if.then.1
	movss	24(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	cvtps2pd	132(%rbx), %xmm0
	movapd	.LCPI0_0(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	cvtps2pd	140(%rbx), %xmm3
	andpd	%xmm2, %xmm3
	addpd	%xmm0, %xmm3
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm3, %xmm1
	mulpd	.LCPI0_1(%rip), %xmm1
	cvttsd2si	%xmm1, %rax
	movd	%rax, %xmm0
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	cvttsd2si	%xmm1, %rax
	movd	%rax, %xmm1
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	paddq	%xmm0, %xmm0
.LBB0_3:                                # %do.end
	movq	56(%r14), %rax
	movq	24(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB0_63
# BB#4:                                 # %while.body.lr.ph
	movl	%r12d, %eax
	andl	$1, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	andl	$2, %r12d
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movd	%xmm0, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, 64(%rsp)          # 4-byte Spill
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_7:                                # %while.body
                                        #   in Loop: Header=BB0_6 Depth=1
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_8:                                # %sw.bb
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	20(%rbp), %esi
	movl	24(%rbp), %edx
	movq	%r15, %rdi
	callq	gx_path_add_point
	jmp	.LBB0_60
.LBB0_45:                               # %sw.bb.322
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	break_line_if_long
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB0_62
# BB#46:                                # %if.end.327
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	20(%rbp), %esi
	movl	24(%rbp), %edx
	movzwl	18(%rbp), %ecx
	movq	%r15, %rdi
	callq	gx_path_add_line_notes
	jmp	.LBB0_60
.LBB0_58:                               # %sw.bb.366
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	break_line_if_long
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB0_62
# BB#59:                                # %if.end.371
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gx_path_close_subpath_notes
	jmp	.LBB0_60
.LBB0_9:                                # %sw.bb.33
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$2147483647, 76(%rsp)   # 4-byte Folded Reload
                                        # imm = 0x7FFFFFFF
	jne	.LBB0_13
# BB#10:                                # %if.then.36
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	jne	.LBB0_11
# BB#12:                                # %if.else.41
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	28(%rbp), %esi
	movl	32(%rbp), %edx
	movl	36(%rbp), %ecx
	movl	40(%rbp), %r8d
	movl	20(%rbp), %r9d
	movl	24(%rbp), %eax
	movzwl	18(%rbp), %edi
	movl	%edi, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	callq	gx_path_add_curve_notes
	jmp	.LBB0_60
.LBB0_57:                               # %sw.bb.354
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	20(%rbp), %esi
	movl	24(%rbp), %edx
	movl	28(%rbp), %ecx
	movl	32(%rbp), %r8d
	movzwl	18(%rbp), %r9d
	movq	%r15, %rdi
	callq	gx_path_add_dash_notes
	jmp	.LBB0_60
.LBB0_47:                               # %sw.bb.338
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	112(%r15), %ebx
	movl	116(%r15), %r13d
	movl	20(%rbp), %edi
	movl	%ebx, %esi
	callq	gx_check_fixed_diff_overflow
	testl	%eax, %eax
	jne	.LBB0_49
# BB#48:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	24(%rbp), %edi
	movl	%r13d, %esi
	callq	gx_check_fixed_diff_overflow
	testl	%eax, %eax
	je	.LBB0_56
.LBB0_49:                               # %if.then.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	20(%rbp), %edi
	movl	%ebx, %esi
	callq	gx_check_fixed_sum_overflow
	testl	%eax, %eax
	movl	20(%rbp), %eax
	je	.LBB0_51
# BB#50:                                # %if.then.13.i
                                        #   in Loop: Header=BB0_6 Depth=1
	sarl	%eax
	sarl	%ebx
	addl	%eax, %ebx
	jmp	.LBB0_52
.LBB0_13:                               # %if.else.55
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	112(%r15), %r13d
	movl	116(%r15), %esi
	movzwl	18(%rbp), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	je	.LBB0_23
# BB#14:                                # %if.then.64
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	28(%rbp), %edx
	cmpl	%edx, %r13d
	movl	%edx, %ebx
	cmovlel	%r13d, %ebx
	cmovgel	%r13d, %edx
	movl	%r13d, 24(%rsp)         # 4-byte Spill
	movl	36(%rbp), %eax
	movl	20(%rbp), %edi
	movl	24(%rbp), %r8d
	cmpl	%edi, %eax
	movl	%edi, %r9d
	cmovlel	%eax, %r9d
	cmovll	%edi, %eax
	cmpl	%eax, %edx
	cmovgel	%edx, %eax
	cmpl	%r9d, %ebx
	cmovlel	%ebx, %r9d
	movl	32(%rbp), %ebx
	cmpl	%ebx, %esi
	movl	%ebx, %ecx
	cmovlel	%esi, %ecx
	cmovgel	%esi, %ebx
	movl	%esi, 32(%rsp)          # 4-byte Spill
	movl	40(%rbp), %edx
	cmpl	%r8d, %edx
	movl	%r8d, %edi
	cmovlel	%edx, %edi
	cmovll	%r8d, %edx
	cmpl	%edx, %ebx
	cmovgel	%ebx, %edx
	cmpl	%edi, %ecx
	cmovlel	%ecx, %edi
	movl	%edx, %ebx
	subl	%edi, %ebx
	movl	%eax, %esi
	subl	%r9d, %esi
	je	.LBB0_16
# BB#15:                                # %if.then.64
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	%edi, %edx
	je	.LBB0_16
# BB#22:                                # %if.else.171
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	(%rsi,%rax), %edx
	movl	76(%rsp), %r13d         # 4-byte Reload
	movl	%r13d, %edi
	callq	fixed_mult_quo
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%rbx,%rax), %edx
	movl	%r13d, %edi
	movl	%ebx, %esi
	callq	fixed_mult_quo
	movl	64(%rsp), %ecx          # 4-byte Reload
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	jmp	.LBB0_18
.LBB0_51:                               # %if.else.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addl	%ebx, %eax
	sarl	%eax
	movl	%eax, %ebx
.LBB0_52:                               # %if.end.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	24(%rbp), %edi
	movl	%r13d, %esi
	callq	gx_check_fixed_sum_overflow
	testl	%eax, %eax
	movl	24(%rbp), %eax
	je	.LBB0_54
# BB#53:                                # %if.then.25.i
                                        #   in Loop: Header=BB0_6 Depth=1
	sarl	%eax
	sarl	%r13d
	addl	%eax, %r13d
	jmp	.LBB0_55
.LBB0_54:                               # %if.else.31.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addl	%r13d, %eax
	sarl	%eax
	movl	%eax, %r13d
.LBB0_55:                               # %break_gap_if_long.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	movzwl	18(%rbp), %ecx
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	callq	gx_path_add_gap_notes
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB0_62
.LBB0_56:                               # %if.end.343
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	20(%rbp), %esi
	movl	24(%rbp), %edx
	movzwl	18(%rbp), %ecx
	movq	%r15, %rdi
	callq	gx_path_add_gap_notes
	jmp	.LBB0_60
.LBB0_11:                               # %if.then.39
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	gx_curve_monotonize
	jmp	.LBB0_60
.LBB0_23:                               # %if.else.186
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%r13d, %edi
	movl	%esi, 32(%rsp)          # 4-byte Spill
	movq	%rbp, %rdx
	movl	64(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB0_24
.LBB0_16:                               # %if.then.152
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	%r9d, %eax
	jne	.LBB0_17
# BB#20:                                # %if.else.160
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	cmpl	%edi, %edx
	movl	24(%rsp), %r13d         # 4-byte Reload
	je	.LBB0_25
# BB#21:                                # %if.then.163
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%rbx,%rax), %edx
	movl	76(%rsp), %edi          # 4-byte Reload
	movl	%ebx, %esi
	callq	fixed_mult_quo
	movl	%eax, 64(%rsp)          # 4-byte Spill
	jmp	.LBB0_19
.LBB0_17:                               # %if.then.155
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	(%rsi,%rax), %edx
	movl	76(%rsp), %edi          # 4-byte Reload
	callq	fixed_mult_quo
.LBB0_18:                               # %if.end.188
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	24(%rsp), %r13d         # 4-byte Reload
.LBB0_19:                               # %if.end.188
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%r13d, %edi
	movl	32(%rsp), %esi          # 4-byte Reload
	movq	%rbp, %rdx
	movl	%eax, %ecx
.LBB0_24:                               # %if.end.188
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	gx_curve_log2_samples
.LBB0_25:                               # %if.end.188
                                        #   in Loop: Header=BB0_6 Depth=1
	testl	%r12d, %r12d
	movl	40(%rsp), %ebx          # 4-byte Reload
	jne	.LBB0_26
# BB#44:                                # %if.else.310
                                        #   in Loop: Header=BB0_6 Depth=1
	movdqu	(%rbp), %xmm0
	movdqu	16(%rbp), %xmm1
	movupd	32(%rbp), %xmm2
	movapd	%xmm2, 112(%rsp)
	movdqa	%xmm1, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movq	%r15, %rdi
	movl	%eax, %esi
	leaq	80(%rsp), %rdx
	movl	%ebx, %ecx
	callq	gx_subdivide_curve
	.align	16, 0x90
.LBB0_60:                               # %sw.epilog
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%eax, %r13d
.LBB0_61:                               # %sw.epilog
                                        #   in Loop: Header=BB0_6 Depth=1
	testl	%r13d, %r13d
	js	.LBB0_62
# BB#5:                                 # %while.cond
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	8(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB0_6
	jmp	.LBB0_63
.LBB0_26:                               # %if.then.191
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	32(%rsp), %edx          # 4-byte Reload
	movl	%ebx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB0_61
# BB#27:                                # %do.end.199
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	56(%r15), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	orl	$1, %ebx
	movdqu	(%rbp), %xmm0
	movdqu	16(%rbp), %xmm1
	movupd	32(%rbp), %xmm2
	movapd	%xmm2, 112(%rsp)
	movdqa	%xmm1, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movq	%r15, %rdi
	movl	24(%rsp), %esi          # 4-byte Reload
	leaq	80(%rsp), %rdx
	movl	%ebx, %ecx
	callq	gx_subdivide_curve
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB0_61
# BB#28:                                # %if.end.206
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	56(%r15), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	112(%r15), %esi
	movl	116(%r15), %edx
	movzwl	18(%rbp), %ecx
	orl	$1, %ecx
	movq	%r15, %rdi
	callq	gx_path_add_line_notes
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB0_61
# BB#29:                                # %if.end.225
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rsi
	movl	20(%rsi), %eax
	leaq	28(%rbp), %rdx
	cmpl	28(%rbp), %eax
	jne	.LBB0_31
# BB#30:                                # %lor.lhs.false.232
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	24(%rsi), %ecx
	cmpl	32(%rbp), %ecx
	jne	.LBB0_31
# BB#32:                                # %if.else.243
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	leaq	36(%rbp), %rbx
	cmpl	36(%rbp), %eax
	jne	.LBB0_34
# BB#33:                                # %lor.lhs.false.251
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	40(%rbp), %ecx
	jne	.LBB0_34
# BB#35:                                # %if.else.262
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdx
	addq	$20, %rdx
	movq	32(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB0_36
.LBB0_31:                               # %if.then.240
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	callq	adjust_point_to_tangent
	leaq	36(%rbp), %rbx
	jmp	.LBB0_37
.LBB0_34:                               # %if.then.259
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
.LBB0_36:                               # %if.end.266
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	adjust_point_to_tangent
.LBB0_37:                               # %if.end.266
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rsi
	movl	20(%rsi), %eax
	cmpl	(%rbx), %eax
	jne	.LBB0_39
# BB#38:                                # %lor.lhs.false.274
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	24(%rsi), %ecx
	cmpl	40(%rbp), %ecx
	jne	.LBB0_39
# BB#40:                                # %if.else.285
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	24(%rsp), %rdx          # 8-byte Reload
	cmpl	(%rdx), %eax
	jne	.LBB0_42
# BB#41:                                # %lor.lhs.false.293
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	32(%rbp), %ecx
	jne	.LBB0_42
# BB#43:                                # %if.else.304
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	32(%rsp), %rdx          # 8-byte Reload
	addq	$20, %rdx
	callq	adjust_point_to_tangent
	jmp	.LBB0_61
.LBB0_39:                               # %if.then.282
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%rbx, %rdx
	callq	adjust_point_to_tangent
	jmp	.LBB0_61
.LBB0_42:                               # %if.then.301
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	adjust_point_to_tangent
	jmp	.LBB0_61
	.align	16, 0x90
.LBB0_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	16(%rbp), %eax
	cmpq	$5, %rax
	movl	$-28, %r13d
	jbe	.LBB0_7
.LBB0_62:                               # %if.then.378
	movq	%r15, %rdi
	callq	gx_path_new
	jmp	.LBB0_69
.LBB0_63:                               # %while.end
	movb	97(%r14), %al
	andb	$-9, %al
	movzbl	%al, %eax
	cmpl	$3, %eax
	jne	.LBB0_65
# BB#64:                                # %if.then.386
	movl	112(%r14), %esi
	movl	116(%r14), %edx
	movq	%r15, %rdi
	callq	gx_path_add_point
.LBB0_65:                               # %if.end.392
	xorl	%r13d, %r13d
	cmpb	$0, 98(%r14)
	je	.LBB0_69
# BB#66:                                # %if.then.394
	cmpb	$0, 98(%r15)
	je	.LBB0_68
# BB#67:                                # %if.then.397
	movl	72(%r14), %eax
	movl	72(%r15), %ecx
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, 72(%r15)
	movl	76(%r14), %eax
	movl	76(%r15), %ecx
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, 76(%r15)
	movl	80(%r14), %eax
	movl	80(%r15), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	%ecx, 80(%r15)
	movl	84(%r14), %eax
	movl	84(%r15), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	%ecx, 84(%r15)
	jmp	.LBB0_69
.LBB0_68:                               # %if.else.479
	movb	$1, 98(%r15)
	movdqu	72(%r14), %xmm0
	movdqu	%xmm0, 72(%r15)
.LBB0_69:                               # %cleanup.485
	movl	%r13d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_path_copy_reducing, .Lfunc_end0-gx_path_copy_reducing
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_8
	.quad	.LBB0_45
	.quad	.LBB0_58
	.quad	.LBB0_9
	.quad	.LBB0_57
	.quad	.LBB0_47

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4502148214488346440     # double 9.9999999999999995E-8
.LCPI1_1:
	.quad	4607182417899297483     # double 0.99999990000000005
.LCPI1_3:
	.quad	4602678819172646912     # double 0.5
.LCPI1_4:
	.quad	4607182418800017408     # double 1
.LCPI1_5:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_2:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	gx_curve_monotonize
	.align	16, 0x90
	.type	gx_curve_monotonize,@function
gx_curve_monotonize:                    # @gx_curve_monotonize
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
	subq	$200, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 256
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
	movq	%rsi, %r14
	movq	%r14, 88(%rsp)          # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	112(%rax), %edi
	movl	116(%rax), %ebx
	movzwl	18(%r14), %r15d
	movl	20(%r14), %ecx
	movl	28(%r14), %esi
	movl	36(%r14), %edx
	leaq	160(%rsp), %r8
	movl	%edi, %r13d
	callq	gx_curve_monotonic_points
	movl	%eax, %ebp
	movl	24(%r14), %ecx
	movl	32(%r14), %esi
	movl	40(%r14), %edx
	movslq	%ebp, %r12
	leaq	160(%rsp,%r12,8), %r8
	movl	%ebx, %edi
	callq	gx_curve_monotonic_points
	movl	%eax, %r8d
	addl	%ebp, %r8d
	je	.LBB1_1
# BB#2:                                 # %if.end
	movl	%r15d, 140(%rsp)        # 4-byte Spill
	testl	%ebp, %ebp
	jle	.LBB1_5
# BB#3:                                 # %if.end.31
	movl	$1, 144(%rsp)
	cmpl	$2, %ebp
	jl	.LBB1_5
# BB#4:                                 # %if.then.34
	movl	$1, 148(%rsp)
.LBB1_5:                                # %if.end.36
	testl	%eax, %eax
	movl	%ebx, %r10d
	movl	%r13d, %r15d
	jle	.LBB1_8
# BB#6:                                 # %if.end.41
	movl	$2, 144(%rsp,%r12,4)
	cmpl	$2, %eax
	jl	.LBB1_8
# BB#7:                                 # %if.then.44
	leal	1(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	$2, 144(%rsp,%rcx,4)
.LBB1_8:                                # %for.cond.preheader
	xorl	%edx, %edx
	testl	%r8d, %r8d
	jle	.LBB1_16
# BB#9:                                 # %for.body.lr.ph
	movl	%r15d, %r13d
	movl	%r10d, %r12d
	movslq	%r8d, %r9
	leaq	168(%rsp), %r11
	leaq	148(%rsp), %r15
	leal	-1(%rax,%rbp), %ecx
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB1_10:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_25 Depth 2
	movq	%r10, %rbp
	leaq	1(%rbp), %r10
	cmpq	%r9, %r10
	jge	.LBB1_11
# BB#24:                                # %for.body.55.lr.ph
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%ecx, %eax
	movq	%r15, %rdi
	movq	%r11, %rdx
	.align	16, 0x90
.LBB1_25:                               # %for.body.55
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	160(%rsp,%rbp,8), %xmm0 # xmm0 = mem[0],zero
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_27
# BB#26:                                # %if.then.62
                                        #   in Loop: Header=BB1_25 Depth=2
	movsd	%xmm1, 160(%rsp,%rbp,8)
	movsd	%xmm0, (%rdx)
	movl	144(%rsp,%rbp,4), %ebx
	movl	(%rdi), %esi
	movl	%esi, 144(%rsp,%rbp,4)
	movl	%ebx, (%rdi)
.LBB1_27:                               # %for.inc
                                        #   in Loop: Header=BB1_25 Depth=2
	addq	$8, %rdx
	addq	$4, %rdi
	decl	%eax
	jne	.LBB1_25
.LBB1_11:                               # %for.cond.loopexit
                                        #   in Loop: Header=BB1_10 Depth=1
	addq	$8, %r11
	addq	$4, %r15
	decl	%ecx
	cmpl	%r8d, %r10d
	jne	.LBB1_10
# BB#12:                                # %for.cond.83.preheader
	xorl	%edx, %edx
	testl	%r8d, %r8d
	movl	%r12d, %r10d
	movl	%r13d, %r15d
	jle	.LBB1_16
# BB#13:                                # %for.body.86.lr.ph
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_14:                               # %for.body.86
                                        # =>This Inner Loop Header: Depth=1
	movsd	160(%rsp,%rdx,8), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_0(%rip), %xmm0
	jae	.LBB1_16
# BB#15:                                # %for.inc.93
                                        #   in Loop: Header=BB1_14 Depth=1
	incq	%rdx
	cmpq	%r9, %rdx
	jl	.LBB1_14
.LBB1_16:                               # %for.end.95
	leal	-1(%r8), %eax
	movslq	%eax, %rcx
	movsd	160(%rsp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_1(%rip), %xmm0
	ja	.LBB1_18
# BB#17:                                # %select.mid
	movl	%r8d, %eax
.LBB1_18:                               # %select.end
	leal	1(%rdx), %esi
	cmpl	%eax, %esi
	movl	%edx, %ebp
	jge	.LBB1_29
# BB#19:
	movslq	%edx, %rcx
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	.LCPI1_2(%rip), %xmm8   # xmm8 = [9223372036854775808,9223372036854775808]
	xorps	%xmm2, %xmm2
	movsd	.LCPI1_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI1_3(%rip), %xmm9   # xmm9 = mem[0],zero
	movq	%rcx, %rbp
.LBB1_20:                               # %land.rhs.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
	movslq	%esi, %rsi
	.align	16, 0x90
.LBB1_21:                               # %land.rhs
                                        #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ucomisd	160(%rsp,%rcx,8), %xmm0
	jbe	.LBB1_29
# BB#22:                                # %for.body.110
                                        #   in Loop: Header=BB1_21 Depth=2
	movsd	160(%rsp,%rsi,8), %xmm1 # xmm1 = mem[0],zero
	movsd	160(%rsp,%rbp,8), %xmm6 # xmm6 = mem[0],zero
	movapd	%xmm1, %xmm5
	subsd	%xmm6, %xmm5
	movapd	%xmm5, %xmm7
	cmpltsd	%xmm2, %xmm7
	movapd	%xmm7, %xmm4
	andnpd	%xmm5, %xmm4
	xorpd	%xmm8, %xmm5
	andpd	%xmm5, %xmm7
	orpd	%xmm4, %xmm7
	ucomisd	%xmm7, %xmm3
	jbe	.LBB1_28
# BB#23:                                # %if.then.131
                                        #   in Loop: Header=BB1_21 Depth=2
	addsd	%xmm6, %xmm1
	mulsd	%xmm9, %xmm1
	movsd	%xmm1, 160(%rsp,%rbp,8)
	movl	144(%rsp,%rsi,4), %edi
	orl	%edi, 144(%rsp,%rbp,4)
	incq	%rsi
	cmpl	%eax, %esi
	jl	.LBB1_21
	jmp	.LBB1_29
.LBB1_28:                               # %if.else
                                        #   in Loop: Header=BB1_20 Depth=1
	incq	%rbp
	movslq	%ebp, %rdi
	movsd	%xmm1, 160(%rsp,%rdi,8)
	movl	144(%rsp,%rsi,4), %ebx
	movl	%ebx, 144(%rsp,%rdi,4)
	leal	1(%rsi), %esi
	cmpl	%eax, %esi
	jl	.LBB1_20
.LBB1_29:                               # %for.end.155
	incl	%ebp
	movl	28(%r14), %r8d
	movl	32(%r14), %r9d
	movl	%r8d, %esi
	subl	%r15d, %esi
	movl	36(%r14), %r11d
	movl	%r11d, %r12d
	subl	%r8d, %r12d
	movl	%r9d, %edi
	subl	%r10d, %edi
	movl	40(%r14), %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	%r10d, %ecx
	movl	%eax, %r10d
	subl	%r9d, %r10d
	cvtsi2sdl	%esi, %xmm0
	movsd	160(%rsp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	%edi, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	.LCPI1_3(%rip), %xmm11  # xmm11 = mem[0],zero
	addsd	%xmm11, %xmm0
	addsd	%xmm11, %xmm2
	cvttsd2si	%xmm0, %eax
	cvttsd2si	%xmm2, %ebx
	cmpl	%ebp, %edx
	jge	.LBB1_30
# BB#31:                                # %for.body.214.lr.ph
	leal	(%rsi,%rsi,2), %esi
	movl	%esi, 104(%rsp)         # 4-byte Spill
	leal	(%r12,%r12,2), %r12d
	subl	%esi, %r12d
	leal	(%rdi,%rdi,2), %edi
	movl	%edi, 112(%rsp)         # 4-byte Spill
	movl	%ecx, 120(%rsp)         # 4-byte Spill
	movl	%r15d, %esi
	leal	(%r10,%r10,2), %r15d
	movl	%edi, %r10d
	subl	%r10d, %r15d
	movl	20(%r14), %edi
	movl	24(%r14), %r14d
	movl	%r14d, %r13d
	subl	%ecx, %r13d
	subl	%r10d, %r13d
	subl	%r15d, %r13d
	addl	%r15d, %r15d
	leal	(%r13,%r13,2), %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	movl	%edi, %r10d
	subl	%esi, %r10d
	movl	104(%rsp), %ecx         # 4-byte Reload
	subl	%ecx, %r10d
	subl	%r12d, %r10d
	addl	%r12d, %r12d
	leal	(%r10,%r10,2), %r10d
	cvtsi2sdl	%esi, %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movl	%esi, %r13d
	movl	120(%rsp), %esi         # 4-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r10d, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movl	40(%rsp), %ecx          # 4-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r15d, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movl	112(%rsp), %ecx         # 4-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movslq	%ebp, %rcx
	movslq	%edx, %r15
	incq	%r15
	movsd	.LCPI1_4(%rip), %xmm12  # xmm12 = mem[0],zero
	movsd	.LCPI1_5(%rip), %xmm13  # xmm13 = mem[0],zero
	xorpd	%xmm8, %xmm8
	movl	120(%rsp), %r10d        # 4-byte Reload
	movq	128(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB1_32
	.align	16, 0x90
.LBB1_40:                               # %cleanup.thread.for.body.214_crit_edge
                                        #   in Loop: Header=BB1_32 Depth=1
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	28(%rdx), %r8d
	movl	36(%rdx), %r11d
	movl	20(%rdx), %edi
	movl	24(%rdx), %r14d
	movl	32(%rdx), %r9d
	movl	40(%rdx), %esi
	incq	%r15
	movapd	%xmm0, %xmm8
	movl	%ebp, %r13d
	movl	%r12d, %r10d
.LBB1_32:                               # %for.body.214
                                        # =>This Inner Loop Header: Depth=1
	movsd	152(%rsp,%r15,8), %xmm14 # xmm14 = mem[0],zero
	movapd	%xmm14, %xmm10
	mulsd	%xmm10, %xmm10
	movapd	%xmm14, %xmm9
	mulsd	%xmm10, %xmm9
	movapd	%xmm12, %xmm0
	subsd	%xmm14, %xmm0
	movapd	%xmm0, %xmm3
	leal	(%r11,%r11,2), %edx
	cvtsi2sdl	%edx, %xmm6
	mulsd	%xmm0, %xmm6
	leal	(%rsi,%rsi,2), %edx
	cvtsi2sdl	%edx, %xmm4
	mulsd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm3
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm3, %xmm2
	leal	(%r8,%r8,2), %edx
	cvtsi2sdl	%edx, %xmm5
	mulsd	%xmm0, %xmm5
	mulsd	%xmm14, %xmm5
	addsd	%xmm2, %xmm5
	mulsd	%xmm10, %xmm6
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%edi, %xmm2
	mulsd	72(%rsp), %xmm3         # 8-byte Folded Reload
	leal	(%r9,%r9,2), %edx
	cvtsi2sdl	%edx, %xmm7
	mulsd	%xmm0, %xmm7
	mulsd	%xmm14, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm10, %xmm4
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%r14d, %xmm3
	movl	140(%rsp,%r15,4), %edx
	testb	$1, %dl
	xorpd	%xmm0, %xmm0
	jne	.LBB1_34
# BB#33:                                # %cond.false.269
                                        #   in Loop: Header=BB1_32 Depth=1
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm10, %xmm1
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm14, %xmm0
	addsd	%xmm1, %xmm0
	addsd	48(%rsp), %xmm0         # 8-byte Folded Reload
.LBB1_34:                               # %cond.end.277
                                        #   in Loop: Header=BB1_32 Depth=1
	addsd	%xmm6, %xmm5
	mulsd	%xmm9, %xmm2
	addsd	%xmm4, %xmm7
	mulsd	%xmm9, %xmm3
	xorpd	%xmm4, %xmm4
	testb	$2, %dl
	jne	.LBB1_36
# BB#35:                                # %cond.false.284
                                        #   in Loop: Header=BB1_32 Depth=1
	mulsd	40(%rsp), %xmm10        # 8-byte Folded Reload
	movsd	32(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	%xmm14, %xmm4
	addsd	%xmm10, %xmm4
	addsd	24(%rsp), %xmm4         # 8-byte Folded Reload
.LBB1_36:                               # %cond.end.292
                                        #   in Loop: Header=BB1_32 Depth=1
	addsd	%xmm5, %xmm2
	addsd	%xmm7, %xmm3
	addsd	%xmm11, %xmm0
	cvttsd2si	%xmm0, %esi
	addsd	%xmm11, %xmm4
	cvttsd2si	%xmm4, %edx
	cmpq	%rcx, %r15
	movq	%rcx, %r14
	jge	.LBB1_38
# BB#37:                                # %cond.true.301
                                        #   in Loop: Header=BB1_32 Depth=1
	movsd	160(%rsp,%r15,8), %xmm12 # xmm12 = mem[0],zero
.LBB1_38:                               # %cond.end.306
                                        #   in Loop: Header=BB1_32 Depth=1
	movsd	%xmm12, 128(%rsp)       # 8-byte Spill
	cvtsi2sdl	%esi, %xmm1
	movsd	%xmm1, 120(%rsp)        # 8-byte Spill
	movapd	%xmm14, %xmm0
	subsd	%xmm8, %xmm0
	mulsd	%xmm0, %xmm1
	divsd	%xmm13, %xmm1
	addsd	%xmm11, %xmm1
	cvttsd2si	%xmm1, %edi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	movsd	%xmm1, 112(%rsp)        # 8-byte Spill
	mulsd	%xmm1, %xmm0
	divsd	%xmm13, %xmm0
	addsd	%xmm11, %xmm0
	cvttsd2si	%xmm0, %ecx
	addsd	%xmm11, %xmm2
	cvttsd2si	%xmm2, %ebp
	addsd	%xmm11, %xmm3
	cvttsd2si	%xmm3, %r12d
	movl	%ebp, %edx
	subl	%r13d, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	movl	%r12d, %edx
	subl	%r10d, %edx
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%ebx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	movl	%eax, %esi
	negl	%esi
	movl	%ebx, %edx
	negl	%edx
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm3, %xmm4
	cmovbel	%ebx, %edx
	cmovbel	%eax, %esi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movl	%edi, %eax
	negl	%eax
	movl	%edx, %ebx
	negl	%ebx
	ucomisd	%xmm0, %xmm4
	cmovbel	%edi, %eax
	cmovbel	%ecx, %ebx
	addl	%r13d, %esi
	addl	%r10d, %edx
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%r12d, %r8d
	subl	%ebx, %r8d
	movl	140(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	%r12d, (%rsp)
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %r9d
	movsd	%xmm14, 104(%rsp)       # 8-byte Spill
	callq	gx_path_add_curve_notes
	testl	%eax, %eax
	js	.LBB1_44
# BB#39:                                # %cleanup.thread
                                        #   in Loop: Header=BB1_32 Depth=1
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	104(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	subsd	%xmm4, %xmm1
	orl	$1, %ebx
	movl	%ebx, 140(%rsp)         # 4-byte Spill
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI1_5(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm3
	divsd	%xmm3, %xmm0
	movsd	112(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	divsd	%xmm3, %xmm2
	movsd	.LCPI1_3(%rip), %xmm5   # xmm5 = mem[0],zero
	addsd	%xmm5, %xmm0
	addsd	%xmm5, %xmm2
	cvttsd2si	%xmm0, %eax
	cvttsd2si	%xmm2, %ebx
	movq	%r14, %rcx
	cmpq	%rcx, %r15
	movapd	%xmm5, %xmm11
	movsd	.LCPI1_4(%rip), %xmm12  # xmm12 = mem[0],zero
	movapd	%xmm3, %xmm13
	movapd	%xmm4, %xmm0
	jl	.LBB1_40
# BB#41:                                # %for.cond.211.for.end.395_crit_edge
	movq	88(%rsp), %r14          # 8-byte Reload
	movl	36(%r14), %r11d
	movl	40(%r14), %ecx
	movl	%ebp, %r15d
	jmp	.LBB1_42
.LBB1_1:                                # %if.then
	movl	28(%r14), %esi
	movl	32(%r14), %edx
	movl	36(%r14), %ecx
	movl	40(%r14), %r8d
	movl	20(%r14), %r9d
	movl	24(%r14), %eax
	movl	%r15d, 8(%rsp)
	movl	%eax, (%rsp)
	jmp	.LBB1_43
.LBB1_30:
	movsd	.LCPI1_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movl	%ecx, %r12d
	movq	128(%rsp), %rcx         # 8-byte Reload
.LBB1_42:                               # %for.end.395
	movl	20(%r14), %r9d
	movl	24(%r14), %r8d
	movl	%r9d, %edx
	subl	%r11d, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm11, %xmm0
	cvttsd2si	%xmm0, %edi
	movl	%r8d, %edx
	subl	%ecx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm11, %xmm0
	cvttsd2si	%xmm0, %ebp
	movl	%r9d, %ecx
	subl	%r15d, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	movl	%r8d, %ecx
	subl	%r12d, %ecx
	cvtsi2sdl	%ecx, %xmm2
	cvtsi2sdl	%ebx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	movl	%eax, %esi
	negl	%esi
	movl	%ebx, %edx
	negl	%edx
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm3, %xmm1
	cmovbel	%ebx, %edx
	cmovbel	%eax, %esi
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%edi, %xmm3
	mulsd	%xmm0, %xmm3
	cvtsi2sdl	%ebp, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	movl	%edi, %eax
	negl	%eax
	movl	%edx, %ebx
	negl	%ebx
	ucomisd	%xmm0, %xmm1
	cmovbel	%edi, %eax
	cmovbel	%ebp, %ebx
	addl	%r15d, %esi
	addl	%r12d, %edx
	movl	%r9d, %ecx
	subl	%eax, %ecx
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r8d, (%rsp)
	subl	%ebx, %r8d
.LBB1_43:                               # %cleanup.453
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_add_curve_notes
.LBB1_44:                               # %cleanup.453
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_curve_monotonize, .Lfunc_end1-gx_curve_monotonize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	adjust_point_to_tangent,@function
adjust_point_to_tangent:                # @adjust_point_to_tangent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	20(%rdi), %r8d
	movl	24(%rdi), %r9d
	movl	(%rdx), %ecx
	movl	4(%rdx), %eax
	movl	%eax, %edx
	subl	%r9d, %edx
	subl	%r8d, %ecx
	jne	.LBB2_4
# BB#1:                                 # %if.then
	cmpl	%r9d, %eax
	je	.LBB2_9
# BB#2:                                 # %if.then
	movl	24(%rsi), %ecx
	subl	%r9d, %ecx
	sarl	$2, %ecx
	xorl	%ecx, %edx
	testl	%edx, %edx
	jle	.LBB2_9
# BB#3:                                 # %if.then.11
	addl	%r9d, %ecx
	movl	%ecx, 24(%rdi)
	retq
.LBB2_4:                                # %if.else
	cmpl	%r9d, %eax
	jne	.LBB2_7
# BB#5:                                 # %if.then.16
	movl	20(%rsi), %eax
	subl	%r8d, %eax
	sarl	$2, %eax
	xorl	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB2_9
# BB#6:                                 # %if.then.26
	addl	%r8d, %eax
	movl	%eax, 20(%rdi)
	retq
.LBB2_7:                                # %if.else.31
	cvtsi2sdl	%ecx, %xmm1
	cvtsi2sdl	%edx, %xmm0
	movl	20(%rsi), %eax
	movl	24(%rsi), %ecx
	subl	%r8d, %eax
	cvtsi2sdl	%eax, %xmm3
	subl	%r9d, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movaps	%xmm1, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	unpcklpd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0]
	mulpd	%xmm4, %xmm3
	movaps	%xmm0, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	unpcklpd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0]
	mulpd	%xmm4, %xmm2
	addpd	%xmm3, %xmm2
	movapd	%xmm2, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	divsd	%xmm3, %xmm2
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm2
	jbe	.LBB2_9
# BB#8:                                 # %if.then.51
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	minsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	sarl	$2, %eax
	addl	%r8d, %eax
	movl	%eax, 20(%rdi)
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	sarl	$2, %eax
	addl	%r9d, %eax
	movl	%eax, 24(%rdi)
.LBB2_9:                                # %cleanup.71
	retq
.Lfunc_end2:
	.size	adjust_point_to_tangent, .Lfunc_end2-adjust_point_to_tangent
	.cfi_endproc

	.align	16, 0x90
	.type	break_line_if_long,@function
break_line_if_long:                     # @break_line_if_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 48
.Ltmp31:
	.cfi_offset %rbx, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	112(%r14), %ebp
	movl	116(%r14), %r15d
	movl	20(%rbx), %edi
	movl	%ebp, %esi
	callq	gx_check_fixed_diff_overflow
	testl	%eax, %eax
	jne	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	movl	24(%rbx), %edi
	movl	%r15d, %esi
	callq	gx_check_fixed_diff_overflow
	testl	%eax, %eax
	je	.LBB3_9
.LBB3_2:                                # %if.then
	movl	20(%rbx), %edi
	movl	%ebp, %esi
	callq	gx_check_fixed_sum_overflow
	testl	%eax, %eax
	movl	20(%rbx), %eax
	je	.LBB3_4
# BB#3:                                 # %if.then.13
	sarl	%eax
	sarl	%ebp
	addl	%eax, %ebp
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	addl	%ebp, %eax
	sarl	%eax
	movl	%eax, %ebp
.LBB3_5:                                # %if.end
	movl	24(%rbx), %edi
	movl	%r15d, %esi
	callq	gx_check_fixed_sum_overflow
	testl	%eax, %eax
	movl	24(%rbx), %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.25
	sarl	%eax
	sarl	%r15d
	addl	%eax, %r15d
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.31
	addl	%r15d, %eax
	sarl	%eax
	movl	%eax, %r15d
.LBB3_8:                                # %if.end.36
	movzwl	18(%rbx), %ecx
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_path_add_line_notes  # TAILCALL
.LBB3_9:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	break_line_if_long, .Lfunc_end3-break_line_if_long
	.cfi_endproc

	.globl	gx_path__check_curves
	.align	16, 0x90
	.type	gx_path__check_curves,@function
gx_path__check_curves:                  # @gx_path__check_curves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 192
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r12d
	movq	56(%rdi), %rax
	movq	24(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_18
# BB#1:                                 # %while.body.lr.ph
	movl	%r12d, %eax
	andl	$1, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	andl	$8, %r12d
	xorl	%r13d, %r13d
	leaq	112(%rsp), %r15
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	16(%rbx), %eax
	cmpq	$5, %rax
	ja	.LBB4_17
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_6:                                # %sw.bb.2
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	20(%rbx), %edi
	movl	%ebp, %esi
	callq	gx_check_fixed_diff_overflow
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB4_19
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	24(%rbx), %edi
	movl	%r13d, %esi
	callq	gx_check_fixed_diff_overflow
	testl	%eax, %eax
	je	.LBB4_17
	jmp	.LBB4_19
.LBB4_4:                                # %sw.bb
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpl	$0, 40(%rbx)
	jne	.LBB4_17
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	32(%rbx), %rbx
	jmp	.LBB4_17
.LBB4_8:                                # %sw.bb.13
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	je	.LBB4_12
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	24(%rbx), %ecx
	movl	32(%rbx), %esi
	movl	40(%rbx), %edx
	movl	%r13d, %edi
	movq	%r15, %r8
	callq	gx_curve_monotonic_points
	testl	%eax, %eax
	jne	.LBB4_11
# BB#10:                                # %if.end.24
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	20(%rbx), %ecx
	movl	28(%rbx), %esi
	movl	36(%rbx), %edx
	movl	%ebp, %edi
	movq	%r15, %r8
	callq	gx_curve_monotonic_points
	testl	%eax, %eax
	jne	.LBB4_11
.LBB4_12:                               # %if.end.39
                                        #   in Loop: Header=BB4_2 Depth=1
	testl	%r12d, %r12d
	je	.LBB4_17
# BB#13:                                # %if.then.42
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	%ebp, %edi
	movl	%r13d, %esi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	movl	%r14d, 84(%rsp)         # 4-byte Spill
	callq	gx_curve_log2_samples
	movl	28(%rbx), %esi
	movl	36(%rbx), %edx
	movl	32(%rbx), %r9d
	movl	40(%rbx), %r8d
	movl	20(%rbx), %ecx
	movl	24(%rbx), %edi
	movl	%eax, 64(%rsp)
	leaq	92(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	100(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	108(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%edi, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	%ebp, %edi
	movl	%r13d, %r8d
	callq	curve_coeffs_ranged
	movl	$1, %r14d
	testl	%eax, %eax
	je	.LBB4_16
# BB#14:                                # %if.end.63
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	20(%rbx), %edi
	movl	%ebp, %esi
	callq	gx_check_fixed_diff_overflow
	testl	%eax, %eax
	jne	.LBB4_16
# BB#15:                                # %lor.lhs.false.69
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	24(%rbx), %edi
	movl	%r13d, %esi
	callq	gx_check_fixed_diff_overflow
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r14d
.LBB4_16:                               # %cleanup.77
                                        #   in Loop: Header=BB4_2 Depth=1
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	movl	84(%rsp), %r14d         # 4-byte Reload
	jne	.LBB4_19
	.align	16, 0x90
.LBB4_17:                               # %sw.epilog
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	20(%rbx), %ebp
	movl	24(%rbx), %r13d
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB4_2
.LBB4_18:
	movl	$1, %ebp
.LBB4_19:                               # %cleanup.91
	movl	%ebp, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_11:                               # %cleanup.thread
	xorl	%ebp, %ebp
	jmp	.LBB4_19
.Lfunc_end4:
	.size	gx_path__check_curves, .Lfunc_end4-gx_path__check_curves
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_4
	.quad	.LBB4_6
	.quad	.LBB4_17
	.quad	.LBB4_8
	.quad	.LBB4_17
	.quad	.LBB4_6

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gx_curve_monotonic_points
	.align	16, 0x90
	.type	gx_curve_monotonic_points,@function
gx_curve_monotonic_points:              # @gx_curve_monotonic_points
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 64
.Ltmp53:
	.cfi_offset %rbx, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	subl	%esi, %edx
	subl	%edi, %esi
	leal	(%rsi,%rsi,2), %esi
	leal	(%rdx,%rdx,2), %ebp
	movl	%ebp, %ebx
	subl	%esi, %ebx
	subl	%ebp, %ecx
	leal	(%rbx,%rbx), %edx
	subl	%edi, %ecx
	jne	.LBB5_6
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	xorl	%esi, %ebx
	jns	.LBB5_34
# BB#2:                                 # %land.lhs.true
	movl	%esi, %ecx
	negl	%ecx
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	testl	%esi, %esi
	cmovsl	%ecx, %esi
	je	.LBB5_34
# BB#3:                                 # %land.lhs.true
	cmpl	%edi, %esi
	jge	.LBB5_34
# BB#4:                                 # %if.then.23
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	%edx, %xmm1
	jmp	.LBB5_5
.LBB5_6:                                # %if.end
	leal	(%rcx,%rcx,2), %r15d
	testl	%esi, %esi
	je	.LBB5_7
# BB#11:                                # %if.else.58
	leal	(%rdx,%rsi), %eax
	addl	%r15d, %eax
	je	.LBB5_12
# BB#16:                                # %if.else.95
	xorl	%esi, %eax
	js	.LBB5_17
# BB#18:                                # %if.else.100
	xorl	%eax, %eax
	xorl	%ebx, %ecx
	jns	.LBB5_34
# BB#19:                                # %if.else.105
	movl	%ebx, %ecx
	negl	%ecx
	cmovgel	%ecx, %ebx
	movl	%r15d, %edx
	negl	%edx
	cmovll	%r15d, %edx
	cmpl	%edx, %ebx
	jge	.LBB5_34
	jmp	.LBB5_20
.LBB5_7:                                # %if.then.28
	xorl	%eax, %eax
	xorl	%ebx, %ecx
	jns	.LBB5_34
# BB#8:                                 # %land.lhs.true.32
	movl	%edx, %ecx
	negl	%ecx
	cmovgel	%ecx, %edx
	movl	%r15d, %esi
	negl	%esi
	cmovll	%r15d, %esi
	testl	%ebp, %ebp
	je	.LBB5_34
# BB#9:                                 # %land.lhs.true.32
	cmpl	%esi, %edx
	jl	.LBB5_10
	jmp	.LBB5_34
.LBB5_12:                               # %if.then.63
	xorl	%eax, %eax
	xorl	%ebx, %ecx
	jns	.LBB5_34
# BB#13:                                # %land.lhs.true.67
	movl	%edx, %ecx
	negl	%ecx
	cmovgel	%ecx, %edx
	movl	%r15d, %esi
	negl	%esi
	cmovll	%r15d, %esi
	cmpl	%esi, %edx
	jle	.LBB5_34
# BB#14:                                # %land.lhs.true.67
	addl	%esi, %esi
	cmpl	%esi, %edx
	jge	.LBB5_34
# BB#15:                                # %if.then.88
	subl	%r15d, %ecx
.LBB5_10:                               # %if.then.52
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	%r15d, %xmm1
.LBB5_5:                                # %cleanup.172
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%r14)
	movl	$1, %eax
	jmp	.LBB5_34
.LBB5_17:                               # %if.else.95.if.end.127_crit_edge
	negl	%ebx
	movl	%ebx, %ecx
.LBB5_20:                               # %if.end.127
	cvtsi2sdl	%ecx, %xmm1
	cvtsi2sdl	%r15d, %xmm2
	movapd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm3
	mulsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm0
	xorl	%eax, %eax
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm0, %xmm3
	ja	.LBB5_34
# BB#21:                                # %if.end.137
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB5_23
# BB#22:                                # %call.sqrt
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB5_23:                               # %if.end.137.split
	movsd	16(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	%xmm4, %xmm2
	subsd	%xmm0, %xmm2
	movsd	8(%rsp), %xmm5          # 8-byte Reload
                                        # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm2
	xorl	%eax, %eax
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm2
	jbe	.LBB5_26
# BB#24:                                # %if.end.137.split
	movsd	.LCPI5_0(%rip), %xmm3   # xmm3 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jbe	.LBB5_26
# BB#25:                                # %if.then.148
	movsd	%xmm2, (%r14)
	movl	$1, %eax
.LBB5_26:                               # %if.end.149
	ucomisd	%xmm1, %xmm0
	jne	.LBB5_27
	jnp	.LBB5_34
.LBB5_27:                               # %if.then.152
	addsd	%xmm0, %xmm4
	divsd	%xmm5, %xmm4
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm4
	jbe	.LBB5_34
# BB#28:                                # %if.then.152
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jbe	.LBB5_34
# BB#29:                                # %if.then.160
	testl	%r15d, %r15d
	jns	.LBB5_32
# BB#30:                                # %if.then.160
	testl	%eax, %eax
	je	.LBB5_32
# BB#31:                                # %if.then.164
	movq	(%r14), %rcx
	movq	%rcx, 8(%r14)
	movsd	%xmm4, (%r14)
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.165
	movsd	%xmm4, (%r14,%rax,8)
.LBB5_33:                               # %if.end.167
	incl	%eax
.LBB5_34:                               # %cleanup.172
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_curve_monotonic_points, .Lfunc_end5-gx_curve_monotonic_points
	.cfi_endproc

	.globl	gx_path_has_long_segments
	.align	16, 0x90
	.type	gx_path_has_long_segments,@function
gx_path_has_long_segments:              # @gx_path_has_long_segments
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 32
.Ltmp60:
	.cfi_offset %rbx, -32
.Ltmp61:
	.cfi_offset %r14, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	56(%rdi), %rax
	movq	24(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB6_6
# BB#1:
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	$1, %r14d
	.align	16, 0x90
.LBB6_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, 16(%rbp)
	je	.LBB6_5
# BB#3:                                 # %sw.default
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	20(%rbp), %edi
	callq	gx_check_fixed_diff_overflow
	testl	%eax, %eax
	jne	.LBB6_7
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	24(%rbp), %edi
	movl	%ebx, %esi
	callq	gx_check_fixed_diff_overflow
	testl	%eax, %eax
	jne	.LBB6_7
.LBB6_5:                                # %sw.epilog
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	20(%rbp), %esi
	movl	24(%rbp), %ebx
	movq	8(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB6_2
.LBB6_6:
	xorl	%r14d, %r14d
.LBB6_7:                                # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_path_has_long_segments, .Lfunc_end6-gx_path_has_long_segments
	.cfi_endproc

	.globl	gx_path_merge_contacting_contours
	.align	16, 0x90
	.type	gx_path_merge_contacting_contours,@function
gx_path_merge_contacting_contours:      # @gx_path_merge_contacting_contours
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 128
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	56(%rdi), %rax
	movq	24(%rax), %rax
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_50:                               # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	32(%rax), %rax
	movq	8(%rax), %rax
.LBB7_1:                                # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
                                        #       Child Loop BB7_7 Depth 3
                                        #         Child Loop BB7_14 Depth 4
	testq	%rax, %rax
	je	.LBB7_51
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	32(%rax), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	8(%rcx), %r14
	testq	%r14, %r14
	je	.LBB7_51
# BB#3:                                 # %for.body.4.lr.ph
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%edx, %edx
	movq	%rax, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB7_4:                                # %for.body.4
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_7 Depth 3
                                        #         Child Loop BB7_14 Depth 4
	cmpq	%rcx, %rax
	movq	32(%r14), %rsi
	movq	8(%rsi), %rbp
	je	.LBB7_5
# BB#6:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%edx, 44(%rsp)          # 4-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB7_7:                                # %for.body.i
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_14 Depth 4
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	(%rcx), %r11
	movzwl	16(%rcx), %eax
	orl	$4, %eax
	cmpl	$5, %eax
	jne	.LBB7_30
# BB#8:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB7_7 Depth=3
	movl	20(%r11), %edx
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	20(%rax), %r10d
	movl	%edx, %eax
	subl	%r10d, %eax
	jne	.LBB7_9
# BB#12:                                # %for.cond.56.preheader.i
                                        #   in Loop: Header=BB7_7 Depth=3
	cmpq	56(%rsp), %r14          # 8-byte Folded Reload
	jne	.LBB7_13
	jmp	.LBB7_30
	.align	16, 0x90
.LBB7_9:                                # %lor.lhs.false.12.i
                                        #   in Loop: Header=BB7_7 Depth=3
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB7_30
# BB#10:                                # %land.lhs.true.32.i
                                        #   in Loop: Header=BB7_7 Depth=3
	movl	24(%r11), %ecx
	movq	64(%rsp), %rax          # 8-byte Reload
	subl	24(%rax), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	cmpq	56(%rsp), %r14          # 8-byte Folded Reload
	je	.LBB7_30
# BB#11:                                # %land.lhs.true.32.i
                                        #   in Loop: Header=BB7_7 Depth=3
	cmpl	$257, %eax              # imm = 0x101
	jl	.LBB7_30
.LBB7_13:                               # %for.cond.56.preheader.i.for.body.63.lr.ph.i_crit_edge
                                        #   in Loop: Header=BB7_7 Depth=3
	leaq	24(%r11), %r8
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	24(%rax), %r9
	movq	56(%rsp), %r13          # 8-byte Reload
	movq	%r13, 56(%rsp)          # 8-byte Spill
	xorl	%edi, %edi
	.align	16, 0x90
.LBB7_14:                               # %for.body.63.i
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_4 Depth=2
                                        #       Parent Loop BB7_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%r13), %rbp
	movzwl	16(%r13), %eax
	orl	$4, %eax
	cmpl	$5, %eax
	jne	.LBB7_28
# BB#15:                                # %land.lhs.true.74.i
                                        #   in Loop: Header=BB7_14 Depth=4
	movl	20(%rbp), %ecx
	movl	20(%r13), %esi
	movl	%ecx, %eax
	subl	%esi, %eax
	je	.LBB7_18
# BB#16:                                # %lor.lhs.false.81.i
                                        #   in Loop: Header=BB7_14 Depth=4
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	cmpl	$1, %ebx
	jne	.LBB7_28
# BB#17:                                # %land.lhs.true.106.i
                                        #   in Loop: Header=BB7_14 Depth=4
	movl	24(%rbp), %eax
	subl	24(%r13), %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	cmpl	$257, %ebx              # imm = 0x101
	jl	.LBB7_28
	.align	16, 0x90
.LBB7_18:                               # %if.then.131.i
                                        #   in Loop: Header=BB7_14 Depth=4
	cmpl	%ecx, %edx
	je	.LBB7_22
# BB#19:                                # %lor.lhs.false.138.i
                                        #   in Loop: Header=BB7_14 Depth=4
	cmpl	%esi, %edx
	je	.LBB7_22
# BB#20:                                # %lor.lhs.false.138.i
                                        #   in Loop: Header=BB7_14 Depth=4
	cmpl	%ecx, %r10d
	je	.LBB7_22
# BB#21:                                # %lor.lhs.false.138.i
                                        #   in Loop: Header=BB7_14 Depth=4
	cmpl	%esi, %r10d
	jne	.LBB7_28
	.align	16, 0x90
.LBB7_22:                               # %if.then.159.i
                                        #   in Loop: Header=BB7_14 Depth=4
	movl	(%r8), %esi
	movl	(%r9), %ecx
	cmpl	%ecx, %esi
	jge	.LBB7_25
# BB#23:                                # %land.lhs.true.166.i
                                        #   in Loop: Header=BB7_14 Depth=4
	movl	24(%rbp), %r15d
	movl	24(%r13), %ebx
	cmpl	%ebx, %r15d
	jle	.LBB7_25
# BB#24:                                # %if.then.173.i
                                        #   in Loop: Header=BB7_14 Depth=4
	cmpl	%ebx, %esi
	cmovgel	%esi, %ebx
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	cmpl	%r15d, %ebx
	jle	.LBB7_35
.LBB7_25:                               # %if.end.206.i
                                        #   in Loop: Header=BB7_14 Depth=4
	cmpl	%ecx, %esi
	jle	.LBB7_28
# BB#26:                                # %land.lhs.true.213.i
                                        #   in Loop: Header=BB7_14 Depth=4
	movl	24(%rbp), %ebx
	movl	24(%r13), %eax
	cmpl	%eax, %ebx
	jge	.LBB7_28
# BB#27:                                # %if.then.220.i
                                        #   in Loop: Header=BB7_14 Depth=4
	cmpl	%ebx, %ecx
	cmovgel	%ecx, %ebx
	cmpl	%eax, %esi
	cmovlel	%esi, %eax
	cmpl	%eax, %ebx
	jle	.LBB7_35
	.align	16, 0x90
.LBB7_28:                               # %for.inc.i
                                        #   in Loop: Header=BB7_14 Depth=4
	cmpl	$48, %edi
	jg	.LBB7_30
# BB#29:                                # %for.inc.i
                                        #   in Loop: Header=BB7_14 Depth=4
	incl	%edi
	cmpq	%r14, %rbp
	movq	%rbp, %r13
	jne	.LBB7_14
	.align	16, 0x90
.LBB7_30:                               # %for.inc.264.i
                                        #   in Loop: Header=BB7_7 Depth=3
	cmpl	$48, %r12d
	jg	.LBB7_31
# BB#32:                                # %for.inc.264.i
                                        #   in Loop: Header=BB7_7 Depth=3
	incl	%r12d
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, %r11
	movq	%r11, %rcx
	jne	.LBB7_7
# BB#33:                                #   in Loop: Header=BB7_4 Depth=2
	movq	%r14, 24(%rsp)          # 8-byte Spill
	jmp	.LBB7_34
	.align	16, 0x90
.LBB7_5:                                #   in Loop: Header=BB7_4 Depth=2
	movq	%r14, 24(%rsp)          # 8-byte Spill
	jmp	.LBB7_48
	.align	16, 0x90
.LBB7_35:                               # %if.then
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	(%r14), %rax
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, 8(%rax)
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_37
# BB#36:                                # %if.then.11
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	%rax, (%rcx)
.LBB7_37:                               # %if.end
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	$0, (%r14)
	movq	$0, 8(%rdx)
	movq	8(%r14), %rbx
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	56(%r15), %rax
	cmpq	%r14, 32(%rax)
	jne	.LBB7_39
# BB#38:                                # %if.then.21
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 32(%rax)
.LBB7_39:                               # %if.end.25
                                        #   in Loop: Header=BB7_4 Depth=2
	movzwl	16(%rdx), %eax
	cmpl	$2, %eax
	jne	.LBB7_41
# BB#40:                                # %if.then.28
                                        #   in Loop: Header=BB7_4 Depth=2
	movw	$1, 16(%rdx)
	jmp	.LBB7_43
.LBB7_41:                               # %if.else
                                        #   in Loop: Header=BB7_4 Depth=2
	movl	20(%rdx), %eax
	cmpl	20(%r14), %eax
	jne	.LBB7_44
# BB#42:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_4 Depth=2
	movl	24(%rdx), %eax
	cmpl	24(%r14), %eax
	jne	.LBB7_44
	.align	16, 0x90
.LBB7_43:                               # %if.then.47
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	40(%r15), %rdi
	callq	*32(%rdi)
	movq	24(%rax), %r12
	movq	40(%r15), %rdi
	callq	*32(%rdi)
	movl	$.L.str, %edx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	*%r12
	movq	56(%rsp), %r14          # 8-byte Reload
	jmp	.LBB7_45
.LBB7_31:                               #   in Loop: Header=BB7_4 Depth=2
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
.LBB7_34:                               # %if.end.103
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	44(%rsp), %edx          # 4-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB7_48
.LBB7_44:                               # %if.else.60
                                        #   in Loop: Header=BB7_4 Depth=2
	movw	$1, 16(%r14)
	movq	%r14, 8(%rdx)
	movq	$0, 8(%r14)
	movq	%rdx, (%r14)
	movq	$0, 32(%r14)
.LBB7_45:                               # %if.end.67
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	%rbx, 8(%r14)
	movq	%r14, (%rbx)
	movq	(%r13), %rbx
	movq	$0, 8(%rbx)
	movq	$0, (%r13)
	movq	56(%r15), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB7_47
# BB#46:                                # %if.then.79
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 32(%rax)
.LBB7_47:                               # %if.end.83
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	40(%r15), %rdi
	callq	*32(%rdi)
	movq	24(%rax), %r14
	movq	40(%r15), %rdi
	callq	*32(%rdi)
	xorl	%esi, %esi
	movl	$.L.str, %edx
	movq	%rax, %rdi
	callq	*%r14
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rax
	movq	%r13, 8(%rax)
	movq	%rax, (%r13)
	movq	%rcx, 8(%rbx)
	movq	%rbx, (%rcx)
	decl	104(%r15)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	44(%rsp), %edx          # 4-byte Reload
.LBB7_48:                               # %if.end.103
                                        #   in Loop: Header=BB7_4 Depth=2
	testq	%rbp, %rbp
	je	.LBB7_50
# BB#49:                                # %if.end.103
                                        #   in Loop: Header=BB7_4 Depth=2
	incl	%edx
	cmpl	$30, %edx
	movq	%rbp, %r14
	jl	.LBB7_4
	jmp	.LBB7_50
.LBB7_51:                               # %for.end.107
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_path_merge_contacting_contours, .Lfunc_end7-gx_path_merge_contacting_contours
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_path_merge_contacting_contours"
	.size	.L.str, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
