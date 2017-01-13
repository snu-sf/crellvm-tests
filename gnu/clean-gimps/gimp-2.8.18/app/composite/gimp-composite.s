	.text
	.file	"gimp-composite.bc"
	.globl	gimp_composite_dispatch
	.align	16, 0x90
	.type	gimp_composite_dispatch,@function
gimp_composite_dispatch:                # @gimp_composite_dispatch
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
	subq	$64, %rsp
	movabsq	$gimp_composite_function, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	48(%rdi), %ecx
	movl	%ecx, %edi
	movq	-8(%rbp), %rdx
	movl	44(%rdx), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movl	40(%rsi), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %r8
	movl	88(%r8), %ecx
	movl	%ecx, %r8d
	imulq	$1000, %r8, %r8         # imm = 0x3E8
	addq	%r8, %rax
	imulq	$200, %rsi, %rsi
	addq	%rsi, %rax
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rax
	movq	(%rax,%rdi,8), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_4
# BB#1:                                 # %if.then
	movq	gimp_composite_options, %rax
	andq	$4, %rax
	cmpq	$0, %rax
	je	.LBB0_3
# BB#2:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_composite_mode_astext
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_composite_pixelformat_astext
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_composite_pixelformat_astext
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_composite_pixelformat_astext
	movabsq	$.L.str, %rdi
	movq	-16(%rbp), %r9
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_print
.LBB0_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movq	-8(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_composite_mode_astext
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_composite_pixelformat_astext
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_composite_pixelformat_astext
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_composite_pixelformat_astext
	movabsq	$.L.str.1, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_print
.LBB0_5:                                # %if.end.24
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_composite_dispatch, .Lfunc_end0-gimp_composite_dispatch
	.cfi_endproc

	.globl	gimp_composite_mode_astext
	.align	16, 0x90
	.type	gimp_composite_mode_astext,@function
gimp_composite_mode_astext:             # @gimp_composite_mode_astext
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
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$31, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB1_33
# BB#36:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_1:                                # %sw.bb
	movabsq	$.L.str.3, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_2:                                # %sw.bb.1
	movabsq	$.L.str.4, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_3:                                # %sw.bb.2
	movabsq	$.L.str.5, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_4:                                # %sw.bb.3
	movabsq	$.L.str.6, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_5:                                # %sw.bb.4
	movabsq	$.L.str.7, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_6:                                # %sw.bb.5
	movabsq	$.L.str.8, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_7:                                # %sw.bb.6
	movabsq	$.L.str.9, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_8:                                # %sw.bb.7
	movabsq	$.L.str.10, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_9:                                # %sw.bb.8
	movabsq	$.L.str.11, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_10:                               # %sw.bb.9
	movabsq	$.L.str.12, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_11:                               # %sw.bb.10
	movabsq	$.L.str.13, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_12:                               # %sw.bb.11
	movabsq	$.L.str.14, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_13:                               # %sw.bb.12
	movabsq	$.L.str.15, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_14:                               # %sw.bb.13
	movabsq	$.L.str.16, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_15:                               # %sw.bb.14
	movabsq	$.L.str.17, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_16:                               # %sw.bb.15
	movabsq	$.L.str.18, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_17:                               # %sw.bb.16
	movabsq	$.L.str.19, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_18:                               # %sw.bb.17
	movabsq	$.L.str.20, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_19:                               # %sw.bb.18
	movabsq	$.L.str.21, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_20:                               # %sw.bb.19
	movabsq	$.L.str.22, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_21:                               # %sw.bb.20
	movabsq	$.L.str.23, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_22:                               # %sw.bb.21
	movabsq	$.L.str.24, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_23:                               # %sw.bb.22
	movabsq	$.L.str.25, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_24:                               # %sw.bb.23
	movabsq	$.L.str.26, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_25:                               # %sw.bb.24
	movabsq	$.L.str.27, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_26:                               # %sw.bb.25
	movabsq	$.L.str.28, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_27:                               # %sw.bb.26
	movabsq	$.L.str.29, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_28:                               # %sw.bb.27
	movabsq	$.L.str.30, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_29:                               # %sw.bb.28
	movabsq	$.L.str.31, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_30:                               # %sw.bb.29
	movabsq	$.L.str.32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_31:                               # %sw.bb.30
	movabsq	$.L.str.33, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_32:                               # %sw.bb.31
	movabsq	$.L.str.34, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_35
.LBB1_33:                               # %sw.default
	jmp	.LBB1_34
.LBB1_34:                               # %sw.epilog
	movabsq	$.L.str.35, %rax
	movq	%rax, -8(%rbp)
.LBB1_35:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_composite_mode_astext, .Lfunc_end1-gimp_composite_mode_astext
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_1
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_4
	.quad	.LBB1_5
	.quad	.LBB1_6
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_10
	.quad	.LBB1_11
	.quad	.LBB1_12
	.quad	.LBB1_13
	.quad	.LBB1_14
	.quad	.LBB1_15
	.quad	.LBB1_16
	.quad	.LBB1_17
	.quad	.LBB1_18
	.quad	.LBB1_19
	.quad	.LBB1_20
	.quad	.LBB1_21
	.quad	.LBB1_22
	.quad	.LBB1_23
	.quad	.LBB1_24
	.quad	.LBB1_25
	.quad	.LBB1_26
	.quad	.LBB1_27
	.quad	.LBB1_28
	.quad	.LBB1_29
	.quad	.LBB1_30
	.quad	.LBB1_31
	.quad	.LBB1_32

	.text
	.globl	gimp_composite_pixelformat_astext
	.align	16, 0x90
	.type	gimp_composite_pixelformat_astext,@function
gimp_composite_pixelformat_astext:      # @gimp_composite_pixelformat_astext
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
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$4, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB2_6
# BB#9:                                 # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI2_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_1:                                # %sw.bb
	movabsq	$.L.str.36, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_8
.LBB2_2:                                # %sw.bb.1
	movabsq	$.L.str.37, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %sw.bb.2
	movabsq	$.L.str.38, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_8
.LBB2_4:                                # %sw.bb.3
	movabsq	$.L.str.39, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_8
.LBB2_5:                                # %sw.bb.4
	movabsq	$.L.str.40, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_8
.LBB2_6:                                # %sw.default
	jmp	.LBB2_7
.LBB2_7:                                # %sw.epilog
	movabsq	$.L.str.41, %rax
	movq	%rax, -8(%rbp)
.LBB2_8:                                # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_composite_pixelformat_astext, .Lfunc_end2-gimp_composite_pixelformat_astext
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_1
	.quad	.LBB2_2
	.quad	.LBB2_3
	.quad	.LBB2_4
	.quad	.LBB2_5

	.text
	.globl	gimp_composite_context_print
	.align	16, 0x90
	.type	gimp_composite_context_print,@function
gimp_composite_context_print:           # @gimp_composite_context_print
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	88(%rdi), %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_composite_mode_astext
	movq	-24(%rbp), %rsi
	movl	40(%rsi), %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_composite_pixelformat_astext
	movq	-24(%rbp), %rsi
	movl	40(%rsi), %r8d
	movq	-24(%rbp), %rsi
	movq	(%rsi), %r9
	movq	-24(%rbp), %rsi
	movl	44(%rsi), %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	callq	gimp_composite_pixelformat_astext
	movq	-24(%rbp), %rsi
	movl	44(%rsi), %edi
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-24(%rbp), %r9
	movl	48(%r9), %r8d
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movl	%r8d, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_composite_pixelformat_astext
	movq	-24(%rbp), %rsi
	movl	48(%rsi), %edi
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-24(%rbp), %r9
	movl	52(%r9), %r8d
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movl	%r8d, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_composite_pixelformat_astext
	movabsq	$.L.str.2, %rdi
	movq	-24(%rbp), %rsi
	movl	52(%rsi), %r8d
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	-24(%rbp), %r9
	movq	32(%r9), %r9
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	-68(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, 8(%rsp)
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movl	-92(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, 32(%rsp)
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movl	-124(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 56(%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 72(%rsp)
	movb	$0, %al
	callq	g_print
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_composite_context_print, .Lfunc_end3-gimp_composite_context_print
	.cfi_endproc

	.globl	gimp_composite_init
	.align	16, 0x90
	.type	gimp_composite_init,@function
gimp_composite_init:                    # @gimp_composite_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.42, %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rax, %rdi
	callq	g_getenv
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB4_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$16, %edx
	movq	-16(%rbp), %rdi
	callq	strtoul
	movq	%rax, gimp_composite_options
.LBB4_2:                                # %if.end
	cmpl	$0, -8(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then.3
	movq	gimp_composite_options, %rax
	orq	$2, %rax
	movq	%rax, gimp_composite_options
.LBB4_4:                                # %if.end.4
	cmpl	$0, -4(%rbp)
	je	.LBB4_6
# BB#5:                                 # %if.then.6
	movabsq	$.L.str.43, %rdi
	movabsq	$.L.str.45, %rax
	movabsq	$.L.str.44, %rcx
	movq	gimp_composite_options, %rdx
	andq	$4, %rdx
	cmpq	$0, %rdx
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
.LBB4_6:                                # %if.end.8
	callq	gimp_composite_generic_install
	movq	gimp_composite_options, %rcx
	andq	$2, %rcx
	cmpq	$0, %rcx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB4_10
# BB#7:                                 # %if.then.12
	callq	gimp_composite_mmx_install
	movl	%eax, -20(%rbp)
	callq	gimp_composite_sse_install
	movl	%eax, -24(%rbp)
	callq	gimp_composite_sse2_install
	movl	%eax, -28(%rbp)
	callq	gimp_composite_3dnow_install
	movl	%eax, -32(%rbp)
	callq	gimp_composite_altivec_install
	movl	%eax, -36(%rbp)
	callq	gimp_composite_vis_install
	movl	%eax, -40(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.20
	movabsq	$.L.str.46, %rdi
	movl	$45, %eax
	movl	$43, %ecx
	cmpl	$0, -20(%rbp)
	movl	%eax, %edx
	cmovnel	%ecx, %edx
	cmpl	$0, -24(%rbp)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	cmpl	$0, -28(%rbp)
	movl	%eax, %r8d
	cmovnel	%ecx, %r8d
	cmpl	$0, -32(%rbp)
	movl	%eax, %r9d
	cmovnel	%ecx, %r9d
	cmpl	$0, -36(%rbp)
	movl	%eax, %r10d
	cmovnel	%ecx, %r10d
	cmpl	$0, -40(%rbp)
	cmovnel	%ecx, %eax
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%eax, (%rsp)
	movb	$0, %al
	callq	g_printerr
.LBB4_9:                                # %if.end.33
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.34
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_composite_init, .Lfunc_end4-gimp_composite_init
	.cfi_endproc

	.globl	gimp_composite_use_cpu_accel
	.align	16, 0x90
	.type	gimp_composite_use_cpu_accel,@function
gimp_composite_use_cpu_accel:           # @gimp_composite_use_cpu_accel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	movq	gimp_composite_options, %rax
	andq	$2, %rax
	cmpq	$0, %rax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_composite_use_cpu_accel, .Lfunc_end5-gimp_composite_use_cpu_accel
	.cfi_endproc

	.type	gimp_composite_pixel_bpp,@object # @gimp_composite_pixel_bpp
	.section	.rodata,"a",@progbits
	.globl	gimp_composite_pixel_bpp
gimp_composite_pixel_bpp:
	.asciz	"\001\002\003\004"
	.size	gimp_composite_pixel_bpp, 5

	.type	gimp_composite_pixel_alphap,@object # @gimp_composite_pixel_alphap
	.globl	gimp_composite_pixel_alphap
gimp_composite_pixel_alphap:
	.asciz	"\000\001\000\001"
	.size	gimp_composite_pixel_alphap, 5

	.type	gimp_composite_pixel_alpha,@object # @gimp_composite_pixel_alpha
	.globl	gimp_composite_pixel_alpha
	.align	16
gimp_composite_pixel_alpha:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	4                       # 0x4
	.size	gimp_composite_pixel_alpha, 20

	.type	gimp_composite_operation_effects,@object # @gimp_composite_operation_effects
	.data
	.globl	gimp_composite_operation_effects
	.align	16
gimp_composite_operation_effects:
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.zero	3
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.zero	3
	.zero	3
	.zero	3
	.size	gimp_composite_operation_effects, 87

	.type	gimp_composite_options,@object # @gimp_composite_options
	.bss
	.globl	gimp_composite_options
	.align	8
gimp_composite_options:
	.zero	8
	.size	gimp_composite_options, 8

	.type	gimp_composite_function,@object # @gimp_composite_function
	.globl	gimp_composite_function
	.align	16
gimp_composite_function:
	.zero	32000
	.size	gimp_composite_function, 32000

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s %s %s %s = %p\n"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp_composite: unsupported operation: %s %s %s %s\n"
	.size	.L.str.1, 52

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%p: op=%s\n  A=%s(%d):%p\n  B=%s(%d):%p\n  D=%s(%d):%p\n  M=%s(%d):%p\n  n_pixels=%lu\n"
	.size	.L.str.2, 82

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_COMPOSITE_NORMAL"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_COMPOSITE_DISSOLVE"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_COMPOSITE_BEHIND"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_COMPOSITE_MULTIPLY"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_COMPOSITE_SCREEN"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_COMPOSITE_OVERLAY"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_COMPOSITE_DIFFERENCE"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_COMPOSITE_ADDITION"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_COMPOSITE_SUBTRACT"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_COMPOSITE_DARKEN"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_COMPOSITE_LIGHTEN"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_COMPOSITE_HUE"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_COMPOSITE_SATURATION"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_COMPOSITE_COLOR_ONLY"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_COMPOSITE_VALUE"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_COMPOSITE_DIVIDE"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GIMP_COMPOSITE_DODGE"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_COMPOSITE_BURN"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GIMP_COMPOSITE_HARDLIGHT"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"GIMP_COMPOSITE_SOFTLIGHT"
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GIMP_COMPOSITE_GRAIN_EXTRACT"
	.size	.L.str.23, 29

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"GIMP_COMPOSITE_GRAIN_MERGE"
	.size	.L.str.24, 27

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"GIMP_COMPOSITE_COLOR_ERASE"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GIMP_COMPOSITE_ERASE"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"GIMP_COMPOSITE_REPLACE"
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"GIMP_COMPOSITE_ANTI_ERASE"
	.size	.L.str.28, 26

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"GIMP_COMPOSITE_BLEND"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"GIMP_COMPOSITE_SHADE"
	.size	.L.str.30, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"GIMP_COMPOSITE_SWAP"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GIMP_COMPOSITE_SCALE"
	.size	.L.str.32, 21

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"GIMP_COMPOSITE_CONVERT"
	.size	.L.str.33, 23

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GIMP_COMPOSITE_XOR"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"bad mode"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"V8"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"VA8"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"RGB8"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"RGBA8"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"ANY"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"bad format"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GIMP_COMPOSITE"
	.size	.L.str.42, 15

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp_composite: verbose=%s\n"
	.size	.L.str.43, 28

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"yes"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"no"
	.size	.L.str.45, 3

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Processor instruction sets: %cmmx %csse %csse2 %c3dnow %caltivec %cvis\n"
	.size	.L.str.46, 72

	.type	gimp_composite_function_name,@object # @gimp_composite_function_name
	.bss
	.globl	gimp_composite_function_name
	.align	16
gimp_composite_function_name:
	.zero	32000
	.size	gimp_composite_function_name, 32000


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
