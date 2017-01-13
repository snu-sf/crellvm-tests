	.text
	.file	"crop-zealous.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	movl	$1, %r10d
	movl	$3, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.13, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -80(%rbp)         # 4-byte Spill
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, -52(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.LBB1_6
# BB#3:                                 # %if.then
	cmpl	$3, -12(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.5
	movl	$1, -56(%rbp)
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.6
	cmpl	$3, -56(%rbp)
	jne	.LBB1_18
# BB#7:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	movl	%edi, -60(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#8:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#9:                                 # %lor.lhs.false.18
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_16
.LBB1_10:                               # %if.then.22
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-48(%rbp), %rdi
	movl	4(%rdi), %ecx
	movq	-48(%rbp), %rdi
	cmpl	8(%rdi), %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jbe	.LBB1_12
# BB#11:                                # %cond.true
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-100(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %cond.false
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-112(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_13:                               # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	do_zcrop
	cmpl	$1, -52(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.33
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_15:                               # %if.end.35
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_17
.LBB1_16:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_17:                               # %if.end.36
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.37
	movl	$21, run.values
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	do_zcrop,@function
do_zcrop:                               # @do_zcrop
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
	subq	$288, %rsp              # imm = 0x120
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %eax
	movl	%eax, -116(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -120(%rbp)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %eax
	movl	%eax, -132(%rbp)
	movl	-116(%rbp), %eax
	imull	-120(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -180(%rbp)
	movl	$0, -184(%rbp)
	movslq	-120(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -152(%rbp)
	movslq	-116(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -160(%rbp)
	movl	-116(%rbp), %edx
	cmpl	-120(%rbp), %edx
	jle	.LBB3_2
# BB#1:                                 # %cond.true
	movl	-116(%rbp), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movl	-120(%rbp), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB3_3:                                # %cond.end
	movl	-196(%rbp), %eax        # 4-byte Reload
	imull	-132(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rsi
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movl	%edx, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -192(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -128(%rbp)
.LBB3_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	movl	-128(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB3_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	-64(%rbp), %rdi
	xorl	%edx, %edx
	movq	-144(%rbp), %rsi
	movl	-128(%rbp), %ecx
	movl	-116(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movslq	-128(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movb	$1, (%rdi,%rsi)
	movl	$0, -124(%rbp)
.LBB3_6:                                # %for.cond.13
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-124(%rbp), %eax
	movl	-116(%rbp), %ecx
	imull	-132(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_11
# BB#7:                                 # %for.body.17
                                        #   in Loop: Header=BB3_6 Depth=2
	movq	-144(%rbp), %rdi
	movslq	-124(%rbp), %rax
	addq	-144(%rbp), %rax
	movl	-132(%rbp), %edx
	movl	-192(%rbp), %ecx
	movq	%rax, %rsi
	callq	colors_equal
	cmpl	$0, %eax
	jne	.LBB3_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	movslq	-128(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB3_11
.LBB3_9:                                # %if.end
                                        #   in Loop: Header=BB3_6 Depth=2
	jmp	.LBB3_10
.LBB3_10:                               # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=2
	movl	-132(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB3_6
.LBB3_11:                               # %for.end
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	$20, %eax
	movl	-116(%rbp), %ecx
	addl	-184(%rbp), %ecx
	movl	%ecx, -184(%rbp)
	movl	-128(%rbp), %ecx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-204(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_13
# BB#12:                                # %if.then.26
                                        #   in Loop: Header=BB3_4 Depth=1
	cvtsi2sdl	-184(%rbp), %xmm0
	cvtsi2sdl	-180(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB3_13:                               # %if.end.30
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_14
.LBB3_14:                               # %for.inc.31
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB3_4
.LBB3_15:                               # %for.end.33
	movl	$0, -168(%rbp)
	movl	$0, -124(%rbp)
.LBB3_16:                               # %for.cond.34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
	movl	-124(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB3_27
# BB#17:                                # %for.body.37
                                        #   in Loop: Header=BB3_16 Depth=1
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-120(%rbp), %r8d
	callq	gimp_pixel_rgn_get_col
	movslq	-124(%rbp), %rsi
	movq	-160(%rbp), %rdi
	movb	$1, (%rdi,%rsi)
	movl	$0, -128(%rbp)
.LBB3_18:                               # %for.cond.40
                                        #   Parent Loop BB3_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-128(%rbp), %eax
	movl	-120(%rbp), %ecx
	imull	-132(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_23
# BB#19:                                # %for.body.44
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	-144(%rbp), %rdi
	movslq	-128(%rbp), %rax
	addq	-144(%rbp), %rax
	movl	-132(%rbp), %edx
	movl	-192(%rbp), %ecx
	movq	%rax, %rsi
	callq	colors_equal
	cmpl	$0, %eax
	jne	.LBB3_21
# BB#20:                                # %if.then.49
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	movslq	-124(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB3_23
.LBB3_21:                               # %if.end.53
                                        #   in Loop: Header=BB3_18 Depth=2
	jmp	.LBB3_22
.LBB3_22:                               # %for.inc.54
                                        #   in Loop: Header=BB3_18 Depth=2
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB3_18
.LBB3_23:                               # %for.end.56
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	$20, %eax
	movl	-120(%rbp), %ecx
	addl	-184(%rbp), %ecx
	movl	%ecx, -184(%rbp)
	movl	-124(%rbp), %ecx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-212(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_25
# BB#24:                                # %if.then.61
                                        #   in Loop: Header=BB3_16 Depth=1
	cvtsi2sdl	-184(%rbp), %xmm0
	cvtsi2sdl	-180(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB3_25:                               # %if.end.66
                                        #   in Loop: Header=BB3_16 Depth=1
	jmp	.LBB3_26
.LBB3_26:                               # %for.inc.67
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB3_16
.LBB3_27:                               # %for.end.69
	cmpl	$0, -168(%rbp)
	je	.LBB3_31
# BB#28:                                # %lor.lhs.false
	cmpl	$0, -164(%rbp)
	je	.LBB3_31
# BB#29:                                # %lor.lhs.false.74
	movl	-168(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jne	.LBB3_32
# BB#30:                                # %land.lhs.true
	movl	-164(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jne	.LBB3_32
.LBB3_31:                               # %if.then.79
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-152(%rbp), %rdi
	callq	g_free
	movq	-160(%rbp), %rdi
	callq	g_free
	jmp	.LBB3_49
.LBB3_32:                               # %if.end.81
	movl	$0, -172(%rbp)
	movl	$0, -128(%rbp)
.LBB3_33:                               # %for.cond.82
                                        # =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB3_40
# BB#34:                                # %for.body.85
                                        #   in Loop: Header=BB3_33 Depth=1
	movslq	-128(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB3_36
# BB#35:                                # %if.then.89
                                        #   in Loop: Header=BB3_33 Depth=1
	leaq	-64(%rbp), %rdi
	xorl	%edx, %edx
	movq	-144(%rbp), %rsi
	movl	-128(%rbp), %ecx
	movl	-116(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	leaq	-112(%rbp), %rdi
	xorl	%edx, %edx
	movq	-144(%rbp), %rsi
	movl	-172(%rbp), %ecx
	movl	-116(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	movl	-172(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -172(%rbp)
.LBB3_36:                               # %if.end.91
                                        #   in Loop: Header=BB3_33 Depth=1
	movl	$20, %eax
	movl	-116(%rbp), %ecx
	addl	-184(%rbp), %ecx
	movl	%ecx, -184(%rbp)
	movl	-128(%rbp), %ecx
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-220(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_38
# BB#37:                                # %if.then.96
                                        #   in Loop: Header=BB3_33 Depth=1
	cvtsi2sdl	-184(%rbp), %xmm0
	cvtsi2sdl	-180(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB3_38:                               # %if.end.101
                                        #   in Loop: Header=BB3_33 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               # %for.inc.102
                                        #   in Loop: Header=BB3_33 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB3_33
.LBB3_40:                               # %for.end.104
	leaq	-64(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$0, -176(%rbp)
	movq	-8(%rbp), %rsi
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -124(%rbp)
.LBB3_41:                               # %for.cond.105
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB3_48
# BB#42:                                # %for.body.108
                                        #   in Loop: Header=BB3_41 Depth=1
	movslq	-124(%rbp), %rax
	movq	-160(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB3_44
# BB#43:                                # %if.then.112
                                        #   in Loop: Header=BB3_41 Depth=1
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-120(%rbp), %r8d
	callq	gimp_pixel_rgn_get_col
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-120(%rbp), %r8d
	callq	gimp_pixel_rgn_set_col
	movl	-176(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -176(%rbp)
.LBB3_44:                               # %if.end.114
                                        #   in Loop: Header=BB3_41 Depth=1
	movl	$20, %eax
	movl	-120(%rbp), %ecx
	addl	-184(%rbp), %ecx
	movl	%ecx, -184(%rbp)
	movl	-124(%rbp), %ecx
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-232(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_46
# BB#45:                                # %if.then.119
                                        #   in Loop: Header=BB3_41 Depth=1
	cvtsi2sdl	-184(%rbp), %xmm0
	cvtsi2sdl	-180(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB3_46:                               # %if.end.124
                                        #   in Loop: Header=BB3_41 Depth=1
	jmp	.LBB3_47
.LBB3_47:                               # %for.inc.125
                                        #   in Loop: Header=BB3_41 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB3_41
.LBB3_48:                               # %for.end.127
	movq	-144(%rbp), %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	-12(%rbp), %edi
	callq	gimp_image_undo_group_start
	movl	-12(%rbp), %edi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gimp_selection_save
	movl	%eax, -188(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_selection_none
	movl	$1, %esi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_drawable_merge_shadow
	movl	$2, %esi
	movl	-12(%rbp), %edi
	movl	-188(%rbp), %edx
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gimp_image_select_item
	movl	-12(%rbp), %edi
	movl	-188(%rbp), %esi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_image_remove_channel
	xorl	%edx, %edx
	movl	-12(%rbp), %edi
	movl	-168(%rbp), %esi
	movl	-164(%rbp), %r8d
	movl	%edx, -256(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	-256(%rbp), %ecx        # 4-byte Reload
	movl	-256(%rbp), %r8d        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_image_crop
	movl	-12(%rbp), %edi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_progress_update
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB3_49:                               # %return
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end3:
	.size	do_zcrop, .Lfunc_end3-do_zcrop
	.cfi_endproc

	.align	16, 0x90
	.type	colors_equal,@function
colors_equal:                           # @colors_equal
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB4_4
# BB#1:                                 # %land.lhs.true
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#2:                                 # %land.lhs.true.2
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB4_11
.LBB4_4:                                # %if.else
	movl	$0, -36(%rbp)
.LBB4_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB4_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	je	.LBB4_8
# BB#7:                                 # %if.then.19
	movl	$0, -4(%rbp)
	jmp	.LBB4_11
.LBB4_8:                                # %if.end
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_9
.LBB4_9:                                # %for.inc
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_5
.LBB4_10:                               # %for.end
	movl	$1, -4(%rbp)
.LBB4_11:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	colors_equal, .Lfunc_end4-colors_equal
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB5_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB5_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_message, .Lfunc_end5-g_message
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.args,@object      # @query.args
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.args, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"plug-in-zealouscrop"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Autocrop unused space from edges and middle"
	.size	.L.str.7, 44

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Adam D. Moss"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1997"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Zealous Crop"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Image/Crop"
	.size	.L.str.13, 19

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"UTF-8"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Zealous cropping"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Nothing to crop."
	.size	.L.str.17, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
