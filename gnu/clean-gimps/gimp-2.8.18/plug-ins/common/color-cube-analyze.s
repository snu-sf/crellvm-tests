	.text
	.file	"color-cube-analyze.bc"
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movl	$1, %r10d
	movl	$3, %r11d
	movabsq	$query.args, %rbx
	movabsq	$query.return_vals, %r14
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-40(%rbp), %r15         # 8-byte Reload
	movq	%r15, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movl	%r11d, -44(%rbp)        # 4-byte Spill
	movl	%r10d, -48(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.15, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$88, %rsp
	popq	%rbx
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
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.16, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.16, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$2, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$1, -44(%rbp)
	jne	.LBB1_6
# BB#3:                                 # %if.then
	cmpl	$3, -12(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.5
	movl	$1, -48(%rbp)
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.6
	cmpl	$3, -48(%rbp)
	jne	.LBB1_15
# BB#7:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	movl	%edi, imageID
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#8:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#9:                                 # %lor.lhs.false.18
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_13
.LBB1_10:                               # %if.then.22
	movabsq	$hist_blue, %rax
	xorl	%ecx, %ecx
	movl	$2048, %edx             # imm = 0x800
	movl	%edx, %esi
	movabsq	$hist_green, %rdi
	movabsq	$hist_red, %r8
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	memset
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-116(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-56(%rbp), %rdi
	callq	analyze
	cmpl	$1, -44(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.26
	callq	doDialog
.LBB1_12:                               # %if.end.27
	jmp	.LBB1_14
.LBB1_13:                               # %if.else
	movl	$0, -48(%rbp)
.LBB1_14:                               # %if.end.28
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_15:                               # %if.end.29
	movl	$21, run.values
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movl	$0, run.values+40
	movl	uniques, %eax
	movl	%eax, run.values+48
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
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
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
	.quad	4535160216371617905     # double 1.5378700499807768E-5
	.text
	.align	16, 0x90
	.type	analyze,@function
analyze:                                # @analyze
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
	subq	$256, %rsp              # imm = 0x100
	movabsq	$.L.str.18, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-88(%rbp), %rsi
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_drawable_mask_bounds
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %edi
	movl	%edi, width
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%edi, height
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edi
	movl	%edi, bpp
	movl	imageID, %edi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_selection_is_empty
	leaq	-188(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	cmpl	$0, %eax
	setne	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	movl	%eax, -124(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_offsets
	leaq	-56(%rbp), %rdi
	xorl	%r10d, %r10d
	movq	-8(%rbp), %rsi
	movl	width, %r8d
	movl	height, %r9d
	movl	%r10d, %edx
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-84(%rbp), %rsi
	movl	imageID, %edi
	callq	gimp_image_get_colormap
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	movb	$1, %r11b
	cmpl	$0, %eax
	movb	%r11b, -213(%rbp)       # 1-byte Spill
	jne	.LBB3_2
# BB#1:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_is_channel
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -213(%rbp)         # 1-byte Spill
.LBB3_2:                                # %lor.end
	movb	-213(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -116(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -120(%rbp)
	movl	imageID, %edi
	callq	gimp_image_get_selection
	movl	%eax, %edi
	callq	gimp_drawable_get
	leaq	-184(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rsi
	movl	width, %r8d
	movl	height, %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-96(%rbp), %ecx
	subl	-88(%rbp), %ecx
	imull	bpp, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movl	-96(%rbp), %ecx
	subl	-88(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -136(%rbp)
	movl	-92(%rbp), %ecx
	movl	%ecx, -80(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	movl	-80(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB3_31
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	-96(%rbp), %eax
	subl	-88(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_row
	cmpl	$0, -124(%rbp)
	je	.LBB3_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-184(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-88(%rbp), %eax
	addl	-188(%rbp), %eax
	movl	-80(%rbp), %ecx
	addl	-192(%rbp), %ecx
	movl	-96(%rbp), %edx
	subl	-88(%rbp), %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_get_row
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$0, -76(%rbp)
.LBB3_7:                                # %for.cond.26
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	movl	-96(%rbp), %ecx
	subl	-88(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_27
# BB#8:                                 # %for.body.30
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	$255, -108(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB3_12
# BB#9:                                 # %if.then.32
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-76(%rbp), %eax
	imull	bpp, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -109(%rbp)
	movzbl	-109(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -101(%rbp)
	movzbl	-109(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -102(%rbp)
	movzbl	-109(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -103(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB3_11
# BB#10:                                # %if.then.49
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-76(%rbp), %eax
	imull	bpp, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)
.LBB3_11:                               # %if.end.55
                                        #   in Loop: Header=BB3_7 Depth=2
	jmp	.LBB3_20
.LBB3_12:                               # %if.else
                                        #   in Loop: Header=BB3_7 Depth=2
	cmpl	$0, -116(%rbp)
	je	.LBB3_16
# BB#13:                                # %if.then.57
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-76(%rbp), %eax
	imull	bpp, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -103(%rbp)
	movb	%sil, -102(%rbp)
	movb	%sil, -101(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.62
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-76(%rbp), %eax
	imull	bpp, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)
.LBB3_15:                               # %if.end.68
                                        #   in Loop: Header=BB3_7 Depth=2
	jmp	.LBB3_19
.LBB3_16:                               # %if.else.69
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-76(%rbp), %eax
	imull	bpp, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -101(%rbp)
	movl	-76(%rbp), %eax
	imull	bpp, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -102(%rbp)
	movl	-76(%rbp), %eax
	imull	bpp, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -103(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB3_18
# BB#17:                                # %if.then.82
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-76(%rbp), %eax
	imull	bpp, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -108(%rbp)
.LBB3_18:                               # %if.end.88
                                        #   in Loop: Header=BB3_7 Depth=2
	jmp	.LBB3_19
.LBB3_19:                               # %if.end.89
                                        #   in Loop: Header=BB3_7 Depth=2
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.90
                                        #   in Loop: Header=BB3_7 Depth=2
	cmpl	$0, -124(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.92
                                        #   in Loop: Header=BB3_7 Depth=2
	movslq	-76(%rbp), %rax
	movq	-136(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	imull	-108(%rbp), %edx
	movl	%edx, -108(%rbp)
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.97
                                        #   in Loop: Header=BB3_7 Depth=2
	imull	$255, -108(%rbp), %eax
	movl	%eax, -108(%rbp)
.LBB3_23:                               # %if.end.99
                                        #   in Loop: Header=BB3_7 Depth=2
	cmpl	$0, -108(%rbp)
	je	.LBB3_25
# BB#24:                                # %if.then.102
                                        #   in Loop: Header=BB3_7 Depth=2
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movb	-101(%rbp), %al
	movb	-102(%rbp), %cl
	movb	-103(%rbp), %dl
	cvtsi2sdl	-108(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movzbl	%al, %edi
	movzbl	%cl, %esi
	movzbl	%dl, %edx
	movaps	%xmm1, %xmm0
	callq	insertcolor
.LBB3_25:                               # %if.end.105
                                        #   in Loop: Header=BB3_7 Depth=2
	jmp	.LBB3_26
.LBB3_26:                               # %for.inc
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB3_7
.LBB3_27:                               # %for.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$10, %eax
	movl	-80(%rbp), %ecx
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-224(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_29
# BB#28:                                # %if.then.108
                                        #   in Loop: Header=BB3_3 Depth=1
	cvtsi2sdl	-80(%rbp), %xmm0
	movl	-100(%rbp), %eax
	subl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB3_29:                               # %if.end.113
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_30
.LBB3_30:                               # %for.inc.114
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB3_3
.LBB3_31:                               # %for.end.116
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-200(%rbp), %rdi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end3:
	.size	analyze, .Lfunc_end3-analyze
	.cfi_endproc

	.align	16, 0x90
	.type	doDialog,@function
doDialog:                               # @doDialog
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
	subq	$208, %rsp
	movabsq	$.L.str.19, %rdi
	movl	$1, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movabsq	$.L.str.20, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.21, %rdi
	movl	$4294967289, %r10d      # imm = 0xFFFFFFF9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-7, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	callq	gimp_preview_area_new
	movl	$256, %esi              # imm = 0x100
	movl	$150, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.22, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movl	width, %edx
	movl	height, %ecx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	doLabel
	cmpl	$0, uniques
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.23, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	doLabel
	jmp	.LBB4_6
.LBB4_2:                                # %if.else
	cmpl	$1, uniques
	jne	.LBB4_4
# BB#3:                                 # %if.then.26
	movabsq	$.L.str.24, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	doLabel
	jmp	.LBB4_5
.LBB4_4:                                # %if.else.28
	movabsq	$.L.str.25, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movl	uniques, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	doLabel
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end.30
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show_all
	movq	-40(%rbp), %rdi
	callq	fillPreview
	movq	-8(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	movq	-8(%rbp), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gtk_widget_destroy
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	doDialog, .Lfunc_end4-doDialog
	.cfi_endproc

	.align	16, 0x90
	.type	insertcolor,@function
insertcolor:                            # @insertcolor
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
	subq	$32, %rsp
	movb	%dl, %al
	movb	%sil, %cl
	movb	%dil, %r8b
	movb	%r8b, -1(%rbp)
	movb	%cl, -2(%rbp)
	movb	%al, -3(%rbp)
	movsd	%xmm0, -16(%rbp)
	cmpq	$0, insertcolor.hash_table
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$g_direct_hash, %rdi
	movabsq	$g_direct_equal, %rsi
	callq	g_hash_table_new
	movq	%rax, insertcolor.hash_table
.LBB5_2:                                # %if.end
	movb	-1(%rbp), %al
	movb	-2(%rbp), %cl
	movb	-3(%rbp), %dl
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	%al, %edi
	movzbl	%cl, %esi
	movzbl	%dl, %edx
	callq	histogram
	movzbl	-1(%rbp), %edx
	movzbl	-2(%rbp), %esi
	movzbl	-3(%rbp), %edi
	shll	$8, %edi
	addl	%edi, %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -20(%rbp)
	movq	insertcolor.hash_table, %rdi
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	callq	g_hash_table_lookup
	cmpq	$0, %rax
	je	.LBB5_4
# BB#3:                                 # %if.then.8
	jmp	.LBB5_5
.LBB5_4:                                # %if.end.9
	movl	$1, %eax
	movl	%eax, %edx
	movq	insertcolor.hash_table, %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	callq	g_hash_table_insert
	movl	uniques, %ecx
	addl	$1, %ecx
	movl	%ecx, uniques
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB5_5:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	insertcolor, .Lfunc_end5-insertcolor
	.cfi_endproc

	.align	16, 0x90
	.type	histogram,@function
histogram:                              # @histogram
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
	movb	%dl, %al
	movb	%sil, %cl
	movb	%dil, %r8b
	movb	%r8b, -1(%rbp)
	movb	%cl, -2(%rbp)
	movb	%al, -3(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	-1(%rbp), %edx
	movl	%edx, %r9d
	addsd	hist_red(,%r9,8), %xmm0
	movsd	%xmm0, hist_red(,%r9,8)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	-2(%rbp), %edx
	movl	%edx, %r9d
	addsd	hist_green(,%r9,8), %xmm0
	movsd	%xmm0, hist_green(,%r9,8)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	-3(%rbp), %edx
	movl	%edx, %r9d
	addsd	hist_blue(,%r9,8), %xmm0
	movsd	%xmm0, hist_blue(,%r9,8)
	movzbl	-1(%rbp), %edx
	movl	%edx, %r9d
	movsd	hist_red(,%r9,8), %xmm0 # xmm0 = mem[0],zero
	ucomisd	maxred, %xmm0
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movzbl	-1(%rbp), %eax
	movl	%eax, %ecx
	movsd	hist_red(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, maxred
.LBB6_2:                                # %if.end
	movzbl	-2(%rbp), %eax
	movl	%eax, %ecx
	movsd	hist_green(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	ucomisd	maxgreen, %xmm0
	jbe	.LBB6_4
# BB#3:                                 # %if.then.14
	movzbl	-2(%rbp), %eax
	movl	%eax, %ecx
	movsd	hist_green(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, maxgreen
.LBB6_4:                                # %if.end.17
	movzbl	-3(%rbp), %eax
	movl	%eax, %ecx
	movsd	hist_blue(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	ucomisd	maxblue, %xmm0
	jbe	.LBB6_6
# BB#5:                                 # %if.then.21
	movzbl	-3(%rbp), %eax
	movl	%eax, %ecx
	movsd	hist_blue(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, maxblue
.LBB6_6:                                # %if.end.24
	popq	%rbp
	retq
.Lfunc_end6:
	.size	histogram, .Lfunc_end6-histogram
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	doLabel,@function
doLabel:                                # @doLabel
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
	subq	$432, %rsp              # imm = 0x1B0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB7_2
# BB#1:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB7_2:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	leaq	16(%rbp), %rdi
	movq	%rdi, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$16, -64(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	g_strdup_vprintf
	movq	%rax, -32(%rbp)
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -24(%rbp)
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-8(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	doLabel, .Lfunc_end7-doLabel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4639481672377565184     # double 150
.LCPI8_2:
	.quad	4622945017495814144     # double 12
	.text
	.align	16, 0x90
	.type	fillPreview,@function
fillPreview:                            # @fillPreview
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
	subq	$144, %rsp
	movl	$1, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movl	$768, -44(%rbp)         # imm = 0x300
	movl	-44(%rbp), %eax
	shll	$8, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #     Child Loop BB8_17 Depth 2
                                        #     Child Loop BB8_26 Depth 2
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB8_31
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movsd	hist_red(,%rax,8), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-36(%rbp), %rax
	movsd	hist_red(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_5:                                # %cond.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_2, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$149, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.LBB8_8:                                # %for.cond.11
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	subsd	-64(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_11
# BB#9:                                 # %for.body.15
                                        #   in Loop: Header=BB8_8 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	$-1, (%rdx)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -32(%rbp)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB8_8 Depth=2
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_8
.LBB8_11:                               # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movsd	hist_green(,%rax,8), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_13
# BB#12:                                # %cond.true.23
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-36(%rbp), %rax
	movsd	hist_green(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB8_14
.LBB8_13:                               # %cond.false.26
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB8_14
.LBB8_14:                               # %cond.end.27
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_2, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_16
# BB#15:                                # %if.then.33
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
.LBB8_16:                               # %if.end.34
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$149, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.LBB8_17:                               # %for.cond.38
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	subsd	-64(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_20
# BB#18:                                # %for.body.43
                                        #   in Loop: Header=BB8_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	$-1, 1(%rdx)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -32(%rbp)
# BB#19:                                # %for.inc.48
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_17
.LBB8_20:                               # %for.end.50
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movsd	hist_blue(,%rax,8), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_22
# BB#21:                                # %cond.true.55
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-36(%rbp), %rax
	movsd	hist_blue(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB8_23
.LBB8_22:                               # %cond.false.58
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB8_23
.LBB8_23:                               # %cond.end.59
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_2, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_25
# BB#24:                                # %if.then.65
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
.LBB8_25:                               # %if.end.66
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$149, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.LBB8_26:                               # %for.cond.70
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	subsd	-64(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_29
# BB#27:                                # %for.body.75
                                        #   in Loop: Header=BB8_26 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	$-1, 2(%rdx)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -32(%rbp)
# BB#28:                                # %for.inc.80
                                        #   in Loop: Header=BB8_26 Depth=2
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_26
.LBB8_29:                               # %for.end.82
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_30
.LBB8_30:                               # %for.inc.83
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB8_1
.LBB8_31:                               # %for.end.85
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$256, %edx              # imm = 0x100
	movl	$150, %r8d
	movl	$768, %r9d              # imm = 0x300
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-108(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-112(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -116(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$768, 8(%rsp)           # imm = 0x300
	callq	gimp_preview_area_draw
	movq	-16(%rbp), %rdi
	callq	g_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	fillPreview, .Lfunc_end8-fillPreview
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

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.return_vals, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"num-colors"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Number of colors in the image"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-ccanalyze"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Analyze the set of colors in the image"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Analyze colorcube and print some information about the current image (also displays a color-histogram)"
	.size	.L.str.10, 103

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"robert@experimental.net"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"June 20th, 1997"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Colorcube A_nalysis..."
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<Image>/Colors/Info"
	.size	.L.str.15, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"UTF-8"
	.size	.L.str.17, 6

	.type	imageID,@object         # @imageID
	.local	imageID
	.comm	imageID,4,4
	.type	hist_red,@object        # @hist_red
	.local	hist_red
	.comm	hist_red,2048,16
	.type	hist_green,@object      # @hist_green
	.local	hist_green
	.comm	hist_green,2048,16
	.type	hist_blue,@object       # @hist_blue
	.local	hist_blue
	.comm	hist_blue,2048,16
	.type	uniques,@object         # @uniques
	.local	uniques
	.comm	uniques,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Colorcube Analysis"
	.size	.L.str.18, 19

	.type	width,@object           # @width
	.local	width
	.comm	width,4,4
	.type	height,@object          # @height
	.local	height
	.comm	height,4,4
	.type	bpp,@object             # @bpp
	.local	bpp
	.comm	bpp,4,4
	.type	insertcolor.hash_table,@object # @insertcolor.hash_table
	.local	insertcolor.hash_table
	.comm	insertcolor.hash_table,8,8
	.type	maxred,@object          # @maxred
	.local	maxred
	.comm	maxred,8,8
	.type	maxgreen,@object        # @maxgreen
	.local	maxgreen
	.comm	maxgreen,8,8
	.type	maxblue,@object         # @maxblue
	.local	maxblue
	.comm	maxblue,8,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"color-cube-analyze"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-color-cube-analyze"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-close"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Image dimensions: %d \303\227 %d"
	.size	.L.str.22, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"No colors"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Only one unique color"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Number of unique colors: %d"
	.size	.L.str.25, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
