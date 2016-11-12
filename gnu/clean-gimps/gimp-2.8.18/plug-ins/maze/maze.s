	.text
	.file	"maze.bc"
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
	subq	$88, %rsp
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
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r8
	movabsq	$.L.str.25, %r9
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %r10
	movl	$1, %r11d
	movl	$10, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$10, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.28, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addq	$88, %rsp
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
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.29, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.29, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	callq	g_rand_new
	movq	%rax, gr
	movl	$21, run.values
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movabsq	$sel_w, %rcx
	movabsq	$sel_h, %r8
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	jmp	.LBB1_30
.LBB1_4:                                # %if.end
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_31
.LBB1_31:                               # %if.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_32
.LBB1_32:                               # %if.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_18
.LBB1_5:                                # %sw.bb
	movabsq	$.L.str.20, %rdi
	movabsq	$mvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	maze_dialog
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.12
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_30
.LBB1_7:                                # %if.end.13
	jmp	.LBB1_19
.LBB1_8:                                # %sw.bb.14
	cmpl	$10, -12(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.15
	movl	$1, -56(%rbp)
.LBB1_10:                               # %if.end.16
	cmpl	$3, -56(%rbp)
	jne	.LBB1_14
# BB#11:                                # %if.then.18
	movq	-24(%rbp), %rax
	movswl	128(%rax), %ecx
	movl	%ecx, mvals
	movq	-24(%rbp), %rax
	movswl	168(%rax), %ecx
	movl	%ecx, mvals+4
	movq	-24(%rbp), %rax
	movsbl	208(%rax), %ecx
	movl	%ecx, mvals+12
	movq	-24(%rbp), %rax
	movsbl	248(%rax), %ecx
	movl	%ecx, mvals+24
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, mvals+8
	movq	-24(%rbp), %rax
	movswl	328(%rax), %ecx
	movl	%ecx, mvals+16
	movq	-24(%rbp), %rax
	movswl	368(%rax), %ecx
	movl	%ecx, mvals+20
	cmpl	$0, mvals+28
	je	.LBB1_13
# BB#12:                                # %if.then.44
	callq	g_random_int
	movl	%eax, mvals+8
.LBB1_13:                               # %if.end.46
	jmp	.LBB1_14
.LBB1_14:                               # %if.end.47
	jmp	.LBB1_19
.LBB1_15:                               # %sw.bb.48
	movabsq	$.L.str.20, %rdi
	movabsq	$mvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	cmpl	$0, mvals+28
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_17
# BB#16:                                # %if.then.51
	callq	g_random_int
	movl	%eax, mvals+8
.LBB1_17:                               # %if.end.53
	jmp	.LBB1_19
.LBB1_18:                               # %sw.default
	jmp	.LBB1_19
.LBB1_19:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#20:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#21:                                # %lor.lhs.false.60
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_28
.LBB1_22:                               # %if.then.64
	movq	-48(%rbp), %rdi
	callq	maze
	cmpl	$1, -52(%rbp)
	je	.LBB1_24
# BB#23:                                # %if.then.67
	callq	gimp_displays_flush
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_24:                               # %if.end.69
	cmpl	$0, -52(%rbp)
	je	.LBB1_26
# BB#25:                                # %lor.lhs.false.72
	cmpl	$2, -52(%rbp)
	jne	.LBB1_27
.LBB1_26:                               # %if.then.75
	movabsq	$.L.str.20, %rdi
	movabsq	$mvals, %rax
	movl	$32, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_27:                               # %if.end.77
	jmp	.LBB1_29
.LBB1_28:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_29:                               # %if.end.78
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	gr, %rdi
	callq	g_rand_free
.LBB1_30:                               # %return
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
.LCPI3_1:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	maze,@function
maze:                                   # @maze
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
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_bounds
	movl	%eax, -180(%rbp)
	movl	-116(%rbp), %eax
	subl	-108(%rbp), %eax
	cltd
	idivl	mvals
	movl	%eax, -76(%rbp)
	movl	-120(%rbp), %eax
	subl	-112(%rbp), %eax
	cltd
	idivl	mvals+4
	movl	%eax, -80(%rbp)
	cmpl	$0, mvals+12
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	-76(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	-76(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -76(%rbp)
	movl	-80(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	-80(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -80(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movl	-76(%rbp), %eax
	andl	$1, %eax
	movl	-76(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movl	-80(%rbp), %eax
	andl	$1, %eax
	movl	-80(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -80(%rbp)
.LBB3_3:                                # %if.end
	movl	-116(%rbp), %eax
	movl	-108(%rbp), %ecx
	subl	%ecx, %eax
	movl	-76(%rbp), %ecx
	movl	mvals(%rip), %edx
	imull	%edx, %ecx
	subl	%ecx, %eax
	shrl	%eax
	movl	%eax, -84(%rbp)
	movl	-120(%rbp), %eax
	movl	-112(%rbp), %ecx
	subl	%ecx, %eax
	movl	-80(%rbp), %ecx
	movl	mvals+4(%rip), %edx
	imull	%edx, %ecx
	subl	%ecx, %eax
	shrl	%eax
	movl	%eax, -88(%rbp)
	movl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, -192(%rbp)
	movl	mvals+24(%rip), %ecx
	subl	$1, %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	ja	.LBB3_5
	jmp	.LBB3_4
.LBB3_4:                                # %sw.bb
	jmp	.LBB3_6
.LBB3_5:                                # %sw.default
	movabsq	$.L.str.31, %rdi
	movl	mvals+24, %esi
	movb	$0, %al
	callq	g_warning
.LBB3_6:                                # %sw.epilog
	cmpl	$0, mvals+12
	je	.LBB3_12
# BB#7:                                 # %if.then.24
	movl	mvals+24(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB3_8
	jmp	.LBB3_71
.LBB3_71:                               # %if.then.24
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB3_9
	jmp	.LBB3_10
.LBB3_8:                                # %sw.bb.25
	xorl	%edi, %edi
	movq	-192(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	mvals+8, %r8d
	callq	mazegen_tileable
	jmp	.LBB3_11
.LBB3_9:                                # %sw.bb.26
	movq	-192(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	callq	prim_tileable
	jmp	.LBB3_11
.LBB3_10:                               # %sw.default.27
	jmp	.LBB3_11
.LBB3_11:                               # %sw.epilog.28
	jmp	.LBB3_34
.LBB3_12:                               # %if.else.29
	cmpl	$0, -180(%rbp)
	je	.LBB3_28
# BB#13:                                # %if.then.31
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	movq	-192(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	-108(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	-112(%rbp), %r10d
	movl	-120(%rbp), %r11d
	movl	-84(%rbp), %ebx
	movl	-88(%rbp), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	mask_maze
	movl	-76(%rbp), %ecx
	movl	%ecx, -160(%rbp)
.LBB3_14:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
	movl	-160(%rbp), %eax
	movl	-80(%rbp), %ecx
	imull	-76(%rbp), %ecx
	cmpl	%ecx, %eax
	jae	.LBB3_27
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	$1, -152(%rbp)
.LBB3_16:                               # %for.cond.35
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-152(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jae	.LBB3_25
# BB#17:                                # %for.body.38
                                        #   in Loop: Header=BB3_16 Depth=2
	movl	-160(%rbp), %eax
	addl	-152(%rbp), %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB3_23
# BB#18:                                # %if.then.42
                                        #   in Loop: Header=BB3_16 Depth=2
	movl	mvals+24(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB3_19
	jmp	.LBB3_70
.LBB3_70:                               # %if.then.42
                                        #   in Loop: Header=BB3_16 Depth=2
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	je	.LBB3_20
	jmp	.LBB3_21
.LBB3_19:                               # %sw.bb.43
                                        #   in Loop: Header=BB3_16 Depth=2
	movl	-160(%rbp), %eax
	addl	-152(%rbp), %eax
	movq	-192(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	mvals+8, %r8d
	movl	%eax, %edi
	callq	mazegen
	jmp	.LBB3_22
.LBB3_20:                               # %sw.bb.45
                                        #   in Loop: Header=BB3_16 Depth=2
	movl	-160(%rbp), %eax
	addl	-152(%rbp), %eax
	movq	-192(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	%eax, %edi
	callq	prim
	jmp	.LBB3_22
.LBB3_21:                               # %sw.default.47
                                        #   in Loop: Header=BB3_16 Depth=2
	jmp	.LBB3_22
.LBB3_22:                               # %sw.epilog.48
                                        #   in Loop: Header=BB3_16 Depth=2
	jmp	.LBB3_23
.LBB3_23:                               # %if.end.49
                                        #   in Loop: Header=BB3_16 Depth=2
	jmp	.LBB3_24
.LBB3_24:                               # %for.inc
                                        #   in Loop: Header=BB3_16 Depth=2
	movl	-152(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB3_16
.LBB3_25:                               # %for.end
                                        #   in Loop: Header=BB3_14 Depth=1
	jmp	.LBB3_26
.LBB3_26:                               # %for.inc.51
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	-76(%rbp), %eax
	shll	$1, %eax
	addl	-160(%rbp), %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB3_14
.LBB3_27:                               # %for.end.54
	jmp	.LBB3_33
.LBB3_28:                               # %if.else.55
	movl	-76(%rbp), %eax
	incl	%eax
	movl	%eax, -196(%rbp)
	movl	mvals+24(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB3_29
	jmp	.LBB3_69
.LBB3_69:                               # %if.else.55
	movl	-220(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB3_30
	jmp	.LBB3_31
.LBB3_29:                               # %sw.bb.57
	movl	-196(%rbp), %edi
	movq	-192(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	mvals+8, %r8d
	callq	mazegen
	jmp	.LBB3_32
.LBB3_30:                               # %sw.bb.58
	movl	-196(%rbp), %edi
	movq	-192(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	callq	prim
	jmp	.LBB3_32
.LBB3_31:                               # %sw.default.59
	jmp	.LBB3_32
.LBB3_32:                               # %sw.epilog.60
	jmp	.LBB3_33
.LBB3_33:                               # %if.end.61
	jmp	.LBB3_34
.LBB3_34:                               # %if.end.62
	leaq	-72(%rbp), %rdi
	movl	$1, %eax
	movq	-24(%rbp), %rsi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-116(%rbp), %r8d
	subl	-108(%rbp), %r8d
	movl	-120(%rbp), %r9d
	subl	-112(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-168(%rbp), %rdx
	leaq	-164(%rbp), %rsi
	movl	$100, %eax
	xorps	%xmm0, %xmm0
	movl	$0, -92(%rbp)
	movsd	%xmm0, -104(%rbp)
	movl	-116(%rbp), %ecx
	subl	-108(%rbp), %ecx
	movl	-120(%rbp), %r8d
	subl	-112(%rbp), %r8d
	imull	%r8d, %ecx
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	cltd
	movl	-232(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -96(%rbp)
	movq	-24(%rbp), %rdi
	movq	-240(%rbp), %r10        # 8-byte Reload
	movq	%r10, %rdx
	callq	get_colors
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$1, %edi
	leaq	-72(%rbp), %rsi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -176(%rbp)
.LBB3_35:                               # %for.cond.73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_40 Depth 2
                                        #     Child Loop BB3_47 Depth 2
                                        #     Child Loop BB3_54 Depth 2
                                        #       Child Loop BB3_56 Depth 3
	cmpq	$0, -176(%rbp)
	je	.LBB3_68
# BB#36:                                # %for.body.76
                                        #   in Loop: Header=BB3_35 Depth=1
	movl	-48(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-44(%rbp), %eax
	subl	-112(%rbp), %eax
	subl	-88(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	mvals, %eax
	movl	-124(%rbp), %ecx
	movl	%eax, -248(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	mvals
	movl	-248(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -132(%rbp)
	movl	mvals+4, %ecx
	movl	-128(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	mvals+4
	subl	%edx, %ecx
	movl	%ecx, -136(%rbp)
	movl	-124(%rbp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	mvals
	movl	%eax, -148(%rbp)
	movl	-76(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	mvals+4
	movl	-252(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, -156(%rbp)
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %r8d
	movl	-156(%rbp), %eax
	addl	-148(%rbp), %eax
	movslq	%eax, %rsi
	movq	-192(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	cmpl	$1, %eax
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	%r8d, -260(%rbp)        # 4-byte Spill
	jne	.LBB3_38
# BB#37:                                # %cond.true
                                        #   in Loop: Header=BB3_35 Depth=1
	leaq	-164(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB3_39
.LBB3_38:                               # %cond.false
                                        #   in Loop: Header=BB3_35 Depth=1
	leaq	-168(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB3_39:                               # %cond.end
                                        #   in Loop: Header=BB3_35 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	leaq	-72(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-256(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	callq	drawbox
	movl	-148(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -152(%rbp)
	movl	-132(%rbp), %ecx
	movl	%ecx, -140(%rbp)
.LBB3_40:                               # %for.cond.98
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-140(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB3_46
# BB#41:                                # %for.body.101
                                        #   in Loop: Header=BB3_40 Depth=2
	movl	-140(%rbp), %esi
	movl	mvals, %ecx
	movl	-136(%rbp), %r8d
	movl	-156(%rbp), %eax
	movl	-152(%rbp), %edx
	movl	%edx, %edi
	addl	$1, %edi
	movl	%edi, -152(%rbp)
	addl	%edx, %eax
	movslq	%eax, %r9
	movq	-192(%rbp), %r10
	movzbl	(%r10,%r9), %eax
	cmpl	$1, %eax
	movl	%esi, -276(%rbp)        # 4-byte Spill
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	movl	%r8d, -284(%rbp)        # 4-byte Spill
	jne	.LBB3_43
# BB#42:                                # %cond.true.108
                                        #   in Loop: Header=BB3_40 Depth=2
	leaq	-164(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB3_44
.LBB3_43:                               # %cond.false.110
                                        #   in Loop: Header=BB3_40 Depth=2
	leaq	-168(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB3_44:                               # %cond.end.112
                                        #   in Loop: Header=BB3_40 Depth=2
	movq	-296(%rbp), %rax        # 8-byte Reload
	leaq	-72(%rbp), %rdi
	xorl	%edx, %edx
	movl	-276(%rbp), %esi        # 4-byte Reload
	movl	-280(%rbp), %ecx        # 4-byte Reload
	movl	-284(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	callq	drawbox
# BB#45:                                # %for.inc.114
                                        #   in Loop: Header=BB3_40 Depth=2
	movl	mvals, %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB3_40
.LBB3_46:                               # %for.end.116
                                        #   in Loop: Header=BB3_35 Depth=1
	movl	-156(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -144(%rbp)
.LBB3_47:                               # %for.cond.118
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-144(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB3_53
# BB#48:                                # %for.body.121
                                        #   in Loop: Header=BB3_47 Depth=2
	movl	-144(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	mvals+4, %r8d
	movl	-160(%rbp), %eax
	addl	-148(%rbp), %eax
	movslq	%eax, %rsi
	movq	-192(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	cmpl	$1, %eax
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movl	%r8d, -308(%rbp)        # 4-byte Spill
	jne	.LBB3_50
# BB#49:                                # %cond.true.128
                                        #   in Loop: Header=BB3_47 Depth=2
	leaq	-164(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB3_51
.LBB3_50:                               # %cond.false.130
                                        #   in Loop: Header=BB3_47 Depth=2
	leaq	-168(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB3_51:                               # %cond.end.132
                                        #   in Loop: Header=BB3_47 Depth=2
	movq	-320(%rbp), %rax        # 8-byte Reload
	leaq	-72(%rbp), %rdi
	xorl	%esi, %esi
	movl	-300(%rbp), %edx        # 4-byte Reload
	movl	-304(%rbp), %ecx        # 4-byte Reload
	movl	-308(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	callq	drawbox
	movl	-76(%rbp), %ecx
	addl	-160(%rbp), %ecx
	movl	%ecx, -160(%rbp)
# BB#52:                                # %for.inc.135
                                        #   in Loop: Header=BB3_47 Depth=2
	movl	mvals+4, %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB3_47
.LBB3_53:                               # %for.end.137
                                        #   in Loop: Header=BB3_35 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -144(%rbp)
.LBB3_54:                               # %for.cond.139
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_56 Depth 3
	movl	-144(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB3_64
# BB#55:                                # %for.body.143
                                        #   in Loop: Header=BB3_54 Depth=2
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-76(%rbp), %eax
	addl	-156(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -140(%rbp)
.LBB3_56:                               # %for.cond.145
                                        #   Parent Loop BB3_35 Depth=1
                                        #     Parent Loop BB3_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-140(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB3_62
# BB#57:                                # %for.body.149
                                        #   in Loop: Header=BB3_56 Depth=3
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	movl	mvals, %ecx
	movl	mvals+4, %r8d
	movl	-156(%rbp), %eax
	movl	-152(%rbp), %edi
	movl	%edi, %r9d
	addl	$1, %r9d
	movl	%r9d, -152(%rbp)
	addl	%edi, %eax
	movslq	%eax, %r10
	movq	-192(%rbp), %r11
	movzbl	(%r11,%r10), %eax
	cmpl	$1, %eax
	movl	%esi, -324(%rbp)        # 4-byte Spill
	movl	%edx, -328(%rbp)        # 4-byte Spill
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	%r8d, -336(%rbp)        # 4-byte Spill
	jne	.LBB3_59
# BB#58:                                # %cond.true.157
                                        #   in Loop: Header=BB3_56 Depth=3
	leaq	-164(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB3_60
.LBB3_59:                               # %cond.false.159
                                        #   in Loop: Header=BB3_56 Depth=3
	leaq	-168(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB3_60:                               # %cond.end.161
                                        #   in Loop: Header=BB3_56 Depth=3
	movq	-344(%rbp), %rax        # 8-byte Reload
	leaq	-72(%rbp), %rdi
	movl	-324(%rbp), %esi        # 4-byte Reload
	movl	-328(%rbp), %edx        # 4-byte Reload
	movl	-332(%rbp), %ecx        # 4-byte Reload
	movl	-336(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	callq	drawbox
# BB#61:                                # %for.inc.163
                                        #   in Loop: Header=BB3_56 Depth=3
	movl	mvals, %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB3_56
.LBB3_62:                               # %for.end.165
                                        #   in Loop: Header=BB3_54 Depth=2
	jmp	.LBB3_63
.LBB3_63:                               # %for.inc.166
                                        #   in Loop: Header=BB3_54 Depth=2
	movl	mvals+4, %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB3_54
.LBB3_64:                               # %for.end.168
                                        #   in Loop: Header=BB3_35 Depth=1
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jbe	.LBB3_66
# BB#65:                                # %if.then.175
                                        #   in Loop: Header=BB3_35 Depth=1
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movl	-92(%rbp), %eax
	subl	-96(%rbp), %eax
	movl	%eax, -92(%rbp)
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB3_66:                               # %if.end.179
                                        #   in Loop: Header=BB3_35 Depth=1
	jmp	.LBB3_67
.LBB3_67:                               # %for.inc.180
                                        #   in Loop: Header=BB3_35 Depth=1
	movq	-176(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -176(%rbp)
	jmp	.LBB3_35
.LBB3_68:                               # %for.end.182
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-24(%rbp), %rdi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	movl	-116(%rbp), %r8d
	subl	-108(%rbp), %r8d
	movl	-120(%rbp), %r9d
	subl	-112(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -360(%rbp)        # 4-byte Spill
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	maze, .Lfunc_end3-maze
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	mask_maze,@function
mask_maze:                              # @mask_maze
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$216, %rsp
.Ltmp25:
	.cfi_offset %rbx, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%ebx, -44(%rbp)
	movl	%r11d, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_item_get_image
	movl	%eax, %edi
	callq	gimp_image_get_selection
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_28
.LBB5_2:                                # %if.end
	movl	-60(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %r8d
	subl	-36(%rbp), %r8d
	movl	-48(%rbp), %r9d
	subl	-44(%rbp), %r9d
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-180(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movl	-12(%rbp), %edi
	callq	gimp_drawable_offsets
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-80(%rbp), %ecx
	imull	-96(%rbp), %ecx
	movslq	%ecx, %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movl	$2, %ecx
	movq	%rax, -176(%rbp)
	movl	-36(%rbp), %r8d
	addl	-52(%rbp), %r8d
	addl	mvals, %r8d
	addl	-124(%rbp), %r8d
	movl	%r8d, -116(%rbp)
	movl	-44(%rbp), %r8d
	addl	-56(%rbp), %r8d
	addl	mvals+4, %r8d
	addl	-128(%rbp), %r8d
	movl	%r8d, -120(%rbp)
	movl	mvals, %eax
	cltd
	idivl	%ecx
	movl	%eax, -152(%rbp)
	movl	mvals, %eax
	subl	$1, %eax
	movl	%eax, -156(%rbp)
	movl	mvals+4, %eax
	cltd
	idivl	%ecx
	movl	%eax, -160(%rbp)
	movl	mvals+4, %eax
	subl	$1, %eax
	movl	%eax, -164(%rbp)
	movl	-120(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	$1, -144(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	movl	-144(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	.LBB5_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-36(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-40(%rbp), %edx
	subl	-36(%rbp), %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-192(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_get_row
	movl	$1, -148(%rbp)
	movl	mvals, %eax
	movl	%eax, -132(%rbp)
.LBB5_5:                                # %while.cond
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-148(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB5_9
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	$5, %eax
	movl	-132(%rbp), %ecx
	movl	%ecx, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-132(%rbp), %edi
	addl	-152(%rbp), %edi
	movl	%edi, %edi
	movl	%edi, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	-132(%rbp), %edi
	addl	-156(%rbp), %edi
	movl	%edi, %edi
	movl	%edi, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-196(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movl	-144(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %r9
	movb	%r8b, (%r9,%rsi)
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	movl	mvals, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-148(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB5_8
# BB#7:                                 # %if.then.42
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	$3, %eax
	movl	-132(%rbp), %ecx
	movl	%ecx, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-132(%rbp), %edi
	addl	-152(%rbp), %edi
	movl	%edi, %edi
	movl	%edi, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	-132(%rbp), %edi
	addl	-156(%rbp), %edi
	movl	%edi, %edi
	movl	%edi, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-200(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movl	-144(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %r9
	movb	%r8b, (%r9,%rsi)
.LBB5_8:                                # %if.end.62
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	movl	mvals, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB5_5
.LBB5_9:                                # %while.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	mvals+4, %eax
	shll	$1, %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-144(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB5_3
.LBB5_11:                               # %for.end
	movq	-176(%rbp), %rdi
	callq	g_free
	movl	$1, %eax
	movl	%eax, %esi
	movl	-76(%rbp), %eax
	imull	-96(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movl	-116(%rbp), %ecx
	addl	-152(%rbp), %ecx
	movl	%ecx, -132(%rbp)
	movl	$1, -148(%rbp)
.LBB5_12:                               # %for.cond.73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
	movl	-148(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB5_20
# BB#13:                                # %for.body.76
                                        #   in Loop: Header=BB5_12 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_col
	movl	$1, -144(%rbp)
	movl	mvals+4, %eax
	movl	%eax, -136(%rbp)
.LBB5_14:                               # %while.cond.78
                                        #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-144(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	.LBB5_18
# BB#15:                                # %while.body.81
                                        #   in Loop: Header=BB5_14 Depth=2
	movl	$5, %eax
	movl	-136(%rbp), %ecx
	movl	%ecx, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-136(%rbp), %edi
	addl	-164(%rbp), %edi
	movl	%edi, %edi
	movl	%edi, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-204(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-144(%rbp), %edi
	imull	-28(%rbp), %edi
	addl	-148(%rbp), %edi
	movl	%edi, %edi
	movl	%edi, %esi
	movq	-24(%rbp), %r8
	movzbl	(%r8,%rsi), %edi
	addl	%eax, %edi
	movb	%dil, %r9b
	movb	%r9b, (%r8,%rsi)
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	movl	mvals+4, %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-144(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	.LBB5_17
# BB#16:                                # %if.then.102
                                        #   in Loop: Header=BB5_14 Depth=2
	movl	$3, %eax
	movl	-136(%rbp), %ecx
	movl	%ecx, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-136(%rbp), %edi
	addl	-160(%rbp), %edi
	movl	%edi, %edi
	movl	%edi, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	-136(%rbp), %edi
	addl	-164(%rbp), %edi
	movl	%edi, %edi
	movl	%edi, %edx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-208(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movl	-144(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %r9
	movb	%r8b, (%r9,%rsi)
.LBB5_17:                               # %if.end.122
                                        #   in Loop: Header=BB5_14 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	movl	mvals+4, %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB5_14
.LBB5_18:                               # %while.end.125
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	mvals, %eax
	shll	$1, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#19:                                # %for.inc.128
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	-148(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB5_12
.LBB5_20:                               # %for.end.130
	movq	-176(%rbp), %rdi
	callq	g_free
	movl	$0, -136(%rbp)
.LBB5_21:                               # %for.cond.131
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_23 Depth 2
	movl	-136(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	.LBB5_28
# BB#22:                                # %for.body.134
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	$0, -132(%rbp)
.LBB5_23:                               # %for.cond.135
                                        #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-132(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB5_26
# BB#24:                                # %for.body.138
                                        #   in Loop: Header=BB5_23 Depth=2
	xorl	%eax, %eax
	movl	$3, %ecx
	movl	-140(%rbp), %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	cmpl	$127, %edx
	cmovll	%ecx, %eax
	movb	%al, %r8b
	movl	-140(%rbp), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
# BB#25:                                # %for.inc.147
                                        #   in Loop: Header=BB5_23 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB5_23
.LBB5_26:                               # %for.end.149
                                        #   in Loop: Header=BB5_21 Depth=1
	jmp	.LBB5_27
.LBB5_27:                               # %for.inc.150
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB5_21
.LBB5_28:                               # %for.end.152
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mask_maze, .Lfunc_end5-mask_maze
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

	.type	mvals,@object           # @mvals
	.data
	.globl	mvals
	.align	4
mvals:
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	57                      # 0x39
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	mvals, 32

	.type	gr,@object              # @gr
	.bss
	.globl	gr
	.align	8
gr:
	.quad	0
	.size	gr, 8

	.type	sel_w,@object           # @sel_w
	.globl	sel_w
	.align	4
sel_w:
	.long	0                       # 0x0
	.size	sel_w, 4

	.type	sel_h,@object           # @sel_h
	.globl	sel_h
	.align	4
sel_h:
	.long	0                       # 0x0
	.size	sel_h, 4

	.type	query.args,@object      # @query.args
	.section	.rodata,"a",@progbits
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
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.size	query.args, 240

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
	.asciz	"(unused)"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ID of drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"width"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Width of the passages"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"height"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Height of the passages"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tileable"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Tileable maze?"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"algorithm"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Generation algorithm(0=DEPTH FIRST, 1=PRIM'S ALGORITHM)"
	.size	.L.str.13, 56

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"seed"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Random Seed"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"multiple"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Multiple (use 57)"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"offset"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Offset (use 1)"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"plug-in-maze"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Draw a labyrinth"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Generates a maze using either the depth-first search method or Prim's algorithm.  Can make tileable mazes too."
	.size	.L.str.22, 111

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Kevin Turner <kevint@poboxes.com>"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Kevin Turner"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"1997, 1998"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Maze..."
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.27, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"<Image>/Filters/Render/Pattern"
	.size	.L.str.28, 31

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"UTF-8"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"maze: Invalid algorithm choice %d"
	.size	.L.str.31, 34

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Drawing maze"
	.size	.L.str.32, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
