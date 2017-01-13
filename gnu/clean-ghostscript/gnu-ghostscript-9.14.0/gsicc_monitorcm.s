	.text
	.file	"gsicc_monitorcm.bc"
	.globl	gsicc_mcm_monitor_rgb
	.align	16, 0x90
	.type	gsicc_mcm_monitor_rgb,@function
gsicc_mcm_monitor_rgb:                  # @gsicc_mcm_monitor_rgb
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$1, %esi
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movzbl	(%rbx), %ebp
	movzbl	1(%rbx), %r14d
	movl	%ebp, %edi
	subl	%r14d, %edi
	callq	abs
	movl	%eax, %r15d
	movzbl	2(%rbx), %ebx
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movzwl	(%rbx), %ebp
	movzwl	2(%rbx), %r14d
	movl	%ebp, %edi
	subl	%r14d, %edi
	callq	abs
	movl	%eax, %r15d
	movzwl	4(%rbx), %ebx
.LBB0_3:                                # %if.else
	subl	%ebx, %ebp
	movl	%ebp, %edi
	callq	abs
	xorl	%ecx, %ecx
	cmpl	$4, %r15d
	jg	.LBB0_6
# BB#4:                                 # %if.else
	cmpl	$4, %eax
	jg	.LBB0_6
# BB#5:                                 # %land.rhs.48
	subl	%ebx, %r14d
	movl	%r14d, %edi
	callq	abs
	cmpl	$5, %eax
	setl	%cl
.LBB0_6:                                # %return
	movzbl	%cl, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gsicc_mcm_monitor_rgb, .Lfunc_end0-gsicc_mcm_monitor_rgb
	.cfi_endproc

	.globl	gsicc_mcm_monitor_cmyk
	.align	16, 0x90
	.type	gsicc_mcm_monitor_cmyk,@function
gsicc_mcm_monitor_cmyk:                 # @gsicc_mcm_monitor_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$1, %esi
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movzbl	(%rbx), %ebp
	movzbl	1(%rbx), %r14d
	movl	%ebp, %edi
	subl	%r14d, %edi
	callq	abs
	movl	%eax, %r15d
	movzbl	2(%rbx), %ebx
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movzwl	(%rbx), %ebp
	movzwl	2(%rbx), %r14d
	movl	%ebp, %edi
	subl	%r14d, %edi
	callq	abs
	movl	%eax, %r15d
	movzwl	4(%rbx), %ebx
.LBB1_3:                                # %if.else
	subl	%ebx, %ebp
	movl	%ebp, %edi
	callq	abs
	xorl	%ecx, %ecx
	cmpl	$4, %r15d
	jg	.LBB1_6
# BB#4:                                 # %if.else
	cmpl	$4, %eax
	jg	.LBB1_6
# BB#5:                                 # %land.rhs.48
	subl	%ebx, %r14d
	movl	%r14d, %edi
	callq	abs
	cmpl	$5, %eax
	setl	%cl
.LBB1_6:                                # %return
	movzbl	%cl, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gsicc_mcm_monitor_cmyk, .Lfunc_end1-gsicc_mcm_monitor_cmyk
	.cfi_endproc

	.globl	gsicc_mcm_monitor_lab
	.align	16, 0x90
	.type	gsicc_mcm_monitor_lab,@function
gsicc_mcm_monitor_lab:                  # @gsicc_mcm_monitor_lab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$1, %esi
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movzbl	1(%rbx), %edi
	addl	$-128, %edi
	callq	abs
	movl	%eax, %ebp
	movzbl	2(%rbx), %edi
	addl	$-128, %edi
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movzwl	2(%rbx), %edi
	addl	$-32768, %edi           # imm = 0xFFFFFFFFFFFF8000
	callq	abs
	movl	%eax, %ebp
	movzwl	4(%rbx), %edi
	addl	$-32768, %edi           # imm = 0xFFFFFFFFFFFF8000
.LBB2_3:                                # %return
	callq	abs
	cmpl	$5, %ebp
	setl	%cl
	cmpl	$5, %eax
	setl	%al
	andb	%cl, %al
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gsicc_mcm_monitor_lab, .Lfunc_end2-gsicc_mcm_monitor_lab
	.cfi_endproc

	.globl	gsicc_mcm_set_link
	.align	16, 0x90
	.type	gsicc_mcm_set_link,@function
gsicc_mcm_set_link:                     # @gsicc_mcm_set_link
	.cfi_startproc
# BB#0:                                 # %entry
	movups	8(%rdi), %xmm0
	movups	24(%rdi), %xmm1
	movups	%xmm1, 144(%rdi)
	movups	%xmm0, 128(%rdi)
	movl	$1, 124(%rdi)
	movl	$0, 116(%rdi)
	movq	$gsicc_mcm_transform_color_buffer, 8(%rdi)
	movq	$gsicc_mcm_transform_color, 16(%rdi)
	movl	160(%rdi), %eax
	cmpl	$6, %eax
	je	.LBB3_4
# BB#1:                                 # %entry
	cmpl	$3, %eax
	jne	.LBB3_2
# BB#5:                                 # %sw.bb.7
	movq	$gsicc_mcm_monitor_cmyk, 32(%rdi)
	jmp	.LBB3_6
.LBB3_4:                                # %sw.bb.4
	movq	$gsicc_mcm_monitor_lab, 32(%rdi)
	retq
.LBB3_2:                                # %entry
	cmpl	$2, %eax
	jne	.LBB3_6
# BB#3:                                 # %sw.bb
	movq	$gsicc_mcm_monitor_rgb, 32(%rdi)
	retq
.LBB3_6:                                # %sw.epilog
	retq
.Lfunc_end3:
	.size	gsicc_mcm_set_link, .Lfunc_end3-gsicc_mcm_set_link
	.cfi_endproc

	.align	16, 0x90
	.type	gsicc_mcm_transform_color_buffer,@function
gsicc_mcm_transform_color_buffer:       # @gsicc_mcm_transform_color_buffer
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
	subq	$168, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 224
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
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	cmpl	$0, 16(%rdx)
	movl	16(%rcx), %eax
	je	.LBB4_28
# BB#1:                                 # %if.then
	testl	%eax, %eax
	je	.LBB4_53
# BB#2:                                 # %if.then.3
	movq	%rcx, %r15
	movzbl	(%rdx), %r11d
	testq	%r11, %r11
	movslq	20(%rdx), %r12
	movq	%rdx, %rax
	je	.LBB4_9
# BB#3:                                 # %for.body.lr.ph.i
	leaq	-1(%r11), %rcx
	xorl	%edx, %edx
	testb	$3, %r11b
	je	.LBB4_6
# BB#4:                                 # %for.body.i.prol.preheader
	movzbl	%r11b, %esi
	andl	$3, %esi
	xorl	%edx, %edx
	movq	%r8, %rdi
	.align	16, 0x90
.LBB4_5:                                # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, 128(%rsp,%rdx,8)
	incq	%rdx
	addq	%r12, %rdi
	cmpq	%rdx, %rsi
	jne	.LBB4_5
.LBB4_6:                                # %for.body.lr.ph.i.split
	cmpq	$3, %rcx
	jb	.LBB4_9
# BB#7:                                 # %for.body.lr.ph.i.split.split
	movq	%r11, %rsi
	subq	%rdx, %rsi
	leaq	3(%rdx), %r14
	leaq	152(%rsp,%rdx,8), %rbp
	imulq	%r12, %r14
	leaq	(,%r12,4), %r10
	leaq	2(%rdx), %rcx
	imulq	%r12, %rcx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	incq	%rdx
	imulq	%r12, %rdx
	.align	16, 0x90
.LBB4_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r8,%rdi), %rbx
	movq	%rbx, -24(%rbp)
	leaq	(%r8,%rdx), %rbx
	movq	%rbx, -16(%rbp)
	leaq	(%r8,%rcx), %rbx
	movq	%rbx, -8(%rbp)
	leaq	(%r8,%r14), %rbx
	movq	%rbx, (%rbp)
	addq	$32, %rbp
	addq	%r10, %r8
	addq	$-4, %rsi
	jne	.LBB4_8
.LBB4_9:                                # %for.cond.2.preheader.i
	movzbl	(%r15), %edx
	testq	%rdx, %rdx
	je	.LBB4_16
# BB#10:                                # %for.body.7.lr.ph.i
	leaq	-1(%rdx), %rcx
	xorl	%esi, %esi
	testb	$3, %dl
	je	.LBB4_13
# BB#11:                                # %for.body.7.i.prol.preheader
	movl	%edx, %edi
	andl	$3, %edi
	xorl	%esi, %esi
	movq	%r9, %rbp
	.align	16, 0x90
.LBB4_12:                               # %for.body.7.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, 96(%rsp,%rsi,8)
	incq	%rsi
	addq	%r12, %rbp
	cmpq	%rsi, %rdi
	jne	.LBB4_12
.LBB4_13:                               # %for.body.7.lr.ph.i.split
	cmpq	$3, %rcx
	jb	.LBB4_16
# BB#14:                                # %for.body.7.lr.ph.i.split.split
	subq	%rsi, %rdx
	leaq	3(%rsi), %r14
	leaq	120(%rsp,%rsi,8), %rbp
	imulq	%r12, %r14
	leaq	(,%r12,4), %r10
	leaq	2(%rsi), %rcx
	imulq	%r12, %rcx
	movq	%rsi, %rdi
	imulq	%r12, %rdi
	incq	%rsi
	imulq	%r12, %rsi
	.align	16, 0x90
.LBB4_15:                               # %for.body.7.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r9,%rdi), %rbx
	movq	%rbx, -24(%rbp)
	leaq	(%r9,%rsi), %rbx
	movq	%rbx, -16(%rbp)
	leaq	(%r9,%rcx), %rbx
	movq	%rbx, -8(%rbp)
	leaq	(%r9,%r14), %rbx
	movq	%rbx, (%rbp)
	addq	$32, %rbp
	addq	%r10, %r9
	addq	$-4, %rdx
	jne	.LBB4_15
.LBB4_16:                               # %for.cond.17.preheader.i
	testl	%r12d, %r12d
	movq	%rax, %rbp
	jle	.LBB4_53
# BB#17:                                # %for.cond.22.preheader.lr.ph.i
	xorl	%r12d, %r12d
	leaq	88(%rsp), %r14
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %r13          # 8-byte Reload
	jmp	.LBB4_18
	.align	16, 0x90
.LBB4_27:                               # %for.inc.61.for.cond.22.preheader_crit_edge.i
                                        #   in Loop: Header=BB4_18 Depth=1
	movb	(%rbp), %r11b
	movq	%rbx, %rsi
.LBB4_18:                               # %for.cond.22.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_23 Depth 2
                                        #     Child Loop BB4_25 Depth 2
	testb	%r11b, %r11b
	je	.LBB4_24
# BB#19:                                # %for.body.27.lr.ph.i
                                        #   in Loop: Header=BB4_18 Depth=1
	movzbl	1(%rbp), %r8d
	testb	$1, %r11b
	movl	$0, %ecx
	je	.LBB4_21
# BB#20:                                # %for.body.27.i.prol
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	128(%rsp), %rdx
	movb	(%rdx), %al
	movb	%al, 92(%rsp)
	addq	%r8, %rdx
	movq	%rdx, 128(%rsp)
	movl	$1, %ecx
.LBB4_21:                               # %for.body.27.lr.ph.i.split
                                        #   in Loop: Header=BB4_18 Depth=1
	movzbl	%r11b, %r9d
	cmpl	$1, %r9d
	je	.LBB4_24
# BB#22:                                # %for.body.27.lr.ph.i.split.split
                                        #   in Loop: Header=BB4_18 Depth=1
	subq	%rcx, %r9
	leaq	93(%rsp), %rax
	leaq	(%rax,%rcx), %rdx
	leaq	136(%rsp), %rax
	leaq	(%rax,%rcx,8), %rcx
	.align	16, 0x90
.LBB4_23:                               # %for.body.27.i
                                        #   Parent Loop BB4_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rcx), %rax
	movb	(%rax), %bl
	movb	%bl, -1(%rdx)
	addq	%r8, %rax
	movq	%rax, -8(%rcx)
	movq	(%rcx), %rax
	movb	(%rax), %bl
	movb	%bl, (%rdx)
	addq	%r8, %rax
	movq	%rax, (%rcx)
	addq	$2, %rdx
	addq	$16, %rcx
	addq	$-2, %r9
	jne	.LBB4_23
.LBB4_24:                               # %for.end.39.i
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	$1, %r8d
	movl	$1, %r9d
	movq	%r13, %rdi
	movq	%rsi, %rbx
	leaq	92(%rsp), %rdx
	movq	%r14, %rcx
	callq	gsicc_mcm_transform_general
	cmpb	$0, (%r15)
	movl	$0, %eax
	je	.LBB4_26
	.align	16, 0x90
.LBB4_25:                               # %for.body.47.i
                                        #   Parent Loop BB4_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	88(%rsp,%rax), %cl
	movq	96(%rsp,%rax,8), %rdx
	movb	%cl, (%rdx)
	movzbl	1(%r15), %ecx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp,%rax,8)
	incq	%rax
	movzbl	(%r15), %ecx
	cmpq	%rcx, %rax
	jl	.LBB4_25
.LBB4_26:                               # %for.inc.61.i
                                        #   in Loop: Header=BB4_18 Depth=1
	incl	%r12d
	cmpl	20(%rbp), %r12d
	jl	.LBB4_27
	jmp	.LBB4_53
.LBB4_28:                               # %if.else.4
	testl	%eax, %eax
	je	.LBB4_47
# BB#29:                                # %if.then.7
	movzbl	1(%rdx), %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cmpl	$0, 28(%rdx)
	jle	.LBB4_53
# BB#30:                                # %for.body.lr.ph.i.17
	movb	1(%rcx), %bl
	movzbl	%bl, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movzbl	(%rdx), %eax
	imulq	48(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	32(%rdx), %eax
	movslq	20(%rcx), %r13
	leaq	(%r13,%r13), %r14
	xorl	%ecx, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	jmp	.LBB4_31
	.align	16, 0x90
.LBB4_46:                               # %for.inc.68.for.body_crit_edge.i
                                        #   in Loop: Header=BB4_31 Depth=1
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movslq	24(%rcx), %rbp
	addq	%rbp, %r9
	movslq	24(%rdx), %rbp
	movq	16(%rsp), %r8           # 8-byte Reload
	addq	%rbp, %r8
	movb	1(%rcx), %bl
.LBB4_31:                               # %for.body.i.18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_34 Depth 2
                                        #       Child Loop BB4_39 Depth 3
                                        #     Child Loop BB4_42 Depth 2
                                        #       Child Loop BB4_43 Depth 3
	movzbl	%bl, %ecx
	cmpl	$1, %ecx
	jne	.LBB4_32
# BB#41:                                # %for.cond.10.preheader.i
                                        #   in Loop: Header=BB4_31 Depth=1
	testl	%eax, %eax
	movq	%r9, %r15
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movl	$0, %ebx
	movq	%r8, %rbp
	movq	%r8, 16(%rsp)           # 8-byte Spill
	jle	.LBB4_45
	.align	16, 0x90
.LBB4_42:                               # %for.body.13.i
                                        #   Parent Loop BB4_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_43 Depth 3
	movq	%rdx, %r12
	movq	%rbp, %rdx
	leaq	128(%rsp), %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movl	40(%rsp), %r9d          # 4-byte Reload
	callq	gsicc_mcm_transform_general
	movq	72(%rsp), %rsi          # 8-byte Reload
	cmpb	$0, (%rsi)
	movq	%r15, %rax
	movl	$0, %ecx
	je	.LBB4_44
	.align	16, 0x90
.LBB4_43:                               # %for.body.19.i
                                        #   Parent Loop BB4_31 Depth=1
                                        #     Parent Loop BB4_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	128(%rsp,%rcx), %dl
	movb	%dl, (%rax)
	incq	%rcx
	movzbl	(%rsi), %edx
	addq	%r13, %rax
	cmpq	%rdx, %rcx
	jl	.LBB4_43
.LBB4_44:                               # %for.end.i.20
                                        #   in Loop: Header=BB4_42 Depth=2
	addq	32(%rsp), %rbp          # 8-byte Folded Reload
	incq	%rbx
	movq	%r12, %rdx
	movslq	32(%rdx), %rax
	incq	%r15
	cmpq	%rax, %rbx
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
	jl	.LBB4_42
	jmp	.LBB4_45
	.align	16, 0x90
.LBB4_32:                               # %for.cond.34.preheader.i
                                        #   in Loop: Header=BB4_31 Depth=1
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%r9, 24(%rsp)           # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB4_45
# BB#33:                                # %for.body.38.lr.ph.i
                                        #   in Loop: Header=BB4_31 Depth=1
	movq	24(%rsp), %rbp          # 8-byte Reload
	xorl	%r12d, %r12d
	movq	16(%rsp), %r15          # 8-byte Reload
	.align	16, 0x90
.LBB4_34:                               # %for.body.38.i
                                        #   Parent Loop BB4_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_39 Depth 3
	movq	%r15, %rdx
	leaq	128(%rsp), %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movl	40(%rsp), %r9d          # 4-byte Reload
	callq	gsicc_mcm_transform_general
	movq	72(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax), %eax
	testq	%rax, %rax
	je	.LBB4_40
# BB#35:                                # %for.body.46.lr.ph.i
                                        #   in Loop: Header=BB4_34 Depth=2
	testb	$1, %al
	movl	$0, %esi
	je	.LBB4_37
# BB#36:                                # %for.body.46.i.prol
                                        #   in Loop: Header=BB4_34 Depth=2
	movw	128(%rsp), %cx
	movq	24(%rsp), %rdx          # 8-byte Reload
	movw	%cx, (%rdx,%r12,2)
	movl	$1, %esi
.LBB4_37:                               # %for.body.46.lr.ph.i.split
                                        #   in Loop: Header=BB4_34 Depth=2
	cmpl	$1, %eax
	je	.LBB4_40
# BB#38:                                # %for.body.46.lr.ph.i.split.split
                                        #   in Loop: Header=BB4_34 Depth=2
	subq	%rsi, %rax
	movq	%r14, %rcx
	imulq	%rsi, %rcx
	leaq	(%rcx,%rbp), %rcx
	leaq	1(%rsi), %rdx
	imulq	%r14, %rdx
	leaq	(%rdx,%rbp), %rdx
	leaq	130(%rsp), %rdi
	leaq	(%rdi,%rsi,2), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB4_39:                               # %for.body.46.i
                                        #   Parent Loop BB4_31 Depth=1
                                        #     Parent Loop BB4_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	-2(%rsi), %bx
	movw	%bx, (%rcx,%rdi,2)
	movw	(%rsi), %bx
	movw	%bx, (%rdx,%rdi,2)
	addq	%r14, %rdi
	addq	$4, %rsi
	addq	$-2, %rax
	jne	.LBB4_39
.LBB4_40:                               # %for.end.56.i
                                        #   in Loop: Header=BB4_34 Depth=2
	addq	32(%rsp), %r15          # 8-byte Folded Reload
	incq	%r12
	movq	80(%rsp), %rdx          # 8-byte Reload
	movslq	32(%rdx), %rax
	addq	$2, %rbp
	cmpq	%rax, %r12
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
	jl	.LBB4_34
.LBB4_45:                               # %for.inc.68.i
                                        #   in Loop: Header=BB4_31 Depth=1
	movq	8(%rsp), %rbp           # 8-byte Reload
	incl	%ebp
	cmpl	28(%rdx), %ebp
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %r9           # 8-byte Reload
	jl	.LBB4_46
	jmp	.LBB4_53
.LBB4_47:                               # %if.else.8
	movzbl	1(%rdx), %r15d
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movzbl	1(%rcx), %r12d
	movl	28(%rdx), %r11d
	testl	%r11d, %r11d
	jle	.LBB4_53
# BB#48:                                # %for.cond.8.preheader.lr.ph.i
	movzbl	(%rcx), %eax
	imulq	%r12, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movzbl	(%rdx), %eax
	imulq	%r15, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	32(%rdx), %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB4_49:                               # %for.cond.8.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_50 Depth 2
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%r9, 24(%rsp)           # 8-byte Spill
	testl	%eax, %eax
	movl	$0, %r14d
	movq	%r9, %rbp
	movq	%r8, %rbx
	jle	.LBB4_52
	.align	16, 0x90
.LBB4_50:                               # %for.body.11.i
                                        #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	movl	%r15d, %r8d
	movl	%r12d, %r9d
	movq	%rsi, %r13
	movq	%rdi, %r15
	callq	gsicc_mcm_transform_general
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%r15, %rdi
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	%r13, %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	addq	%rcx, %rbx
	addq	%rax, %rbp
	incl	%r14d
	movl	32(%rdx), %eax
	cmpl	%eax, %r14d
	jl	.LBB4_50
# BB#51:                                # %for.cond.8.for.end_crit_edge.i
                                        #   in Loop: Header=BB4_49 Depth=1
	movl	28(%rdx), %r11d
.LBB4_52:                               # %for.end.i
                                        #   in Loop: Header=BB4_49 Depth=1
	movslq	24(%rdx), %rcx
	movq	16(%rsp), %r8           # 8-byte Reload
	addq	%rcx, %r8
	movq	72(%rsp), %rcx          # 8-byte Reload
	movslq	24(%rcx), %rcx
	movq	24(%rsp), %r9           # 8-byte Reload
	addq	%rcx, %r9
	movl	8(%rsp), %ecx           # 4-byte Reload
	incl	%ecx
	cmpl	%r11d, %ecx
	jl	.LBB4_49
.LBB4_53:                               # %if.end.10
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gsicc_mcm_transform_color_buffer, .Lfunc_end4-gsicc_mcm_transform_color_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	gsicc_mcm_transform_color,@function
gsicc_mcm_transform_color:              # @gsicc_mcm_transform_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%r8d, %r9d
	jmp	gsicc_mcm_transform_general # TAILCALL
.Lfunc_end5:
	.size	gsicc_mcm_transform_color, .Lfunc_end5-gsicc_mcm_transform_color
	.cfi_endproc

	.globl	gsicc_mcm_end_monitor
	.align	16, 0x90
	.type	gsicc_mcm_end_monitor,@function
gsicc_mcm_end_monitor:                  # @gsicc_mcm_end_monitor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -32
.Ltmp41:
	.cfi_offset %r14, -24
.Ltmp42:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	48(%r15), %r14
	addq	$8, %r14
	movq	%r14, %rdi
	callq	gp_monitor_enter
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	8(%rsp), %rax
	movl	$0, 160(%rax)
	movl	$9, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	jle	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gs_pdf14_device_color_mon_set
.LBB6_2:                                # %if.end
	movq	(%r15), %rbx
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_10:                               # %while.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	88(%rbx), %rbx
.LBB6_3:                                # %if.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
	testq	%rbx, %rbx
	je	.LBB6_11
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpl	$0, 124(%rbx)
	je	.LBB6_8
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB6_3 Depth=1
	movups	128(%rbx), %xmm0
	movups	144(%rbx), %xmm1
	movups	%xmm1, 24(%rbx)
	movups	%xmm0, 8(%rbx)
	movq	56(%rbx), %rax
	cmpq	48(%rbx), %rax
	jne	.LBB6_7
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$1, 116(%rbx)
.LBB6_7:                                # %if.end.12
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$0, 124(%rbx)
.LBB6_8:                                # %while.cond.15.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpl	$0, 104(%rbx)
	jle	.LBB6_10
	.align	16, 0x90
.LBB6_9:                                # %while.body.17
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	96(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_signal
	movl	104(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 104(%rbx)
	cmpl	$1, %eax
	jg	.LBB6_9
	jmp	.LBB6_10
.LBB6_11:                               # %while.end.21
	movq	%r14, %rdi
	callq	gp_monitor_leave
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	gsicc_mcm_end_monitor, .Lfunc_end6-gsicc_mcm_end_monitor
	.cfi_endproc

	.globl	gsicc_mcm_begin_monitor
	.align	16, 0x90
	.type	gsicc_mcm_begin_monitor,@function
gsicc_mcm_begin_monitor:                # @gsicc_mcm_begin_monitor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 48
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
.Ltmp49:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	48(%r15), %r14
	addq	$8, %r14
	movq	%r14, %rdi
	callq	gp_monitor_enter
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	8(%rsp), %rax
	movl	$1, 160(%rax)
	movl	$9, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	jle	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gs_pdf14_device_color_mon_set
.LBB7_2:                                # %if.end
	movq	(%r15), %rbx
	jmp	.LBB7_3
	.align	16, 0x90
.LBB7_13:                               # %while.end
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	88(%rbx), %rbx
.LBB7_3:                                # %if.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	testq	%rbx, %rbx
	je	.LBB7_14
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	160(%rbx), %eax
	cmpl	$1, %eax
	je	.LBB7_11
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB7_3 Depth=1
	movups	8(%rbx), %xmm0
	movups	24(%rbx), %xmm1
	movups	%xmm1, 144(%rbx)
	movups	%xmm0, 128(%rbx)
	movl	$1, 124(%rbx)
	movl	$0, 116(%rbx)
	movq	$gsicc_mcm_transform_color_buffer, 8(%rbx)
	movq	$gsicc_mcm_transform_color, 16(%rbx)
	cmpl	$6, %eax
	je	.LBB7_9
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpl	$3, %eax
	jne	.LBB7_7
# BB#10:                                # %sw.bb.7.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	$gsicc_mcm_monitor_cmyk, 32(%rbx)
	jmp	.LBB7_11
.LBB7_9:                                # %sw.bb.4.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	$gsicc_mcm_monitor_lab, 32(%rbx)
	jmp	.LBB7_11
.LBB7_7:                                # %if.then.8
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpl	$2, %eax
	jne	.LBB7_11
# BB#8:                                 # %sw.bb.i
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	$gsicc_mcm_monitor_rgb, 32(%rbx)
	.align	16, 0x90
.LBB7_11:                               # %while.cond.10.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpl	$0, 104(%rbx)
	jle	.LBB7_13
	.align	16, 0x90
.LBB7_12:                               # %while.body.12
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	96(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_signal
	movl	104(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 104(%rbx)
	cmpl	$1, %eax
	jg	.LBB7_12
	jmp	.LBB7_13
.LBB7_14:                               # %while.end.16
	movq	%r14, %rdi
	callq	gp_monitor_leave
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	gsicc_mcm_begin_monitor, .Lfunc_end7-gsicc_mcm_begin_monitor
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
.LCPI8_1:
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.text
	.align	16, 0x90
	.type	gsicc_mcm_transform_general,@function
gsicc_mcm_transform_general:            # @gsicc_mcm_transform_general
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 208
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	%r8d, %r12d
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	leaq	8(%rsp), %rsi
	callq	*1680(%rbp)
	movq	8(%rsp), %rcx
	cmpl	$0, 160(%rcx)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	*32(%rbx)
	movq	8(%rsp), %rcx
	testl	%eax, %eax
	je	.LBB8_2
# BB#3:                                 # %if.end.6
	cmpl	$0, 160(%rcx)
	jne	.LBB8_5
	jmp	.LBB8_4
.LBB8_2:                                # %if.end.6.thread
	movl	$0, 160(%rcx)
.LBB8_4:                                # %if.then.9
	movq	72(%rbx), %rdi
	movq	%rbp, %rsi
	callq	gsicc_mcm_end_monitor
.LBB8_5:                                # %if.end.10
	movq	56(%rbx), %rax
	cmpq	48(%rbx), %rax
	jne	.LBB8_21
# BB#6:                                 # %if.then.12
	cmpl	%r13d, %r12d
	jne	.LBB8_8
# BB#7:                                 # %if.then.14
	movslq	164(%rbx), %rax
	movslq	%r12d, %rdx
	imulq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
	jmp	.LBB8_34
.LBB8_21:                               # %if.else.49
	movq	136(%rbx), %rax
	cmpl	%r13d, %r12d
	jne	.LBB8_23
# BB#22:                                # %if.then.52
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movl	%r12d, %r8d
	callq	*%rax
	jmp	.LBB8_34
.LBB8_8:                                # %if.else
	cmpl	$2, %r12d
	jne	.LBB8_11
# BB#9:                                 # %if.then.18
	xorl	%eax, %eax
	cmpl	$0, 164(%rbx)
	jle	.LBB8_34
	.align	16, 0x90
.LBB8_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r15,%rax,2), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movb	%cl, (%r14,%rax)
	incq	%rax
	movslq	164(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB8_10
	jmp	.LBB8_34
.LBB8_23:                               # %if.else.53
	leaq	16(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%r12d, %r8d
	callq	*%rax
	cmpl	$2, %r12d
	jne	.LBB8_26
# BB#24:                                # %for.cond.61.preheader
	xorl	%eax, %eax
	cmpl	$0, 164(%rbx)
	jle	.LBB8_34
	.align	16, 0x90
.LBB8_25:                               # %for.body.65
                                        # =>This Inner Loop Header: Depth=1
	movzwl	16(%rsp,%rax,2), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movb	%cl, (%r14,%rax)
	incq	%rax
	movslq	164(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB8_25
	jmp	.LBB8_34
.LBB8_11:                               # %if.else.28
	movslq	164(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB8_34
# BB#12:                                # %for.body.35.preheader
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB8_20
# BB#13:                                # %overflow.checked93
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	je	.LBB8_19
# BB#14:                                # %vector.memcheck
	leaq	-1(%rax,%r15), %rsi
	xorl	%edx, %edx
	cmpq	%r14, %rsi
	jb	.LBB8_16
# BB#15:                                # %vector.memcheck
	leaq	-2(%r14,%rax,2), %rsi
	cmpq	%r15, %rsi
	jae	.LBB8_19
.LBB8_16:                               # %vector.body89.preheader
	leaq	4(%r15), %rdx
	leaq	8(%r14), %rsi
	movq	%rax, %rdi
	andq	$-8, %rdi
	pxor	%xmm0, %xmm0
	movdqa	.LCPI8_0(%rip), %xmm1   # xmm1 = [65281,65281,65281,65281]
	movdqa	.LCPI8_1(%rip), %xmm2   # xmm2 = [8388608,8388608,8388608,8388608]
	.align	16, 0x90
.LBB8_17:                               # %vector.body89
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rdx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rdx), %xmm4           # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pshufd	$245, %xmm3, %xmm5      # xmm5 = xmm3[1,1,3,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	pshufd	$245, %xmm4, %xmm5      # xmm5 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm2, %xmm3
	paddd	%xmm2, %xmm4
	psrld	$24, %xmm3
	psrld	$24, %xmm4
	pshuflw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, -8(%rsi)
	pshuflw	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, (%rsi)
	addq	$8, %rdx
	addq	$16, %rsi
	addq	$-8, %rdi
	jne	.LBB8_17
# BB#18:
	movq	%rcx, %rdx
.LBB8_19:                               # %middle.block90
	cmpq	%rdx, %rax
	je	.LBB8_34
	.align	16, 0x90
.LBB8_20:                               # %for.body.35
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rdx), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movw	%cx, (%r14,%rdx,2)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB8_20
	jmp	.LBB8_34
.LBB8_26:                               # %if.else.79
	movslq	164(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB8_34
# BB#27:                                # %for.body.86.lr.ph
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB8_33
# BB#28:                                # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	je	.LBB8_32
# BB#29:                                # %vector.body.preheader
	leaq	20(%rsp), %rdx
	leaq	8(%r14), %rsi
	movq	%rax, %rdi
	andq	$-8, %rdi
	pxor	%xmm0, %xmm0
	movdqa	.LCPI8_0(%rip), %xmm1   # xmm1 = [65281,65281,65281,65281]
	movdqa	.LCPI8_1(%rip), %xmm2   # xmm2 = [8388608,8388608,8388608,8388608]
	.align	16, 0x90
.LBB8_30:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rdx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rdx), %xmm4           # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pshufd	$245, %xmm3, %xmm5      # xmm5 = xmm3[1,1,3,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	pshufd	$245, %xmm4, %xmm5      # xmm5 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm2, %xmm3
	paddd	%xmm2, %xmm4
	psrld	$24, %xmm3
	psrld	$24, %xmm4
	pshuflw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, -8(%rsi)
	pshuflw	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, (%rsi)
	addq	$8, %rdx
	addq	$16, %rsi
	addq	$-8, %rdi
	jne	.LBB8_30
# BB#31:
	movq	%rcx, %rdx
.LBB8_32:                               # %middle.block
	cmpq	%rdx, %rax
	je	.LBB8_34
	.align	16, 0x90
.LBB8_33:                               # %for.body.86
                                        # =>This Inner Loop Header: Depth=1
	movzbl	16(%rsp,%rdx), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movw	%cx, (%r14,%rdx,2)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB8_33
.LBB8_34:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gsicc_mcm_transform_general, .Lfunc_end8-gsicc_mcm_transform_general
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
