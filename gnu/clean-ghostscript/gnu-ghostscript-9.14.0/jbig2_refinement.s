	.text
	.file	"jbig2_refinement.bc"
	.globl	jbig2_decode_refinement_region
	.align	16, 0x90
	.type	jbig2_decode_refinement_region,@function
jbig2_decode_refinement_region:         # @jbig2_decode_refinement_region
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
	subq	$152, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 208
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
	movq	%r9, 120(%rsp)          # 8-byte Spill
	movq	%r8, 136(%rsp)          # 8-byte Spill
	movq	%r8, %r12
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%rdx, %rbx
	movl	(%rsi), %edx
	movl	(%rbx), %eax
	movl	16(%rbx), %r8d
	movl	20(%rbx), %r9d
	movl	24(%rbx), %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%esi, %esi
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	callq	jbig2_error
	cmpl	$0, 24(%rbx)
	je	.LBB0_25
# BB#1:                                 # %if.then
	movl	4(%r12), %edx
	movl	%edx, 56(%rsp)          # 4-byte Spill
	movl	(%rbx), %eax
	movq	%rbx, %rbp
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movl	$mkctx1, %ecx
	movl	$mkctx0, %r14d
	cmovneq	%rcx, %r14
	movq	%r14, 88(%rsp)          # 8-byte Spill
	testl	%edx, %edx
	movl	$0, %ecx
	jle	.LBB0_40
# BB#2:                                 # %for.body.lr.ph.i
	movl	(%r12), %r15d
	movl	%r15d, 80(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	movl	$64, %eax
	movl	$256, %ecx              # imm = 0x100
	cmovneq	%rax, %rcx
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	(%rcx,%rax), %rsi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
.LBB0_3:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	movl	%r13d, 104(%rsp)        # 4-byte Spill
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	movl	$-1, %ecx
	testl	%eax, %eax
	js	.LBB0_40
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	%eax, %ebx
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	jne	.LBB0_5
# BB#17:                                # %for.cond.7.preheader.i
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	jle	.LBB0_24
	.align	16, 0x90
.LBB0_18:                               # %for.body.9.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%ebx, %edx
	movl	%r13d, %ecx
	callq	*%r14
	movl	%eax, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB0_19
# BB#20:                                # %if.end.16.i
                                        #   in Loop: Header=BB0_18 Depth=2
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movl	%eax, %ecx
	callq	jbig2_image_set_pixel
	incl	%ebx
	cmpl	%r15d, %ebx
	jl	.LBB0_18
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_5:                                # %for.cond.18.preheader.i
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	jle	.LBB0_24
	.align	16, 0x90
.LBB0_6:                                # %for.body.20.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rbp), %r12
	movl	%ebx, %r15d
	subl	16(%rbp), %r15d
	subl	20(%rbp), %r13d
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	movl	%ebp, 116(%rsp)         # 4-byte Spill
	leal	-1(%r15), %esi
	movl	%esi, 100(%rsp)         # 4-byte Spill
	leal	-1(%r13), %r14d
	movq	%r12, %rdi
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	cmpl	%ebp, %eax
	jne	.LBB0_15
# BB#7:                                 # %land.lhs.true.i.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	cmpl	116(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB0_15
# BB#8:                                 # %land.lhs.true.8.i.i
                                        #   in Loop: Header=BB0_6 Depth=2
	leal	1(%r15), %ebp
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	cmpl	116(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB0_15
# BB#9:                                 # %land.lhs.true.12.i.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	%r12, %rdi
	movl	100(%rsp), %esi         # 4-byte Reload
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	cmpl	116(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB0_15
# BB#10:                                # %land.lhs.true.16.i.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	cmpl	116(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB0_15
# BB#11:                                # %land.lhs.true.20.i.i
                                        #   in Loop: Header=BB0_6 Depth=2
	incl	%r13d
	movq	%r12, %rdi
	movl	100(%rsp), %esi         # 4-byte Reload
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	cmpl	116(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB0_15
# BB#12:                                # %land.lhs.true.25.i.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	cmpl	116(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB0_15
# BB#13:                                # %land.lhs.true.29.i.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	cmpl	$0, 116(%rsp)           # 4-byte Folded Reload
	js	.LBB0_15
# BB#14:                                # %land.lhs.true.29.i.i
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	116(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB0_15
# BB#22:                                # %if.else.32.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %r12
	movl	%ebx, %esi
	movl	104(%rsp), %r13d        # 4-byte Reload
	movl	%r13d, %edx
	movl	116(%rsp), %ecx         # 4-byte Reload
	callq	jbig2_image_set_pixel
	movq	144(%rsp), %rbp         # 8-byte Reload
	movq	88(%rsp), %r14          # 8-byte Reload
	movl	80(%rsp), %r15d         # 4-byte Reload
	jmp	.LBB0_23
	.align	16, 0x90
.LBB0_15:                               # %if.then.23.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	144(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %r12
	movl	%ebx, %edx
	movl	104(%rsp), %r13d        # 4-byte Reload
	movl	%r13d, %ecx
	movq	88(%rsp), %r14          # 8-byte Reload
	callq	*%r14
	movl	%eax, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	testl	%eax, %eax
	movl	80(%rsp), %r15d         # 4-byte Reload
	js	.LBB0_16
# BB#21:                                # %if.end.30.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movl	%eax, %ecx
	callq	jbig2_image_set_pixel
.LBB0_23:                               # %for.inc.35.i
                                        #   in Loop: Header=BB0_6 Depth=2
	incl	%ebx
	cmpl	%r15d, %ebx
	jl	.LBB0_6
.LBB0_24:                               # %for.inc.39.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	72(%rsp), %ebx          # 4-byte Reload
	xorl	64(%rsp), %ebx          # 4-byte Folded Reload
	incl	%r13d
	xorl	%ecx, %ecx
	cmpl	56(%rsp), %r13d         # 4-byte Folded Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	jl	.LBB0_3
	jmp	.LBB0_40
.LBB0_25:                               # %if.end
	cmpl	$0, (%rbx)
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movl	(%r12), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	4(%r12), %eax
	movl	16(%rbx), %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	20(%rbx), %ecx
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movq	8(%rbx), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	je	.LBB0_33
# BB#26:                                # %if.then.5
	testl	%eax, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	$0, %ecx
	jle	.LBB0_40
# BB#27:                                # %for.cond.1.preheader.lr.ph.i
	movq	88(%rsp), %rax          # 8-byte Reload
	negl	%eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
.LBB0_28:                               # %for.cond.1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	jle	.LBB0_32
# BB#29:                                # %for.body.3.lr.ph.i
                                        #   in Loop: Header=BB0_28 Depth=1
	leal	-1(%rbx), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	%ebx, %eax
	subl	16(%rsp), %eax          # 4-byte Folded Reload
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leal	1(%rax), %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	leal	-1(%rax), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_30:                               # %for.body.3.i
                                        #   Parent Loop BB0_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	leal	-1(%rbp), %r12d
	movq	136(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebx, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	leal	1(%rbp), %esi
	movl	%esi, 104(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	movl	64(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %r15d
	addl	%r15d, %r15d
	orl	%ebx, %r15d
	movq	%r13, %rdi
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$2, %ebx
	orl	%r15d, %ebx
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$3, %ebp
	orl	%ebx, %ebp
	movq	88(%rsp), %r15          # 8-byte Reload
	movq	144(%rsp), %rax         # 8-byte Reload
	leal	(%r15,%rax), %r14d
	movq	144(%rsp), %rax         # 8-byte Reload
	leal	1(%r15,%rax), %esi
	movl	%esi, 116(%rsp)         # 4-byte Spill
	movq	80(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movl	44(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %r12d
	shll	$4, %r12d
	orl	%ebp, %r12d
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%ebx, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$5, %ebp
	orl	%r12d, %ebp
	movq	%r13, %rdi
	movl	116(%rsp), %esi         # 4-byte Reload
	movq	56(%rsp), %r12          # 8-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$6, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$7, %ebp
	orl	%ebx, %ebp
	movq	144(%rsp), %rax         # 8-byte Reload
	leal	-1(%r15,%rax), %esi
	movq	144(%rsp), %r15         # 8-byte Reload
	movq	%r13, %rdi
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$8, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	48(%rsp), %edx          # 4-byte Reload
	callq	jbig2_image_get_pixel
	shll	$9, %eax
	orl	%ebx, %eax
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	movl	$-1, %ecx
	testl	%eax, %eax
	js	.LBB0_40
# BB#31:                                # %if.end.i.17
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	136(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	movl	%ebx, %edx
	movl	%eax, %ecx
	callq	jbig2_image_set_pixel
	movl	104(%rsp), %eax         # 4-byte Reload
	cmpl	100(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %ebp
	jl	.LBB0_30
.LBB0_32:                               # %for.inc.64.i
                                        #   in Loop: Header=BB0_28 Depth=1
	incl	%ebx
	xorl	%ecx, %ecx
	cmpl	20(%rsp), %ebx          # 4-byte Folded Reload
	jl	.LBB0_28
	jmp	.LBB0_40
.LBB0_19:
	movl	$-1, %ecx
	jmp	.LBB0_40
.LBB0_16:
	movl	$-1, %ecx
	jmp	.LBB0_40
.LBB0_33:                               # %if.else
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	$0, %ecx
	jle	.LBB0_40
# BB#34:                                # %for.cond.1.preheader.lr.ph.i.28
	movq	88(%rsp), %rax          # 8-byte Reload
	negl	%eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
.LBB0_35:                               # %for.cond.1.preheader.i.30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
	movq	%r15, 48(%rsp)          # 8-byte Spill
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	jle	.LBB0_39
# BB#36:                                # %for.body.3.lr.ph.i.32
                                        #   in Loop: Header=BB0_35 Depth=1
	leal	-1(%r15), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	%r15d, %eax
	subl	16(%rsp), %eax          # 4-byte Folded Reload
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	1(%rax), %ecx
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	leal	-1(%rax), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	$1, %r12d
	.align	16, 0x90
.LBB0_37:                               # %for.body.3.i.46
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, 64(%rsp)          # 8-byte Spill
	leal	-1(%r12), %r14d
	movl	%r14d, 56(%rsp)         # 4-byte Spill
	leal	-2(%r12), %esi
	movq	136(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	44(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	addl	%ebx, %ebx
	orl	116(%rsp), %ebx         # 4-byte Folded Reload
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$2, %ebp
	orl	%ebx, %ebp
	movq	144(%rsp), %rax         # 8-byte Reload
	movsbl	29(%rax), %edx
	addl	%r15d, %edx
	movsbl	28(%rax), %eax
	leal	-1(%r12,%rax), %esi
	movq	%r13, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$3, %ebx
	orl	%ebp, %ebx
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, %r15
	leal	(%r15,%r12), %esi
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	80(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movl	24(%rsp), %r13d         # 4-byte Reload
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$4, %ebp
	orl	%ebx, %ebp
	leal	-1(%r15,%r12), %esi
	movl	%esi, 116(%rsp)         # 4-byte Spill
	movq	%r14, %rdi
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$5, %ebx
	orl	%ebp, %ebx
	leal	-2(%r15,%r12), %esi
	movl	%esi, 72(%rsp)          # 4-byte Spill
	movq	%r14, %rdi
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %r12d
	shll	$6, %r12d
	orl	%ebx, %r12d
	movq	%r14, %rdi
	movq	104(%rsp), %r13         # 8-byte Reload
	movl	%r13d, %esi
	movq	32(%rsp), %r15          # 8-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$7, %ebx
	orl	%r12d, %ebx
	movq	%r14, %rdi
	movl	116(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$8, %ebp
	orl	%ebx, %ebp
	movq	%r14, %rdi
	movl	72(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$9, %ebx
	orl	%ebp, %ebx
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	28(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$10, %ebp
	orl	%ebx, %ebp
	movq	%r14, %rdi
	movl	116(%rsp), %esi         # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$11, %ebx
	orl	%ebp, %ebx
	movq	144(%rsp), %rax         # 8-byte Reload
	movsbl	31(%rax), %edx
	addl	%r15d, %edx
	movsbl	30(%rax), %eax
	leal	-1(%rax,%r13), %esi
	movq	%r14, %rdi
	movq	48(%rsp), %r15          # 8-byte Reload
	callq	jbig2_image_get_pixel
	shll	$12, %eax
	orl	%ebx, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	movl	$-1, %ecx
	testl	%eax, %eax
	js	.LBB0_40
# BB#38:                                # %if.end.i.48
                                        #   in Loop: Header=BB0_37 Depth=2
	movq	136(%rsp), %rdi         # 8-byte Reload
	movl	56(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	movl	%eax, %ecx
	callq	jbig2_image_set_pixel
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	100(%rsp), %eax         # 4-byte Folded Reload
	leal	1(%rax), %eax
	movl	%eax, %r12d
	jl	.LBB0_37
.LBB0_39:                               # %for.inc.96.i
                                        #   in Loop: Header=BB0_35 Depth=1
	incl	%r15d
	xorl	%ecx, %ecx
	cmpl	20(%rsp), %r15d         # 4-byte Folded Reload
	jl	.LBB0_35
.LBB0_40:                               # %return
	movl	%ecx, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jbig2_decode_refinement_region, .Lfunc_end0-jbig2_decode_refinement_region
	.cfi_endproc

	.globl	jbig2_region_find_referred
	.align	16, 0x90
	.type	jbig2_region_find_referred,@function
jbig2_region_find_referred:             # @jbig2_region_find_referred
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r13, -32
.Ltmp21:
	.cfi_offset %r14, -24
.Ltmp22:
	.cfi_offset %r15, -16
	movq	%rsi, %r13
	movq	%rdi, %r14
	movslq	24(%r13), %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	jle	.LBB1_8
# BB#1:                                 # %for.body.lr.ph
	movabsq	$1168232153104, %r12    # imm = 0x11000100010
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%r14, %rdi
	callq	jbig2_find_segment
	testq	%rax, %rax
	je	.LBB1_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	4(%rax), %ecx
	andl	$63, %ecx
	cmpl	$40, %ecx
	ja	.LBB1_7
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	btq	%rcx, %r12
	jae	.LBB1_7
# BB#6:                                 # %sw.bb
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	$0, 40(%rax)
	je	.LBB1_7
	jmp	.LBB1_8
	.align	16, 0x90
.LBB1_3:                                # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	(%r13), %edx
	movq	32(%r13), %rax
	movl	(%rax,%rbx,4), %r8d
	movl	$2, %esi
	movl	$.L.str.1, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB1_7:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbx
	cmpq	%r15, %rbx
	movl	$0, %eax
	jl	.LBB1_2
.LBB1_8:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	jbig2_region_find_referred, .Lfunc_end1-jbig2_region_find_referred
	.cfi_endproc

	.globl	jbig2_refinement_region
	.align	16, 0x90
	.type	jbig2_refinement_region,@function
jbig2_refinement_region:                # @jbig2_refinement_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 160
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	cmpq	$17, 16(%r13)
	jbe	.LBB2_1
# BB#3:                                 # %if.end
	leaq	48(%rsp), %rdi
	movq	%r15, %rsi
	callq	jbig2_get_region_segment_info
	movl	(%r13), %edx
	movl	48(%rsp), %r8d
	movl	52(%rsp), %r9d
	movl	56(%rsp), %eax
	movl	60(%rsp), %ecx
	movzbl	68(%rsp), %esi
	movl	%esi, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, %esi
	movl	$.L.str.3, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movzbl	17(%r15), %ebp
	movl	%ebp, %ebx
	andl	$1, %ebx
	movl	%ebx, 72(%rsp)
	movl	%ebp, %eax
	andl	$2, %eax
	movl	%eax, %ecx
	shrl	%ecx
	movl	%ecx, 96(%rsp)
	movl	(%r13), %edx
	movl	$.L.str.5, %r9d
	movl	$.L.str.6, %ecx
	testl	%ebx, %ebx
	cmoveq	%rcx, %r9
	movl	$.L.str.7, %esi
	testl	%eax, %eax
	cmoveq	%rcx, %rsi
	movq	%rsi, (%rsp)
	movl	$1, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %r8d
	callq	jbig2_error
	testb	$-4, %bpl
	je	.LBB2_5
# BB#4:                                 # %if.then.18
	movl	(%r13), %edx
	movl	$2, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	72(%rsp), %ebx
.LBB2_5:                                # %if.end.21
	movl	$18, %ebp
	testl	%ebx, %ebx
	jne	.LBB2_8
# BB#6:                                 # %if.then.24
	cmpq	$21, 16(%r13)
	ja	.LBB2_7
.LBB2_1:                                # %if.then
	movl	(%r13), %edx
	movl	$3, %esi
	movl	$.L.str.2, %ecx
	jmp	.LBB2_2
.LBB2_7:                                # %if.end.31
	movsbl	18(%r15), %r8d
	movb	%r8b, 100(%rsp)
	movsbl	19(%r15), %r9d
	movb	%r9b, 101(%rsp)
	movsbl	20(%r15), %eax
	movb	%al, 102(%rsp)
	movsbl	21(%r15), %ecx
	movb	%cl, 103(%rsp)
	movl	(%r13), %edx
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, %esi
	movl	$.L.str.9, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	$22, %ebp
.LBB2_8:                                # %if.end.65
	movslq	24(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB2_18
# BB#9:                                 # %if.then.67
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r15, 40(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB2_17
# BB#10:                                # %for.body.lr.ph.i
	movabsq	$1168232153104, %r12    # imm = 0x11000100010
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movl	(%rax,%r15,4), %esi
	movq	%r14, %rdi
	callq	jbig2_find_segment
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB2_12
# BB#13:                                # %if.end.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movzbl	4(%rbp), %eax
	andl	$63, %eax
	cmpl	$40, %eax
	ja	.LBB2_16
# BB#14:                                # %if.end.i
                                        #   in Loop: Header=BB2_11 Depth=1
	btq	%rax, %r12
	jae	.LBB2_16
# BB#15:                                # %sw.bb.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	40(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB2_16
	jmp	.LBB2_36
	.align	16, 0x90
.LBB2_12:                               # %if.then.i
                                        #   in Loop: Header=BB2_11 Depth=1
	movl	(%r13), %edx
	movq	32(%r13), %rax
	movl	(%rax,%r15,4), %r8d
	movl	$2, %esi
	movl	$.L.str.1, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB2_16:                               # %for.inc.i
                                        #   in Loop: Header=BB2_11 Depth=1
	incq	%r15
	cmpq	%rbx, %r15
	jl	.LBB2_11
.LBB2_17:                               # %cleanup
	movl	(%r13), %edx
	movl	$3, %esi
	movl	$.L.str.10, %ecx
.LBB2_2:                                # %cleanup.154
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %ebp
	jmp	.LBB2_35
.LBB2_18:                               # %if.else
	movslq	96(%r14), %rax
	movq	104(%r14), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movq	40(%rcx,%rax), %rsi
	movq	%r14, %rdi
	callq	jbig2_image_clone
	movq	%rax, 80(%rsp)
	jmp	.LBB2_19
.LBB2_36:                               # %cleanup.thread
	movq	%r14, %rdi
	callq	jbig2_image_clone
	movq	%rax, 80(%rsp)
	movq	40(%rbp), %rsi
	movq	%r14, %rdi
	callq	jbig2_image_release
	movq	$0, 40(%rbp)
	movl	(%r13), %edx
	movl	(%rbp), %r8d
	xorl	%esi, %esi
	movl	$.L.str.11, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB2_19:                               # %if.end.85
	movq	$0, 88(%rsp)
	movl	48(%rsp), %esi
	movl	52(%rsp), %edx
	movq	%r14, %rdi
	callq	jbig2_image_new
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	(%r13), %edx
	testq	%rax, %rax
	je	.LBB2_20
# BB#22:                                # %if.end.95
	movl	48(%rsp), %r8d
	movl	52(%rsp), %r9d
	xorl	%esi, %esi
	movl	$.L.str.13, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	cmpl	$0, 72(%rsp)
	movq	(%r14), %rdi
	movl	$1024, %ebx             # imm = 0x400
	jne	.LBB2_24
# BB#23:                                # %select.mid
	movl	$8192, %ebx             # imm = 0x2000
.LBB2_24:                               # %select.end
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	jbig2_alloc
	testq	%rax, %rax
	je	.LBB2_25
# BB#26:                                # %if.end.109
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rbx, %rdx
	callq	memset
	addq	%rbp, %r15
	movq	16(%r13), %rdx
	subq	%rbp, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	jbig2_word_stream_buf_new
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB2_27
# BB#28:                                # %if.end.119
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	jbig2_arith_new
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB2_29
# BB#31:                                # %if.end.125
	leaq	72(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %r9
	callq	jbig2_decode_refinement_region
	movl	%eax, %ebp
	movb	4(%r13), %al
	andb	$63, %al
	movzbl	%al, %eax
	cmpl	$40, %eax
	jne	.LBB2_33
# BB#32:                                # %if.then.132
	movq	%r14, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_image_clone
	movq	%rax, 40(%r13)
	movq	40(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB2_34
.LBB2_20:                               # %if.then.92
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.12, %ecx
	jmp	.LBB2_21
.LBB2_25:                               # %if.then.107
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.14, %ecx
.LBB2_21:                               # %cleanup.150
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %ebp
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	movq	40(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB2_34
.LBB2_27:                               # %if.then.117
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.15, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %ebp
	xorl	%r12d, %r12d
	jmp	.LBB2_30
.LBB2_29:                               # %if.then.123
	xorl	%r12d, %r12d
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.16, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %ebp
.LBB2_30:                               # %cleanup.150
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB2_34
.LBB2_33:                               # %if.else.135
	movl	(%r13), %edx
	movl	48(%rsp), %r8d
	movl	52(%rsp), %r9d
	movl	56(%rsp), %eax
	movl	60(%rsp), %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%esi, %esi
	movl	$.L.str.17, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movslq	96(%r14), %rax
	leaq	(%rax,%rax,2), %rsi
	shlq	$4, %rsi
	addq	104(%r14), %rsi
	movl	56(%rsp), %ecx
	movl	60(%rsp), %r8d
	movl	64(%rsp), %r9d
	movq	%r14, %rdi
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdx
	callq	jbig2_page_add_result
	movq	%r13, %rsi
.LBB2_34:                               # %cleanup.150
	movq	%r14, %rdi
	callq	jbig2_image_release
	movq	80(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_image_release
	movq	(%r14), %rdi
	movq	%r12, %rsi
	callq	jbig2_free
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	jbig2_word_stream_buf_free
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
.LBB2_35:                               # %cleanup.154
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jbig2_refinement_region, .Lfunc_end2-jbig2_refinement_region
	.cfi_endproc

	.align	16, 0x90
	.type	mkctx1,@function
mkctx1:                                 # @mkctx1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 80
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %r13d
	movq	%rsi, %r15
	movq	8(%rdi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	-1(%r13), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movl	%r13d, %eax
	subl	16(%rdi), %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	%ebp, %r12d
	subl	20(%rdi), %r12d
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	leal	1(%r13), %esi
	decl	%ebp
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %r14d
	addl	%r14d, %r14d
	orl	%ebx, %r14d
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$2, %ebx
	orl	%r14d, %ebx
	movq	%r15, %rdi
	movl	4(%rsp), %esi           # 4-byte Reload
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$3, %ebp
	orl	%ebx, %ebp
	movq	8(%rsp), %r14           # 8-byte Reload
	leal	1(%r14), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	leal	1(%r12), %r15d
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$4, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$5, %ebp
	orl	%ebx, %ebp
	movq	%r13, %rdi
	movl	4(%rsp), %esi           # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$6, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$7, %ebp
	orl	%ebx, %ebp
	leal	-1(%r14), %esi
	movq	%r13, %rdi
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$8, %ebx
	orl	%ebp, %ebx
	leal	-1(%r12), %edx
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	jbig2_image_get_pixel
	shll	$9, %eax
	orl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mkctx1, .Lfunc_end3-mkctx1
	.cfi_endproc

	.align	16, 0x90
	.type	mkctx0,@function
mkctx0:                                 # @mkctx0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 112
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	8(%rdi), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	-1(%r14), %esi
	movl	%r14d, %eax
	subl	16(%rdi), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%r13d, %eax
	subl	20(%rdi), %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	leal	1(%r14), %esi
	leal	-1(%r13), %r15d
	movq	%rbp, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %r12d
	addl	%r12d, %r12d
	orl	%ebx, %r12d
	movq	%rbp, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$2, %ebx
	orl	%r12d, %ebx
	movq	48(%rsp), %rax          # 8-byte Reload
	movsbl	28(%rax), %esi
	addl	%r14d, %esi
	movsbl	29(%rax), %edx
	addl	%r13d, %edx
	movq	%rbp, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$3, %ebp
	orl	%ebx, %ebp
	movq	16(%rsp), %r14          # 8-byte Reload
	leal	1(%r14), %esi
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %r15d
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$4, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movq	%r12, %r13
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$5, %ebp
	orl	%ebx, %ebp
	leal	-1(%r14), %esi
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movq	%r14, %r12
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$6, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movq	40(%rsp), %r14          # 8-byte Reload
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$7, %ebp
	orl	%ebx, %ebp
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$8, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$9, %ebp
	orl	%ebx, %ebp
	leal	-1(%r14), %r15d
	movq	%r13, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$10, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$11, %ebp
	orl	%ebx, %ebp
	movq	48(%rsp), %rax          # 8-byte Reload
	movsbl	30(%rax), %esi
	addl	%r12d, %esi
	movsbl	31(%rax), %edx
	addl	%r14d, %edx
	movq	%r13, %rdi
	callq	jbig2_image_get_pixel
	shll	$12, %eax
	orl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mkctx0, .Lfunc_end4-mkctx0
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"decoding generic refinement region with offset %d,%x, GRTEMPLATE=%d, TPGRON=%d"
	.size	.L.str, 79

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"could not find referred to segment %d"
	.size	.L.str.1, 38

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Segment too short"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"generic region: %d x %d @ (%d, %d), flags = %02x"
	.size	.L.str.3, 49

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"segment flags = %02x %s%s"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" GRTEMPLATE"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" TPGRON"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"reserved segment flag bits are non-zero"
	.size	.L.str.8, 40

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"grat1: (%d, %d) grat2: (%d, %d)"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"could not find reference bitmap!"
	.size	.L.str.10, 33

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"found reference bitmap in segment %d"
	.size	.L.str.11, 37

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"unable to allocate refinement image"
	.size	.L.str.12, 36

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"allocated %d x %d image buffer for region decode results"
	.size	.L.str.13, 57

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"failed to allocate GR-stats in jbig2_refinement_region"
	.size	.L.str.14, 55

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"failed to allocate ws in jbig2_refinement_region"
	.size	.L.str.15, 49

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"failed to allocate as in jbig2_refinement_region"
	.size	.L.str.16, 49

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"composing %dx%d decoded refinement region onto page at (%d, %d)"
	.size	.L.str.17, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
