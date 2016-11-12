	.text
	.file	"prolog.bc"
	.globl	prologues_list_short
	.align	16, 0x90
	.type	prologues_list_short,@function
prologues_list_short:                   # @prologues_list_short
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.1, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	pw_lister_on_suffix
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	prologues_list_short, .Lfunc_end0-prologues_list_short
	.cfi_endproc

	.globl	prologues_list_long
	.align	16, 0x90
	.type	prologues_list_long,@function
prologues_list_long:                    # @prologues_list_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.2, %rdx
	movabsq	$documentation_print_plain, %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	prologues_list_long_internal
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	prologues_list_long, .Lfunc_end1-prologues_list_long
	.cfi_endproc

	.align	16, 0x90
	.type	prologues_list_long_internal,@function
prologues_list_long_internal:           # @prologues_list_long_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, %rsi
	callq	pw_glob_on_suffix
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	prologue_print_signature
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movabsq	$free, %rsi
	movq	-40(%rbp), %rdi
	callq	da_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	prologues_list_long_internal, .Lfunc_end2-prologues_list_long_internal
	.cfi_endproc

	.globl	prologues_list_texinfo
	.align	16, 0x90
	.type	prologues_list_texinfo,@function
prologues_list_texinfo:                 # @prologues_list_texinfo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.3, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.4, %rdx
	movabsq	$documentation_print_texinfo, %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	prologues_list_long_internal
	movabsq	$.L.str.5, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -24(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	prologues_list_texinfo, .Lfunc_end3-prologues_list_texinfo
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1101004800              # float 20
.LCPI4_1:
	.long	1097859072              # float 15
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_2:
	.quad	4618891777831180698     # double 6.4000000000000004
.LCPI4_3:
	.quad	4621256167635550208     # double 9
.LCPI4_4:
	.quad	4619342137793917747     # double 6.7999999999999998
.LCPI4_5:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI4_6:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI4_7:
	.quad	4608983858650965606     # double 1.3999999999999999
	.text
	.globl	ps_begin
	.align	16, 0x90
	.type	ps_begin,@function
ps_begin:                               # @ps_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	output_prolog
	movq	-8(%rbp), %rdi
	movl	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movl	124(%rdi), %eax
	testl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB4_1
	jmp	.LBB4_52
.LBB4_52:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB4_11
	jmp	.LBB4_21
.LBB4_1:                                # %sw.bb
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movl	28(%rcx), %edx
	movq	-32(%rbp), %rcx
	subl	20(%rcx), %edx
	movq	-8(%rbp), %rcx
	cmpq	$0, 432(%rcx)
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movb	%al, -45(%rbp)          # 1-byte Spill
	je	.LBB4_3
# BB#2:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -45(%rbp)          # 1-byte Spill
.LBB4_3:                                # %lor.end
	movb	-45(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rdx
	cmpq	$0, 472(%rdx)
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB4_5
# BB#4:                                 # %lor.lhs.false
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	472(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -53(%rbp)          # 1-byte Spill
	jne	.LBB4_10
.LBB4_5:                                # %lor.lhs.false.11
	movq	-8(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB4_7
# BB#6:                                 # %lor.lhs.false.14
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	464(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -53(%rbp)          # 1-byte Spill
	jne	.LBB4_10
.LBB4_7:                                # %lor.rhs.19
	movb	$1, %al
	movq	-8(%rbp), %rcx
	cmpq	$0, 480(%rcx)
	movb	%al, -54(%rbp)          # 1-byte Spill
	je	.LBB4_9
# BB#8:                                 # %lor.rhs.22
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -54(%rbp)          # 1-byte Spill
.LBB4_9:                                # %lor.end.27
	movb	-54(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -53(%rbp)          # 1-byte Spill
.LBB4_10:                               # %lor.end.30
	movb	-53(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-52(%rbp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	imull	$12, %edx, %ecx
	movl	-44(%rbp), %edx         # 4-byte Reload
	subl	%ecx, %edx
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-32(%rbp), %rsi
	movl	24(%rsi), %ecx
	movq	-32(%rbp), %rsi
	subl	16(%rsi), %ecx
	movq	-8(%rbp), %rsi
	subl	152(%rsi), %ecx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	.LBB4_21
.LBB4_11:                               # %sw.bb.36
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movl	28(%rcx), %edx
	movq	-32(%rbp), %rcx
	subl	20(%rcx), %edx
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-32(%rbp), %rcx
	movl	24(%rcx), %edx
	movq	-32(%rbp), %rcx
	subl	16(%rcx), %edx
	movq	-8(%rbp), %rcx
	cmpq	$0, 432(%rcx)
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movb	%al, -61(%rbp)          # 1-byte Spill
	je	.LBB4_13
# BB#12:                                # %lor.rhs.47
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -61(%rbp)          # 1-byte Spill
.LBB4_13:                               # %lor.end.52
	movb	-61(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rdx
	cmpq	$0, 472(%rdx)
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB4_15
# BB#14:                                # %lor.lhs.false.59
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	472(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -69(%rbp)          # 1-byte Spill
	jne	.LBB4_20
.LBB4_15:                               # %lor.lhs.false.64
	movq	-8(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB4_17
# BB#16:                                # %lor.lhs.false.68
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	464(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -69(%rbp)          # 1-byte Spill
	jne	.LBB4_20
.LBB4_17:                               # %lor.rhs.73
	movb	$1, %al
	movq	-8(%rbp), %rcx
	cmpq	$0, 480(%rcx)
	movb	%al, -70(%rbp)          # 1-byte Spill
	je	.LBB4_19
# BB#18:                                # %lor.rhs.77
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -70(%rbp)          # 1-byte Spill
.LBB4_19:                               # %lor.end.82
	movb	-70(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -69(%rbp)          # 1-byte Spill
.LBB4_20:                               # %lor.end.86
	movb	-69(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-68(%rbp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	imull	$12, %edx, %ecx
	movl	-60(%rbp), %edx         # 4-byte Reload
	subl	%ecx, %edx
	movq	-8(%rbp), %rsi
	subl	152(%rsi), %edx
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, -16(%rbp)
.LBB4_21:                               # %sw.epilog
	movq	-8(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB4_23
# BB#22:                                # %lor.lhs.false.96
	movq	-8(%rbp), %rax
	movq	440(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB4_28
.LBB4_23:                               # %lor.lhs.false.101
	movq	-8(%rbp), %rax
	cmpq	$0, 448(%rax)
	je	.LBB4_25
# BB#24:                                # %lor.lhs.false.104
	movq	-8(%rbp), %rax
	movq	448(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB4_28
.LBB4_25:                               # %lor.lhs.false.109
	movq	-8(%rbp), %rax
	cmpq	$0, 456(%rax)
	je	.LBB4_27
# BB#26:                                # %lor.lhs.false.112
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB4_28
.LBB4_27:                               # %if.then
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$11, 24(%rax)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movss	%xmm0, 20(%rax)
	jmp	.LBB4_32
.LBB4_28:                               # %if.else
	movq	-8(%rbp), %rax
	movl	132(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	136(%rax), %ecx
	cmpl	$1, %ecx
	jle	.LBB4_30
# BB#29:                                # %if.then.121
	movss	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$11, 24(%rax)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movss	%xmm0, 20(%rax)
	jmp	.LBB4_31
.LBB4_30:                               # %if.else.126
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$15, 24(%rax)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movss	%xmm0, 20(%rax)
.LBB4_31:                               # %if.end
	jmp	.LBB4_32
.LBB4_32:                               # %if.end.131
	xorl	%eax, %eax
	movl	$12, %ecx
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdx
	cvtsi2ssl	136(%rdx), %xmm1
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	mulss	20(%rdx), %xmm1
	subss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	cmpl	$1, 136(%rdx)
	movl	%eax, %esi
	cmovgl	%ecx, %esi
	cvtsi2ssl	%esi, %xmm1
	subss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	cvtsi2ssl	136(%rdx), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdx
	cmpl	$1, 132(%rdx)
	cmovgl	%ecx, %eax
	cvtsi2ssl	%eax, %xmm1
	subss	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	cvtsi2ssl	132(%rdx), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 360(%rdx)
	je	.LBB4_34
# BB#33:                                # %if.then.156
	movsd	.LCPI4_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_7, %xmm1         # xmm1 = mem[0],zero
	xorl	%eax, %eax
	movl	$5, %ecx
	cvtss2sd	-24(%rbp), %xmm2
	movq	-8(%rbp), %rdx
	movl	360(%rdx), %esi
	movq	-8(%rbp), %rdx
	cmpl	$0, 300(%rdx)
	cmovnel	%ecx, %eax
	addl	%eax, %esi
	cvtsi2sdl	%esi, %xmm3
	addsd	%xmm1, %xmm3
	divsd	%xmm3, %xmm2
	divsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movq	-8(%rbp), %rdx
	movss	%xmm0, 364(%rdx)
	jmp	.LBB4_43
.LBB4_34:                               # %if.else.166
	movq	-8(%rbp), %rax
	cmpl	$0, 356(%rax)
	je	.LBB4_36
# BB#35:                                # %if.then.169
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	356(%rax), %xmm2
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 364(%rax)
	jmp	.LBB4_42
.LBB4_36:                               # %if.else.177
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	cvtss2sd	364(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB4_41
	jp	.LBB4_41
# BB#37:                                # %if.then.182
	movq	-8(%rbp), %rax
	cmpl	$1, 124(%rax)
	jne	.LBB4_39
# BB#38:                                # %cond.true
	movsd	.LCPI4_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB4_40
.LBB4_39:                               # %cond.false
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	132(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	136(%rax), %ecx
	cmpl	$1, %ecx
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jg	.LBB4_54
# BB#53:                                # %cond.false
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB4_54:                               # %cond.false
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB4_40:                               # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 364(%rax)
.LBB4_41:                               # %if.end.195
	jmp	.LBB4_42
.LBB4_42:                               # %if.end.196
	jmp	.LBB4_43
.LBB4_43:                               # %if.end.197
	movsd	.LCPI4_7, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	movss	-20(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	divss	364(%rax), %xmm3
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %ecx
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	%ecx, 16(%rax)
	cvtss2sd	-24(%rbp), %xmm2
	movq	-8(%rbp), %rax
	cvtss2sd	364(%rax), %xmm3
	mulsd	%xmm1, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 360(%rax)
	jle	.LBB4_45
# BB#44:                                # %if.then.215
	xorl	%eax, %eax
	movl	$5, %ecx
	movq	-8(%rbp), %rdx
	movl	360(%rdx), %esi
	movq	-8(%rbp), %rdx
	cmpl	$0, 300(%rdx)
	cmovnel	%ecx, %eax
	addl	%eax, %esi
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movl	%esi, (%rdx)
	jmp	.LBB4_48
.LBB4_45:                               # %if.else.223
	movq	-8(%rbp), %rax
	cmpl	$0, 356(%rax)
	jle	.LBB4_47
# BB#46:                                # %if.then.227
	movq	-8(%rbp), %rax
	movl	356(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	%ecx, 16(%rax)
.LBB4_47:                               # %if.end.231
	jmp	.LBB4_48
.LBB4_48:                               # %if.end.232
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB4_50
# BB#49:                                # %lor.lhs.false.237
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, (%rax)
	ja	.LBB4_51
.LBB4_50:                               # %if.then.242
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	cvtss2sd	364(%rcx), %xmm0
	movq	%rax, %rdx
	movb	$1, %al
	callq	error
.LBB4_51:                               # %if.end.245
	xorl	%eax, %eax
	movl	$5, %ecx
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movl	(%rdx), %esi
	movq	-8(%rbp), %rdx
	cmpl	$0, 300(%rdx)
	cmovnel	%ecx, %eax
	subl	%eax, %esi
	imull	$600, %esi, %eax        # imm = 0x258
	movl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movq	%rdx, 8(%rdi)
	movq	-8(%rbp), %rdi
	callq	output_document_setup
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, 392(%rdi)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ps_begin, .Lfunc_end4-ps_begin
	.cfi_endproc

	.align	16, 0x90
	.type	output_prolog,@function
output_prolog:                          # @output_prolog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$dump_prolog_comments, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	output_delayed_routine
	movq	-8(%rbp), %rax
	testb	$1, 324(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rcx
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	output_file
.LBB5_2:                                # %if.end
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.1, %rcx
	movq	-8(%rbp), %rsi
	movq	1536(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	328(%rdx), %rdx
	callq	output_file
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movb	$0, %al
	callq	output
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	output_prolog, .Lfunc_end5-output_prolog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI6_1:
	.quad	4608983858650965606     # double 1.3999999999999999
.LCPI6_2:
	.quad	4603579539098121011     # double 0.59999999999999998
	.text
	.align	16, 0x90
	.type	output_document_setup,@function
output_document_setup:                  # @output_document_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	1536(%rdi), %rdi
	movl	$.L.str.37, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movb	%cl, -17(%rbp)          # 1-byte Spill
	callq	output
	movq	-8(%rbp), %rdi
	callq	check_face_eo_font
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	encoding_build_faces_wx
	movq	-8(%rbp), %rsi
	movq	1536(%rsi), %rdi
	movl	$dump_encodings, %edx
	movl	%edx, %r8d
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	output_delayed_routine
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movl	$dump_fonts, %r9d
	movl	%r9d, %esi
	callq	output_delayed_routine
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movl	$.L.str.38, %r9d
	movl	%r9d, %esi
	movb	-17(%rbp), %al          # 1-byte Reload
	callq	output
	movq	-8(%rbp), %rdx
	movl	124(%rdx), %r9d
	testl	%r9d, %r9d
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_57
.LBB6_57:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_3
.LBB6_1:                                # %sw.bb
	movabsq	$.L.str.39, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.40, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	8(%rcx), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.41, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	16(%rcx), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.42, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	24(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	152(%rcx), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.43, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	28(%rcx), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.44, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	20(%rcx), %edx
	movb	$0, %al
	callq	output
	jmp	.LBB6_3
.LBB6_2:                                # %sw.bb.15
	movabsq	$.L.str.39, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.40, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	12(%rcx), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.41, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	20(%rcx), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.42, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	28(%rcx), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.43, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	8(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	subl	16(%rcx), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.44, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	8(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	subl	24(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	152(%rcx), %edx
	movb	$0, %al
	callq	output
.LBB6_3:                                # %sw.epilog
	movabsq	$.L.str.45, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	148(%rax), %edx
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rsi
	cmpl	$0, 176(%rsi)
	je	.LBB6_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.46, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB6_5:                                # %if.end
	movabsq	$.L.str.54, %rsi
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	output_statusdict
	movq	-8(%rbp), %rdi
	callq	output_pagedevice
	movq	-8(%rbp), %rsi
	movq	1528(%rsi), %rdi
	movq	1536(%rsi), %rsi
	movss	20(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.47, %eax
	movl	%eax, %edi
	movb	$1, %cl
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movb	%cl, %al
	movb	%cl, -73(%rbp)          # 1-byte Spill
	callq	output
	movq	-8(%rbp), %rsi
	movq	1528(%rsi), %rdi
	movq	1536(%rsi), %rsi
	movl	24(%rdi), %edx
	movl	$.L.str.48, %r8d
	movl	%r8d, %edi
	xorl	%r8d, %r8d
	movb	%r8b, %al
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movb	%al, -89(%rbp)          # 1-byte Spill
	callq	output
	movq	-8(%rbp), %rsi
	movq	1536(%rsi), %rdi
	movss	364(%rsi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.49, %edx
	movl	%edx, %esi
	movb	-73(%rbp), %al          # 1-byte Reload
	callq	output
	movq	-8(%rbp), %rsi
	movq	1536(%rsi), %rdi
	movss	364(%rsi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI6_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	$.L.str.50, %edx
	movl	%edx, %esi
	movb	-73(%rbp), %al          # 1-byte Reload
	callq	output
	movq	-8(%rbp), %rsi
	movq	1536(%rsi), %rdi
	movl	$.L.str.51, %edx
	movl	%edx, %esi
	movb	-89(%rbp), %al          # 1-byte Reload
	callq	output
	movq	-8(%rbp), %rsi
	movq	1536(%rsi), %rdi
	movl	$dump_encodings_setup, %edx
	movl	%edx, %r9d
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	callq	output_delayed_routine
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movl	$dump_setup, %r8d
	movl	%r8d, %esi
	callq	output_delayed_routine
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movl	$font_info_table_dump_special_font_setup, %r8d
	movl	%r8d, %esi
	callq	output_delayed_routine
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movl	$.L.str.52, %r8d
	movl	%r8d, %esi
	movb	-89(%rbp), %al          # 1-byte Reload
	callq	output
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movl	$.L.str.53, %r8d
	movl	%r8d, %esi
	movb	-89(%rbp), %al          # 1-byte Reload
	callq	output
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rsi
	movq	1536(%rdx), %rdi
	movl	(%rsi), %r8d
	movl	%r8d, %edx
	cvtsi2ssq	%rdx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movb	$1, %al
	callq	output
	movabsq	$.L.str.55, %rsi
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.56, %rsi
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.57, %rsi
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	cvtsi2sdl	16(%rdx), %xmm1
	addsd	%xmm0, %xmm1
	movq	-8(%rbp), %rdx
	cvtss2sd	364(%rdx), %xmm0
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	output
	movabsq	$.L.str.55, %rsi
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rdx
	cmpl	$1, 132(%rdx)
	jle	.LBB6_7
# BB#6:                                 # %if.then.73
	movabsq	$.L.str.58, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	132(%rax), %edx
	movq	-8(%rbp), %rax
	movl	132(%rax), %ecx
	subl	$1, %ecx
	movb	$0, %al
	callq	output
	jmp	.LBB6_8
.LBB6_7:                                # %if.else
	movabsq	$.L.str.59, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB6_8:                                # %if.end.79
	movq	-8(%rbp), %rax
	cmpl	$1, 136(%rax)
	jle	.LBB6_19
# BB#9:                                 # %if.then.82
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movl	136(%rcx), %edx
	movq	-8(%rbp), %rcx
	cmpq	$0, 432(%rcx)
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movb	%al, -121(%rbp)         # 1-byte Spill
	je	.LBB6_11
# BB#10:                                # %lor.rhs
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -121(%rbp)         # 1-byte Spill
.LBB6_11:                               # %lor.end
	movb	-121(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rdx
	cmpq	$0, 472(%rdx)
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	je	.LBB6_13
# BB#12:                                # %lor.lhs.false
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	472(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -129(%rbp)         # 1-byte Spill
	jne	.LBB6_18
.LBB6_13:                               # %lor.lhs.false.97
	movq	-8(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB6_15
# BB#14:                                # %lor.lhs.false.100
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	464(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -129(%rbp)         # 1-byte Spill
	jne	.LBB6_18
.LBB6_15:                               # %lor.rhs.105
	movb	$1, %al
	movq	-8(%rbp), %rcx
	cmpq	$0, 480(%rcx)
	movb	%al, -130(%rbp)         # 1-byte Spill
	je	.LBB6_17
# BB#16:                                # %lor.rhs.108
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -130(%rbp)         # 1-byte Spill
.LBB6_17:                               # %lor.end.113
	movb	-130(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB6_18:                               # %lor.end.116
	movb	-129(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.60, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-128(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	imull	$12, %edx, %ecx
	movq	-8(%rbp), %rdi
	movl	136(%rdi), %edx
	subl	$1, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	-136(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	output
	jmp	.LBB6_20
.LBB6_19:                               # %if.else.121
	movabsq	$.L.str.61, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB6_20:                               # %if.end.123
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movl	$.L.str.62, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	output
	movq	-8(%rbp), %rsi
	movl	140(%rsi), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	je	.LBB6_21
	jmp	.LBB6_58
.LBB6_58:                               # %if.end.123
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB6_38
	jmp	.LBB6_55
.LBB6_21:                               # %sw.bb.125
	movabsq	$.L.str.63, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movl	$1, -16(%rbp)
.LBB6_22:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_24 Depth 2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	136(%rcx), %eax
	jg	.LBB6_29
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB6_22 Depth=1
	movabsq	$.L.str.64, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movl	$2, -12(%rbp)
.LBB6_24:                               # %for.cond.131
                                        #   Parent Loop BB6_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	132(%rcx), %eax
	jg	.LBB6_27
# BB#25:                                # %for.body.135
                                        #   in Loop: Header=BB6_24 Depth=2
	movabsq	$.L.str.65, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB6_24 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_24
.LBB6_27:                               # %for.end
                                        #   in Loop: Header=BB6_22 Depth=1
	jmp	.LBB6_28
.LBB6_28:                               # %for.inc.137
                                        #   in Loop: Header=BB6_22 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_22
.LBB6_29:                               # %for.end.139
	movabsq	$.L.str.66, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.67, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rsi
	movl	136(%rsi), %ecx
	movl	%ecx, -16(%rbp)
.LBB6_30:                               # %for.cond.143
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_32 Depth 2
	movl	$1, %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB6_37
# BB#31:                                # %for.body.146
                                        #   in Loop: Header=BB6_30 Depth=1
	movabsq	$.L.str.68, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	output
	movl	$2, -12(%rbp)
.LBB6_32:                               # %for.cond.149
                                        #   Parent Loop BB6_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	132(%rcx), %eax
	jg	.LBB6_35
# BB#33:                                # %for.body.153
                                        #   in Loop: Header=BB6_32 Depth=2
	movabsq	$.L.str.69, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
# BB#34:                                # %for.inc.155
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_32
.LBB6_35:                               # %for.end.157
                                        #   in Loop: Header=BB6_30 Depth=1
	jmp	.LBB6_36
.LBB6_36:                               # %for.inc.158
                                        #   in Loop: Header=BB6_30 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_30
.LBB6_37:                               # %for.end.159
	movabsq	$.L.str.66, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	jmp	.LBB6_56
.LBB6_38:                               # %sw.bb.161
	movabsq	$.L.str.63, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movl	$1, -12(%rbp)
.LBB6_39:                               # %for.cond.163
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_41 Depth 2
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	132(%rcx), %eax
	jg	.LBB6_46
# BB#40:                                # %for.body.167
                                        #   in Loop: Header=BB6_39 Depth=1
	movabsq	$.L.str.70, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	output
	movl	$2, -16(%rbp)
.LBB6_41:                               # %for.cond.170
                                        #   Parent Loop BB6_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	136(%rcx), %eax
	jg	.LBB6_44
# BB#42:                                # %for.body.174
                                        #   in Loop: Header=BB6_41 Depth=2
	movabsq	$.L.str.69, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
# BB#43:                                # %for.inc.176
                                        #   in Loop: Header=BB6_41 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_41
.LBB6_44:                               # %for.end.178
                                        #   in Loop: Header=BB6_39 Depth=1
	jmp	.LBB6_45
.LBB6_45:                               # %for.inc.179
                                        #   in Loop: Header=BB6_39 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_39
.LBB6_46:                               # %for.end.181
	movabsq	$.L.str.66, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.67, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movl	$1, -12(%rbp)
.LBB6_47:                               # %for.cond.184
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_49 Depth 2
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	132(%rcx), %eax
	jg	.LBB6_54
# BB#48:                                # %for.body.188
                                        #   in Loop: Header=BB6_47 Depth=1
	movq	-8(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB6_49:                               # %for.cond.190
                                        #   Parent Loop BB6_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -16(%rbp)
	jl	.LBB6_52
# BB#50:                                # %for.body.193
                                        #   in Loop: Header=BB6_49 Depth=2
	movabsq	$.L.str.68, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	output
# BB#51:                                # %for.inc.196
                                        #   in Loop: Header=BB6_49 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_49
.LBB6_52:                               # %for.end.198
                                        #   in Loop: Header=BB6_47 Depth=1
	jmp	.LBB6_53
.LBB6_53:                               # %for.inc.199
                                        #   in Loop: Header=BB6_47 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_47
.LBB6_54:                               # %for.end.201
	movabsq	$.L.str.66, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	jmp	.LBB6_56
.LBB6_55:                               # %sw.default
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.71, %rdx
	movb	$0, %al
	callq	error
.LBB6_56:                               # %sw.epilog.203
	movabsq	$.L.str.72, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.73, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.74, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.75, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.76, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.77, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.78, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.79, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.80, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.81, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.82, %rsi
	xorl	%ecx, %ecx
	movl	$5, %edx
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movq	-8(%rbp), %r8
	cmpl	$0, 300(%r8)
	cmovnel	%edx, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.83, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movq	-8(%rbp), %r8
	movl	352(%r8), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.84, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.85, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.86, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	output_document_setup, .Lfunc_end6-output_document_setup
	.cfi_endproc

	.globl	ps_end
	.align	16, 0x90
	.type	ps_end,@function
ps_end:                                 # @ps_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	callq	output_to_void
	movq	-8(%rbp), %rdi
	callq	end_document
	movq	-8(%rbp), %rdi
	callq	undivert
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ps_end, .Lfunc_end7-ps_end
	.cfi_endproc

	.align	16, 0x90
	.type	end_document,@function
end_document:                           # @end_document
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	page_flush
	movabsq	$.L.str.87, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rsi
	cmpl	$0, 176(%rsi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.88, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB8_2:                                # %if.end
	movabsq	$.L.str.89, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.90, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	end_document, .Lfunc_end8-end_document
	.cfi_endproc

	.align	16, 0x90
	.type	prologue_print_signature,@function
prologue_print_signature:               # @prologue_print_signature
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$8320, %rsp             # imm = 0x2080
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -88(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.1, %rdx
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -8292(%rbp)       # 4-byte Spill
	callq	xpw_find_file
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	xrfopen
	movq	%rax, -48(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	leaq	-72(%rbp), %rdi
	leaq	-76(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	getshline_numbered
	xorl	%r9d, %r9d
	movb	%r9b, %r10b
	cmpl	$-1, %eax
	movb	%r10b, -8293(%rbp)      # 1-byte Spill
	je	.LBB9_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$0, -68(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -8293(%rbp)        # 1-byte Spill
.LBB9_3:                                # %land.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	-8293(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_4
	jmp	.LBB9_16
.LBB9_4:                                # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movabsq	$.L.str.7, %rdi
	movl	$13, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB9_15
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_6
.LBB9_6:                                # %while.cond.6
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$8192, %esi             # imm = 0x2000
	leaq	-8288(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	fgets
	xorl	%esi, %esi
	movb	%sil, %cl
	cmpq	$0, %rax
	movb	%cl, -8294(%rbp)        # 1-byte Spill
	je	.LBB9_8
# BB#7:                                 # %land.rhs.9
                                        #   in Loop: Header=BB9_6 Depth=2
	movabsq	$.L.str.8, %rdi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-8288(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	movb	%cl, -8294(%rbp)        # 1-byte Spill
.LBB9_8:                                # %land.end.15
                                        #   in Loop: Header=BB9_6 Depth=2
	movb	-8294(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_9
	jmp	.LBB9_12
.LBB9_9:                                # %while.body.16
                                        #   in Loop: Header=BB9_6 Depth=2
	leaq	-8288(%rbp), %rdi
	callq	strlen
	cmpq	$8192, %rax             # imm = 0x2000
	jae	.LBB9_11
# BB#10:                                # %if.then.20
                                        #   in Loop: Header=BB9_6 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
.LBB9_11:                               # %if.end
                                        #   in Loop: Header=BB9_6 Depth=2
	movabsq	$.L.str.9, %rsi
	leaq	-8288(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	callq	*%rax
	jmp	.LBB9_6
.LBB9_12:                               # %while.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movabsq	$.L.str.8, %rdi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-8288(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB9_14
# BB#13:                                # %if.then.25
                                        #   in Loop: Header=BB9_1 Depth=1
	movabsq	$.L.str.10, %rdi
	movq	-56(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movl	%ecx, -8300(%rbp)       # 4-byte Spill
	movq	%rdx, -8312(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.11, %r9
	movq	-8312(%rbp), %rdx       # 8-byte Reload
	movl	-8300(%rbp), %ecx       # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	error
.LBB9_14:                               # %if.end.27
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$1, -68(%rbp)
.LBB9_15:                               # %if.end.28
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_1
.LBB9_16:                               # %while.end.29
	movl	$10, %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	movq	-64(%rbp), %rdi
	movl	%eax, -8316(%rbp)       # 4-byte Spill
	callq	free
	movq	-48(%rbp), %rdi
	callq	fclose
	movq	-56(%rbp), %rdi
	movl	%eax, -8320(%rbp)       # 4-byte Spill
	callq	free
	addq	$8320, %rsp             # imm = 0x2080
	popq	%rbp
	retq
.Lfunc_end9:
	.size	prologue_print_signature, .Lfunc_end9-prologue_print_signature
	.cfi_endproc

	.align	16, 0x90
	.type	dump_prolog_comments,@function
dump_prolog_comments:                   # @dump_prolog_comments
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp33:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	32(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.18, %rdx
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	1632(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	-24(%rbp), %rcx
	movq	424(%rcx), %rcx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	expand_user_string
	movabsq	$.L.str.19, %rsi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rcx
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	1632(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	expand_user_string
	movabsq	$.L.str.22, %rsi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.25, %rcx
	movq	-16(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	asctime
	movabsq	$.L.str.26, %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.27, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	16(%rcx), %edx
	movq	-24(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	20(%rcx), %ecx
	movq	-24(%rbp), %r8
	movq	336(%r8), %r8
	movl	24(%r8), %r8d
	movq	-24(%rbp), %r9
	movq	336(%r9), %r9
	movl	28(%r9), %r9d
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.28, %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.31, %rdi
	movabsq	$.L.str.30, %r10
	movq	-16(%rbp), %r11
	movq	-24(%rbp), %rbx
	cmpl	$1, 124(%rbx)
	cmoveq	%r10, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.32, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	108(%rdx), %edx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-24(%rbp), %rsi
	movq	1528(%rsi), %rsi
	cmpl	$0, 56(%rsi)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.33, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movabsq	$.L.str.34, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB10_3:                               # %if.end
	movabsq	$.L.str.35, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %r8d
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	dump_needed_resources
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	dump_process_color
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	dump_requirements
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	dump_supplied_resources
	movabsq	$.L.str.36, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	cmpq	$0, ps_comment_hook
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB10_5
# BB#4:                                 # %if.then.28
	movq	ps_comment_hook, %rax
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB10_5:                               # %if.end.29
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dump_prolog_comments, .Lfunc_end10-dump_prolog_comments
	.cfi_endproc

	.align	16, 0x90
	.type	dump_encodings,@function
dump_encodings:                         # @dump_encodings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	168(%rsi), %rdi
	movq	-8(%rbp), %rsi
	callq	output_dump
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dump_encodings, .Lfunc_end11-dump_encodings
	.cfi_endproc

	.type	ps_comment_hook,@object # @ps_comment_hook
	.bss
	.globl	ps_comment_hook
	.align	8
ps_comment_hook:
	.quad	0
	.size	ps_comment_hook, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Known Prologues"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	".pro"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Prologue \"%s\":\n"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"@table @samp\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"@item %s\n"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"@end table\n"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"font %f too big"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Documentation"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"EndDocumentation"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"missing argument for `%s'"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"`Documentation'"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ehandler"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	".ps"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/a2psdict 200 dict def\n"
	.size	.L.str.14, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"a2psdict begin\n"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%%%%BeginProlog\n"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%%%%EndProlog\n"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Document title"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%%%%Title: %s\n"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"User Name"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%N"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%%%%For: %s\n"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%%%%Creator: %s version %s\n"
	.size	.L.str.23, 28

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"a2ps"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"4.14"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%%%%CreationDate: %s"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%%%%BoundingBox: %d %d %d %d\n"
	.size	.L.str.27, 30

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%%%%DocumentData: Clean7Bit\n"
	.size	.L.str.28, 29

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%%%%Orientation: %s\n"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Landscape"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Portrait"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%%%%Pages: %d\n"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%%%%PageOrder: Ascend\n"
	.size	.L.str.33, 23

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%%%%PageOrder: Special\n"
	.size	.L.str.34, 24

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%%%%DocumentMedia: %s %d %d 0 () ()\n"
	.size	.L.str.35, 37

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%%EndComments\n"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%%%%BeginSetup\n"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%% Initialize page description variables.\n"
	.size	.L.str.38, 43

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/sh %d def\n"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"/sw %d def\n"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"/llx %d def\n"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"/urx %d def\n"
	.size	.L.str.42, 13

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/ury %d def\n"
	.size	.L.str.43, 13

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/lly %d def\n"
	.size	.L.str.44, 13

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"/#copies %d def\n"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"true page_prefeed\n"
	.size	.L.str.46, 19

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"/th %f def\n"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"/fnfs %d def\n"
	.size	.L.str.48, 14

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"/bfs %f def\n"
	.size	.L.str.49, 13

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"/cw %f def\n"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\n"
	.size	.L.str.51, 2

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"/hm fnfs 0.25 mul def\n"
	.size	.L.str.52, 23

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"/pw\n"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"   cw %f mul\n"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"def\n"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"/ph\n"
	.size	.L.str.56, 5

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"   %f th add\n"
	.size	.L.str.57, 14

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"/pmw urx llx sub pw %d mul sub %d div def\n"
	.size	.L.str.58, 43

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"/pmw 0 def\n"
	.size	.L.str.59, 12

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"/pmh ury lly sub ph %d mul sub %d sub %d div def\n"
	.size	.L.str.60, 50

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"/pmh 0 def\n"
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"/v 0 def\n"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"/x [\n"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"  0\n"
	.size	.L.str.64, 5

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"  dup pmw add pw add\n"
	.size	.L.str.65, 22

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"] def\n"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"/y [\n"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"  pmh ph add %d mul ph add\n"
	.size	.L.str.68, 28

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"  dup\n"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"  pmw pw add %d mul\n"
	.size	.L.str.70, 21

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"output_document_setup: bad switch"
	.size	.L.str.71, 34

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"/scx sw 2 div def\n"
	.size	.L.str.72, 19

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"/scy sh 2 div def\n"
	.size	.L.str.73, 19

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"/snx urx def\n"
	.size	.L.str.74, 14

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"/sny lly 2 add def\n"
	.size	.L.str.75, 20

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"/dx llx def\n"
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"/dy sny def\n"
	.size	.L.str.77, 13

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"/fnx scx def\n"
	.size	.L.str.78, 14

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"/fny dy def\n"
	.size	.L.str.79, 13

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"/lx snx def\n"
	.size	.L.str.80, 13

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"/ly ury fnfs 0.8 mul sub def\n"
	.size	.L.str.81, 30

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"/sx %d def\n"
	.size	.L.str.82, 12

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"/tab %d def\n"
	.size	.L.str.83, 13

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"/x0 0 def\n"
	.size	.L.str.84, 11

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"/y0 0 def\n"
	.size	.L.str.85, 11

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"%%%%EndSetup\n\n"
	.size	.L.str.86, 15

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"\n%%%%Trailer\n"
	.size	.L.str.87, 14

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"false page_prefeed\n"
	.size	.L.str.88, 20

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"end\n"
	.size	.L.str.89, 5

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"%%%%EOF\n"
	.size	.L.str.90, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
