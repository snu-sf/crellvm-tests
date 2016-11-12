	.text
	.file	"jdinput.bc"
	.globl	jpeg_core_output_dimensions
	.align	16, 0x90
	.type	jpeg_core_output_dimensions,@function
jpeg_core_output_dimensions:            # @jpeg_core_output_dimensions
	.cfi_startproc
# BB#0:                                 # %entry
	movl	48(%rdi), %eax
	movl	%eax, 136(%rdi)
	movl	52(%rdi), %eax
	movl	%eax, 140(%rdi)
	retq
.Lfunc_end0:
	.size	jpeg_core_output_dimensions, .Lfunc_end0-jpeg_core_output_dimensions
	.cfi_endproc

	.globl	jinit_input_controller
	.align	16, 0x90
	.type	jinit_input_controller,@function
jinit_input_controller:                 # @jinit_input_controller
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	xorl	%esi, %esi
	movl	$48, %edx
	callq	*(%rax)
	movq	%rax, 824(%rbx)
	movq	$consume_markers, (%rax)
	movl	$start_input_pass, %ecx
	movd	%rcx, %xmm0
	movl	$reset_input_controller, %ecx
	movd	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 8(%rax)
	movq	$finish_input_pass, 24(%rax)
	movq	$0, 32(%rax)
	movl	$1, 40(%rax)
	popq	%rbx
	retq
.Lfunc_end1:
	.size	jinit_input_controller, .Lfunc_end1-jinit_input_controller
	.cfi_endproc

	.align	16, 0x90
	.type	consume_markers,@function
consume_markers:                        # @consume_markers
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
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	824(%r12), %r14
	cmpl	$0, 36(%r14)
	jne	.LBB2_84
# BB#1:                                 # %for.cond.preheader
	movabsq	$4294967297, %r15       # imm = 0x100000001
	jmp	.LBB2_2
	.align	16, 0x90
.LBB2_76:                               # %if.then.8
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$2, 40(%r14)
.LBB2_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_68 Depth 2
	movq	832(%r12), %rax
	movq	%r12, %rdi
	callq	*8(%rax)
	cmpl	$1, %eax
	jne	.LBB2_3
# BB#7:                                 # %sw.bb
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	40(%r14), %eax
	testl	%eax, %eax
	jne	.LBB2_8
# BB#78:                                # %if.else
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 32(%r14)
	jne	.LBB2_80
# BB#79:                                # %if.then.14
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%r12), %rax
	movl	$36, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB2_80:                               # %if.end.16
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 448(%r12)
	je	.LBB2_2
	jmp	.LBB2_81
	.align	16, 0x90
.LBB2_8:                                # %sw.bb
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$1, %eax
	jne	.LBB2_9
# BB#10:                                # %if.then.5
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$65500, 52(%r12)        # imm = 0xFFDC
	ja	.LBB2_12
# BB#11:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$65501, 48(%r12)        # imm = 0xFFDD
	jb	.LBB2_13
.LBB2_12:                               # %if.then.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%r12), %rax
	movl	$42, 40(%rax)
	movl	$65500, 44(%rax)        # imm = 0xFFDC
	movq	%r12, %rdi
	callq	*(%rax)
.LBB2_13:                               # %if.end.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	296(%r12), %eax
	leal	-8(%rax), %ecx
	cmpl	$5, %ecx
	jb	.LBB2_15
# BB#14:                                # %if.then.13.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%r12), %rcx
	movl	$16, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r12, %rdi
	callq	*(%rcx)
.LBB2_15:                               # %if.end.23.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	56(%r12), %r8d
	cmpl	$11, %r8d
	jl	.LBB2_17
# BB#16:                                # %if.then.26.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%r12), %rcx
	movl	$27, 40(%rcx)
	movl	%r8d, 44(%rcx)
	movl	$10, 48(%rcx)
	movq	%r12, %rdi
	callq	*(%rcx)
	movl	56(%r12), %r8d
.LBB2_17:                               # %if.end.40.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, 416(%r12)
	testl	%r8d, %r8d
	jle	.LBB2_23
# BB#18:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	304(%r12), %rbx
	addq	$12, %rbx
	xorl	%ebp, %ebp
	movl	$1, %ecx
	movl	$1, %esi
	.align	16, 0x90
.LBB2_19:                               # %for.body.i
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbx), %edx
	leal	-1(%rdx), %edi
	cmpl	$3, %edi
	ja	.LBB2_21
# BB#20:                                # %lor.lhs.false.50.i
                                        #   in Loop: Header=BB2_19 Depth=2
	movl	(%rbx), %edi
	leal	-1(%rdi), %eax
	cmpl	$4, %eax
	jb	.LBB2_22
.LBB2_21:                               # %if.then.57.i
                                        #   in Loop: Header=BB2_19 Depth=2
	movq	(%r12), %rax
	movl	$19, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
	movl	56(%r12), %r8d
	movl	416(%r12), %esi
	movl	-4(%rbx), %edx
	movl	(%rbx), %edi
	movl	420(%r12), %ecx
.LBB2_22:                               # %if.end.62.i
                                        #   in Loop: Header=BB2_19 Depth=2
	cmpl	%edx, %esi
	cmovgel	%esi, %edx
	movl	%edx, 416(%r12)
	cmpl	%edi, %ecx
	cmovll	%edi, %ecx
	movl	%ecx, 420(%r12)
	incl	%ebp
	addq	$96, %rbx
	cmpl	%r8d, %ebp
	movl	%edx, %esi
	jl	.LBB2_19
.LBB2_23:                               # %for.end.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 312(%r12)
	jne	.LBB2_26
# BB#24:                                # %lor.lhs.false.81.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 316(%r12)
	je	.LBB2_27
# BB#25:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 448(%r12)
	jne	.LBB2_26
.LBB2_27:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	760(%r12), %ecx
	cmpl	$79, %ecx
	jg	.LBB2_43
# BB#28:                                # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$23, %ecx
	jg	.LBB2_36
# BB#29:                                # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$7, %ecx
	jg	.LBB2_33
# BB#30:                                # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB2_31
# BB#58:                                # %sw.bb.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$1, 772(%r12)
	movq	$jpeg_natural_order, 776(%r12)
	movl	$0, 784(%r12)
	movl	$1, %ecx
	jmp	.LBB2_66
	.align	16, 0x90
.LBB2_9:                                # %sw.bb.if.end.6_crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	448(%r12), %eax
	jmp	.LBB2_75
.LBB2_43:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$167, %ecx
	jg	.LBB2_51
# BB#44:                                # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$119, %ecx
	jg	.LBB2_48
# BB#45:                                # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$80, %ecx
	jne	.LBB2_46
# BB#62:                                # %sw.bb.123.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$9, 772(%r12)
	movq	$jpeg_natural_order, 776(%r12)
	movl	$63, 784(%r12)
	movl	$9, %ecx
	jmp	.LBB2_66
.LBB2_36:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$47, %ecx
	jg	.LBB2_40
# BB#37:                                # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$24, %ecx
	jne	.LBB2_38
# BB#60:                                # %sw.bb.104.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$5, 772(%r12)
	movq	$jpeg_natural_order5, 776(%r12)
	movl	$24, 784(%r12)
	movl	$5, %ecx
	jmp	.LBB2_66
.LBB2_51:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$223, %ecx
	jg	.LBB2_55
# BB#52:                                # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$168, %ecx
	jne	.LBB2_53
# BB#64:                                # %sw.bb.139.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$13, 772(%r12)
	movq	$jpeg_natural_order, 776(%r12)
	movl	$63, 784(%r12)
	movl	$13, %ecx
	jmp	.LBB2_66
.LBB2_33:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$8, %ecx
	jne	.LBB2_34
# BB#59:                                # %sw.bb.94.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$3, 772(%r12)
	movq	$jpeg_natural_order3, 776(%r12)
	movl	$8, 784(%r12)
	movl	$3, %ecx
	jmp	.LBB2_66
.LBB2_48:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$120, %ecx
	jne	.LBB2_49
# BB#63:                                # %sw.bb.131.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$11, 772(%r12)
	movq	$jpeg_natural_order, 776(%r12)
	movl	$63, 784(%r12)
	movl	$11, %ecx
	jmp	.LBB2_66
.LBB2_40:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$48, %ecx
	jne	.LBB2_41
# BB#61:                                # %sw.bb.114.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$7, 772(%r12)
	movq	$jpeg_natural_order7, 776(%r12)
	movl	$48, 784(%r12)
	movl	$7, %ecx
	jmp	.LBB2_66
.LBB2_55:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$224, %ecx
	jne	.LBB2_56
# BB#65:                                # %sw.bb.147.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$15, 772(%r12)
	movq	$jpeg_natural_order, 776(%r12)
	movl	$63, 784(%r12)
	movl	$15, %ecx
	jmp	.LBB2_66
.LBB2_31:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$3, %ecx
	jne	.LBB2_42
# BB#32:                                # %sw.bb.89.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$2, 772(%r12)
	movq	$jpeg_natural_order2, 776(%r12)
	movl	$3, 784(%r12)
	movl	$2, %ecx
	jmp	.LBB2_66
.LBB2_46:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$99, %ecx
	jne	.LBB2_42
# BB#47:                                # %sw.bb.127.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$10, 772(%r12)
	movq	$jpeg_natural_order, 776(%r12)
	movl	$63, 784(%r12)
	movl	$10, %ecx
	jmp	.LBB2_66
.LBB2_38:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$35, %ecx
	jne	.LBB2_42
# BB#39:                                # %sw.bb.109.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$6, 772(%r12)
	movq	$jpeg_natural_order6, 776(%r12)
	movl	$35, 784(%r12)
	movl	$6, %ecx
	jmp	.LBB2_66
.LBB2_53:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$195, %ecx
	jne	.LBB2_42
# BB#54:                                # %sw.bb.143.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$14, 772(%r12)
	movq	$jpeg_natural_order, 776(%r12)
	movl	$63, 784(%r12)
	movl	$14, %ecx
	jmp	.LBB2_66
.LBB2_34:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$15, %ecx
	jne	.LBB2_42
# BB#35:                                # %sw.bb.99.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$4, 772(%r12)
	movq	$jpeg_natural_order4, 776(%r12)
	movl	$15, 784(%r12)
	movl	$4, %ecx
	jmp	.LBB2_66
.LBB2_49:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$143, %ecx
	jne	.LBB2_42
# BB#50:                                # %sw.bb.135.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$12, 772(%r12)
	movq	$jpeg_natural_order, 776(%r12)
	movl	$63, 784(%r12)
	movl	$12, %ecx
	jmp	.LBB2_66
.LBB2_41:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$63, %ecx
	jne	.LBB2_42
.LBB2_26:                               # %if.then.84.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$8, 772(%r12)
	movq	$jpeg_natural_order, 776(%r12)
	movl	$63, 784(%r12)
	movl	$8, %ecx
.LBB2_66:                               # %if.end.176.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%ecx, 424(%r12)
	movl	%ecx, 428(%r12)
	testl	%r8d, %r8d
	jle	.LBB2_71
# BB#67:                                # %for.body.184.lr.ph.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	304(%r12), %rbx
	addq	$8, %rbx
	xorl	%ebp, %ebp
	jmp	.LBB2_68
	.align	16, 0x90
.LBB2_69:                               # %for.body.184.i.for.body.184.i_crit_edge
                                        #   in Loop: Header=BB2_68 Depth=2
	addq	$96, %rbx
	movl	772(%r12), %ecx
.LBB2_68:                               # %for.body.184.i
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, 28(%rbx)
	movl	%ecx, 32(%rbx)
	movl	48(%r12), %eax
	movslq	(%rbx), %rdi
	imulq	%rax, %rdi
	movslq	416(%r12), %rax
	movslq	%ecx, %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 20(%rbx)
	movl	52(%r12), %eax
	movslq	4(%rbx), %rdi
	imulq	%rax, %rdi
	movslq	772(%r12), %rax
	movslq	420(%r12), %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 24(%rbx)
	movl	48(%r12), %eax
	movslq	(%rbx), %rdi
	imulq	%rax, %rdi
	movslq	416(%r12), %rsi
	callq	jdiv_round_up
	movl	%eax, 36(%rbx)
	movl	52(%r12), %eax
	movslq	4(%rbx), %rdi
	imulq	%rax, %rdi
	movslq	420(%r12), %rsi
	callq	jdiv_round_up
	movl	%eax, 40(%rbx)
	movl	$1, 44(%rbx)
	movq	$0, 72(%rbx)
	incl	%ebp
	cmpl	56(%r12), %ebp
	jl	.LBB2_69
# BB#70:                                # %for.end.228.i.loopexit
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	772(%r12), %ecx
.LBB2_71:                               # %for.end.228.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	52(%r12), %edi
	movslq	420(%r12), %rax
	movslq	%ecx, %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 432(%r12)
	movl	448(%r12), %eax
	cmpl	56(%r12), %eax
	jl	.LBB2_73
# BB#72:                                # %lor.lhs.false.241.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 316(%r12)
	je	.LBB2_74
.LBB2_73:                               # %if.then.244.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	824(%r12), %rcx
	movl	$1, 32(%rcx)
	jmp	.LBB2_75
.LBB2_74:                               # %if.else.245.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	824(%r12), %rcx
	movl	$0, 32(%rcx)
	.align	16, 0x90
.LBB2_75:                               # %if.end.6
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%eax, %eax
	je	.LBB2_76
	jmp	.LBB2_77
.LBB2_56:                               # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$255, %ecx
	jne	.LBB2_42
# BB#57:                                # %sw.bb.151.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$16, 772(%r12)
	movq	$jpeg_natural_order, 776(%r12)
	movl	$63, 784(%r12)
	movl	$16, %ecx
	jmp	.LBB2_66
.LBB2_42:                               # %sw.default.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%r12), %rax
	movl	$17, 40(%rax)
	movl	756(%r12), %ecx
	movl	%ecx, 44(%rax)
	movl	760(%r12), %ecx
	movl	%ecx, 48(%rax)
	movl	764(%r12), %ecx
	movl	%ecx, 52(%rax)
	movl	768(%r12), %ecx
	movl	%ecx, 56(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
	movl	772(%r12), %ecx
	movl	56(%r12), %r8d
	jmp	.LBB2_66
.LBB2_3:                                # %for.cond
	cmpl	$2, %eax
	jne	.LBB2_85
# BB#4:                                 # %sw.bb.22
	movl	$1, 36(%r14)
	cmpl	$0, 40(%r14)
	je	.LBB2_82
# BB#5:                                 # %if.then.27
	movq	832(%r12), %rax
	cmpl	$0, 28(%rax)
	je	.LBB2_84
# BB#6:                                 # %if.then.30
	movq	(%r12), %rax
	movl	$62, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
	jmp	.LBB2_84
.LBB2_81:                               # %if.end.20
	movq	%r12, %rdi
	callq	start_input_pass
	movl	$1, %eax
	jmp	.LBB2_85
.LBB2_77:                               # %if.end.10
	movl	$0, 40(%r14)
	movl	$1, %eax
	jmp	.LBB2_85
.LBB2_82:                               # %if.else.36
	movl	172(%r12), %eax
	cmpl	%eax, 180(%r12)
	jle	.LBB2_84
# BB#83:                                # %if.then.38
	movl	%eax, 180(%r12)
.LBB2_84:                               # %cleanup
	movl	$2, %eax
.LBB2_85:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	consume_markers, .Lfunc_end2-consume_markers
	.cfi_endproc

	.align	16, 0x90
	.type	reset_input_controller,@function
reset_input_controller:                 # @reset_input_controller
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	824(%rbx), %rax
	movq	$consume_markers, (%rax)
	movq	$0, 32(%rax)
	movl	$1, 40(%rax)
	movq	(%rbx), %rax
	callq	*32(%rax)
	movq	832(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	$0, 192(%rbx)
	popq	%rbx
	retq
.Lfunc_end3:
	.size	reset_input_controller, .Lfunc_end3-reset_input_controller
	.cfi_endproc

	.align	16, 0x90
	.type	start_input_pass,@function
start_input_pass:                       # @start_input_pass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 48
.Ltmp19:
	.cfi_offset %rbx, -48
.Ltmp20:
	.cfi_offset %r12, -40
.Ltmp21:
	.cfi_offset %r13, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	movl	448(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB4_2
# BB#1:                                 # %per_scan_setup.exit.thread
	movq	456(%r12), %rcx
	movl	28(%rcx), %eax
	movl	%eax, 488(%r12)
	movl	32(%rcx), %eax
	movl	%eax, 492(%r12)
	movabsq	$4294967297, %rdx       # imm = 0x100000001
	movq	%rdx, 56(%rcx)
	movl	$1, 64(%rcx)
	movl	36(%rcx), %edx
	movl	%edx, 68(%rcx)
	movl	$1, 72(%rcx)
	movl	12(%rcx), %esi
	xorl	%edx, %edx
	divl	%esi
	testl	%edx, %edx
	cmovel	%esi, %edx
	movl	%edx, 76(%rcx)
	movq	$1, 496(%r12)
	movl	$1, %eax
	jmp	.LBB4_14
.LBB4_2:                                # %if.else.i
	leal	-1(%rax), %ecx
	cmpl	$4, %ecx
	jb	.LBB4_4
# BB#3:                                 # %if.then.11.i
	movq	(%r12), %rcx
	movl	$27, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	$4, 48(%rcx)
	movq	%r12, %rdi
	callq	*(%rcx)
.LBB4_4:                                # %if.end.20.i
	movl	48(%r12), %edi
	movslq	772(%r12), %rax
	movslq	416(%r12), %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 488(%r12)
	movl	52(%r12), %edi
	movslq	772(%r12), %rax
	movslq	420(%r12), %rsi
	imulq	%rax, %rsi
	callq	jdiv_round_up
	movl	%eax, 492(%r12)
	movl	$0, 496(%r12)
	cmpl	$0, 448(%r12)
	jle	.LBB4_21
# BB#5:                                 # %for.body.lr.ph.i
	xorl	%r8d, %r8d
	xorl	%r14d, %r14d
	jmp	.LBB4_6
	.align	16, 0x90
.LBB4_12:                               # %for.inc.for.body_crit_edge.i
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	496(%r12), %r8d
.LBB4_6:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	movq	456(%r12,%r14,8), %rsi
	movl	8(%rsi), %edi
	movl	%edi, 56(%rsi)
	movl	12(%rsi), %ecx
	movl	%ecx, 60(%rsi)
	movl	%ecx, %ebx
	imull	%edi, %ebx
	movl	%ebx, 64(%rsi)
	movl	36(%rsi), %eax
	imull	%edi, %eax
	movl	%eax, 68(%rsi)
	movl	28(%rsi), %eax
	xorl	%edx, %edx
	divl	%edi
	testl	%edx, %edx
	cmovel	%edi, %edx
	movl	%edx, 72(%rsi)
	movl	32(%rsi), %eax
	xorl	%edx, %edx
	divl	%ecx
	testl	%edx, %edx
	cmovel	%ecx, %edx
	movl	%edx, 76(%rsi)
	leal	(%r8,%rbx), %eax
	cmpl	$65, %eax
	jl	.LBB4_8
# BB#7:                                 # %if.then.70.i
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r12), %rax
	movl	$14, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB4_8:                                # %while.cond.preheader.i
                                        #   in Loop: Header=BB4_6 Depth=1
	testl	%ebx, %ebx
	jle	.LBB4_11
# BB#9:                                 # %while.body.preheader.i
                                        #   in Loop: Header=BB4_6 Depth=1
	incl	%ebx
	.align	16, 0x90
.LBB4_10:                               # %while.body.i
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	496(%r12), %rax
	leal	1(%rax), %ecx
	movl	%ecx, 496(%r12)
	movl	%r14d, 500(%r12,%rax,4)
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB4_10
.LBB4_11:                               # %for.inc.i
                                        #   in Loop: Header=BB4_6 Depth=1
	incq	%r14
	movslq	448(%r12), %rax
	cmpq	%rax, %r14
	jl	.LBB4_12
# BB#13:                                # %per_scan_setup.exit
	testl	%eax, %eax
	jle	.LBB4_21
.LBB4_14:                               # %for.body.lr.ph.i.10
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB4_15:                               # %for.body.i.13
                                        # =>This Inner Loop Header: Depth=1
	movq	456(%r12,%r15,8), %rbx
	cmpq	$0, 80(%rbx)
	jne	.LBB4_20
# BB#16:                                # %if.end.i
                                        #   in Loop: Header=BB4_15 Depth=1
	movslq	16(%rbx), %r13
	cmpq	$3, %r13
	ja	.LBB4_18
# BB#17:                                # %lor.lhs.false.4.i
                                        #   in Loop: Header=BB4_15 Depth=1
	cmpq	$0, 200(%r12,%r13,8)
	jne	.LBB4_19
.LBB4_18:                               # %if.then.8.i
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	(%r12), %rax
	movl	$54, 40(%rax)
	movl	%r13d, 44(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB4_19:                               # %if.end.12.i
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	8(%r12), %rax
	movl	$1, %esi
	movl	$132, %edx
	movq	%r12, %rdi
	callq	*(%rax)
	movq	%rax, %r14
	movq	200(%r12,%r13,8), %rsi
	movl	$132, %edx
	movq	%r14, %rdi
	callq	memcpy
	movq	%r14, 80(%rbx)
	movl	448(%r12), %eax
.LBB4_20:                               # %for.inc.i.21
                                        #   in Loop: Header=BB4_15 Depth=1
	incq	%r15
	movslq	%eax, %rcx
	cmpq	%rcx, %r15
	jl	.LBB4_15
.LBB4_21:                               # %latch_quant_tables.exit
	movq	840(%r12), %rax
	movq	%r12, %rdi
	callq	*(%rax)
	movq	808(%r12), %rax
	movq	%r12, %rdi
	callq	*(%rax)
	movq	808(%r12), %rax
	movq	824(%r12), %rcx
	movq	8(%rax), %rax
	movq	%rax, (%rcx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	start_input_pass, .Lfunc_end4-start_input_pass
	.cfi_endproc

	.align	16, 0x90
	.type	finish_input_pass,@function
finish_input_pass:                      # @finish_input_pass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	840(%rbx), %rax
	callq	*16(%rax)
	movq	824(%rbx), %rax
	movq	$consume_markers, (%rax)
	popq	%rbx
	retq
.Lfunc_end5:
	.size	finish_input_pass, .Lfunc_end5-finish_input_pass
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
