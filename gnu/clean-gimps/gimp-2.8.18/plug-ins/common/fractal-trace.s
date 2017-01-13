	.text
	.file	"fractal-trace.bc"
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
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movabsq	$.L.str.23, %r9
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %r10
	movl	$1, %r11d
	movl	$9, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$9, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.26, %rsi
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
	.text
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
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
	movl	$3, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.27, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.27, %rdi
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
	callq	gimp_drawable_width
	movl	%eax, image
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height
	movl	%eax, image+4
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, image+8
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movabsq	$selection, %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rcx, %rsi
	addq	$4, %rsi
	movq	%rcx, %r8
	addq	$12, %r8
	movl	%eax, image+12
	movq	-48(%rbp), %r9
	movl	(%r9), %edi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	gimp_drawable_mask_bounds
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	selection+4, %edi
	subl	selection+8, %edi
	movl	%edi, selection+16
	movl	selection+12, %edi
	subl	selection+8, %edi
	movl	%edi, selection+20
	cvtsi2sdl	selection, %xmm1
	cvtsi2sdl	selection+16, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, selection+24
	cvtsi2sdl	selection+8, %xmm1
	cvtsi2sdl	selection+20, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, selection+32
	movq	-48(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	pixels_init
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movl	$0, -56(%rbp)
.LBB1_5:                                # %if.end
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_19
.LBB1_19:                               # %if.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_20
.LBB1_20:                               # %if.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jne	.LBB1_14
	jmp	.LBB1_6
.LBB1_6:                                # %sw.bb
	movabsq	$.L.str.18, %rdi
	movabsq	$parameters, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_14
.LBB1_7:                                # %sw.bb.28
	movabsq	$.L.str.18, %rdi
	movabsq	$parameters, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	dialog_show
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then.32
	movl	$0, -56(%rbp)
	jmp	.LBB1_14
.LBB1_9:                                # %if.end.33
	movabsq	$.L.str.18, %rdi
	movabsq	$parameters, %rax
	movl	$40, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_14
.LBB1_10:                               # %sw.bb.35
	cmpl	$9, -12(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.37
	movl	$1, -56(%rbp)
	jmp	.LBB1_13
.LBB1_12:                               # %if.else
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, parameters
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, parameters+8
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, parameters+16
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, parameters+24
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, parameters+32
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, parameters+36
.LBB1_13:                               # %if.end.55
	jmp	.LBB1_14
.LBB1_14:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_18
# BB#15:                                # %if.then.58
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-120(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-124(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rdi
	callq	filter
	cmpl	$1, -52(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.65
	callq	gimp_displays_flush
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB1_17:                               # %if.end.67
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.68
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	callq	pixels_free
	movabsq	$run.returns, %rdi
	movl	$21, run.returns
	movl	-56(%rbp), %eax
	movl	%eax, run.returns+8
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rdi, (%rcx)
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

	.align	16, 0x90
	.type	pixels_init,@function
pixels_init:                            # @pixels_init
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
	subq	$32, %rsp
	movabsq	$sPR, %rax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	image, %r8d
	movl	image+4, %r9d
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movabsq	$dPR, %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movl	image, %r8d
	movl	image+4, %r9d
	movl	%edx, -16(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$8, %ecx
	movl	%ecx, %esi
	movslq	image+4, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, spixels
	movslq	image+4, %rdi
	callq	g_malloc_n
	movq	%rax, dpixels
	movl	$0, -12(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	image+4, %eax
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	image, %eax
	imull	image+8, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movslq	-12(%rbp), %rdi
	movq	spixels, %rdx
	movq	%rax, (%rdx,%rdi,8)
	movl	image, %ecx
	imull	image+8, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movabsq	$sPR, %rdi
	xorl	%edx, %edx
	movslq	-12(%rbp), %rsi
	movq	dpixels, %r8
	movq	%rax, (%r8,%rsi,8)
	movslq	-12(%rbp), %rax
	movq	spixels, %rsi
	movq	(%rsi,%rax,8), %rsi
	movl	-12(%rbp), %ecx
	movl	image, %r8d
	callq	gimp_pixel_rgn_get_row
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pixels_init, .Lfunc_end3-pixels_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4632233691727265792     # double 50
.LCPI4_2:
	.quad	4617315517961601024     # double 5
.LCPI4_3:
	.quad	-4591138345127510016    # double -50
.LCPI4_4:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_5:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	dialog_show,@function
dialog_show:                            # @dialog_show
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	movabsq	$.L.str.29, %rdi
	movl	$1, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movabsq	$.L.str.31, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.32, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.33, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	movl	%r10d, -120(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movss	%xmm0, -176(%rbp)       # 4-byte Spill
	movss	-176(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-176(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-176(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	callq	dialog_preview_init
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	preview, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	preview, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movabsq	$.L.str.35, %rdi
	movl	parameters+36, %r8d
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movl	%r8d, -228(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.36, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.37, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.38, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$dialog_outside_type_callback, %rsi
	movabsq	$parameters, %r9
	addq	$36, %r9
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r11d
	movl	$2, %edx
	movl	$3, %r8d
	movq	-224(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-264(%rbp), %r15        # 8-byte Reload
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movq	%r15, %rdx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	-228(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -276(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	-240(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-248(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	-256(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	%rax, 64(%rsp)
	movl	$3, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movb	$0, %al
	movq	%r11, -288(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$5, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$6, %r9d
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r8d
	xorps	%xmm0, %xmm0
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movsd	parameters, %xmm5       # xmm5 = mem[0],zero
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-368(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -372(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-384(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-384(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.41, %rsi
	movabsq	$dialog_double_adjustment_update, %rcx
	movabsq	$parameters, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$6, %r10d
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r13d, %r13d
	movl	%r13d, %ecx
	movsd	parameters+8, %xmm5     # xmm5 = mem[0],zero
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-432(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-432(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -436(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.41, %rsi
	movabsq	$dialog_double_adjustment_update, %rcx
	movabsq	$parameters, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movl	$6, %r10d
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r13d, %r13d
	movl	%r13d, %ecx
	movsd	parameters+16, %xmm5    # xmm5 = mem[0],zero
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-488(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-488(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -492(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.41, %rsi
	movabsq	$dialog_double_adjustment_update, %rcx
	movabsq	$parameters, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$3, %edx
	movl	$6, %r10d
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %ebx
	movl	$1, %r13d
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movl	%esi, %ecx
	movsd	parameters+24, %xmm5    # xmm5 = mem[0],zero
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-544(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-544(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -548(%rbp)        # 4-byte Spill
	movl	%r13d, -552(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.41, %rsi
	movabsq	$dialog_double_adjustment_update, %rcx
	movabsq	$parameters, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$4, %edx
	movl	$6, %r10d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %ebx
	xorps	%xmm1, %xmm1
	xorl	%r13d, %r13d
	movl	%r13d, %ecx
	cvtsi2sdl	parameters+32, %xmm3
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -600(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-600(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -608(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-608(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-608(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -612(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.41, %rsi
	movabsq	$dialog_int_adjustment_update, %rcx
	movabsq	$parameters, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	callq	dialog_preview_draw
	movq	-48(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r9d
	movl	%r9d, -100(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-100(%rbp), %eax
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dialog_show, .Lfunc_end4-dialog_show
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	filter,@function
filter:                                 # @filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movabsq	$.L.str.30, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movsd	parameters+8, %xmm0     # xmm0 = mem[0],zero
	subsd	parameters, %xmm0
	cvtsi2sdl	selection+16, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	parameters+24, %xmm0    # xmm0 = mem[0],zero
	subsd	parameters+16, %xmm0
	cvtsi2sdl	selection+20, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	selection+8, %ecx
	movl	%ecx, -16(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-16(%rbp), %eax
	cmpl	selection+12, %eax
	jge	.LBB5_25
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movsd	parameters+16, %xmm0    # xmm0 = mem[0],zero
	movl	-16(%rbp), %eax
	subl	selection+8, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	selection, %eax
	movl	%eax, -12(%rbp)
.LBB5_3:                                # %for.cond.8
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	cmpl	selection+4, %eax
	jge	.LBB5_21
# BB#4:                                 # %for.body.11
                                        #   in Loop: Header=BB5_3 Depth=2
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	movsd	parameters, %xmm0       # xmm0 = mem[0],zero
	movl	-12(%rbp), %eax
	subl	selection, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	mandelbrot
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	parameters, %xmm1
	divsd	-32(%rbp), %xmm1
	cvtsi2sdl	selection, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	parameters+16, %xmm1
	divsd	-40(%rbp), %xmm1
	cvtsi2sdl	selection+8, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB5_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_3 Depth=2
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	image, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_9
# BB#6:                                 # %land.lhs.true.29
                                        #   in Loop: Header=BB5_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB5_9
# BB#7:                                 # %land.lhs.true.32
                                        #   in Loop: Header=BB5_3 Depth=2
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	image+4, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB5_3 Depth=2
	leaq	-24(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pixels_get_biliner
	jmp	.LBB5_19
.LBB5_9:                                # %if.else
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	parameters+36(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	ja	.LBB5_18
# BB#26:                                # %if.else
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_10:                               # %sw.bb
                                        #   in Loop: Header=BB5_3 Depth=2
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	image, %xmm1
	callq	fmod
	movsd	%xmm0, -64(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	image+4, %xmm1
	callq	fmod
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -72(%rbp)
	ucomisd	-64(%rbp), %xmm1
	jbe	.LBB5_12
# BB#11:                                # %if.then.42
                                        #   in Loop: Header=BB5_3 Depth=2
	cvtsi2sdl	image, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB5_12:                               # %if.end
                                        #   in Loop: Header=BB5_3 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB5_14
# BB#13:                                # %if.then.47
                                        #   in Loop: Header=BB5_3 Depth=2
	cvtsi2sdl	image+4, %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB5_14:                               # %if.end.50
                                        #   in Loop: Header=BB5_3 Depth=2
	leaq	-24(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pixels_get_biliner
	jmp	.LBB5_18
.LBB5_15:                               # %sw.bb.51
                                        #   in Loop: Header=BB5_3 Depth=2
	movb	$0, -22(%rbp)
	movb	$0, -23(%rbp)
	movb	$0, -24(%rbp)
	movb	$0, -21(%rbp)
	jmp	.LBB5_18
.LBB5_16:                               # %sw.bb.52
                                        #   in Loop: Header=BB5_3 Depth=2
	movb	$0, -22(%rbp)
	movb	$0, -23(%rbp)
	movb	$0, -24(%rbp)
	movb	$-1, -21(%rbp)
	jmp	.LBB5_18
.LBB5_17:                               # %sw.bb.57
                                        #   in Loop: Header=BB5_3 Depth=2
	movb	$-1, -22(%rbp)
	movb	$-1, -23(%rbp)
	movb	$-1, -24(%rbp)
	movb	$-1, -21(%rbp)
.LBB5_18:                               # %sw.epilog
                                        #   in Loop: Header=BB5_3 Depth=2
	jmp	.LBB5_19
.LBB5_19:                               # %if.end.62
                                        #   in Loop: Header=BB5_3 Depth=2
	leaq	-24(%rbp), %rdx
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	pixels_set
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_3
.LBB5_21:                               # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$100, %eax
	movl	-16(%rbp), %ecx
	subl	selection+8, %ecx
	movl	selection+20, %edx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-100(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-104(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_23
# BB#22:                                # %if.then.67
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-16(%rbp), %eax
	subl	selection+8, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	selection+20, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB5_23:                               # %if.end.73
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_24
.LBB5_24:                               # %for.inc.74
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_25:                               # %for.end.76
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	pixels_store
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	selection, %esi
	movl	selection+8, %edx
	movl	selection+16, %ecx
	movl	selection+20, %r8d
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -120(%rbp)        # 4-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	filter, .Lfunc_end5-filter
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_10
	.quad	.LBB5_15
	.quad	.LBB5_16
	.quad	.LBB5_17

	.text
	.align	16, 0x90
	.type	pixels_free,@function
pixels_free:                            # @pixels_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	image+4, %eax
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	spixels, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	dpixels, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movq	spixels, %rax
	movq	%rax, %rdi
	callq	g_free
	movq	dpixels, %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pixels_free, .Lfunc_end6-pixels_free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4641240890982006784     # double 200
	.text
	.align	16, 0x90
	.type	dialog_preview_init,@function
dialog_preview_init:                    # @dialog_preview_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	image, %eax
	cmpl	image+4, %eax
	jge	.LBB7_2
# BB#1:                                 # %if.then
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	selection+20, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, preview+16
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	selection+16, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, preview+16
.LBB7_3:                                # %if.end
	cvtsi2sdl	selection+16, %xmm0
	divsd	preview+16, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, preview+24
	cvtsi2sdl	selection+20, %xmm0
	divsd	preview+16, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, preview+28
	callq	gimp_preview_area_new
	movq	%rax, preview
	movq	preview, %rdi
	movl	preview+24, %esi
	movl	preview+28, %edx
	callq	gtk_widget_set_size_request
	movl	$1, %edx
	movl	%edx, %esi
	movl	preview+28, %edx
	imull	preview+24, %edx
	shll	$2, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, preview+8
	movl	$0, -16(%rbp)
.LBB7_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	movl	-16(%rbp), %eax
	cmpl	preview+28, %eax
	jge	.LBB7_11
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB7_4 Depth=1
	cvtsi2sdl	selection+8, %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	mulsd	preview+16, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$0, -12(%rbp)
.LBB7_6:                                # %for.cond.17
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	cmpl	preview+24, %eax
	jge	.LBB7_9
# BB#7:                                 # %for.body.20
                                        #   in Loop: Header=BB7_6 Depth=2
	leaq	-8(%rbp), %rdi
	cvtsi2sdl	selection, %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	mulsd	preview+16, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pixels_get_biliner
	leaq	-8(%rbp), %rdx
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	dialog_preview_setpixel
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB7_6 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB7_6
.LBB7_9:                                # %for.end
                                        #   in Loop: Header=BB7_4 Depth=1
	jmp	.LBB7_10
.LBB7_10:                               # %for.inc.25
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB7_4
.LBB7_11:                               # %for.end.27
	movq	preview, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	preview+24, %edx
	movl	preview+28, %r8d
	movq	preview+8, %rsi
	movl	preview+24, %r10d
	shll	$2, %r10d
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dialog_preview_init, .Lfunc_end7-dialog_preview_init
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_outside_type_callback,@function
dialog_outside_type_callback:           # @dialog_outside_type_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	callq	dialog_preview_draw
.LBB8_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	dialog_outside_type_callback, .Lfunc_end8-dialog_outside_type_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_double_adjustment_update,@function
dialog_double_adjustment_update:        # @dialog_double_adjustment_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_double_adjustment_update
	callq	dialog_preview_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dialog_double_adjustment_update, .Lfunc_end9-dialog_double_adjustment_update
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_int_adjustment_update,@function
dialog_int_adjustment_update:           # @dialog_int_adjustment_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_int_adjustment_update
	callq	dialog_preview_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dialog_int_adjustment_update, .Lfunc_end10-dialog_int_adjustment_update
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_preview_draw,@function
dialog_preview_draw:                    # @dialog_preview_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movsd	parameters+8, %xmm0     # xmm0 = mem[0],zero
	subsd	parameters, %xmm0
	cvtsi2sdl	preview+24, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	parameters+24, %xmm0    # xmm0 = mem[0],zero
	subsd	parameters+16, %xmm0
	cvtsi2sdl	preview+28, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$0, -8(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	movl	-8(%rbp), %eax
	cmpl	preview+28, %eax
	jge	.LBB11_23
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	parameters+16, %xmm0    # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	$0, -4(%rbp)
.LBB11_3:                               # %for.cond.6
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	cmpl	preview+24, %eax
	jge	.LBB11_21
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB11_3 Depth=2
	leaq	-56(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	parameters, %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	mandelbrot
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	parameters, %xmm1
	divsd	-24(%rbp), %xmm1
	mulsd	preview+16, %xmm1
	cvtsi2sdl	selection, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	parameters+16, %xmm1
	divsd	-32(%rbp), %xmm1
	mulsd	preview+16, %xmm1
	cvtsi2sdl	selection+8, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB11_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_3 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	image, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_9
# BB#6:                                 # %land.lhs.true.28
                                        #   in Loop: Header=BB11_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB11_9
# BB#7:                                 # %land.lhs.true.31
                                        #   in Loop: Header=BB11_3 Depth=2
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	image+4, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB11_3 Depth=2
	leaq	-16(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pixels_get_biliner
	jmp	.LBB11_19
.LBB11_9:                               # %if.else
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	parameters+36(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB11_18
# BB#24:                                # %if.else
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_10:                              # %sw.bb
                                        #   in Loop: Header=BB11_3 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	image, %xmm1
	callq	fmod
	movsd	%xmm0, -56(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	image+4, %xmm1
	callq	fmod
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -64(%rbp)
	ucomisd	-56(%rbp), %xmm1
	jbe	.LBB11_12
# BB#11:                                # %if.then.40
                                        #   in Loop: Header=BB11_3 Depth=2
	cvtsi2sdl	image, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB11_12:                              # %if.end
                                        #   in Loop: Header=BB11_3 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB11_14
# BB#13:                                # %if.then.45
                                        #   in Loop: Header=BB11_3 Depth=2
	cvtsi2sdl	image+4, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB11_14:                              # %if.end.48
                                        #   in Loop: Header=BB11_3 Depth=2
	leaq	-16(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pixels_get_biliner
	jmp	.LBB11_18
.LBB11_15:                              # %sw.bb.49
                                        #   in Loop: Header=BB11_3 Depth=2
	movb	$0, -14(%rbp)
	movb	$0, -15(%rbp)
	movb	$0, -16(%rbp)
	movb	$0, -13(%rbp)
	jmp	.LBB11_18
.LBB11_16:                              # %sw.bb.50
                                        #   in Loop: Header=BB11_3 Depth=2
	movb	$0, -14(%rbp)
	movb	$0, -15(%rbp)
	movb	$0, -16(%rbp)
	movb	$-1, -13(%rbp)
	jmp	.LBB11_18
.LBB11_17:                              # %sw.bb.55
                                        #   in Loop: Header=BB11_3 Depth=2
	movb	$-1, -14(%rbp)
	movb	$-1, -15(%rbp)
	movb	$-1, -16(%rbp)
	movb	$-1, -13(%rbp)
.LBB11_18:                              # %sw.epilog
                                        #   in Loop: Header=BB11_3 Depth=2
	jmp	.LBB11_19
.LBB11_19:                              # %if.end.60
                                        #   in Loop: Header=BB11_3 Depth=2
	leaq	-16(%rbp), %rdx
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	dialog_preview_setpixel
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB11_3
.LBB11_21:                              # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_22
.LBB11_22:                              # %for.inc.61
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB11_1
.LBB11_23:                              # %for.end.63
	movq	preview, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	preview+24, %edx
	movl	preview+28, %r8d
	movq	preview+8, %rsi
	movl	preview+24, %r10d
	shll	$2, %r10d
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dialog_preview_draw, .Lfunc_end11-dialog_preview_draw
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_10
	.quad	.LBB11_15
	.quad	.LBB11_16
	.quad	.LBB11_17

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
.LCPI12_1:
	.quad	4607182869159980145     # double 1.0001
	.text
	.align	16, 0x90
	.type	pixels_get_biliner,@function
pixels_get_biliner:                     # @pixels_get_biliner
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -92(%rbp)
	incl	%eax
	movl	%eax, -100(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -96(%rbp)
	incl	%eax
	movl	%eax, -104(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-92(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI12_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	movaps	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm3
	movsd	%xmm3, -64(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -80(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	leaq	-32(%rbp), %rdx
	callq	pixels_get
	movl	-100(%rbp), %edi
	movl	-96(%rbp), %esi
	leaq	-40(%rbp), %rdx
	callq	pixels_get
	movl	-92(%rbp), %edi
	movl	-104(%rbp), %esi
	leaq	-48(%rbp), %rdx
	callq	pixels_get
	movl	-100(%rbp), %edi
	movl	-104(%rbp), %esi
	leaq	-56(%rbp), %rdx
	callq	pixels_get
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	-29(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-37(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-45(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-53(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI12_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, 3(%rdx)
	movq	-24(%rbp), %rdx
	cmpb	$0, 3(%rdx)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movzbl	-29(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-37(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-45(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-53(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	-31(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movzbl	-29(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-39(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-37(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-47(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-45(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-55(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-53(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	-30(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movzbl	-29(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-38(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-37(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-46(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-45(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-54(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-53(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, 2(%rdx)
.LBB12_2:                               # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pixels_get_biliner, .Lfunc_end12-pixels_get_biliner
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_preview_setpixel,@function
dialog_preview_setpixel:                # @dialog_preview_setpixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movb	(%rdx), %al
	movl	-8(%rbp), %esi
	imull	preview+24, %esi
	addl	-4(%rbp), %esi
	shll	$2, %esi
	addl	$0, %esi
	movslq	%esi, %rdx
	movq	preview+8, %rcx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rcx
	movb	1(%rcx), %al
	movl	-8(%rbp), %esi
	imull	preview+24, %esi
	addl	-4(%rbp), %esi
	shll	$2, %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movq	preview+8, %rdx
	movb	%al, (%rdx,%rcx)
	movq	-16(%rbp), %rcx
	movb	2(%rcx), %al
	movl	-8(%rbp), %esi
	imull	preview+24, %esi
	addl	-4(%rbp), %esi
	shll	$2, %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movq	preview+8, %rdx
	movb	%al, (%rdx,%rcx)
	movq	-16(%rbp), %rcx
	movb	3(%rcx), %al
	movl	-8(%rbp), %esi
	imull	preview+24, %esi
	addl	-4(%rbp), %esi
	shll	$2, %esi
	addl	$3, %esi
	movslq	%esi, %rcx
	movq	preview+8, %rdx
	movb	%al, (%rdx,%rcx)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dialog_preview_setpixel, .Lfunc_end13-dialog_preview_setpixel
	.cfi_endproc

	.align	16, 0x90
	.type	pixels_get,@function
pixels_get:                             # @pixels_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB14_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB14_5
.LBB14_2:                               # %if.else
	movl	image, %eax
	cmpl	-4(%rbp), %eax
	jg	.LBB14_4
# BB#3:                                 # %if.then.2
	movl	image, %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %if.end.3
	cmpl	$0, -8(%rbp)
	jge	.LBB14_7
# BB#6:                                 # %if.then.5
	movl	$0, -8(%rbp)
	jmp	.LBB14_10
.LBB14_7:                               # %if.else.6
	movl	image+4, %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB14_9
# BB#8:                                 # %if.then.8
	movl	image+4, %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB14_9:                               # %if.end.10
	jmp	.LBB14_10
.LBB14_10:                              # %if.end.11
	movl	image+8(%rip), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB14_15
# BB#16:                                # %if.end.11
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_11:                              # %sw.bb
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, 1(%rcx)
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, 2(%rcx)
	movq	-16(%rbp), %rcx
	movb	$-1, 3(%rcx)
	jmp	.LBB14_15
.LBB14_12:                              # %sw.bb.24
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, 1(%rcx)
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, 2(%rcx)
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, 3(%rcx)
	jmp	.LBB14_15
.LBB14_13:                              # %sw.bb.49
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, 1(%rcx)
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, 2(%rcx)
	movq	-16(%rbp), %rcx
	movb	$-1, 3(%rcx)
	jmp	.LBB14_15
.LBB14_14:                              # %sw.bb.71
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, 1(%rcx)
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, 2(%rcx)
	movl	-4(%rbp), %eax
	imull	image+8, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	movq	spixels, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, 3(%rcx)
.LBB14_15:                              # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pixels_get, .Lfunc_end14-pixels_get
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_11
	.quad	.LBB14_12
	.quad	.LBB14_13
	.quad	.LBB14_14

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	mandelbrot,@function
mandelbrot:                             # @mandelbrot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -36(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB15_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	parameters+32, %eax
	jge	.LBB15_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	addsd	-8(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	mulsd	-48(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB15_1
.LBB15_3:                               # %while.end
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	mandelbrot, .Lfunc_end15-mandelbrot
	.cfi_endproc

	.align	16, 0x90
	.type	pixels_set,@function
pixels_set:                             # @pixels_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	image+8(%rip), %esi
	decl	%esi
	movl	%esi, %edx
	subl	$3, %esi
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%esi, -28(%rbp)         # 4-byte Spill
	ja	.LBB16_5
# BB#6:                                 # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_1:                               # %sw.bb
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movl	-4(%rbp), %edx
	imull	image+8, %edx
	movslq	%edx, %rax
	movslq	-8(%rbp), %rsi
	movq	dpixels, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rax)
	jmp	.LBB16_5
.LBB16_2:                               # %sw.bb.3
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movl	-4(%rbp), %edx
	imull	image+8, %edx
	movslq	%edx, %rax
	movslq	-8(%rbp), %rsi
	movq	dpixels, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	3(%rax), %cl
	movl	-4(%rbp), %edx
	imull	image+8, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movslq	-8(%rbp), %rsi
	movq	dpixels, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rax)
	jmp	.LBB16_5
.LBB16_3:                               # %sw.bb.15
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movl	-4(%rbp), %edx
	imull	image+8, %edx
	movslq	%edx, %rax
	movslq	-8(%rbp), %rsi
	movq	dpixels, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	1(%rax), %cl
	movl	-4(%rbp), %edx
	imull	image+8, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movslq	-8(%rbp), %rsi
	movq	dpixels, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	2(%rax), %cl
	movl	-4(%rbp), %edx
	imull	image+8, %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movslq	-8(%rbp), %rsi
	movq	dpixels, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rax)
	jmp	.LBB16_5
.LBB16_4:                               # %sw.bb.34
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movl	-4(%rbp), %edx
	imull	image+8, %edx
	movslq	%edx, %rax
	movslq	-8(%rbp), %rsi
	movq	dpixels, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	1(%rax), %cl
	movl	-4(%rbp), %edx
	imull	image+8, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movslq	-8(%rbp), %rsi
	movq	dpixels, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	2(%rax), %cl
	movl	-4(%rbp), %edx
	imull	image+8, %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movslq	-8(%rbp), %rsi
	movq	dpixels, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	3(%rax), %cl
	movl	-4(%rbp), %edx
	imull	image+8, %edx
	addl	$3, %edx
	movslq	%edx, %rax
	movslq	-8(%rbp), %rsi
	movq	dpixels, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rax)
.LBB16_5:                               # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pixels_set, .Lfunc_end16-pixels_set
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_1
	.quad	.LBB16_2
	.quad	.LBB16_3
	.quad	.LBB16_4

	.text
	.align	16, 0x90
	.type	pixels_store,@function
pixels_store:                           # @pixels_store
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	selection+8, %eax
	movl	%eax, -4(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	selection+12, %eax
	jge	.LBB17_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movabsq	$dPR, %rdi
	xorl	%edx, %edx
	movslq	-4(%rbp), %rax
	movq	dpixels, %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	-4(%rbp), %ecx
	movl	image, %r8d
	callq	gimp_pixel_rgn_set_row
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_1
.LBB17_4:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pixels_store, .Lfunc_end17-pixels_store
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.size	query.args, 216

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
	.asciz	"xmin"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"xmin fractal image delimiter"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"xmax"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"xmax fractal image delimiter"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ymin"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ymin fractal image delimiter"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ymax"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ymax fractal image delimiter"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"depth"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Trace depth"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"outside-type"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Outside type { WRAP (0), TRANS (1), BLACK (2), WHITE (3) }"
	.size	.L.str.17, 59

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"plug-in-fractal-trace"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Transform image with the Mandelbrot Fractal"
	.size	.L.str.19, 44

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"transform image with the Mandelbrot Fractal"
	.size	.L.str.20, 44

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Hirotsuna Mizuno <s1041150@u-aizu.ac.jp>"
	.size	.L.str.21, 41

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Copyright (C) 1997 Hirotsuna Mizuno"
	.size	.L.str.22, 36

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"v0.4 test version (Dec. 25 1997)"
	.size	.L.str.23, 33

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Fractal Trace..."
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"<Image>/Filters/Map"
	.size	.L.str.26, 20

	.type	run.returns,@object     # @run.returns
	.local	run.returns
	.comm	run.returns,40,16
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"UTF-8"
	.size	.L.str.28, 6

	.type	image,@object           # @image
	.local	image
	.comm	image,16,4
	.type	selection,@object       # @selection
	.local	selection
	.comm	selection,40,8
	.type	parameters,@object      # @parameters
	.data
	.align	8
parameters:
	.quad	-4616189618054758400    # double -1
	.quad	4602678819172646912     # double 0.5
	.quad	-4616189618054758400    # double -1
	.quad	4607182418800017408     # double 1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.size	parameters, 40

	.type	sPR,@object             # @sPR
	.local	sPR
	.comm	sPR,48,8
	.type	dPR,@object             # @dPR
	.local	dPR
	.comm	dPR,48,8
	.type	spixels,@object         # @spixels
	.local	spixels
	.comm	spixels,8,8
	.type	dpixels,@object         # @dpixels
	.local	dpixels
	.comm	dpixels,8,8
	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"fractal-trace"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Fractal Trace"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-fractal-trace"
	.size	.L.str.31, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gtk-cancel"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-ok"
	.size	.L.str.33, 7

	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,40,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Outside Type"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Wrap"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Transparent"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Black"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_White"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Mandelbrot Parameters"
	.size	.L.str.39, 22

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"X_1:"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"value-changed"
	.size	.L.str.41, 14

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"X_2:"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Y_1:"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Y_2:"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_Depth:"
	.size	.L.str.45, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
