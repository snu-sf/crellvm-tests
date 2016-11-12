	.text
	.file	"edge-laplace.bc"
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
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
	je	.LBB1_7
.LBB1_4:                                # %if.then
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-88(%rbp), %esi         # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rdi
	callq	laplace
	cmpl	$1, -52(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.13
	callq	gimp_displays_flush
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB1_6:                                # %if.end
	jmp	.LBB1_8
.LBB1_7:                                # %if.else
	movl	$0, -56(%rbp)
.LBB1_8:                                # %if.end.15
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	addq	$96, %rsp
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
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	laplace,@function
laplace:                                # @laplace
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
	subq	$336, %rsp              # imm = 0x150
	leaq	-220(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	leaq	-228(%rbp), %rcx
	leaq	-232(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_bounds
	movabsq	$.L.str.16, %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %r9d
	movl	%r9d, -108(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%r9d, -112(%rbp)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %r9d
	movl	%r9d, -116(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	movl	$1, %edi
	movl	%edi, %esi
	movl	%eax, -128(%rbp)
	movl	-228(%rbp), %eax
	subl	-220(%rbp), %eax
	addl	$2, %eax
	imull	-116(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %r9d
	movl	%r9d, %esi
	movq	%rax, -160(%rbp)
	movl	-228(%rbp), %r9d
	subl	-220(%rbp), %r9d
	addl	$2, %r9d
	imull	-116(%rbp), %r9d
	movslq	%r9d, %rdi
	callq	g_malloc_n
	movl	$1, %r9d
	movl	%r9d, %esi
	movq	%rax, -176(%rbp)
	movl	-228(%rbp), %r9d
	subl	-220(%rbp), %r9d
	addl	$2, %r9d
	imull	-116(%rbp), %r9d
	movslq	%r9d, %rdi
	callq	g_malloc_n
	movl	$1, %r9d
	movl	%r9d, %esi
	movq	%rax, -192(%rbp)
	movl	-228(%rbp), %r9d
	subl	-220(%rbp), %r9d
	imull	-116(%rbp), %r9d
	movslq	%r9d, %rdi
	callq	g_malloc_n
	leaq	-56(%rbp), %rdi
	xorl	%r9d, %r9d
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r10d
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-56(%rbp), %rdi
	movq	-160(%rbp), %rax
	movslq	-116(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rax
	movslq	-116(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movslq	-116(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -200(%rbp)
	movq	-168(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-224(%rbp), %ecx
	subl	$1, %ecx
	movl	-228(%rbp), %r8d
	subl	-220(%rbp), %r8d
	callq	laplace_prepare_row
	leaq	-56(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-224(%rbp), %ecx
	movl	-228(%rbp), %r8d
	subl	-220(%rbp), %r8d
	callq	laplace_prepare_row
	movl	-224(%rbp), %ecx
	movl	%ecx, -212(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-212(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB3_20
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-56(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	-228(%rbp), %ecx
	subl	-220(%rbp), %ecx
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-256(%rbp), %r8d        # 4-byte Reload
	callq	laplace_prepare_row
	movq	-144(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movl	$0, -216(%rbp)
.LBB3_3:                                # %for.cond.40
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-216(%rbp), %eax
	movl	-228(%rbp), %ecx
	subl	-220(%rbp), %ecx
	imull	-116(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_16
# BB#4:                                 # %for.body.45
                                        #   in Loop: Header=BB3_3 Depth=2
	cmpl	$0, -128(%rbp)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-216(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-116(%rbp)
	cmpl	$0, %edx
	jne	.LBB3_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB3_3 Depth=2
	movslq	-216(%rbp), %rax
	movq	-184(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB3_14
.LBB3_7:                                # %if.else
                                        #   in Loop: Header=BB3_3 Depth=2
	leaq	-236(%rbp), %r9
	leaq	-240(%rbp), %rax
	movslq	-216(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	movl	-216(%rbp), %esi
	subl	-116(%rbp), %esi
	movslq	%esi, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movslq	-216(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edx
	movl	-216(%rbp), %r8d
	addl	-116(%rbp), %r8d
	movslq	%r8d, %rcx
	movq	-184(%rbp), %r10
	movzbl	(%r10,%rcx), %ecx
	movslq	-216(%rbp), %r10
	movq	-200(%rbp), %r11
	movzbl	(%r11,%r10), %r8d
	movq	%rax, (%rsp)
	callq	minmax
	movl	-240(%rbp), %ecx
	movslq	-216(%rbp), %rax
	movq	-184(%rbp), %r9
	movzbl	(%r9,%rax), %edx
	subl	%edx, %ecx
	movslq	-216(%rbp), %rax
	movq	-184(%rbp), %r9
	movzbl	(%r9,%rax), %edx
	subl	-236(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB3_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-240(%rbp), %eax
	movslq	-216(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB3_10
.LBB3_9:                                # %cond.false
                                        #   in Loop: Header=BB3_3 Depth=2
	movslq	-216(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	subl	-236(%rbp), %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB3_10:                               # %cond.end
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-260(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -124(%rbp)
	movl	-216(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-216(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movl	-216(%rbp), %esi
	addl	-116(%rbp), %esi
	movslq	%esi, %rcx
	movq	-168(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movl	-216(%rbp), %esi
	subl	-116(%rbp), %esi
	movslq	%esi, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movslq	-216(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	shll	$3, %esi
	subl	%esi, %eax
	movl	-216(%rbp), %esi
	addl	-116(%rbp), %esi
	movslq	%esi, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movl	-216(%rbp), %esi
	subl	-116(%rbp), %esi
	movslq	%esi, %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movslq	-216(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movl	-216(%rbp), %esi
	addl	-116(%rbp), %esi
	movslq	%esi, %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	cmpl	$0, %eax
	jle	.LBB3_12
# BB#11:                                # %cond.true.131
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-124(%rbp), %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB3_13
.LBB3_12:                               # %cond.false.132
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-124(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB3_13:                               # %cond.end.134
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-264(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -152(%rbp)
	movb	%cl, (%rdx)
.LBB3_14:                               # %if.end
                                        #   in Loop: Header=BB3_3 Depth=2
	jmp	.LBB3_15
.LBB3_15:                               # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB3_3
.LBB3_16:                               # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-104(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-212(%rbp), %ecx
	movl	-228(%rbp), %eax
	subl	-220(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$20, %eax
	movq	-168(%rbp), %rsi
	movq	%rsi, -208(%rbp)
	movq	-184(%rbp), %rsi
	movq	%rsi, -168(%rbp)
	movq	-200(%rbp), %rsi
	movq	%rsi, -184(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -200(%rbp)
	movl	-212(%rbp), %ecx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-268(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_18
# BB#17:                                # %if.then.142
                                        #   in Loop: Header=BB3_1 Depth=1
	cvtsi2sdl	-212(%rbp), %xmm0
	movl	-232(%rbp), %eax
	subl	-224(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB3_18:                               # %if.end.147
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_19
.LBB3_19:                               # %for.inc.148
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB3_1
.LBB3_20:                               # %for.end.150
	leaq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-56(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-116(%rbp), %r10
	addq	%r10, %rsi
	movq	%rsi, -168(%rbp)
	movq	-176(%rbp), %rsi
	movslq	-116(%rbp), %r10
	addq	%r10, %rsi
	movq	%rsi, -184(%rbp)
	movq	-192(%rbp), %rsi
	movslq	-116(%rbp), %r10
	addq	%r10, %rsi
	movq	%rsi, -200(%rbp)
	movq	-168(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-224(%rbp), %eax
	subl	$1, %eax
	movl	-228(%rbp), %ecx
	subl	-220(%rbp), %ecx
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-280(%rbp), %r8d        # 4-byte Reload
	callq	laplace_prepare_row
	leaq	-56(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-224(%rbp), %ecx
	movl	-228(%rbp), %eax
	subl	-220(%rbp), %eax
	movl	%eax, %r8d
	callq	laplace_prepare_row
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$0, -132(%rbp)
	movl	-224(%rbp), %ecx
	movl	%ecx, -212(%rbp)
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB3_21:                               # %for.cond.162
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_23 Depth 2
	movl	-212(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB3_50
# BB#22:                                # %for.body.165
                                        #   in Loop: Header=BB3_21 Depth=1
	leaq	-56(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	-228(%rbp), %ecx
	subl	-220(%rbp), %ecx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-288(%rbp), %r8d        # 4-byte Reload
	callq	laplace_prepare_row
	movq	-144(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movl	$0, -216(%rbp)
.LBB3_23:                               # %for.cond.168
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-216(%rbp), %eax
	movl	-228(%rbp), %ecx
	subl	-220(%rbp), %ecx
	imull	-116(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_46
# BB#24:                                # %for.body.173
                                        #   in Loop: Header=BB3_23 Depth=2
	movslq	-216(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -120(%rbp)
	cmpl	$128, -120(%rbp)
	jg	.LBB3_37
# BB#25:                                # %land.lhs.true.179
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-216(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jg	.LBB3_33
# BB#26:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_23 Depth=2
	movslq	-216(%rbp), %rax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$128, %edx
	jg	.LBB3_33
# BB#27:                                # %lor.lhs.false.191
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-216(%rbp), %eax
	addl	-116(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jg	.LBB3_33
# BB#28:                                # %lor.lhs.false.198
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-216(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jg	.LBB3_33
# BB#29:                                # %lor.lhs.false.205
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-216(%rbp), %eax
	addl	-116(%rbp), %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jg	.LBB3_33
# BB#30:                                # %lor.lhs.false.212
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-216(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	%eax, %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jg	.LBB3_33
# BB#31:                                # %lor.lhs.false.219
                                        #   in Loop: Header=BB3_23 Depth=2
	movslq	-216(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$128, %edx
	jg	.LBB3_33
# BB#32:                                # %lor.lhs.false.225
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-216(%rbp), %eax
	addl	-116(%rbp), %eax
	movslq	%eax, %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jle	.LBB3_37
.LBB3_33:                               # %cond.true.232
                                        #   in Loop: Header=BB3_23 Depth=2
	cmpl	$128, -120(%rbp)
	jl	.LBB3_35
# BB#34:                                # %cond.true.235
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-120(%rbp), %eax
	subl	$128, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB3_36
.LBB3_35:                               # %cond.false.237
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-120(%rbp), %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB3_36:                               # %cond.end.238
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB3_38
.LBB3_37:                               # %cond.false.240
                                        #   in Loop: Header=BB3_23 Depth=2
	xorl	%eax, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB3_38
.LBB3_38:                               # %cond.end.241
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_41
# BB#39:                                # %land.lhs.true.244
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-216(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-116(%rbp)
	cmpl	$0, %edx
	jne	.LBB3_41
# BB#40:                                # %if.then.249
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	$255, %eax
	xorl	%ecx, %ecx
	cmpl	$0, -132(%rbp)
	cmovel	%ecx, %eax
	movb	%al, %dl
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -152(%rbp)
	movb	%dl, (%rsi)
	movl	$0, -132(%rbp)
	jmp	.LBB3_44
.LBB3_41:                               # %if.else.255
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-120(%rbp), %eax
	movb	%al, %cl
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -152(%rbp)
	movb	%cl, (%rdx)
	cmpl	$15, -120(%rbp)
	jle	.LBB3_43
# BB#42:                                # %if.then.260
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
.LBB3_43:                               # %if.end.262
                                        #   in Loop: Header=BB3_23 Depth=2
	jmp	.LBB3_44
.LBB3_44:                               # %if.end.263
                                        #   in Loop: Header=BB3_23 Depth=2
	jmp	.LBB3_45
.LBB3_45:                               # %for.inc.264
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB3_23
.LBB3_46:                               # %for.end.266
                                        #   in Loop: Header=BB3_21 Depth=1
	leaq	-104(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-212(%rbp), %ecx
	movl	-228(%rbp), %eax
	subl	-220(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$20, %eax
	movq	-168(%rbp), %rsi
	movq	%rsi, -208(%rbp)
	movq	-184(%rbp), %rsi
	movq	%rsi, -168(%rbp)
	movq	-200(%rbp), %rsi
	movq	%rsi, -184(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -200(%rbp)
	movl	-212(%rbp), %ecx
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-300(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_48
# BB#47:                                # %if.then.271
                                        #   in Loop: Header=BB3_21 Depth=1
	cvtsi2sdl	-212(%rbp), %xmm0
	movl	-232(%rbp), %eax
	subl	-224(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB3_48:                               # %if.end.277
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_49
.LBB3_49:                               # %for.inc.278
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB3_21
.LBB3_50:                               # %for.end.280
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-220(%rbp), %esi
	movl	-224(%rbp), %edx
	movl	-228(%rbp), %r8d
	subl	-220(%rbp), %r8d
	movl	-232(%rbp), %r9d
	subl	-224(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-160(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-192(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end3:
	.size	laplace, .Lfunc_end3-laplace
	.cfi_endproc

	.align	16, 0x90
	.type	laplace_prepare_row,@function
laplace_prepare_row:                    # @laplace_prepare_row
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rsi
	movl	16(%rsi), %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	-28(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB4_6
.LBB4_2:                                # %if.else
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	-28(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB4_5
.LBB4_4:                                # %if.else.4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end.5
	movl	$0, -36(%rbp)
.LBB4_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB4_7 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-36(%rbp), %esi
	subl	-32(%rbp), %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movl	-28(%rbp), %esi
	subl	$1, %esi
	imull	-32(%rbp), %esi
	addl	-36(%rbp), %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-28(%rbp), %esi
	imull	-32(%rbp), %esi
	addl	-36(%rbp), %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_7
.LBB4_10:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	laplace_prepare_row, .Lfunc_end4-laplace_prepare_row
	.cfi_endproc

	.align	16, 0x90
	.type	minmax,@function
minmax:                                 # @minmax
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
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %ecx
	cmpl	-8(%rbp), %ecx
	jle	.LBB5_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movl	-8(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB5_3:                                # %if.end
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB5_5
# BB#4:                                 # %if.then.2
	movl	-12(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.else.3
	movl	-16(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB5_6:                                # %if.end.4
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB5_11
# BB#7:                                 # %if.then.6
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_9
# BB#8:                                 # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB5_10:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB5_15
.LBB5_11:                               # %if.else.8
	movl	-48(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_13
# BB#12:                                # %cond.true.10
	movl	-48(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB5_14
.LBB5_13:                               # %cond.false.11
	movl	-20(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB5_14:                               # %cond.end.12
	movl	-64(%rbp), %eax         # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB5_15:                               # %if.end.14
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB5_20
# BB#16:                                # %if.then.16
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB5_18
# BB#17:                                # %cond.true.18
	movl	-52(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB5_19
.LBB5_18:                               # %cond.false.19
	movl	-20(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB5_19:                               # %cond.end.20
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB5_24
.LBB5_20:                               # %if.else.22
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB5_22
# BB#21:                                # %cond.true.24
	movl	-56(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB5_23
.LBB5_22:                               # %cond.false.25
	movl	-20(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB5_23:                               # %cond.end.26
	movl	-72(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB5_24:                               # %if.end.28
	popq	%rbp
	retq
.Lfunc_end5:
	.size	minmax, .Lfunc_end5-minmax
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
	.asciz	"plug-in-laplace"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"High-resolution edge detection"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This plugin creates one-pixel wide edges from the image, with the value proportional to the gradient. It uses the Laplace operator (a 3x3 kernel with -8 in the middle). The image has to be laplacered to get useful results, a gauss_iir with 1.5 - 5.0 depending on the noise in the image is best."
	.size	.L.str.8, 295

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Thorsten Schnier"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1997"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Laplace"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Filters/Edge-Detect"
	.size	.L.str.13, 28

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
	.asciz	"Laplace"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Cleanup"
	.size	.L.str.17, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
