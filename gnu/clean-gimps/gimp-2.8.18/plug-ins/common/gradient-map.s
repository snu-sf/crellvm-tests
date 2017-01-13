	.text
	.file	"gradient-map.bc"
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
	subq	$152, %rsp
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
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %r8
	movabsq	$.L.str.12, %r14
	movl	$1, %r10d
	movl	$3, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r12
	xorl	%r15d, %r15d
	movl	%r15d, %r13d
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r15, %r8
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%r15, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r12, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%r13, -112(%rbp)        # 8-byte Spill
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	movl	%r11d, -120(%rbp)       # 4-byte Spill
	movl	%r10d, -124(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.13, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -128(%rbp)        # 4-byte Spill
	addq	$152, %rsp
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
	movl	$3, -52(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.20, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.20, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-52(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_17
.LBB1_4:                                # %if.then
	movl	$0, -60(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.13
	movabsq	$.L.str.22, %rdi
	movl	$1, -60(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_10
.LBB1_6:                                # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.14, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.18
	movabsq	$.L.str.23, %rdi
	movl	$2, -60(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.21
	movl	$1, -52(%rbp)
.LBB1_9:                                # %if.end
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.22
	cmpl	$3, -52(%rbp)
	jne	.LBB1_16
# BB#11:                                # %if.then.23
	cmpl	$0, -60(%rbp)
	je	.LBB1_13
# BB#12:                                # %if.then.25
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	map
.LBB1_13:                               # %if.end.26
	cmpl	$1, -56(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.28
	callq	gimp_displays_flush
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_15:                               # %if.end.30
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.31
	jmp	.LBB1_18
.LBB1_17:                               # %if.else.32
	movl	$0, -52(%rbp)
.LBB1_18:                               # %if.end.33
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
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

	.align	16, 0x90
	.type	map,@function
map:                                    # @map
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_is_rgb
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -28(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	subl	$1, %esi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%esi, -48(%rbp)         # 4-byte Spill
	je	.LBB3_1
	jmp	.LBB3_5
.LBB3_5:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB3_2
	jmp	.LBB3_3
.LBB3_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	callq	get_samples_gradient
	movq	%rax, -40(%rbp)
	jmp	.LBB3_4
.LBB3_2:                                # %sw.bb.4
	movq	-8(%rbp), %rdi
	callq	get_samples_palette
	movq	%rax, -40(%rbp)
	jmp	.LBB3_4
.LBB3_3:                                # %sw.default
	movabsq	$.L.str.24, %rdi
	movb	$0, %al
	callq	g_error
.LBB3_4:                                # %sw.epilog
	xorl	%esi, %esi
	movabsq	$map_func, %rdx
	leaq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rcx
	callq	gimp_rgn_iterate2
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	map, .Lfunc_end3-map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI4_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI4_2:
	.quad	4589866978952703325     # double 0.0722
.LCPI4_3:
	.quad	4602678819172646912     # double 0.5
.LCPI4_4:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	get_samples_gradient,@function
get_samples_gradient:                   # @get_samples_gradient
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_context_get_gradient
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	leaq	-20(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_gradient_get_uniform_samples
	movq	-16(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_free
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_is_rgb
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB4_2
# BB#1:                                 # %cond.true
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movl	-60(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB4_3:                                # %cond.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -72(%rbp)
	movl	-60(%rbp), %eax
	shll	$8, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movl	$0, -76(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	cmpl	$256, -76(%rbp)         # imm = 0x100
	jge	.LBB4_16
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-76(%rbp), %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movl	-76(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	shlq	$3, %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_11
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$0, -80(%rbp)
.LBB4_7:                                # %for.cond.14
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -80(%rbp)
	jge	.LBB4_10
# BB#8:                                 # %for.body.17
                                        #   in Loop: Header=BB4_7 Depth=2
	movslq	-80(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	.LCPI4_4(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB4_7
.LBB4_10:                               # %for.end
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_12
.LBB4_11:                               # %if.else
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	.LCPI4_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI4_3(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI4_4(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
.LBB4_12:                               # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.36
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_4(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rsi
	movb	%dl, (%rsi,%rax)
.LBB4_14:                               # %if.end.42
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_15
.LBB4_15:                               # %for.inc.43
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_4
.LBB4_16:                               # %for.end.45
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	get_samples_gradient, .Lfunc_end4-get_samples_gradient
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1132462080              # float 256
	.text
	.align	16, 0x90
	.type	get_samples_palette,@function
get_samples_palette:                    # @get_samples_palette
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_context_get_palette
	leaq	-88(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_palette_get_info
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bpp
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_is_rgb
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movl	-68(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB5_3:                                # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %eax
	shll	$8, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movss	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, -56(%rbp)
	cvtsi2ssl	-88(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -92(%rbp)
	movl	$0, -84(%rbp)
.LBB5_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -84(%rbp)         # imm = 0x100
	jge	.LBB5_18
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-84(%rbp), %eax
	imull	-68(%rbp), %eax
	movslq	%eax, %rcx
	addq	-56(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	cvtsi2ssl	-84(%rbp), %xmm0
	mulss	-92(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB5_7
# BB#6:                                 # %cond.true.16
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB5_11
.LBB5_7:                                # %cond.false.17
                                        #   in Loop: Header=BB5_4 Depth=1
	cvtsi2ssl	-84(%rbp), %xmm0
	mulss	-92(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	cmpl	$0, %eax
	jge	.LBB5_9
# BB#8:                                 # %cond.true.23
                                        #   in Loop: Header=BB5_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false.24
                                        #   in Loop: Header=BB5_4 Depth=1
	cvtsi2ssl	-84(%rbp), %xmm0
	mulss	-92(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB5_10:                               # %cond.end.28
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB5_11:                               # %cond.end.30
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	leaq	-48(%rbp), %rdx
	movl	%eax, -96(%rbp)
	movq	-16(%rbp), %rdi
	movl	-96(%rbp), %esi
	callq	gimp_palette_entry_get_color
	cmpl	$0, -72(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB5_13
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB5_4 Depth=1
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	-64(%rbp), %rcx
	addq	$2, %rcx
	movq	%rax, %rdx
	callq	gimp_rgb_get_uchar
	jmp	.LBB5_14
.LBB5_13:                               # %if.else
                                        #   in Loop: Header=BB5_4 Depth=1
	leaq	-48(%rbp), %rdi
	callq	gimp_rgb_luminance_uchar
	movq	-64(%rbp), %rdi
	movb	%al, (%rdi)
.LBB5_14:                               # %if.end
                                        #   in Loop: Header=BB5_4 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB5_16
# BB#15:                                # %if.then.37
                                        #   in Loop: Header=BB5_4 Depth=1
	movslq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
.LBB5_16:                               # %if.end.40
                                        #   in Loop: Header=BB5_4 Depth=1
	jmp	.LBB5_17
.LBB5_17:                               # %for.inc
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB5_4
.LBB5_18:                               # %for.end
	movq	-56(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_samples_palette, .Lfunc_end5-get_samples_palette
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB6_3
# BB#2:                                 # %entry
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
.LBB6_3:                                # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$4, %esi
	leaq	-32(%rbp), %r10
	movq	%r8, -8(%rbp)
	movq	%r10, %r8
	leaq	-208(%rbp), %r11
	movq	%r11, 16(%r8)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r10, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB6_1
.Lfunc_end6:
	.size	g_error, .Lfunc_end6-g_error
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4602678819172646912     # double 0.5
.LCPI7_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI7_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI7_3:
	.quad	4596827742536767164     # double 0.21260000000000001
	.text
	.align	16, 0x90
	.type	map_func,@function
map_func:                               # @map_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$0, 8(%rcx)
	je	.LBB7_2
# BB#1:                                 # %cond.true
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_3, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm3, %xmm4
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm4
	addsd	%xmm0, %xmm4
	movsd	%xmm4, -64(%rbp)        # 8-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB7_3:                                # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	imull	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	addq	(%rdx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$0, 12(%rcx)
	je	.LBB7_9
# BB#4:                                 # %if.then
	movl	$0, -48(%rbp)
.LBB7_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB7_5 Depth=1
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_5
.LBB7_8:                                # %for.end
	movl	$255, %eax
	movslq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movslq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	imull	%edi, %esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	xorl	%edx, %edx
	movl	-68(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movb	%al, %r8b
	movslq	-48(%rbp), %rcx
	movq	-16(%rbp), %r9
	movb	%r8b, (%r9,%rcx)
	jmp	.LBB7_14
.LBB7_9:                                # %if.else
	movl	$0, -48(%rbp)
.LBB7_10:                               # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB7_13
# BB#11:                                # %for.body.37
                                        #   in Loop: Header=BB7_10 Depth=1
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#12:                                # %for.inc.42
                                        #   in Loop: Header=BB7_10 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_10
.LBB7_13:                               # %for.end.44
	jmp	.LBB7_14
.LBB7_14:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end7:
	.size	map_func, .Lfunc_end7-map_func
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
	.asciz	"Input image (unused)"
	.size	.L.str.3, 21

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
	.asciz	"plug-in-gradmap"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Recolor the image using colors from the active gradient"
	.size	.L.str.7, 56

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This plug-in maps the contents of the specified drawable with active gradient. It calculates luminosity of each pixel and replaces the pixel by the sample of active gradient at the position proportional to that luminosity. Complete black pixel becomes the leftmost color of the gradient, and complete white becomes the rightmost. Works on both Grayscale and RGB image with/without alpha channel."
	.size	.L.str.8, 396

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Eiichi Takamori"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1997"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Gradient Map"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Colors/Map"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-palettemap"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Recolor the image using colors from the active palette"
	.size	.L.str.15, 55

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"This plug-in maps the contents of the specified drawable with the active palette. It calculates luminosity of each pixel and replaces the pixel by the palette sample  at the corresponding index. A complete black pixel becomes the lowest palette entry, and complete white becomes the highest. Works on both Grayscale and RGB image with/without alpha channel."
	.size	.L.str.16, 358

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Bill Skaggs"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"2004"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Palette Map"
	.size	.L.str.19, 13

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"UTF-8"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Gradient Map"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Palette Map"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"plug_in_gradmap: invalid mode"
	.size	.L.str.24, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
