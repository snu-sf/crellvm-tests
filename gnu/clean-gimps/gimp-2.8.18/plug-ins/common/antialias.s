	.text
	.file	"antialias.bc"
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.6, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#3:                                 # %if.then
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_17
.LBB1_17:                               # %if.then
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_18
.LBB1_18:                               # %if.then
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_9
.LBB1_4:                                # %sw.bb
	cmpl	$3, -12(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.6
	movl	$1, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_10
.LBB1_7:                                # %sw.bb.7
	jmp	.LBB1_10
.LBB1_8:                                # %sw.bb.8
	jmp	.LBB1_10
.LBB1_9:                                # %sw.default
	jmp	.LBB1_10
.LBB1_10:                               # %sw.epilog
	jmp	.LBB1_12
.LBB1_11:                               # %if.else
	movl	$1, -48(%rbp)
.LBB1_12:                               # %if.end.9
	cmpl	$3, -48(%rbp)
	jne	.LBB1_16
# BB#13:                                # %if.then.11
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movabsq	$.L.str.16, %rdi
	movq	%rax, -56(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-56(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-104(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-56(%rbp), %rdi
	callq	render
	cmpl	$1, -44(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.20
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_15:                               # %if.end.22
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_16:                               # %if.end.23
	movl	$21, run.values
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	addq	$112, %rsp
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
	.type	render,@function
render:                                 # @render
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$568, %rsp              # imm = 0x238
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
	leaq	-64(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-76(%rbp), %r8
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_56
.LBB3_2:                                # %if.end
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -228(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -232(%rbp)
	movq	-48(%rbp), %rsi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-184(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-48(%rbp), %rsi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-52(%rbp), %eax
	addl	$2, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -192(%rbp)
	movl	-52(%rbp), %ecx
	addl	$2, %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -200(%rbp)
	movl	-52(%rbp), %ecx
	addl	$2, %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -208(%rbp)
	movl	-52(%rbp), %ecx
	addl	$2, %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -216(%rbp)
	imull	$9, -60(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -224(%rbp)
	movslq	-60(%rbp), %rax
	addq	-200(%rbp), %rax
	movl	-68(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movq	%rax, %rsi
	callq	gimp_pixel_rgn_get_row
	movq	-200(%rbp), %rdi
	movslq	-60(%rbp), %rax
	addq	-200(%rbp), %rax
	movslq	-60(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rax
	addq	-200(%rbp), %rax
	movl	-52(%rbp), %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-200(%rbp), %rdx
	movslq	-60(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-52(%rbp), %ecx
	addl	$2, %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rdx
	callq	memcpy
	movq	-208(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-52(%rbp), %ecx
	addl	$2, %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rdx
	callq	memcpy
	movl	-68(%rbp), %ecx
	movl	%ecx, -80(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_44 Depth 3
	movl	-80(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	-76(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_55
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	movl	-244(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	-76(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB3_6
# BB#5:                                 # %if.then.47
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-68(%rbp), %eax
	addl	-76(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -244(%rbp)
.LBB3_6:                                # %if.end.50
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movq	-192(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -208(%rbp)
	movslq	-60(%rbp), %rax
	addq	-208(%rbp), %rax
	movl	-244(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movq	%rax, %rsi
	callq	gimp_pixel_rgn_get_row
	movq	-208(%rbp), %rdi
	movslq	-60(%rbp), %rax
	addq	-208(%rbp), %rax
	movslq	-60(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rax
	addq	-208(%rbp), %rax
	movl	-52(%rbp), %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-208(%rbp), %rdx
	movslq	-60(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movl	-64(%rbp), %ecx
	movl	%ecx, -84(%rbp)
.LBB3_7:                                # %for.cond.65
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_44 Depth 3
	movl	-84(%rbp), %eax
	movl	-64(%rbp), %ecx
	addl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_51
# BB#8:                                 # %for.body.69
                                        #   in Loop: Header=BB3_7 Depth=2
	cmpl	$0, -228(%rbp)
	je	.LBB3_10
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	addl	-232(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB3_48
.LBB3_10:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-60(%rbp), %edi
	imull	$0, -60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-224(%rbp), %rcx
	movl	-60(%rbp), %eax
	shll	$0, %eax
	movslq	%eax, %rdx
	addq	-224(%rbp), %rdx
	movl	-60(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rsi
	addq	-224(%rbp), %rsi
	imull	$3, -60(%rbp), %eax
	movslq	%eax, %r8
	addq	-224(%rbp), %r8
	movl	-60(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %r9
	addq	-224(%rbp), %r9
	imull	$5, -60(%rbp), %eax
	movslq	%eax, %r10
	addq	-224(%rbp), %r10
	imull	$6, -60(%rbp), %eax
	movslq	%eax, %r11
	addq	-224(%rbp), %r11
	imull	$7, -60(%rbp), %eax
	movslq	%eax, %rbx
	addq	-224(%rbp), %rbx
	movl	-60(%rbp), %eax
	shll	$3, %eax
	movslq	%eax, %r14
	addq	-224(%rbp), %r14
	cmpl	$0, -228(%rbp)
	movl	%edi, -268(%rbp)        # 4-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%r8, -304(%rbp)         # 8-byte Spill
	movq	%r9, -312(%rbp)         # 8-byte Spill
	movq	%r10, -320(%rbp)        # 8-byte Spill
	movq	%r11, -328(%rbp)        # 8-byte Spill
	movq	%rbx, -336(%rbp)        # 8-byte Spill
	movq	%r14, -344(%rbp)        # 8-byte Spill
	je	.LBB3_12
# BB#11:                                # %lor.lhs.false.106
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$0, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-192(%rbp), %rcx
	movl	-232(%rbp), %eax
	movl	%eax, %edx
	movzbl	(%rcx,%rdx), %eax
	cmpl	$0, %eax
	je	.LBB3_13
.LBB3_12:                               # %cond.true
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$0, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-192(%rbp), %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB3_14
.LBB3_13:                               # %cond.false
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
.LBB3_14:                               # %cond.end
                                        #   in Loop: Header=BB3_7 Depth=2
	movq	-352(%rbp), %rax        # 8-byte Reload
	cmpl	$0, -228(%rbp)
	movq	%rax, -360(%rbp)        # 8-byte Spill
	je	.LBB3_16
# BB#15:                                # %lor.lhs.false.122
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-192(%rbp), %rcx
	movl	-232(%rbp), %eax
	movl	%eax, %edx
	movzbl	(%rcx,%rdx), %eax
	cmpl	$0, %eax
	je	.LBB3_17
.LBB3_16:                               # %cond.true.131
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-192(%rbp), %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false.136
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
.LBB3_18:                               # %cond.end.141
                                        #   in Loop: Header=BB3_7 Depth=2
	movq	-368(%rbp), %rax        # 8-byte Reload
	cmpl	$0, -228(%rbp)
	movq	%rax, -376(%rbp)        # 8-byte Spill
	je	.LBB3_20
# BB#19:                                # %lor.lhs.false.144
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$2, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-192(%rbp), %rcx
	movl	-232(%rbp), %eax
	movl	%eax, %edx
	movzbl	(%rcx,%rdx), %eax
	cmpl	$0, %eax
	je	.LBB3_21
.LBB3_20:                               # %cond.true.153
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$2, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-192(%rbp), %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB3_22
.LBB3_21:                               # %cond.false.158
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
.LBB3_22:                               # %cond.end.163
                                        #   in Loop: Header=BB3_7 Depth=2
	movq	-384(%rbp), %rax        # 8-byte Reload
	cmpl	$0, -228(%rbp)
	movq	%rax, -392(%rbp)        # 8-byte Spill
	je	.LBB3_24
# BB#23:                                # %lor.lhs.false.166
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$0, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movl	-232(%rbp), %eax
	movl	%eax, %edx
	movzbl	(%rcx,%rdx), %eax
	cmpl	$0, %eax
	je	.LBB3_25
.LBB3_24:                               # %cond.true.175
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$0, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB3_26
.LBB3_25:                               # %cond.false.180
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
.LBB3_26:                               # %cond.end.185
                                        #   in Loop: Header=BB3_7 Depth=2
	movq	-400(%rbp), %rax        # 8-byte Reload
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-200(%rbp), %rdx
	cmpl	$0, -228(%rbp)
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	je	.LBB3_28
# BB#27:                                # %lor.lhs.false.192
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$2, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movl	-232(%rbp), %eax
	movl	%eax, %edx
	movzbl	(%rcx,%rdx), %eax
	cmpl	$0, %eax
	je	.LBB3_29
.LBB3_28:                               # %cond.true.201
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$2, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB3_30
.LBB3_29:                               # %cond.false.206
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
.LBB3_30:                               # %cond.end.211
                                        #   in Loop: Header=BB3_7 Depth=2
	movq	-424(%rbp), %rax        # 8-byte Reload
	cmpl	$0, -228(%rbp)
	movq	%rax, -432(%rbp)        # 8-byte Spill
	je	.LBB3_32
# BB#31:                                # %lor.lhs.false.214
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$0, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-208(%rbp), %rcx
	movl	-232(%rbp), %eax
	movl	%eax, %edx
	movzbl	(%rcx,%rdx), %eax
	cmpl	$0, %eax
	je	.LBB3_33
.LBB3_32:                               # %cond.true.223
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$0, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-208(%rbp), %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB3_34
.LBB3_33:                               # %cond.false.228
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
.LBB3_34:                               # %cond.end.233
                                        #   in Loop: Header=BB3_7 Depth=2
	movq	-440(%rbp), %rax        # 8-byte Reload
	cmpl	$0, -228(%rbp)
	movq	%rax, -448(%rbp)        # 8-byte Spill
	je	.LBB3_36
# BB#35:                                # %lor.lhs.false.236
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-208(%rbp), %rcx
	movl	-232(%rbp), %eax
	movl	%eax, %edx
	movzbl	(%rcx,%rdx), %eax
	cmpl	$0, %eax
	je	.LBB3_37
.LBB3_36:                               # %cond.true.245
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-208(%rbp), %rcx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB3_38
.LBB3_37:                               # %cond.false.250
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
.LBB3_38:                               # %cond.end.255
                                        #   in Loop: Header=BB3_7 Depth=2
	movq	-456(%rbp), %rax        # 8-byte Reload
	cmpl	$0, -228(%rbp)
	movq	%rax, -464(%rbp)        # 8-byte Spill
	je	.LBB3_40
# BB#39:                                # %lor.lhs.false.258
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$2, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-208(%rbp), %rcx
	movl	-232(%rbp), %eax
	movl	%eax, %edx
	movzbl	(%rcx,%rdx), %eax
	cmpl	$0, %eax
	je	.LBB3_41
.LBB3_40:                               # %cond.true.267
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$2, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-208(%rbp), %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB3_42
.LBB3_41:                               # %cond.false.272
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-200(%rbp), %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
.LBB3_42:                               # %cond.end.277
                                        #   in Loop: Header=BB3_7 Depth=2
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	-268(%rbp), %edi        # 4-byte Reload
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	-304(%rbp), %r8         # 8-byte Reload
	movq	-312(%rbp), %r9         # 8-byte Reload
	movq	-320(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-328(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-336(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	-344(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	movq	-360(%rbp), %r15        # 8-byte Reload
	movq	%r15, 32(%rsp)
	movq	-376(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%rsp)
	movq	-392(%rbp), %r13        # 8-byte Reload
	movq	%r13, 48(%rsp)
	movq	-408(%rbp), %r10        # 8-byte Reload
	movq	%r10, 56(%rsp)
	movq	-416(%rbp), %r10        # 8-byte Reload
	movq	%r10, 64(%rsp)
	movq	-432(%rbp), %r10        # 8-byte Reload
	movq	%r10, 72(%rsp)
	movq	-448(%rbp), %r10        # 8-byte Reload
	movq	%r10, 80(%rsp)
	movq	-464(%rbp), %r10        # 8-byte Reload
	movq	%r10, 88(%rsp)
	movq	%rax, 96(%rsp)
	callq	extrapolate9
	cmpl	$0, %eax
	je	.LBB3_48
# BB#43:                                # %if.then.281
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	$0, -88(%rbp)
.LBB3_44:                               # %for.cond.282
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-88(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB3_47
# BB#45:                                # %for.body.285
                                        #   in Loop: Header=BB3_44 Depth=3
	movl	$38, %eax
	imull	$0, -60(%rbp), %ecx
	addl	-88(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	$3, %ecx, %ecx
	movl	-60(%rbp), %edi
	shll	$0, %edi
	addl	-88(%rbp), %edi
	movslq	%edi, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	$5, %edi, %edi
	addl	%edi, %ecx
	movl	-60(%rbp), %edi
	shll	$1, %edi
	addl	-88(%rbp), %edi
	movslq	%edi, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	$3, %edi, %edi
	addl	%edi, %ecx
	imull	$3, -60(%rbp), %edi
	addl	-88(%rbp), %edi
	movslq	%edi, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	$5, %edi, %edi
	addl	%edi, %ecx
	movl	-60(%rbp), %edi
	shll	$2, %edi
	addl	-88(%rbp), %edi
	movslq	%edi, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	$6, %edi, %edi
	addl	%edi, %ecx
	imull	$5, -60(%rbp), %edi
	addl	-88(%rbp), %edi
	movslq	%edi, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	$5, %edi, %edi
	addl	%edi, %ecx
	imull	$6, -60(%rbp), %edi
	addl	-88(%rbp), %edi
	movslq	%edi, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	$3, %edi, %edi
	addl	%edi, %ecx
	imull	$7, -60(%rbp), %edi
	addl	-88(%rbp), %edi
	movslq	%edi, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	$5, %edi, %edi
	addl	%edi, %ecx
	movl	-60(%rbp), %edi
	shll	$3, %edi
	addl	-88(%rbp), %edi
	movslq	%edi, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	$3, %edi, %edi
	addl	%edi, %ecx
	addl	$19, %ecx
	movl	%eax, -476(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-476(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movl	-84(%rbp), %eax
	imull	-60(%rbp), %eax
	addl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movq	-216(%rbp), %r9
	movb	%r8b, (%r9,%rsi)
# BB#46:                                # %for.inc
                                        #   in Loop: Header=BB3_44 Depth=3
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB3_44
.LBB3_47:                               # %for.end
                                        #   in Loop: Header=BB3_7 Depth=2
	jmp	.LBB3_49
.LBB3_48:                               # %if.else
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-216(%rbp), %rcx
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rdx
	addq	-200(%rbp), %rdx
	movslq	-60(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-488(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
.LBB3_49:                               # %if.end.362
                                        #   in Loop: Header=BB3_7 Depth=2
	jmp	.LBB3_50
.LBB3_50:                               # %for.inc.363
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_7
.LBB3_51:                               # %for.end.365
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-184(%rbp), %rdi
	movl	-64(%rbp), %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-216(%rbp), %rcx
	movl	-64(%rbp), %edx
	movl	-80(%rbp), %eax
	movl	-72(%rbp), %r8d
	movq	%rcx, %rsi
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_row
	movl	-80(%rbp), %eax
	andl	$31, %eax
	cmpl	$0, %eax
	jne	.LBB3_53
# BB#52:                                # %if.then.371
                                        #   in Loop: Header=BB3_3 Depth=1
	cvtsi2sdl	-80(%rbp), %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB3_53:                               # %if.end.376
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_54
.LBB3_54:                               # %for.inc.377
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB3_3
.LBB3_55:                               # %for.end.379
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-48(%rbp), %rdi
	movl	%eax, -496(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	%eax, -500(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-192(%rbp), %rdi
	movl	%eax, -504(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-200(%rbp), %rdi
	callq	g_free
	movq	-208(%rbp), %rdi
	callq	g_free
	movq	-216(%rbp), %rdi
	callq	g_free
	movq	-224(%rbp), %rdi
	callq	g_free
.LBB3_56:                               # %return
	addq	$568, %rsp              # imm = 0x238
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	render, .Lfunc_end3-render
	.cfi_endproc

	.align	16, 0x90
	.type	extrapolate9,@function
extrapolate9:                           # @extrapolate9
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
	movq	112(%rbp), %rax
	movq	104(%rbp), %r10
	movq	96(%rbp), %r11
	movq	88(%rbp), %rbx
	movq	80(%rbp), %r14
	movq	72(%rbp), %r15
	movq	64(%rbp), %r12
	movq	56(%rbp), %r13
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	16(%rbp), %rax
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	movl	%edi, -48(%rbp)
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -112(%rbp)
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -120(%rbp)
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%r8, -128(%rbp)
	movq	%r13, -136(%rbp)
	movq	%r12, -144(%rbp)
	movq	%r15, -152(%rbp)
	movq	%r14, -160(%rbp)
	movq	%rbx, -168(%rbp)
	movq	%r11, -176(%rbp)
	movq	%r10, -184(%rbp)
	movq	-200(%rbp), %r9         # 8-byte Reload
	movq	%r9, -192(%rbp)
	movq	-136(%rbp), %rdi
	movq	-184(%rbp), %r10
	movslq	-48(%rbp), %rdx
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	callq	memcmp
	movl	-244(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	je	.LBB4_73
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movq	-152(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-248(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB4_73
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movq	-152(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-252(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_6
# BB#3:                                 # %if.then.10
	jmp	.LBB4_4
.LBB4_4:                                # %do.body
	movq	-56(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#5:                                 # %do.end
	jmp	.LBB4_9
.LBB4_6:                                # %if.else
	jmp	.LBB4_7
.LBB4_7:                                # %do.body.12
	movq	-56(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#8:                                 # %do.end.14
	jmp	.LBB4_9
.LBB4_9:                                # %if.end
	xorl	%eax, %eax
	movq	-152(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-256(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_11
# BB#10:                                # %land.lhs.true.19
	xorl	%eax, %eax
	movq	-160(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-260(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_13
.LBB4_11:                               # %lor.lhs.false
	xorl	%eax, %eax
	movq	-136(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-264(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_16
# BB#12:                                # %land.lhs.true.28
	xorl	%eax, %eax
	movq	-160(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-268(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB4_16
.LBB4_13:                               # %if.then.33
	jmp	.LBB4_14
.LBB4_14:                               # %do.body.34
	movq	-64(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#15:                                # %do.end.36
	jmp	.LBB4_19
.LBB4_16:                               # %if.else.37
	jmp	.LBB4_17
.LBB4_17:                               # %do.body.38
	movq	-64(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#18:                                # %do.end.40
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.41
	xorl	%eax, %eax
	movq	-136(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-272(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_23
# BB#20:                                # %if.then.46
	jmp	.LBB4_21
.LBB4_21:                               # %do.body.47
	movq	-72(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#22:                                # %do.end.49
	jmp	.LBB4_26
.LBB4_23:                               # %if.else.50
	jmp	.LBB4_24
.LBB4_24:                               # %do.body.51
	movq	-72(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#25:                                # %do.end.53
	jmp	.LBB4_26
.LBB4_26:                               # %if.end.54
	xorl	%eax, %eax
	movq	-152(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-276(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_28
# BB#27:                                # %land.lhs.true.59
	xorl	%eax, %eax
	movq	-160(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-280(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_30
.LBB4_28:                               # %lor.lhs.false.64
	xorl	%eax, %eax
	movq	-152(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-284(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_33
# BB#29:                                # %land.lhs.true.69
	xorl	%eax, %eax
	movq	-160(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-288(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB4_33
.LBB4_30:                               # %if.then.74
	jmp	.LBB4_31
.LBB4_31:                               # %do.body.75
	movq	-80(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#32:                                # %do.end.77
	jmp	.LBB4_36
.LBB4_33:                               # %if.else.78
	jmp	.LBB4_34
.LBB4_34:                               # %do.body.79
	movq	-80(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#35:                                # %do.end.81
	jmp	.LBB4_36
.LBB4_36:                               # %if.end.82
	jmp	.LBB4_37
.LBB4_37:                               # %do.body.83
	movq	-88(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#38:                                # %do.end.85
	xorl	%eax, %eax
	movq	-136(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-292(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_40
# BB#39:                                # %land.lhs.true.90
	xorl	%eax, %eax
	movq	-160(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-296(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_42
.LBB4_40:                               # %lor.lhs.false.95
	xorl	%eax, %eax
	movq	-184(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-300(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_45
# BB#41:                                # %land.lhs.true.100
	xorl	%eax, %eax
	movq	-160(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-304(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB4_45
.LBB4_42:                               # %if.then.105
	jmp	.LBB4_43
.LBB4_43:                               # %do.body.106
	movq	-96(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#44:                                # %do.end.108
	jmp	.LBB4_48
.LBB4_45:                               # %if.else.109
	jmp	.LBB4_46
.LBB4_46:                               # %do.body.110
	movq	-96(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#47:                                # %do.end.112
	jmp	.LBB4_48
.LBB4_48:                               # %if.end.113
	xorl	%eax, %eax
	movq	-152(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-308(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_52
# BB#49:                                # %if.then.118
	jmp	.LBB4_50
.LBB4_50:                               # %do.body.119
	movq	-104(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#51:                                # %do.end.121
	jmp	.LBB4_55
.LBB4_52:                               # %if.else.122
	jmp	.LBB4_53
.LBB4_53:                               # %do.body.123
	movq	-104(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#54:                                # %do.end.125
	jmp	.LBB4_55
.LBB4_55:                               # %if.end.126
	xorl	%eax, %eax
	movq	-152(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-312(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_57
# BB#56:                                # %land.lhs.true.131
	xorl	%eax, %eax
	movq	-160(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-316(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_59
.LBB4_57:                               # %lor.lhs.false.136
	xorl	%eax, %eax
	movq	-184(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-320(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_62
# BB#58:                                # %land.lhs.true.141
	xorl	%eax, %eax
	movq	-160(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-324(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB4_62
.LBB4_59:                               # %if.then.146
	jmp	.LBB4_60
.LBB4_60:                               # %do.body.147
	movq	-112(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#61:                                # %do.end.149
	jmp	.LBB4_65
.LBB4_62:                               # %if.else.150
	jmp	.LBB4_63
.LBB4_63:                               # %do.body.151
	movq	-112(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#64:                                # %do.end.153
	jmp	.LBB4_65
.LBB4_65:                               # %if.end.154
	xorl	%eax, %eax
	movq	-184(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -328(%rbp)        # 4-byte Spill
	callq	memcmp
	movl	-328(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_69
# BB#66:                                # %if.then.159
	jmp	.LBB4_67
.LBB4_67:                               # %do.body.160
	movq	-120(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#68:                                # %do.end.162
	jmp	.LBB4_72
.LBB4_69:                               # %if.else.163
	jmp	.LBB4_70
.LBB4_70:                               # %do.body.164
	movq	-120(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	callq	memcpy
# BB#71:                                # %do.end.166
	jmp	.LBB4_72
.LBB4_72:                               # %if.end.167
	movl	$1, -44(%rbp)
	jmp	.LBB4_74
.LBB4_73:                               # %if.else.168
	movl	$0, -44(%rbp)
.LBB4_74:                               # %return
	movl	-44(%rbp), %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	extrapolate9, .Lfunc_end4-extrapolate9
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.data
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
	.asciz	"plug-in-antialias"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Antialias using the Scale3X edge-extrapolation algorithm"
	.size	.L.str.7, 57

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Help - write me"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Adam D. Moss <adam@gimp.org>"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"2005"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Antialias"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Filters/Enhance"
	.size	.L.str.13, 24

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
	.asciz	"Antialiasing..."
	.size	.L.str.16, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
