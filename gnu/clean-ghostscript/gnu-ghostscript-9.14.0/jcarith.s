	.text
	.file	"jcarith.bc"
	.globl	jinit_arith_encoder
	.align	16, 0x90
	.type	jinit_arith_encoder,@function
jinit_arith_encoder:                    # @jinit_arith_encoder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$368, %edx              # imm = 0x170
	callq	*(%rax)
	movq	%rax, 560(%rbx)
	movq	$start_pass, (%rax)
	movq	$finish_pass, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 104(%rax)
	movups	%xmm0, 232(%rax)
	movups	%xmm0, 120(%rax)
	movups	%xmm0, 248(%rax)
	movups	%xmm0, 136(%rax)
	movups	%xmm0, 264(%rax)
	movq	$0, 152(%rax)
	movq	$0, 280(%rax)
	movups	%xmm0, 160(%rax)
	movups	%xmm0, 288(%rax)
	movups	%xmm0, 176(%rax)
	movups	%xmm0, 304(%rax)
	movups	%xmm0, 192(%rax)
	movups	%xmm0, 320(%rax)
	movups	%xmm0, 208(%rax)
	movups	%xmm0, 336(%rax)
	movq	$0, 224(%rax)
	movq	$0, 352(%rax)
	movb	$113, 360(%rax)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	jinit_arith_encoder, .Lfunc_end0-jinit_arith_encoder
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass,@function
start_pass:                             # @start_pass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 48
.Ltmp7:
	.cfi_offset %rbx, -48
.Ltmp8:
	.cfi_offset %r12, -40
.Ltmp9:
	.cfi_offset %r13, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	560(%r15), %r14
	testl	%esi, %esi
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%r15), %rax
	movl	$49, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB1_2:                                # %if.end
	cmpl	$0, 348(%r15)
	je	.LBB1_10
# BB#3:                                 # %if.then.4
	movl	460(%r15), %eax
	cmpl	$0, 468(%r15)
	je	.LBB1_4
# BB#7:                                 # %if.else.11
	testl	%eax, %eax
	je	.LBB1_8
# BB#9:                                 # %if.else.17
	movq	$encode_mcu_AC_refine, 8(%r14)
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.22
	movq	$encode_mcu, 8(%r14)
	jmp	.LBB1_11
.LBB1_4:                                # %if.then.5
	testl	%eax, %eax
	je	.LBB1_5
# BB#6:                                 # %if.else
	movq	$encode_mcu_AC_first, 8(%r14)
	jmp	.LBB1_11
.LBB1_8:                                # %if.then.14
	movq	$encode_mcu_DC_refine, 8(%r14)
	jmp	.LBB1_11
.LBB1_5:                                # %if.then.7
	movq	$encode_mcu_DC_first, 8(%r14)
.LBB1_11:                               # %for.cond.preheader
	cmpl	$0, 372(%r15)
	jle	.LBB1_27
# BB#12:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	376(%r15,%rbx,8), %r12
	cmpl	$0, 460(%r15)
	jne	.LBB1_20
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	$0, 468(%r15)
	jne	.LBB1_20
# BB#15:                                # %if.then.31
                                        #   in Loop: Header=BB1_13 Depth=1
	movslq	20(%r12), %r13
	cmpq	$16, %r13
	jb	.LBB1_17
# BB#16:                                # %if.then.34
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	(%r15), %rax
	movl	$50, 40(%rax)
	movl	%r13d, 44(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB1_17:                               # %if.end.41
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	104(%r14,%r13,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_19
# BB#18:                                # %if.then.45
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$64, %edx
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rax, %rdi
	movq	%rdi, 104(%r14,%r13,8)
.LBB1_19:                               # %if.end.49
                                        #   in Loop: Header=BB1_13 Depth=1
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movl	$0, 64(%r14,%rbx,4)
	movl	$0, 80(%r14,%rbx,4)
	.align	16, 0x90
.LBB1_20:                               # %if.end.58
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	$0, 464(%r15)
	je	.LBB1_26
# BB#21:                                # %if.then.60
                                        #   in Loop: Header=BB1_13 Depth=1
	movslq	24(%r12), %r12
	cmpq	$16, %r12
	jb	.LBB1_23
# BB#22:                                # %if.then.64
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	(%r15), %rax
	movl	$50, 40(%rax)
	movl	%r12d, 44(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB1_23:                               # %if.end.73
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	232(%r14,%r12,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_25
# BB#24:                                # %if.then.77
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rax, %rdi
	movq	%rdi, 232(%r14,%r12,8)
.LBB1_25:                               # %if.end.84
                                        #   in Loop: Header=BB1_13 Depth=1
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
.LBB1_26:                               # %for.inc
                                        #   in Loop: Header=BB1_13 Depth=1
	incq	%rbx
	movslq	372(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB1_13
.LBB1_27:                               # %for.end
	movl	$65536, %eax            # imm = 0x10000
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 24(%r14)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 40(%r14)
	movabsq	$-4294967285, %rax      # imm = 0xFFFFFFFF0000000B
	movq	%rax, 56(%r14)
	movl	316(%r15), %eax
	movl	%eax, 96(%r14)
	movl	$0, 100(%r14)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	start_pass, .Lfunc_end1-start_pass
	.cfi_endproc

	.align	16, 0x90
	.type	finish_pass,@function
finish_pass:                            # @finish_pass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -24
.Ltmp16:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	560(%rbx), %r14
	movl	32(%r14), %eax
	movq	24(%r14), %rcx
	leal	-1(%rax,%rcx), %eax
	movl	$4160749568, %edx       # imm = 0xF8000000
	orq	$134152192, %rdx        # imm = 0x7FF0000
	andq	%rax, %rdx
	leaq	32768(%rdx), %rax
	cmpq	%rcx, %rdx
	cmovgeq	%rdx, %rax
	movb	56(%r14), %cl
	shlq	%cl, %rax
	movq	%rax, 24(%r14)
	testl	$-134217728, %eax       # imm = 0xFFFFFFFFF8000000
	movl	60(%r14), %eax
	je	.LBB2_16
# BB#1:                                 # %if.then.8
	testl	%eax, %eax
	js	.LBB2_15
# BB#2:                                 # %if.then.10
	cmpq	$0, 48(%r14)
	je	.LBB2_8
	.align	16, 0x90
.LBB2_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_6
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB2_6:                                # %emit_byte.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	decq	48(%r14)
	jne	.LBB2_3
# BB#7:                                 # %if.end.15.loopexit
	movl	60(%r14), %eax
.LBB2_8:                                # %if.end.15
	incl	%eax
	movq	40(%rbx), %rcx
	movq	(%rcx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movb	%al, (%rdx)
	decq	8(%rcx)
	jne	.LBB2_11
# BB#9:                                 # %if.then.i.60
	movq	%rbx, %rdi
	callq	*24(%rcx)
	testl	%eax, %eax
	jne	.LBB2_11
# BB#10:                                # %if.then.3.i.64
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB2_11:                               # %emit_byte.exit65
	cmpl	$254, 60(%r14)
	jne	.LBB2_15
# BB#12:                                # %if.then.21
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_15
# BB#13:                                # %if.then.i.75
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_15
# BB#14:                                # %if.then.3.i.79
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB2_15:                               # %if.end.23
	movq	40(%r14), %rax
	addq	%rax, 48(%r14)
	movq	$0, 40(%r14)
	jmp	.LBB2_41
.LBB2_16:                               # %if.else.27
	testl	%eax, %eax
	je	.LBB2_17
# BB#18:                                # %if.else.32
	js	.LBB2_28
# BB#19:                                # %if.then.35
	cmpq	$0, 48(%r14)
	je	.LBB2_25
	.align	16, 0x90
.LBB2_20:                               # %do.body.39
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_23
# BB#21:                                # %if.then.i.90
                                        #   in Loop: Header=BB2_20 Depth=1
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_23
# BB#22:                                # %if.then.3.i.94
                                        #   in Loop: Header=BB2_20 Depth=1
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB2_23:                               # %emit_byte.exit95
                                        #   in Loop: Header=BB2_20 Depth=1
	decq	48(%r14)
	jne	.LBB2_20
# BB#24:                                # %if.end.45.loopexit
	movl	60(%r14), %eax
.LBB2_25:                               # %if.end.45
	movq	40(%rbx), %rcx
	movq	(%rcx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movb	%al, (%rdx)
	decq	8(%rcx)
	jne	.LBB2_28
# BB#26:                                # %if.then.i.106
	movq	%rbx, %rdi
	callq	*24(%rcx)
	testl	%eax, %eax
	jne	.LBB2_28
# BB#27:                                # %if.then.3.i.110
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	jmp	.LBB2_28
.LBB2_17:                               # %if.then.30
	incq	48(%r14)
.LBB2_28:                               # %if.end.48
	cmpq	$0, 40(%r14)
	je	.LBB2_41
# BB#29:                                # %if.then.51
	cmpq	$0, 48(%r14)
	je	.LBB2_34
	.align	16, 0x90
.LBB2_30:                               # %do.body.55
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_33
# BB#31:                                # %if.then.i.121
                                        #   in Loop: Header=BB2_30 Depth=1
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_33
# BB#32:                                # %if.then.3.i.125
                                        #   in Loop: Header=BB2_30 Depth=1
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB2_33:                               # %emit_byte.exit126
                                        #   in Loop: Header=BB2_30 Depth=1
	decq	48(%r14)
	jne	.LBB2_30
	.align	16, 0x90
.LBB2_34:                               # %do.body.62
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB2_37
# BB#35:                                # %if.then.i.136
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_37
# BB#36:                                # %if.then.3.i.140
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB2_37:                               # %emit_byte.exit141
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_40
# BB#38:                                # %if.then.i.151
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_40
# BB#39:                                # %if.then.3.i.155
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB2_40:                               # %emit_byte.exit156
                                        #   in Loop: Header=BB2_34 Depth=1
	decq	40(%r14)
	jne	.LBB2_34
.LBB2_41:                               # %if.end.69
	movq	24(%r14), %rax
	testl	$134215680, %eax        # imm = 0x7FFF800
	je	.LBB2_62
# BB#42:                                # %if.then.73
	cmpq	$0, 48(%r14)
	je	.LBB2_48
	.align	16, 0x90
.LBB2_43:                               # %do.body.77
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_46
# BB#44:                                # %if.then.i.166
                                        #   in Loop: Header=BB2_43 Depth=1
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_46
# BB#45:                                # %if.then.3.i.170
                                        #   in Loop: Header=BB2_43 Depth=1
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB2_46:                               # %emit_byte.exit171
                                        #   in Loop: Header=BB2_43 Depth=1
	decq	48(%r14)
	jne	.LBB2_43
# BB#47:                                # %if.end.83.loopexit
	movq	24(%r14), %rax
.LBB2_48:                               # %if.end.83
	shrq	$19, %rax
	movq	40(%rbx), %rcx
	movq	(%rcx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movb	%al, (%rdx)
	decq	8(%rcx)
	jne	.LBB2_51
# BB#49:                                # %if.then.i.182
	movq	%rbx, %rdi
	callq	*24(%rcx)
	testl	%eax, %eax
	jne	.LBB2_51
# BB#50:                                # %if.then.3.i.186
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB2_51:                               # %emit_byte.exit187
	movl	$133693440, %eax        # imm = 0x7F80000
	andq	24(%r14), %rax
	cmpq	$133693440, %rax        # imm = 0x7F80000
	jne	.LBB2_55
# BB#52:                                # %if.then.91
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_55
# BB#53:                                # %if.then.i.197
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_55
# BB#54:                                # %if.then.3.i.201
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB2_55:                               # %if.end.92
	movq	24(%r14), %rax
	testl	$522240, %eax           # imm = 0x7F800
	je	.LBB2_62
# BB#56:                                # %if.then.96
	shrq	$11, %rax
	movq	40(%rbx), %rcx
	movq	(%rcx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movb	%al, (%rdx)
	decq	8(%rcx)
	jne	.LBB2_59
# BB#57:                                # %if.then.i.213
	movq	%rbx, %rdi
	callq	*24(%rcx)
	testl	%eax, %eax
	jne	.LBB2_59
# BB#58:                                # %if.then.3.i.217
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB2_59:                               # %emit_byte.exit218
	movl	$522240, %eax           # imm = 0x7F800
	andq	24(%r14), %rax
	cmpq	$522240, %rax           # imm = 0x7F800
	jne	.LBB2_62
# BB#60:                                # %if.then.106
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_62
# BB#61:                                # %if.then.i.228
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB2_63
.LBB2_62:                               # %if.end.109
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB2_63:                               # %if.then.3.i.232
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end2:
	.size	finish_pass, .Lfunc_end2-finish_pass
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu_DC_first,@function
encode_mcu_DC_first:                    # @encode_mcu_DC_first
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
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	560(%r15), %r12
	movq	%r12, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 316(%r15)
	je	.LBB3_4
# BB#1:                                 # %if.then
	movl	96(%r12), %eax
	testl	%eax, %eax
	jne	.LBB3_3
# BB#2:                                 # %if.then.2
	movl	100(%r12), %esi
	movq	%r15, %rdi
	callq	emit_restart
	movl	316(%r15), %eax
	movl	%eax, 96(%r12)
	movl	100(%r12), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 100(%r12)
.LBB3_3:                                # %if.end
	decl	%eax
	movl	%eax, 96(%r12)
.LBB3_4:                                # %for.cond.preheader
	cmpl	$0, 416(%r15)
	jle	.LBB3_23
# BB#5:                                 # %for.body.lr.ph
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB3_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
                                        #     Child Loop BB3_21 Depth 2
	movslq	420(%r15,%r13,4), %rbp
	movq	376(%r15,%rbp,8), %rdx
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%r13,8), %rax
	movswl	(%rax), %eax
	movb	472(%r15), %cl
	sarl	%cl, %eax
	movslq	20(%rdx), %rcx
	movslq	80(%r12,%rbp,4), %rbx
	addq	104(%r12,%rcx,8), %rbx
	movl	%eax, %r14d
	subl	64(%r12,%rbp,4), %r14d
	jne	.LBB3_8
# BB#7:                                 # %if.then.24
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	movl	$0, 80(%r12,%rbp,4)
	jmp	.LBB3_22
	.align	16, 0x90
.LBB3_8:                                # %if.else
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%eax, 64(%r12,%rbp,4)
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	testl	%r14d, %r14d
	jle	.LBB3_10
# BB#9:                                 # %if.then.33
                                        #   in Loop: Header=BB3_6 Depth=1
	leaq	1(%rbx), %rsi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	arith_encode
	addq	$2, %rbx
	movl	$4, %eax
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.39
                                        #   in Loop: Header=BB3_6 Depth=1
	negl	%r14d
	leaq	1(%rbx), %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	arith_encode
	addq	$3, %rbx
	movl	$8, %eax
.LBB3_11:                               # %if.end.46
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%eax, 80(%r12,%rbp,4)
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r12, %rbp
	xorl	%r12d, %r12d
	decl	%r14d
	je	.LBB3_15
# BB#12:                                # %if.then.49
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	$1, %r12d
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	104(%rbp,%rax,8), %rbx
	addq	$20, %rbx
	movl	%r14d, %ebp
	jmp	.LBB3_14
	.align	16, 0x90
.LBB3_13:                               # %while.body
                                        #   in Loop: Header=BB3_14 Depth=2
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	addl	%r12d, %r12d
	incq	%rbx
.LBB3_14:                               # %while.body
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sarl	%ebp
	jne	.LBB3_13
.LBB3_15:                               # %if.end.57
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	movq	24(%rsp), %rdx          # 8-byte Reload
	movb	224(%r15,%rdx), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	shrq	%rax
	cmpl	%eax, %r12d
	jge	.LBB3_17
# BB#16:                                # %if.then.66
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	movl	$0, 80(%rax,%rcx,4)
	jmp	.LBB3_19
	.align	16, 0x90
.LBB3_17:                               # %if.else.70
                                        #   in Loop: Header=BB3_6 Depth=1
	movb	240(%r15,%rdx), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	shrq	%rax
	cmpl	%eax, %r12d
	jle	.LBB3_19
# BB#18:                                # %if.then.80
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	addl	$8, 80(%rax,%rcx,4)
.LBB3_19:                               # %if.end.85
                                        #   in Loop: Header=BB3_6 Depth=1
	sarl	%r12d
	je	.LBB3_22
# BB#20:                                #   in Loop: Header=BB3_6 Depth=1
	addq	$14, %rbx
	.align	16, 0x90
.LBB3_21:                               # %while.body.90
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r14d, %r12d
	setne	%al
	movzbl	%al, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	sarl	%r12d
	jne	.LBB3_21
.LBB3_22:                               # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=1
	incq	%r13
	movslq	416(%r15), %rax
	cmpq	%rax, %r13
	movq	32(%rsp), %r12          # 8-byte Reload
	jl	.LBB3_6
.LBB3_23:                               # %for.end
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	encode_mcu_DC_first, .Lfunc_end3-encode_mcu_DC_first
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu_AC_first,@function
encode_mcu_AC_first:                    # @encode_mcu_AC_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 112
.Ltmp37:
	.cfi_offset %rbx, -56
.Ltmp38:
	.cfi_offset %r12, -48
.Ltmp39:
	.cfi_offset %r13, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	560(%rdi), %rbx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 316(%rdi)
	je	.LBB4_4
# BB#1:                                 # %if.then
	movl	96(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB4_3
# BB#2:                                 # %if.then.2
	movl	100(%rbx), %esi
	movq	%rdi, %rbp
	callq	emit_restart
	movq	%rbp, %rdi
	movl	316(%rdi), %eax
	movl	%eax, 96(%rbx)
	movl	100(%rbx), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 100(%rbx)
.LBB4_3:                                # %if.end
	decl	%eax
	movl	%eax, 96(%rbx)
.LBB4_4:                                # %if.end.8
	movq	480(%rdi), %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	(%r14), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	376(%rdi), %rax
	movslq	24(%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	464(%rdi), %eax
	movslq	%eax, %rdx
	.align	16, 0x90
.LBB4_5:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp,%rdx,4), %rcx
	movq	48(%rsp), %rsi          # 8-byte Reload
	movswl	(%rsi,%rcx,2), %esi
	testl	%esi, %esi
	js	.LBB4_8
# BB#6:                                 # %if.then.16
                                        #   in Loop: Header=BB4_5 Depth=1
	movb	472(%rdi), %cl
	sarl	%cl, %esi
	testl	%esi, %esi
	je	.LBB4_9
	jmp	.LBB4_7
	.align	16, 0x90
.LBB4_8:                                # %if.else
                                        #   in Loop: Header=BB4_5 Depth=1
	negl	%esi
	movb	472(%rdi), %cl
	sarl	%cl, %esi
	testl	%esi, %esi
	movl	%edx, %esi
	jne	.LBB4_10
.LBB4_9:                                # %do.cond
                                        #   in Loop: Header=BB4_5 Depth=1
	decq	%rdx
	xorl	%esi, %esi
	testl	%edx, %edx
	jne	.LBB4_5
	jmp	.LBB4_10
.LBB4_7:                                # %if.then.16.do.end_crit_edge
	movl	%edx, %esi
.LBB4_10:                               # %do.end
	movl	%esi, 20(%rsp)          # 4-byte Spill
	movl	460(%rdi), %ecx
	leal	-1(%rcx), %r15d
	cmpl	%esi, %ecx
	jg	.LBB4_30
# BB#11:                                # %for.body.lr.ph
	leaq	360(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB4_13:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #     Child Loop BB4_25 Depth 2
                                        #     Child Loop BB4_28 Depth 2
	leal	(%r15,%r15,2), %eax
	movslq	%eax, %r12
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	232(%rbx,%rax,8), %r12
	xorl	%edx, %edx
	movq	%rdi, %r14
	movq	%r12, %rsi
	callq	arith_encode
	movslq	%r15d, %r13
	leal	1(%r13), %eax
	cltq
	leaq	(%rbp,%rax,4), %rbx
	jmp	.LBB4_14
	.align	16, 0x90
.LBB4_21:                               # %if.end.59
                                        #   in Loop: Header=BB4_14 Depth=2
	leaq	1(%r12), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	arith_encode
	addq	$3, %r12
	addq	$4, %rbx
	movq	%r15, %r13
.LBB4_14:                               # %for.cond.33
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%r13), %r15
	movslq	(%rbx), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movswl	(%rcx,%rax,2), %ebp
	testl	%ebp, %ebp
	js	.LBB4_19
# BB#15:                                # %if.then.42
                                        #   in Loop: Header=BB4_14 Depth=2
	movb	472(%r14), %cl
	sarl	%cl, %ebp
	testl	%ebp, %ebp
	je	.LBB4_21
	jmp	.LBB4_16
	.align	16, 0x90
.LBB4_19:                               # %if.else.49
                                        #   in Loop: Header=BB4_14 Depth=2
	negl	%ebp
	movb	472(%r14), %cl
	sarl	%cl, %ebp
	testl	%ebp, %ebp
	je	.LBB4_21
# BB#20:                                # %if.then.54
                                        #   in Loop: Header=BB4_13 Depth=1
	leaq	1(%r12), %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	arith_encode
	movl	$1, %edx
	jmp	.LBB4_17
	.align	16, 0x90
.LBB4_16:                               # %if.then.46
                                        #   in Loop: Header=BB4_13 Depth=1
	leaq	1(%r12), %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	arith_encode
	xorl	%edx, %edx
.LBB4_17:                               # %for.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	%r14, %rdi
	movq	%r14, %rbx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	arith_encode
	addq	$2, %r12
	xorl	%r14d, %r14d
	decl	%ebp
	je	.LBB4_18
# BB#22:                                # %if.then.65
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	$1, %r14d
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	arith_encode
	cmpl	$2, %ebp
	jae	.LBB4_24
# BB#23:                                #   in Loop: Header=BB4_13 Depth=1
	movq	%rbx, %r13
	jmp	.LBB4_26
	.align	16, 0x90
.LBB4_18:                               #   in Loop: Header=BB4_13 Depth=1
	movq	%rbx, %r13
	jmp	.LBB4_26
	.align	16, 0x90
.LBB4_24:                               # %if.then.68
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	arith_encode
	movq	40(%rsp), %rcx          # 8-byte Reload
	movzbl	256(%rbx,%rcx), %eax
	cmpl	%eax, %r13d
	movl	$217, %r12d
	movl	$189, %eax
	cmovlq	%rax, %r12
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	232(%rax,%rcx,8), %r12
	movq	%rbx, %r13
	movl	%ebp, %ebx
	sarl	$2, %ebx
	movl	$2, %r14d
	je	.LBB4_26
	.align	16, 0x90
.LBB4_25:                               # %while.body
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	arith_encode
	addl	%r14d, %r14d
	incq	%r12
	sarl	%ebx
	jne	.LBB4_25
	.align	16, 0x90
.LBB4_26:                               # %if.end.84
                                        #   in Loop: Header=BB4_13 Depth=1
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	arith_encode
	sarl	%r14d
	je	.LBB4_12
# BB#27:                                #   in Loop: Header=BB4_13 Depth=1
	addq	$14, %r12
	.align	16, 0x90
.LBB4_28:                               # %while.body.89
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ebp, %r14d
	setne	%al
	movzbl	%al, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	arith_encode
	sarl	%r14d
	jne	.LBB4_28
.LBB4_12:                               # %for.cond.loopexit
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %r15d
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	%r13, %rdi
	movq	32(%rsp), %rbx          # 8-byte Reload
	jl	.LBB4_13
# BB#29:                                # %for.cond.for.end.94_crit_edge
	movl	464(%rdi), %eax
.LBB4_30:                               # %for.end.94
	cmpl	%eax, %r15d
	jge	.LBB4_32
# BB#31:                                # %if.then.98
	leal	(%r15,%r15,2), %eax
	movslq	%eax, %rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	232(%rbx,%rax,8), %rsi
	movl	$1, %edx
	callq	arith_encode
.LBB4_32:                               # %if.end.105
	movl	$1, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	encode_mcu_AC_first, .Lfunc_end4-encode_mcu_AC_first
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu_DC_refine,@function
encode_mcu_DC_refine:                   # @encode_mcu_DC_refine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	560(%rbx), %r15
	cmpl	$0, 316(%rbx)
	je	.LBB5_4
# BB#1:                                 # %if.then
	movl	96(%r15), %eax
	testl	%eax, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.then.2
	movl	100(%r15), %esi
	movq	%rbx, %rdi
	callq	emit_restart
	movl	316(%rbx), %eax
	movl	%eax, 96(%r15)
	movl	100(%r15), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 100(%r15)
.LBB5_3:                                # %if.end
	decl	%eax
	movl	%eax, 96(%r15)
.LBB5_4:                                # %if.end.8
	xorl	%ebp, %ebp
	cmpl	$0, 416(%rbx)
	jle	.LBB5_7
# BB#5:
	addq	$360, %r15              # imm = 0x168
	movl	472(%rbx), %r12d
	.align	16, 0x90
.LBB5_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbp,8), %rax
	movswl	(%rax), %edx
	movb	%r12b, %cl
	shrl	%cl, %edx
	andl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	arith_encode
	incq	%rbp
	movslq	416(%rbx), %rax
	cmpq	%rax, %rbp
	jl	.LBB5_6
.LBB5_7:                                # %for.end
	movl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	encode_mcu_DC_refine, .Lfunc_end5-encode_mcu_DC_refine
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu_AC_refine,@function
encode_mcu_AC_refine:                   # @encode_mcu_AC_refine
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
	subq	$40, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 96
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
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	560(%r15), %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	cmpl	$0, 316(%r15)
	je	.LBB6_4
# BB#1:                                 # %if.then
	movl	96(%rdi), %eax
	testl	%eax, %eax
	jne	.LBB6_3
# BB#2:                                 # %if.then.2
	movl	100(%rdi), %esi
	movq	%rdi, %rbp
	movq	%r15, %rdi
	callq	emit_restart
	movq	%rbp, %rdi
	movl	316(%r15), %eax
	movl	%eax, 96(%rdi)
	movl	100(%rdi), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 100(%rdi)
.LBB6_3:                                # %if.end
	decl	%eax
	movl	%eax, 96(%rdi)
.LBB6_4:                                # %if.end.8
	movq	480(%r15), %rbp
	movq	(%rbx), %r14
	movq	376(%r15), %rax
	movslq	24(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	464(%r15), %eax
	movslq	%eax, %rdx
	.align	16, 0x90
.LBB6_5:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp,%rdx,4), %rcx
	movswl	(%r14,%rcx,2), %esi
	testl	%esi, %esi
	jns	.LBB6_7
# BB#6:                                 # %if.else
                                        #   in Loop: Header=BB6_5 Depth=1
	negl	%esi
.LBB6_7:                                # %if.else
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	472(%r15), %cl
	sarl	%cl, %esi
	testl	%esi, %esi
	jne	.LBB6_9
# BB#8:                                 # %do.cond
                                        #   in Loop: Header=BB6_5 Depth=1
	decq	%rdx
	xorl	%esi, %esi
	testl	%edx, %edx
	movl	$0, %r13d
	jne	.LBB6_5
	jmp	.LBB6_18
.LBB6_9:                                # %do.end
	testl	%edx, %edx
	jle	.LBB6_10
# BB#11:                                # %for.body.lr.ph
	movslq	%edx, %r13
	.align	16, 0x90
.LBB6_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp,%r13,4), %rcx
	movswl	(%r14,%rcx,2), %esi
	testl	%esi, %esi
	jns	.LBB6_13
# BB#15:                                # %if.else.42
                                        #   in Loop: Header=BB6_12 Depth=1
	negl	%esi
.LBB6_13:                               # %if.then.37
                                        #   in Loop: Header=BB6_12 Depth=1
	movb	468(%r15), %cl
	sarl	%cl, %esi
	testl	%esi, %esi
	jne	.LBB6_14
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB6_12 Depth=1
	leaq	-1(%r13), %rcx
	cmpq	$1, %r13
	movq	%rcx, %r13
	jg	.LBB6_12
# BB#17:                                # %for.cond.for.end_crit_edge
	movl	%edx, %esi
	movl	%ecx, %r13d
	jmp	.LBB6_18
.LBB6_10:
	movl	%edx, %esi
	movl	%edx, %r13d
	jmp	.LBB6_18
.LBB6_14:                               # %if.else.42.for.end_crit_edge
	movl	%edx, %esi
.LBB6_18:                               # %for.end
	movl	%esi, 20(%rsp)          # 4-byte Spill
	movl	460(%r15), %ecx
	leal	-1(%rcx), %r12d
	cmpl	%esi, %ecx
	jg	.LBB6_33
# BB#19:                                # %for.body.55.lr.ph
	leaq	360(%rdi), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB6_20:                               # %for.body.55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_23 Depth 2
	leal	(%r12,%r12,2), %eax
	movslq	%eax, %rbx
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	232(%rdi,%rax,8), %rbx
	cmpl	%r13d, %r12d
	jl	.LBB6_22
# BB#21:                                # %if.then.60
                                        #   in Loop: Header=BB6_20 Depth=1
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
.LBB6_22:                               # %for.cond.62.preheader
                                        #   in Loop: Header=BB6_20 Depth=1
	incl	%r12d
	movslq	%r12d, %r12
	jmp	.LBB6_23
	.align	16, 0x90
.LBB6_37:                               # %if.end.102
                                        #   in Loop: Header=BB6_23 Depth=2
	leaq	1(%rbx), %rsi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	arith_encode
	addq	$3, %rbx
	incq	%r12
.LBB6_23:                               # %for.cond.62
                                        #   Parent Loop BB6_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rbp,%r12,4), %rax
	movswl	(%r14,%rax,2), %edx
	testl	%edx, %edx
	js	.LBB6_28
# BB#24:                                # %if.then.71
                                        #   in Loop: Header=BB6_23 Depth=2
	movb	472(%r15), %cl
	sarl	%cl, %edx
	testl	%edx, %edx
	je	.LBB6_37
	jmp	.LBB6_25
	.align	16, 0x90
.LBB6_28:                               # %if.else.85
                                        #   in Loop: Header=BB6_23 Depth=2
	negl	%edx
	movb	472(%r15), %cl
	sarl	%cl, %edx
	testl	%edx, %edx
	je	.LBB6_37
# BB#29:                                # %if.then.90
                                        #   in Loop: Header=BB6_20 Depth=1
	cmpl	$2, %edx
	jae	.LBB6_30
# BB#36:                                # %if.else.96
                                        #   in Loop: Header=BB6_20 Depth=1
	incq	%rbx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	movl	$1, %edx
	jmp	.LBB6_27
	.align	16, 0x90
.LBB6_25:                               # %if.then.75
                                        #   in Loop: Header=BB6_20 Depth=1
	cmpl	$2, %edx
	jb	.LBB6_26
.LBB6_30:                               # %if.then.93
                                        #   in Loop: Header=BB6_20 Depth=1
	addq	$2, %rbx
	andl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	jmp	.LBB6_31
	.align	16, 0x90
.LBB6_26:                               # %if.else.81
                                        #   in Loop: Header=BB6_20 Depth=1
	incq	%rbx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	xorl	%edx, %edx
.LBB6_27:                               # %for.cond.52.backedge
                                        #   in Loop: Header=BB6_20 Depth=1
	movq	%r15, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB6_31:                               # %for.cond.52.backedge
                                        #   in Loop: Header=BB6_20 Depth=1
	callq	arith_encode
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %r12d
	jl	.LBB6_20
# BB#32:                                # %for.cond.52.for.end.106_crit_edge
	movl	464(%r15), %eax
.LBB6_33:                               # %for.end.106
	cmpl	%eax, %r12d
	jge	.LBB6_35
# BB#34:                                # %if.then.110
	leal	(%r12,%r12,2), %eax
	movslq	%eax, %rsi
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	232(%rdi,%rax,8), %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	arith_encode
.LBB6_35:                               # %if.end.117
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	encode_mcu_AC_refine, .Lfunc_end6-encode_mcu_AC_refine
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu,@function
encode_mcu:                             # @encode_mcu
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
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 128
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	movq	560(%r12), %rbp
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	cmpl	$0, 316(%r12)
	je	.LBB7_4
# BB#1:                                 # %if.then
	movl	96(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB7_3
# BB#2:                                 # %if.then.2
	movl	100(%rbp), %esi
	movq	%r12, %rdi
	callq	emit_restart
	movl	316(%r12), %eax
	movl	%eax, 96(%rbp)
	movl	100(%rbp), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 100(%rbp)
.LBB7_3:                                # %if.end
	decl	%eax
	movl	%eax, 96(%rbp)
.LBB7_4:                                # %if.end.8
	cmpl	$0, 416(%r12)
	jle	.LBB7_51
# BB#5:                                 # %for.body.lr.ph
	movq	480(%r12), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	360(%rbp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB7_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_21 Depth 2
                                        #     Child Loop BB7_24 Depth 2
                                        #     Child Loop BB7_30 Depth 2
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_43 Depth 3
                                        #       Child Loop BB7_46 Depth 3
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	(%rsp), %rax            # 8-byte Reload
	movq	(%rax,%rcx,8), %r14
	movslq	420(%r12,%rcx,4), %r13
	movq	376(%r12,%r13,8), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movslq	20(%rax), %rcx
	movslq	80(%rbp,%r13,4), %rbx
	addq	104(%rbp,%rcx,8), %rbx
	movswl	(%r14), %eax
	movl	%eax, %r15d
	subl	64(%rbp,%r13,4), %r15d
	jne	.LBB7_8
# BB#7:                                 # %if.then.24
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	%r14, 56(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	movl	$0, 80(%rbp,%r13,4)
	jmp	.LBB7_22
	.align	16, 0x90
.LBB7_8:                                # %if.else
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	%eax, 64(%rbp,%r13,4)
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	testl	%r15d, %r15d
	jle	.LBB7_10
# BB#9:                                 # %if.then.35
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	%r14, 56(%rsp)          # 8-byte Spill
	leaq	1(%rbx), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	arith_encode
	addq	$2, %rbx
	movl	$4, %eax
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.41
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	%r14, 56(%rsp)          # 8-byte Spill
	negl	%r15d
	leaq	1(%rbx), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	arith_encode
	addq	$3, %rbx
	movl	$8, %eax
.LBB7_11:                               # %if.end.48
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	%eax, 80(%rbp,%r13,4)
	xorl	%r14d, %r14d
	decl	%r15d
	je	.LBB7_15
# BB#12:                                # %if.then.51
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	$1, %r14d
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	104(%rbp,%rax,8), %rbx
	addq	$20, %rbx
	movl	%r15d, %ebp
	jmp	.LBB7_14
	.align	16, 0x90
.LBB7_13:                               # %while.body
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	addl	%r14d, %r14d
	incq	%rbx
.LBB7_14:                               # %while.body
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sarl	%ebp
	jne	.LBB7_13
.LBB7_15:                               # %if.end.58
                                        #   in Loop: Header=BB7_6 Depth=1
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	movq	48(%rsp), %rdx          # 8-byte Reload
	movb	224(%r12,%rdx), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	shrq	%rax
	cmpl	%eax, %r14d
	jge	.LBB7_17
# BB#16:                                # %if.then.67
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	40(%rsp), %rbp          # 8-byte Reload
	movl	$0, 80(%rbp,%r13,4)
	jmp	.LBB7_19
	.align	16, 0x90
.LBB7_17:                               # %if.else.71
                                        #   in Loop: Header=BB7_6 Depth=1
	movb	240(%r12,%rdx), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	shrq	%rax
	cmpl	%eax, %r14d
	movq	40(%rsp), %rbp          # 8-byte Reload
	jle	.LBB7_19
# BB#18:                                # %if.then.81
                                        #   in Loop: Header=BB7_6 Depth=1
	addl	$8, 80(%rbp,%r13,4)
.LBB7_19:                               # %if.end.86
                                        #   in Loop: Header=BB7_6 Depth=1
	sarl	%r14d
	je	.LBB7_22
# BB#20:                                #   in Loop: Header=BB7_6 Depth=1
	addq	$14, %rbx
	.align	16, 0x90
.LBB7_21:                               # %while.body.91
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r15d, %r14d
	setne	%al
	movzbl	%al, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	sarl	%r14d
	jne	.LBB7_21
.LBB7_22:                               # %if.end.95
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	488(%r12), %eax
	testq	%rax, %rax
	movq	32(%rsp), %r15          # 8-byte Reload
	je	.LBB7_50
# BB#23:                                # %if.end.99
                                        #   in Loop: Header=BB7_6 Depth=1
	movslq	%eax, %rbx
	movq	64(%rsp), %rcx          # 8-byte Reload
	movslq	24(%rcx), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	(%r15,%rbx,4), %rcx
	xorl	%edx, %edx
	movq	56(%rsp), %rdi          # 8-byte Reload
	.align	16, 0x90
.LBB7_24:                               # %do.body
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rcx,%rdx,4), %rsi
	cmpw	$0, (%rdi,%rsi,2)
	jne	.LBB7_27
# BB#25:                                # %do.cond
                                        #   in Loop: Header=BB7_24 Depth=2
	decq	%rdx
	movl	%edx, %esi
	addl	%eax, %esi
	jne	.LBB7_24
	jmp	.LBB7_26
	.align	16, 0x90
.LBB7_27:                               # %do.end
                                        #   in Loop: Header=BB7_6 Depth=1
	addq	%rdx, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB7_26
# BB#28:                                # %for.body.112.lr.ph
                                        #   in Loop: Header=BB7_6 Depth=1
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB7_30:                               # %for.body.112
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_43 Depth 3
                                        #       Child Loop BB7_46 Depth 3
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	232(%rbp,%rax,8), %r14
	leal	(%r13,%r13,2), %eax
	movslq	%eax, %rbp
	leaq	(%r14,%rbp), %rbx
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	leal	1(%r13), %ecx
	movslq	%ecx, %rax
	movslq	(%r15,%rax,4), %rax
	movq	56(%rsp), %rdx          # 8-byte Reload
	movw	(%rdx,%rax,2), %ax
	testw	%ax, %ax
	je	.LBB7_32
# BB#31:                                #   in Loop: Header=BB7_30 Depth=2
	leaq	1(%r14,%rbp), %rsi
	jmp	.LBB7_35
	.align	16, 0x90
.LBB7_32:                               # %while.body.126.preheader
                                        #   in Loop: Header=BB7_30 Depth=2
	leal	1(%r13), %eax
	movq	%r13, %rcx
	movslq	%eax, %r13
	decq	%r13
	leal	(%rcx,%rcx,2), %eax
	cltq
	leaq	1(%r14,%rax), %rsi
	addl	$2, %ecx
	movslq	%ecx, %rax
	leaq	(%r15,%rax,4), %rbp
	movq	56(%rsp), %r14          # 8-byte Reload
	.align	16, 0x90
.LBB7_33:                               # %while.body.126
                                        #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rbx
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	arith_encode
	movslq	(%rbp), %rax
	movw	(%r14,%rax,2), %ax
	incq	%r13
	leaq	3(%rbx), %rsi
	addq	$4, %rbp
	testw	%ax, %ax
	je	.LBB7_33
# BB#34:                                # %while.cond.117.while.end.129_crit_edge
                                        #   in Loop: Header=BB7_30 Depth=2
	leal	1(%r13), %ecx
	addq	$2, %rbx
.LBB7_35:                               # %while.end.129
                                        #   in Loop: Header=BB7_30 Depth=2
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movswl	%ax, %r15d
	movl	$1, %edx
	movq	%r12, %rdi
	callq	arith_encode
	testw	%r15w, %r15w
	jle	.LBB7_37
# BB#36:                                # %if.then.133
                                        #   in Loop: Header=BB7_30 Depth=2
	xorl	%edx, %edx
	jmp	.LBB7_38
	.align	16, 0x90
.LBB7_37:                               # %if.else.134
                                        #   in Loop: Header=BB7_30 Depth=2
	negl	%r15d
	movl	$1, %edx
.LBB7_38:                               # %if.end.138
                                        #   in Loop: Header=BB7_30 Depth=2
	movq	%r12, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	arith_encode
	addq	$2, %rbx
	xorl	%r14d, %r14d
	decl	%r15d
	je	.LBB7_39
# BB#40:                                # %if.then.142
                                        #   in Loop: Header=BB7_30 Depth=2
	movl	$1, %r14d
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	cmpl	$2, %r15d
	jae	.LBB7_42
# BB#41:                                #   in Loop: Header=BB7_30 Depth=2
	movq	64(%rsp), %r13          # 8-byte Reload
	jmp	.LBB7_44
	.align	16, 0x90
.LBB7_39:                               #   in Loop: Header=BB7_30 Depth=2
	movq	64(%rsp), %r13          # 8-byte Reload
	jmp	.LBB7_44
	.align	16, 0x90
.LBB7_42:                               # %if.then.145
                                        #   in Loop: Header=BB7_30 Depth=2
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	movq	48(%rsp), %rcx          # 8-byte Reload
	movzbl	256(%r12,%rcx), %eax
	cmpl	%eax, %r13d
	movl	$217, %ebx
	movl	$189, %eax
	cmovlq	%rax, %rbx
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	232(%rax,%rcx,8), %rbx
	movl	%r15d, %ebp
	sarl	$2, %ebp
	movl	$2, %r14d
	movq	64(%rsp), %r13          # 8-byte Reload
	je	.LBB7_44
	.align	16, 0x90
.LBB7_43:                               # %while.body.161
                                        #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	addl	%r14d, %r14d
	incq	%rbx
	sarl	%ebp
	jne	.LBB7_43
	.align	16, 0x90
.LBB7_44:                               # %if.end.166
                                        #   in Loop: Header=BB7_30 Depth=2
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	sarl	%r14d
	je	.LBB7_29
# BB#45:                                #   in Loop: Header=BB7_30 Depth=2
	addq	$14, %rbx
	.align	16, 0x90
.LBB7_46:                               # %while.body.171
                                        #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%r15d, %r14d
	setne	%al
	movzbl	%al, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	arith_encode
	sarl	%r14d
	jne	.LBB7_46
.LBB7_29:                               # %for.cond.109.loopexit
                                        #   in Loop: Header=BB7_30 Depth=2
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r13d
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	32(%rsp), %r15          # 8-byte Reload
	jl	.LBB7_30
# BB#47:                                # %for.cond.109.for.end_crit_edge
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	488(%r12), %eax
	jmp	.LBB7_48
	.align	16, 0x90
.LBB7_26:                               # %for.end.loopexit
                                        #   in Loop: Header=BB7_6 Depth=1
	xorl	%r13d, %r13d
.LBB7_48:                               # %for.end
                                        #   in Loop: Header=BB7_6 Depth=1
	cmpl	%eax, %r13d
	jge	.LBB7_50
# BB#49:                                # %if.then.179
                                        #   in Loop: Header=BB7_6 Depth=1
	leal	(%r13,%r13,2), %eax
	movslq	%eax, %rsi
	movq	48(%rsp), %rax          # 8-byte Reload
	addq	232(%rbp,%rax,8), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	arith_encode
.LBB7_50:                               # %for.inc
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	8(%rsp), %rcx           # 8-byte Reload
	incq	%rcx
	movslq	416(%r12), %rax
	cmpq	%rax, %rcx
	jl	.LBB7_6
.LBB7_51:                               # %for.end.188
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	encode_mcu, .Lfunc_end7-encode_mcu
	.cfi_endproc

	.align	16, 0x90
	.type	emit_restart,@function
emit_restart:                           # @emit_restart
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 48
.Ltmp84:
	.cfi_offset %rbx, -48
.Ltmp85:
	.cfi_offset %r12, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	560(%r12), %r15
	callq	finish_pass
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB8_3
# BB#1:                                 # %if.then.i
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB8_3
# BB#2:                                 # %if.then.3.i
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB8_3:                                # %emit_byte.exit
	addl	$208, %r14d
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%r14b, (%rcx)
	decq	8(%rax)
	jne	.LBB8_6
# BB#4:                                 # %if.then.i.35
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3.i.39
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB8_6:                                # %for.cond.preheader
	cmpl	$0, 372(%r12)
	jle	.LBB8_14
# BB#7:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	376(%r12,%rbp,8), %rbx
	cmpl	$0, 460(%r12)
	jne	.LBB8_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_8 Depth=1
	cmpl	$0, 468(%r12)
	jne	.LBB8_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB8_8 Depth=1
	movslq	20(%rbx), %rax
	movq	104(%r15,%rax,8), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movl	$0, 64(%r15,%rbp,4)
	movl	$0, 80(%r15,%rbp,4)
	.align	16, 0x90
.LBB8_11:                               # %if.end
                                        #   in Loop: Header=BB8_8 Depth=1
	cmpl	$0, 464(%r12)
	je	.LBB8_13
# BB#12:                                # %if.then.10
                                        #   in Loop: Header=BB8_8 Depth=1
	movslq	24(%rbx), %rax
	movq	232(%r15,%rax,8), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
.LBB8_13:                               # %for.inc
                                        #   in Loop: Header=BB8_8 Depth=1
	incq	%rbp
	movslq	372(%r12), %rax
	cmpq	%rax, %rbp
	jl	.LBB8_8
.LBB8_14:                               # %for.end
	movl	$65536, %eax            # imm = 0x10000
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 24(%r15)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 40(%r15)
	movabsq	$-4294967285, %rax      # imm = 0xFFFFFFFF0000000B
	movq	%rax, 56(%r15)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	emit_restart, .Lfunc_end8-emit_restart
	.cfi_endproc

	.align	16, 0x90
	.type	arith_encode,@function
arith_encode:                           # @arith_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp93:
	.cfi_def_cfa_offset 48
.Ltmp94:
	.cfi_offset %rbx, -40
.Ltmp95:
	.cfi_offset %r12, -32
.Ltmp96:
	.cfi_offset %r14, -24
.Ltmp97:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	560(%rbx), %r14
	movzbl	(%rsi), %r9d
	movl	%r9d, %ecx
	andl	$127, %ecx
	movq	jpeg_aritab(,%rcx,8), %r8
	movq	%r8, %rdi
	sarq	$16, %rdi
	movq	32(%r14), %rcx
	subq	%rdi, %rcx
	movq	%rcx, 32(%r14)
	movl	%r9d, %eax
	shrl	$7, %eax
	cmpl	%edx, %eax
	jne	.LBB9_1
# BB#2:                                 # %if.else
	cmpq	$32767, %rcx            # imm = 0x7FFF
	jg	.LBB9_53
# BB#3:                                 # %if.end.21
	shrq	$8, %r8
	cmpq	%rdi, %rcx
	jge	.LBB9_5
	jmp	.LBB9_4
.LBB9_1:                                # %if.then
	cmpq	%rdi, %rcx
	jl	.LBB9_5
.LBB9_4:                                # %if.then.25
	addq	%rcx, 24(%r14)
	movq	%rdi, 32(%r14)
.LBB9_5:                                # %if.end.30
	andb	$-128, %r9b
	xorb	%r9b, %r8b
	movb	%r8b, (%rsi)
	movq	24(%r14), %r12
	movq	32(%r14), %rcx
	movl	56(%r14), %eax
	movl	$524287, %r15d          # imm = 0x7FFFF
	.align	16, 0x90
.LBB9_6:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_29 Depth 2
                                        #     Child Loop BB9_39 Depth 2
                                        #     Child Loop BB9_43 Depth 2
                                        #     Child Loop BB9_10 Depth 2
	addq	%rcx, %rcx
	movq	%rcx, 32(%r14)
	addq	%r12, %r12
	movq	%r12, 24(%r14)
	decl	%eax
	movl	%eax, 56(%r14)
	jne	.LBB9_52
# BB#7:                                 # %if.then.41
                                        #   in Loop: Header=BB9_6 Depth=1
	sarq	$19, %r12
	cmpq	$256, %r12              # imm = 0x100
	jl	.LBB9_23
# BB#8:                                 # %if.then.46
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	60(%r14), %eax
	testl	%eax, %eax
	js	.LBB9_22
# BB#9:                                 # %if.then.49
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$0, 48(%r14)
	je	.LBB9_15
	.align	16, 0x90
.LBB9_10:                               # %do.body.51
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB9_13
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB9_10 Depth=2
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_13
# BB#12:                                # %if.then.3.i
                                        #   in Loop: Header=BB9_10 Depth=2
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB9_13:                               # %emit_byte.exit
                                        #   in Loop: Header=BB9_10 Depth=2
	decq	48(%r14)
	jne	.LBB9_10
# BB#14:                                # %if.end.55.loopexit
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	60(%r14), %eax
.LBB9_15:                               # %if.end.55
                                        #   in Loop: Header=BB9_6 Depth=1
	incl	%eax
	movq	40(%rbx), %rcx
	movq	(%rcx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movb	%al, (%rdx)
	decq	8(%rcx)
	jne	.LBB9_18
# BB#16:                                # %if.then.i.76
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rbx, %rdi
	callq	*24(%rcx)
	testl	%eax, %eax
	jne	.LBB9_18
# BB#17:                                # %if.then.3.i.80
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB9_18:                               # %emit_byte.exit81
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	$254, 60(%r14)
	jne	.LBB9_22
# BB#19:                                # %if.then.62
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB9_22
# BB#20:                                # %if.then.i.91
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_22
# BB#21:                                # %if.then.3.i.95
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB9_22:                               # %if.end.64
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	40(%r14), %rax
	addq	%rax, 48(%r14)
	movq	$0, 40(%r14)
	jmp	.LBB9_50
.LBB9_23:                               # %if.else.71
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$255, %r12
	jne	.LBB9_25
# BB#24:                                # %if.then.74
                                        #   in Loop: Header=BB9_6 Depth=1
	incq	40(%r14)
	jmp	.LBB9_51
.LBB9_25:                               # %if.else.76
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	60(%r14), %eax
	testl	%eax, %eax
	je	.LBB9_26
# BB#27:                                # %if.else.83
                                        #   in Loop: Header=BB9_6 Depth=1
	js	.LBB9_37
# BB#28:                                # %if.then.87
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$0, 48(%r14)
	je	.LBB9_34
	.align	16, 0x90
.LBB9_29:                               # %do.body.91
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB9_32
# BB#30:                                # %if.then.i.106
                                        #   in Loop: Header=BB9_29 Depth=2
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_32
# BB#31:                                # %if.then.3.i.110
                                        #   in Loop: Header=BB9_29 Depth=2
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB9_32:                               # %emit_byte.exit111
                                        #   in Loop: Header=BB9_29 Depth=2
	decq	48(%r14)
	jne	.LBB9_29
# BB#33:                                # %if.end.97.loopexit
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	60(%r14), %eax
.LBB9_34:                               # %if.end.97
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	40(%rbx), %rcx
	movq	(%rcx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movb	%al, (%rdx)
	decq	8(%rcx)
	jne	.LBB9_37
# BB#35:                                # %if.then.i.122
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rbx, %rdi
	callq	*24(%rcx)
	testl	%eax, %eax
	jne	.LBB9_37
# BB#36:                                # %if.then.3.i.126
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	jmp	.LBB9_37
.LBB9_26:                               # %if.then.80
                                        #   in Loop: Header=BB9_6 Depth=1
	incq	48(%r14)
.LBB9_37:                               # %if.end.100
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$0, 40(%r14)
	je	.LBB9_50
# BB#38:                                # %if.then.103
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$0, 48(%r14)
	je	.LBB9_43
	.align	16, 0x90
.LBB9_39:                               # %do.body.107
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB9_42
# BB#40:                                # %if.then.i.137
                                        #   in Loop: Header=BB9_39 Depth=2
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_42
# BB#41:                                # %if.then.3.i.141
                                        #   in Loop: Header=BB9_39 Depth=2
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB9_42:                               # %emit_byte.exit142
                                        #   in Loop: Header=BB9_39 Depth=2
	decq	48(%r14)
	jne	.LBB9_39
	.align	16, 0x90
.LBB9_43:                               # %do.body.114
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB9_46
# BB#44:                                # %if.then.i.152
                                        #   in Loop: Header=BB9_43 Depth=2
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_46
# BB#45:                                # %if.then.3.i.156
                                        #   in Loop: Header=BB9_43 Depth=2
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB9_46:                               # %emit_byte.exit157
                                        #   in Loop: Header=BB9_43 Depth=2
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB9_49
# BB#47:                                # %if.then.i.167
                                        #   in Loop: Header=BB9_43 Depth=2
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_49
# BB#48:                                # %if.then.3.i.171
                                        #   in Loop: Header=BB9_43 Depth=2
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB9_49:                               # %emit_byte.exit172
                                        #   in Loop: Header=BB9_43 Depth=2
	decq	40(%r14)
	jne	.LBB9_43
.LBB9_50:                               # %if.end.120
                                        #   in Loop: Header=BB9_6 Depth=1
	movzbl	%r12b, %eax
	movl	%eax, 60(%r14)
.LBB9_51:                               # %if.end.125
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	24(%r14), %r12
	andq	%r15, %r12
	movq	%r12, 24(%r14)
	movl	56(%r14), %eax
	addl	$8, %eax
	movl	%eax, 56(%r14)
	movq	32(%r14), %rcx
.LBB9_52:                               # %do.cond.131
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$32768, %rcx            # imm = 0x8000
	jl	.LBB9_6
.LBB9_53:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	arith_encode, .Lfunc_end9-arith_encode
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
