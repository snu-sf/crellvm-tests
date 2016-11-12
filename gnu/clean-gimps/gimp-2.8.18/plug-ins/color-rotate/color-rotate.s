	.text
	.file	"color-rotate.bc"
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
	subq	$248, %rsp
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
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.10, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %r10
	movl	$1, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	leaq	-112(%rbp), %r13
	movabsq	$.Lquery.args, %r15
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	$72, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%r13, %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%r13, -160(%rbp)        # 8-byte Spill
	movq	%r12, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movl	%r14d, -196(%rbp)       # 4-byte Spill
	movq	%r10, -208(%rbp)        # 8-byte Spill
	movl	%r11d, -212(%rbp)       # 4-byte Spill
	movl	%ebx, -216(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	-192(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-208(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	-160(%rbp), %r15        # 8-byte Reload
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	callq	gimp_install_procedure
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.14, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -220(%rbp)        # 4-byte Spill
	addq	$248, %rsp
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
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.15, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.15, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$21, run.values
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, Current+16
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	callq	gimp_image_get_selection
	movl	%eax, %edi
	callq	gimp_drawable_get
	movq	%rax, Current+24
	movq	Current+16, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_7
# BB#3:                                 # %if.then
	callq	color_rotate_dialog
	cmpl	$0, %eax
	je	.LBB1_5
# BB#4:                                 # %if.then.12
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	Current+16, %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-80(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-84(%rbp), %esi         # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	Current+16, %rdi
	callq	color_rotate
	callq	gimp_displays_flush
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$4, -44(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_8
.LBB1_7:                                # %if.else.17
	movl	$0, -44(%rbp)
.LBB1_8:                                # %if.end.18
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
	cmpl	$3, -44(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.20
	movq	Current+16, %rdi
	callq	gimp_drawable_detach
.LBB1_10:                               # %if.end.21
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
	.text
	.align	16, 0x90
	.type	color_rotate,@function
color_rotate:                           # @color_rotate
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
	subq	$192, %rsp
	leaq	-144(%rbp), %rsi
	leaq	-148(%rbp), %rdx
	leaq	-108(%rbp), %rcx
	leaq	-112(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_9
.LBB3_2:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -116(%rbp)
	movl	-108(%rbp), %eax
	imull	-116(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -128(%rbp)
	movl	-108(%rbp), %edx
	imull	-116(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	leaq	-56(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -136(%rbp)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -152(%rbp)        # 4-byte Spill
	movl	-152(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-148(%rbp), %ecx
	movl	%ecx, -140(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-140(%rbp), %eax
	movl	-148(%rbp), %ecx
	addl	-112(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-56(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-144(%rbp), %edx
	movl	-140(%rbp), %ecx
	movl	-108(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-116(%rbp), %r8d
	callq	color_rotate_row
	leaq	-104(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-144(%rbp), %edx
	movl	-140(%rbp), %ecx
	movl	-108(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$10, %ecx
	movl	-140(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_6
# BB#5:                                 # %if.then.12
                                        #   in Loop: Header=BB3_3 Depth=1
	cvtsi2sdl	-140(%rbp), %xmm0
	cvtsi2sdl	-112(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB3_6:                                # %if.end.16
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB3_3
.LBB3_8:                                # %for.end
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-144(%rbp), %esi
	movl	-148(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-128(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
.LBB3_9:                                # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	color_rotate, .Lfunc_end3-color_rotate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	color_rotate_row,@function
color_rotate_row:                       # @color_rotate_row
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB4_20
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-67(%rbp), %rdi
	movl	$0, -72(%rbp)
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %r8
	movq	-8(%rbp), %r9
	movb	(%r9,%r8), %r10b
	movb	%r10b, -67(%rbp)
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %r8
	movq	-8(%rbp), %r9
	movb	(%r9,%r8), %r10b
	movb	%r10b, -66(%rbp)
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %r8
	movq	-8(%rbp), %r9
	movb	(%r9,%r8), %r10b
	movb	%r10b, -65(%rbp)
	callq	gimp_rgb_to_hsv4
	cvtsd2ss	-56(%rbp), %xmm0
	callq	rcm_is_gray
	cmpl	$0, %eax
	je	.LBB4_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$5, Current+12
	jne	.LBB4_8
# BB#4:                                 # %if.then.14
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	Current+56, %rax
	movss	20(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	Current+48, %rax
	movq	152(%rax), %rdi
	callq	rcm_angle_inside_slice
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB4_6
# BB#5:                                 # %if.then.18
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	Current+56, %rax
	cvtss2sd	20(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	Current+56, %rax
	cvtss2sd	24(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$1, -72(%rbp)
.LBB4_7:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.22
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-67(%rbp), %rdi
	movl	$1, -72(%rbp)
	movq	Current+56, %rax
	cvtss2sd	20(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	Current+56, %rax
	cvtss2sd	24(%rax), %xmm0
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_hsv_to_rgb4
.LBB4_9:                                # %if.end.29
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.30
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, -72(%rbp)
	jne	.LBB4_12
# BB#11:                                # %if.then.32
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	Current+48, %rax
	movq	152(%rax), %rdi
	callq	rcm_left_end
	movq	Current+48, %rax
	movq	152(%rax), %rdi
	movss	%xmm0, -84(%rbp)        # 4-byte Spill
	callq	rcm_right_end
	movq	Current+40, %rax
	movq	152(%rax), %rdi
	movss	%xmm0, -88(%rbp)        # 4-byte Spill
	callq	rcm_left_end
	movq	Current+40, %rax
	movq	152(%rax), %rdi
	movss	%xmm0, -92(%rbp)        # 4-byte Spill
	callq	rcm_right_end
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm4
	movss	-84(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movss	-88(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-92(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-96(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	rcm_linear
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	cvtsd2ss	-48(%rbp), %xmm0
	callq	angle_mod_2PI
	leaq	-67(%rbp), %rdi
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_hsv_to_rgb4
.LBB4_12:                               # %if.end.50
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-67(%rbp), %al
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	movb	-66(%rbp), %al
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	movb	-65(%rbp), %al
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	cmpl	$3, -28(%rbp)
	jle	.LBB4_18
# BB#13:                                # %if.then.68
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$3, -36(%rbp)
.LBB4_14:                               # %for.cond.69
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_17
# BB#15:                                # %for.body.72
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_14
.LBB4_17:                               # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_18
.LBB4_18:                               # %if.end.81
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_19
.LBB4_19:                               # %for.inc.82
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_20:                               # %for.end.84
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	color_rotate_row, .Lfunc_end4-color_rotate_row
	.cfi_endproc

	.type	Current,@object         # @Current
	.data
	.globl	Current
	.align	8
Current:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	6                       # 0x6
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	Current, 72

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
	.asciz	"Input image (used for indexed images)"
	.size	.L.str.3, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.Lquery.args,@object    # @query.args
	.section	.rodata,"a",@progbits
	.align	16
.Lquery.args:
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
	.size	.Lquery.args, 72

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"plug-in-rotate-colormap"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Replace a range of colors with another"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Exchanges two color ranges. Based on code from Pavel Grinfeld (pavel@ml.com). This version written by Sven Anders (anderss@fmi.uni-passau.de)."
	.size	.L.str.8, 143

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Sven Anders (anderss@fmi.uni-passau.de) and Pavel Grinfeld (pavel@ml.com)"
	.size	.L.str.9, 74

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Sven Anders (anderss@fmi.uni-passau.de)"
	.size	.L.str.10, 40

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"04th April 1999"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_Rotate Colors..."
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"RGB*"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"<Image>/Colors/Map"
	.size	.L.str.14, 19

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"UTF-8"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Rotating the colors"
	.size	.L.str.17, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
