	.text
	.file	"jigsaw.bc"
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movl	$1, %r10d
	movl	$8, %r11d
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
	movl	$8, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.23, %rsi
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -60(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.24, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	4(%rax), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	xorl	%edx, %edx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	movl	-96(%rbp), %edi         # 4-byte Reload
	divl	%edi
	incl	%eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_13
.LBB1_13:                               # %do.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb
	cmpl	$8, -12(%rbp)
	jne	.LBB1_5
# BB#4:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	128(%rcx), %eax
	movl	%eax, config
	movq	-24(%rbp), %rcx
	movl	168(%rcx), %eax
	movl	%eax, config+4
	movq	-24(%rbp), %rcx
	movl	208(%rcx), %eax
	movl	%eax, config+8
	movq	-24(%rbp), %rcx
	movl	248(%rcx), %eax
	movl	%eax, config+12
	movq	-24(%rbp), %rcx
	movsd	288(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, config+16
	movq	-56(%rbp), %rdi
	callq	jigsaw
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$1, -60(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_11
.LBB1_7:                                # %sw.bb.23
	movabsq	$.L.str.16, %rdi
	movabsq	$config, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	jigsaw_dialog
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then.26
	movl	$4, -60(%rbp)
	jmp	.LBB1_11
.LBB1_9:                                # %if.end.27
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	jigsaw
	movabsq	$.L.str.16, %rdi
	movabsq	$config, %rsi
	movl	$24, %edx
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %sw.bb.32
	movabsq	$.L.str.16, %rdi
	movabsq	$config, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	jigsaw
	callq	gimp_displays_flush
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB1_11:                               # %sw.epilog
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	movabsq	$run.values, %rdi
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, (%rax)
	movl	$21, run.values
	movl	-60(%rbp), %ecx
	movl	%ecx, run.values+8
	addq	$144, %rsp
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
	.type	jigsaw,@function
jigsaw:                                 # @jigsaw
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %eax
	movl	%eax, -132(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_get_thumbnail_data
	movq	%rax, -120(%rbp)
	movl	-132(%rbp), %edi
	imull	-124(%rbp), %edi
	imull	-128(%rbp), %edi
	movl	%edi, -136(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -124(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -128(%rbp)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	imull	-124(%rbp), %eax
	imull	-128(%rbp), %eax
	movl	%eax, -136(%rbp)
	movslq	-136(%rbp), %rdi
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_get_rect
.LBB3_3:                                # %if.end
	movl	-124(%rbp), %edi
	movl	-128(%rbp), %esi
	callq	check_config
	movl	config, %esi
	cmpl	config+4, %esi
	jge	.LBB3_5
# BB#4:                                 # %cond.true
	movl	-124(%rbp), %eax
	cltd
	idivl	config
	shll	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false
	movl	-128(%rbp), %eax
	cltd
	idivl	config+4
	shll	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB3_6:                                # %cond.end
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, globals+140
	movl	%eax, globals+136
	movl	%eax, globals+132
	movl	%eax, globals+128
	callq	malloc_cache
	movq	-120(%rbp), %rdi
	movl	-136(%rbp), %esi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %r8d
	cmpq	$0, -16(%rbp)
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	callq	draw_jigsaw
	callq	free_cache
	cmpq	$0, -16(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-124(%rbp), %eax
	imull	-132(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.17
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	movq	-120(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%ecx, %ecx
	movq	-8(%rbp), %r10
	movl	(%r10), %edi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %r8d
	movl	%ecx, %esi
	movl	%edx, -152(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-152(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB3_9:                                # %if.end.22
	movq	-120(%rbp), %rdi
	callq	g_free
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	jigsaw, .Lfunc_end3-jigsaw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4587366580439587226     # double 0.050000000000000003
.LCPI4_2:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_3:
	.quad	4621819117588971520     # double 10
.LCPI4_4:
	.quad	4611686018427387904     # double 2
.LCPI4_5:
	.quad	4626322717216342016     # double 20
.LCPI4_6:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	jigsaw_dialog,@function
jigsaw_dialog:                          # @jigsaw_dialog
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
	subq	$760, %rsp              # imm = 0x2F8
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
	movabsq	$.L.str.29, %rax
	movl	$1, %esi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movabsq	$.L.str.31, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.32, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.33, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -140(%rbp)        # 4-byte Spill
	movl	%r10d, -144(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_aspect_preview_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rsi
	movabsq	$jigsaw, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-112(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$1, %edi
	callq	gtk_size_group_new
	movq	%rax, -80(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.37, %rdi
	cvtsi2sdl	config, %xmm0
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-256(%rbp), %r11        # 8-byte Reload
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-280(%rbp), %r9d        # 4-byte Reload
	movsd	-264(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-288(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -296(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-296(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-296(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$config, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-112(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.41, %rdi
	cvtsi2sdl	config+4, %xmm0
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$200, %r8d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_6, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	-352(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-360(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-376(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -384(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-384(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-384(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$config, %rcx
	addq	$4, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-112(%rbp), %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-112(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-112(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.44, %rdi
	cvtsi2sdl	config+12, %xmm0
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	movl	$4, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -492(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movsd	-480(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -504(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-504(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-504(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-504(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$config, %rcx
	addq	$12, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-112(%rbp), %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.46, %rdi
	movsd	config+16, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$200, %r8d
	movl	$4, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	-560(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-568(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-584(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-584(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-584(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -588(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$config, %rcx
	addq	$16, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-608(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-112(%rbp), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movabsq	$.L.str.48, %rdi
	movl	config+8, %r8d
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movl	%r8d, -636(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.49, %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$config, %rdx
	addq	$8, %rdx
	xorl	%r8d, %r8d
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %r11
	xorl	%r9d, %r9d
	movl	%r9d, %r14d
	movq	-632(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movl	-636(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -668(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	-648(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	-656(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r14, -680(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.50, %rdi
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.51, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.52, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$2, %r9d
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-704(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.52, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-712(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -728(%rbp)        # 8-byte Spill
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %eax
	movl	%eax, -124(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-124(%rbp), %eax
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	jigsaw_dialog, .Lfunc_end4-jigsaw_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4617315517961601024     # double 5
.LCPI5_1:
	.quad	4600877379321698714     # double 0.40000000000000002
	.text
	.align	16, 0x90
	.type	check_config,@function
check_config:                           # @check_config
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, config
	jge	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, config
.LBB5_2:                                # %if.end
	cmpl	$1, config+4
	jge	.LBB5_4
# BB#3:                                 # %if.then.2
	movl	$1, config+4
.LBB5_4:                                # %if.end.3
	xorps	%xmm0, %xmm0
	ucomisd	config+16, %xmm0
	jbe	.LBB5_6
# BB#5:                                 # %if.then.5
	xorps	%xmm0, %xmm0
	movsd	%xmm0, config+16
.LBB5_6:                                # %if.end.6
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	config+16, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_8
# BB#7:                                 # %if.then.8
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, config+16
.LBB5_8:                                # %if.end.9
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movl	-4(%rbp), %eax
	cltd
	idivl	config
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	config+4
	movl	%eax, -16(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -20(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movl	config+12, %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB5_10
# BB#9:                                 # %lor.lhs.false
	movl	config+12, %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB5_14
.LBB5_10:                               # %if.then.19
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB5_12
# BB#11:                                # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB5_13:                               # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, config+12
.LBB5_14:                               # %if.end.22
	popq	%rbp
	retq
.Lfunc_end5:
	.size	check_config, .Lfunc_end5-check_config
	.cfi_endproc

	.align	16, 0x90
	.type	malloc_cache,@function
malloc_cache:                           # @malloc_cache
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
	movl	config+12, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	cmpl	$4, -4(%rbp)
	jge	.LBB6_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-4(%rbp), %rcx
	movl	globals+128(,%rcx,4), %eax
	movl	%eax, -16(%rbp)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals(,%rcx,8)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+32(,%rcx,8)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+64(,%rcx,8)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+96(,%rcx,8)
	movslq	-12(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+160(,%rcx,8)
	movslq	-12(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+192(,%rcx,8)
	movslq	-12(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+224(,%rcx,8)
	movslq	-12(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+256(,%rcx,8)
	movslq	-12(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+288(,%rcx,8)
	movslq	-12(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+320(,%rcx,8)
	movslq	-12(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+352(,%rcx,8)
	movslq	-12(%rbp), %rdi
	callq	g_malloc_n
	movslq	-4(%rbp), %rcx
	movq	%rax, globals+384(,%rcx,8)
	movl	$0, -8(%rbp)
.LBB6_3:                                # %for.cond.47
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB6_6
# BB#4:                                 # %for.body.50
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movslq	-8(%rbp), %rdi
	movslq	-4(%rbp), %rdx
	movq	globals+160(,%rdx,8), %rdx
	movq	%rax, (%rdx,%rdi,8)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movslq	-8(%rbp), %rdx
	movslq	-4(%rbp), %rdi
	movq	globals+192(,%rdi,8), %rdi
	movq	%rax, (%rdi,%rdx,8)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movslq	-8(%rbp), %rdx
	movslq	-4(%rbp), %rdi
	movq	globals+224(,%rdi,8), %rdi
	movq	%rax, (%rdi,%rdx,8)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movslq	-8(%rbp), %rdx
	movslq	-4(%rbp), %rdi
	movq	globals+256(,%rdi,8), %rdi
	movq	%rax, (%rdi,%rdx,8)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movslq	-8(%rbp), %rdx
	movslq	-4(%rbp), %rdi
	movq	globals+288(,%rdi,8), %rdi
	movq	%rax, (%rdi,%rdx,8)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movslq	-8(%rbp), %rdx
	movslq	-4(%rbp), %rdi
	movq	globals+320(,%rdi,8), %rdi
	movq	%rax, (%rdi,%rdx,8)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movslq	-8(%rbp), %rdx
	movslq	-4(%rbp), %rdi
	movq	globals+352(,%rdi,8), %rdi
	movq	%rax, (%rdi,%rdx,8)
	movslq	-16(%rbp), %rdi
	callq	g_malloc_n
	movslq	-8(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	movq	globals+384(,%rsi,8), %rsi
	movq	%rax, (%rsi,%rdx,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc.99
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_1
.LBB6_8:                                # %for.end.101
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	malloc_cache, .Lfunc_end6-malloc_cache
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	draw_jigsaw,@function
draw_jigsaw:                            # @draw_jigsaw
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
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	config, %ecx
	movl	%ecx, -68(%rbp)
	movl	config+4, %ecx
	movl	%ecx, -72(%rbp)
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -76(%rbp)
	movl	-72(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -80(%rbp)
	movl	config+12, %ecx
	movl	%ecx, -84(%rbp)
	movsd	config+16, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movl	globals+132, %ecx
	movl	%ecx, -100(%rbp)
	movl	config+8, %ecx
	movl	%ecx, -104(%rbp)
	movl	-76(%rbp), %ecx
	addl	-80(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -108(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.draw_jigsaw, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_36
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-68(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, globals+144
	movslq	-72(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, globals+152
	movq	globals+144, %rax
	movq	%rax, -56(%rbp)
	movq	globals+152, %rax
	movq	%rax, -64(%rbp)
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	globals+144, %r8
	movq	globals+152, %r9
	callq	generate_grid
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	init_right_bump
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	init_left_bump
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	init_up_bump
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	init_down_bump
	cmpl	$0, -104(%rbp)
	jne	.LBB7_19
# BB#6:                                 # %if.then.7
	movl	$0, -48(%rbp)
.LBB7_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB7_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %r9
	movl	(%r9,%rax,4), %r9d
	movl	-72(%rbp), %r10d
	movl	-84(%rbp), %r11d
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	draw_vertical_border
	cmpl	$0, -44(%rbp)
	jne	.LBB7_10
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB7_7 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-108(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB7_10:                               # %if.end.14
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_11
.LBB7_11:                               # %for.inc
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_7
.LBB7_12:                               # %for.end
	movl	$0, -48(%rbp)
.LBB7_13:                               # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB7_18
# BB#14:                                # %for.body.18
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-40(%rbp), %ecx
	movslq	-48(%rbp), %rax
	movq	-64(%rbp), %r8
	movl	(%r8,%rax,4), %r8d
	movl	-68(%rbp), %r9d
	movl	-84(%rbp), %r10d
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%r10d, (%rsp)
	callq	draw_horizontal_border
	cmpl	$0, -44(%rbp)
	jne	.LBB7_16
# BB#15:                                # %if.then.22
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-48(%rbp), %eax
	addl	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-108(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB7_16:                               # %if.end.28
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_17
.LBB7_17:                               # %for.inc.29
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_13
.LBB7_18:                               # %for.end.31
	jmp	.LBB7_35
.LBB7_19:                               # %if.else.32
	cmpl	$1, -104(%rbp)
	jne	.LBB7_33
# BB#20:                                # %if.then.35
	movl	$0, -48(%rbp)
.LBB7_21:                               # %for.cond.36
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB7_26
# BB#22:                                # %for.body.39
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %r9
	movl	(%r9,%rax,4), %r9d
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movl	-84(%rbp), %ebx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	draw_bezier_vertical_border
	cmpl	$0, -44(%rbp)
	jne	.LBB7_24
# BB#23:                                # %if.then.43
                                        #   in Loop: Header=BB7_21 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-108(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB7_24:                               # %if.end.48
                                        #   in Loop: Header=BB7_21 Depth=1
	jmp	.LBB7_25
.LBB7_25:                               # %for.inc.49
                                        #   in Loop: Header=BB7_21 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_21
.LBB7_26:                               # %for.end.51
	movl	$0, -48(%rbp)
.LBB7_27:                               # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB7_32
# BB#28:                                # %for.body.55
                                        #   in Loop: Header=BB7_27 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movslq	-48(%rbp), %rax
	movq	-64(%rbp), %r9
	movl	(%r9,%rax,4), %r9d
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movl	-84(%rbp), %ebx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	draw_bezier_horizontal_border
	cmpl	$0, -44(%rbp)
	jne	.LBB7_30
# BB#29:                                # %if.then.59
                                        #   in Loop: Header=BB7_27 Depth=1
	movl	-48(%rbp), %eax
	addl	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-108(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB7_30:                               # %if.end.65
                                        #   in Loop: Header=BB7_27 Depth=1
	jmp	.LBB7_31
.LBB7_31:                               # %for.inc.66
                                        #   in Loop: Header=BB7_27 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_27
.LBB7_32:                               # %for.end.68
	jmp	.LBB7_34
.LBB7_33:                               # %if.else.69
	movabsq	$.L.str.28, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_quit
.LBB7_34:                               # %if.end.71
	jmp	.LBB7_35
.LBB7_35:                               # %if.end.72
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	globals+144, %rcx
	movq	%rcx, %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_free
	movq	globals+152, %rcx
	movq	%rcx, %rdi
	callq	g_free
.LBB7_36:                               # %return
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	draw_jigsaw, .Lfunc_end7-draw_jigsaw
	.cfi_endproc

	.align	16, 0x90
	.type	free_cache,@function
free_cache:                             # @free_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	config+12, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	cmpl	$4, -4(%rbp)
	jge	.LBB8_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	globals(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	globals+32(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	globals+64(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	globals+96(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$0, -8(%rbp)
.LBB8_3:                                # %for.cond.7
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB8_6
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB8_3 Depth=2
	movslq	-8(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	globals+160(,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-8(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	globals+192(,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-8(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	globals+224(,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-8(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	globals+256(,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-8(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	globals+288(,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-8(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	globals+320(,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-8(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	globals+352(,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-8(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	globals+384(,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB8_3
.LBB8_6:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	globals+160(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	globals+192(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	globals+224(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	globals+256(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	globals+288(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	globals+320(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	globals+352(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
	movslq	-4(%rbp), %rax
	movq	globals+384(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#7:                                 # %for.inc.58
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_1
.LBB8_8:                                # %for.end.60
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	free_cache, .Lfunc_end8-free_cache
	.cfi_endproc

	.align	16, 0x90
	.type	generate_grid,@function
generate_grid:                          # @generate_grid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -40(%rbp)
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -48(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	movl	%eax, -52(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -56(%rbp)
	movl	-8(%rbp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	-16(%rbp)
	movl	%edx, -60(%rbp)
	movl	-48(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movl	-52(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	$0, -36(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-64(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-48(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movl	$0, -72(%rbp)
.LBB9_5:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
	cmpl	$0, -56(%rbp)
	je	.LBB9_11
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB9_5 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %for.cond.4
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB9_10
# BB#8:                                 # %for.body.6
                                        #   in Loop: Header=BB9_7 Depth=2
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$1, %edx
	movl	%edx, (%rcx,%rax,4)
# BB#9:                                 # %for.inc.10
                                        #   in Loop: Header=BB9_7 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_7
.LBB9_10:                               # %for.end.12
                                        #   in Loop: Header=BB9_5 Depth=1
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_5
.LBB9_11:                               # %while.end
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	$0, -36(%rbp)
.LBB9_12:                               # %for.cond.17
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB9_15
# BB#13:                                # %for.body.19
                                        #   in Loop: Header=BB9_12 Depth=1
	movl	-68(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-52(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
# BB#14:                                # %for.inc.23
                                        #   in Loop: Header=BB9_12 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_12
.LBB9_15:                               # %for.end.25
	movl	$0, -72(%rbp)
.LBB9_16:                               # %while.cond.26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_18 Depth 2
	cmpl	$0, -60(%rbp)
	je	.LBB9_22
# BB#17:                                # %while.body.28
                                        #   in Loop: Header=BB9_16 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB9_18:                               # %for.cond.29
                                        #   Parent Loop BB9_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB9_21
# BB#19:                                # %for.body.31
                                        #   in Loop: Header=BB9_18 Depth=2
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$1, %edx
	movl	%edx, (%rcx,%rax,4)
# BB#20:                                # %for.inc.35
                                        #   in Loop: Header=BB9_18 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_18
.LBB9_21:                               # %for.end.37
                                        #   in Loop: Header=BB9_16 Depth=1
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_16
.LBB9_22:                               # %while.end.40
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movslq	-44(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	generate_grid, .Lfunc_end9-generate_grid
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI10_1:
	.quad	4597094355634707497     # double 0.22
.LCPI10_2:
	.quad	4598175219545276416     # double 0.25
.LCPI10_3:
	.quad	4596672818709585619     # double 0.20830000000000001
.LCPI10_4:
	.quad	4590666818246524325     # double 0.083299999999999999
.LCPI10_5:
	.quad	4602077138262430214     # double 0.46660000000000001
	.text
	.align	16, 0x90
	.type	init_right_bump,@function
init_right_bump:                        # @init_right_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-64(%rbp), %rax
	leaq	-48(%rbp), %rcx
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_4, %xmm4        # xmm4 = mem[0],zero
	movl	$8, %edx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	config, %esi
	movl	%esi, -16(%rbp)
	movl	config+4, %esi
	movl	%esi, -20(%rbp)
	movl	globals+132, %esi
	movl	%esi, -24(%rbp)
	movl	$0, -68(%rbp)
	movl	-4(%rbp), %esi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -108(%rbp)        # 4-byte Spill
	cltd
	idivl	-16(%rbp)
	movl	%eax, -72(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	-80(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %eax
	movl	%eax, -88(%rbp)
	movl	config+12, %eax
	movl	%eax, -92(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -48(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -44(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm4
	cvtsi2sdl	-72(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -40(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm3
	cvtsi2sdl	-72(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -36(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -64(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	movaps	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -56(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movq	globals+8, %r8
	movq	globals+72, %r9
	movq	%rcx, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	movq	%r8, %rcx
	movq	%r9, %r8
	callq	generate_bezier
	movl	$0, -12(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+168, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+232, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movl	-92(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-92(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-92(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-92(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	$0, -12(%rbp)
.LBB10_5:                               # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB10_8
# BB#6:                                 # %for.body.63
                                        #   in Loop: Header=BB10_5 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+296, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+360, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#7:                                 # %for.inc.78
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_5
.LBB10_8:                               # %for.end.80
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_5, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_4, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -48(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm4
	cvtsi2sdl	-72(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -44(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm3
	cvtsi2sdl	-72(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -40(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -36(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	movaps	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -64(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -56(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %edx
	movq	globals+40, %rcx
	movq	globals+104, %r8
	callq	generate_bezier
	movl	$0, -12(%rbp)
.LBB10_9:                               # %for.cond.121
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB10_12
# BB#10:                                # %for.body.124
                                        #   in Loop: Header=BB10_9 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+200, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+264, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#11:                                # %for.inc.139
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_9
.LBB10_12:                              # %for.end.141
	movl	-92(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movl	-92(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movl	-92(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-92(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movl	$0, -12(%rbp)
.LBB10_13:                              # %for.cond.150
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB10_16
# BB#14:                                # %for.body.153
                                        #   in Loop: Header=BB10_13 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+328, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+392, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#15:                                # %for.inc.168
                                        #   in Loop: Header=BB10_13 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_13
.LBB10_16:                              # %for.end.170
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	init_right_bump, .Lfunc_end10-init_right_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI11_1:
	.quad	4597094355634707497     # double 0.22
.LCPI11_2:
	.quad	4598175219545276416     # double 0.25
.LCPI11_3:
	.quad	4596672818709585619     # double 0.20830000000000001
.LCPI11_4:
	.quad	4590666818246524325     # double 0.083299999999999999
.LCPI11_5:
	.quad	4602077138262430214     # double 0.46660000000000001
	.text
	.align	16, 0x90
	.type	init_left_bump,@function
init_left_bump:                         # @init_left_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-64(%rbp), %rax
	leaq	-48(%rbp), %rcx
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_4, %xmm4        # xmm4 = mem[0],zero
	movl	$8, %edx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	config, %esi
	movl	%esi, -16(%rbp)
	movl	config+4, %esi
	movl	%esi, -20(%rbp)
	movl	globals+128, %esi
	movl	%esi, -24(%rbp)
	movl	$0, -68(%rbp)
	movl	-4(%rbp), %esi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -108(%rbp)        # 4-byte Spill
	cltd
	idivl	-16(%rbp)
	movl	%eax, -72(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	-80(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %eax
	movl	%eax, -88(%rbp)
	movl	config+12, %eax
	movl	%eax, -92(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -48(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	subsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -44(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm4
	cvtsi2sdl	-72(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	subsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -40(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm3
	cvtsi2sdl	-72(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	subsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -36(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -64(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	movaps	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -56(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movq	globals, %r8
	movq	globals+64, %r9
	movq	%rcx, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	movq	%r8, %rcx
	movq	%r9, %r8
	callq	generate_bezier
	movl	$0, -12(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+160, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+224, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movl	-92(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-92(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-92(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-92(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -12(%rbp)
.LBB11_5:                               # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB11_8
# BB#6:                                 # %for.body.63
                                        #   in Loop: Header=BB11_5 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+288, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+352, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#7:                                 # %for.inc.78
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_5
.LBB11_8:                               # %for.end.80
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_5, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_4, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_2, %xmm4        # xmm4 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	subsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -48(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm4
	cvtsi2sdl	-72(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	subsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -44(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm3
	cvtsi2sdl	-72(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	subsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -40(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -36(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	movaps	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -64(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -56(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %edx
	movq	globals+32, %rcx
	movq	globals+96, %r8
	callq	generate_bezier
	movl	$0, -12(%rbp)
.LBB11_9:                               # %for.cond.121
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB11_12
# BB#10:                                # %for.body.124
                                        #   in Loop: Header=BB11_9 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+192, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+256, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#11:                                # %for.inc.139
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_9
.LBB11_12:                              # %for.end.141
	movl	-92(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movl	-92(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movl	-92(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-92(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -12(%rbp)
.LBB11_13:                              # %for.cond.150
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB11_16
# BB#14:                                # %for.body.153
                                        #   in Loop: Header=BB11_13 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+320, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+384, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#15:                                # %for.inc.168
                                        #   in Loop: Header=BB11_13 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_13
.LBB11_16:                              # %for.end.170
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	init_left_bump, .Lfunc_end11-init_left_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4598175219545276416     # double 0.25
.LCPI12_1:
	.quad	4596672818709585619     # double 0.20830000000000001
.LCPI12_2:
	.quad	4590666818246524325     # double 0.083299999999999999
.LCPI12_3:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI12_4:
	.quad	4597094355634707497     # double 0.22
.LCPI12_5:
	.quad	4602077138262430214     # double 0.46660000000000001
	.text
	.align	16, 0x90
	.type	init_up_bump,@function
init_up_bump:                           # @init_up_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-64(%rbp), %rax
	leaq	-48(%rbp), %rcx
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI12_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI12_4, %xmm4        # xmm4 = mem[0],zero
	movl	$8, %edx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	config, %esi
	movl	%esi, -16(%rbp)
	movl	config+4, %esi
	movl	%esi, -20(%rbp)
	movl	globals+136, %esi
	movl	%esi, -24(%rbp)
	movl	$0, -68(%rbp)
	movl	-4(%rbp), %esi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -108(%rbp)        # 4-byte Spill
	cltd
	idivl	-16(%rbp)
	movl	%eax, -72(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	-80(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %eax
	movl	%eax, -88(%rbp)
	movl	config+12, %eax
	movl	%eax, -92(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -48(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -44(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	subsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -40(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm4
	cvtsi2sdl	-72(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -36(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm3
	cvtsi2sdl	-76(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	subsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -56(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movq	globals+16, %r8
	movq	globals+80, %r9
	movq	%rcx, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	movq	%r8, %rcx
	movq	%r9, %r8
	callq	generate_bezier
	movl	$0, -12(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+176, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+240, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	movl	-92(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-92(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-92(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-92(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -12(%rbp)
.LBB12_5:                               # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB12_8
# BB#6:                                 # %for.body.63
                                        #   in Loop: Header=BB12_5 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+304, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+368, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#7:                                 # %for.inc.78
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_5
.LBB12_8:                               # %for.end.80
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI12_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI12_5, %xmm4        # xmm4 = mem[0],zero
	cvtsi2sdl	-84(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -48(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -44(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm4
	cvtsi2sdl	-72(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -40(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -36(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm3
	cvtsi2sdl	-76(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	subsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -64(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -56(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %edx
	movq	globals+48, %rcx
	movq	globals+112, %r8
	callq	generate_bezier
	movl	$0, -12(%rbp)
.LBB12_9:                               # %for.cond.121
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB12_12
# BB#10:                                # %for.body.124
                                        #   in Loop: Header=BB12_9 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+208, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+272, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#11:                                # %for.inc.139
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_9
.LBB12_12:                              # %for.end.141
	movl	-92(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-92(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movl	-92(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-92(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	$0, -12(%rbp)
.LBB12_13:                              # %for.cond.150
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB12_16
# BB#14:                                # %for.body.153
                                        #   in Loop: Header=BB12_13 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+336, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+400, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#15:                                # %for.inc.168
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_13
.LBB12_16:                              # %for.end.170
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	init_up_bump, .Lfunc_end12-init_up_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4598175219545276416     # double 0.25
.LCPI13_1:
	.quad	4596672818709585619     # double 0.20830000000000001
.LCPI13_2:
	.quad	4590666818246524325     # double 0.083299999999999999
.LCPI13_3:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI13_4:
	.quad	4597094355634707497     # double 0.22
.LCPI13_5:
	.quad	4602077138262430214     # double 0.46660000000000001
	.text
	.align	16, 0x90
	.type	init_down_bump,@function
init_down_bump:                         # @init_down_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-64(%rbp), %rax
	leaq	-48(%rbp), %rcx
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI13_4, %xmm4        # xmm4 = mem[0],zero
	movl	$8, %edx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	config, %esi
	movl	%esi, -16(%rbp)
	movl	config+4, %esi
	movl	%esi, -20(%rbp)
	movl	globals+140, %esi
	movl	%esi, -24(%rbp)
	movl	$0, -68(%rbp)
	movl	-4(%rbp), %esi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -108(%rbp)        # 4-byte Spill
	cltd
	idivl	-16(%rbp)
	movl	%eax, -72(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	-80(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %eax
	movl	%eax, -88(%rbp)
	movl	config+12, %eax
	movl	%eax, -92(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -48(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -44(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	subsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -40(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm4
	cvtsi2sdl	-72(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -36(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm3
	cvtsi2sdl	-76(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -56(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movq	globals+24, %r8
	movq	globals+88, %r9
	movq	%rcx, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	movq	%r8, %rcx
	movq	%r9, %r8
	callq	generate_bezier
	movl	$0, -12(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+184, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+248, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	movl	-92(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-92(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-92(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-92(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	$0, -12(%rbp)
.LBB13_5:                               # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB13_8
# BB#6:                                 # %for.body.63
                                        #   in Loop: Header=BB13_5 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+312, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+376, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#7:                                 # %for.inc.78
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB13_5
.LBB13_8:                               # %for.end.80
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movsd	.LCPI13_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI13_5, %xmm4        # xmm4 = mem[0],zero
	cvtsi2sdl	-84(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm7, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -48(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm5
	cvtsi2sdl	-72(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, -44(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm4
	cvtsi2sdl	-72(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -40(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -36(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm3
	cvtsi2sdl	-76(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -64(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -56(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %edx
	movq	globals+56, %rcx
	movq	globals+120, %r8
	callq	generate_bezier
	movl	$0, -12(%rbp)
.LBB13_9:                               # %for.cond.121
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB13_12
# BB#10:                                # %for.body.124
                                        #   in Loop: Header=BB13_9 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+216, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+280, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#11:                                # %for.inc.139
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB13_9
.LBB13_12:                              # %for.end.141
	movl	-92(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-92(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movl	-92(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-92(%rbp), %eax
	movl	-64(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	movl	$0, -12(%rbp)
.LBB13_13:                              # %for.cond.150
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB13_16
# BB#14:                                # %for.body.153
                                        #   in Loop: Header=BB13_13 Depth=1
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	movl	-24(%rbp), %edx
	movslq	-12(%rbp), %rcx
	movq	globals+344, %r8
	movq	(%r8,%rcx,8), %rcx
	movslq	-12(%rbp), %r8
	movq	globals+408, %r9
	movq	(%r9,%r8,8), %r8
	callq	generate_bezier
# BB#15:                                # %for.inc.168
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB13_13
.LBB13_16:                              # %for.end.170
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	init_down_bump, .Lfunc_end13-init_down_bump
	.cfi_endproc

	.align	16, 0x90
	.type	draw_vertical_border,@function
draw_vertical_border:                   # @draw_vertical_border
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movl	$8, %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movl	%eax, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cltd
	idivl	%r11d
	movl	%eax, -64(%rbp)
	imull	$3, -64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	-64(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -72(%rbp)
	movl	$0, -108(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	$0, -52(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_5 Depth 2
                                        #     Child Loop BB14_10 Depth 2
                                        #     Child Loop BB14_15 Depth 2
                                        #     Child Loop BB14_22 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB14_27
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%edi, %edi
	movl	$2, %esi
	callq	g_random_int_range
	leaq	-88(%rbp), %r9
	leaq	-80(%rbp), %r8
	movl	%eax, -132(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -80(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %eax
	addl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	draw_vertical_line
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	%eax, -104(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	%eax, -100(%rbp)
	cmpl	$0, -132(%rbp)
	jne	.LBB14_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$2, %eax
	addl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB14_4:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -56(%rbp)
.LBB14_5:                               # %for.cond.19
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB14_8
# BB#6:                                 # %for.body.22
                                        #   in Loop: Header=BB14_5 Depth=2
	leaq	-104(%rbp), %r9
	leaq	-80(%rbp), %r8
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -100(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -92(%rbp)
	movl	-28(%rbp), %eax
	subl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	darken_vertical_line
	leaq	-96(%rbp), %r9
	leaq	-80(%rbp), %r8
	movl	-28(%rbp), %eax
	addl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	lighten_vertical_line
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB14_5 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB14_5
.LBB14_8:                               # %for.end
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB14_14
# BB#9:                                 # %if.then.42
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-108(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	globals+132, %r9d
	movl	%r9d, -136(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	draw_right_bump
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movl	$0, -56(%rbp)
.LBB14_10:                              # %for.cond.44
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB14_13
# BB#11:                                # %for.body.47
                                        #   in Loop: Header=BB14_10 Depth=2
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-108(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	globals+132, %r9d
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-56(%rbp), %r10d
	movl	%r9d, -140(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	darken_right_bump
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-108(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	globals+132, %r9d
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-56(%rbp), %r10d
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	lighten_right_bump
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
# BB#12:                                # %for.inc.51
                                        #   in Loop: Header=BB14_10 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB14_10
.LBB14_13:                              # %for.end.53
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_19
.LBB14_14:                              # %if.else
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-108(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	globals+128, %r9d
	movl	%r9d, -148(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	draw_left_bump
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movl	$0, -56(%rbp)
.LBB14_15:                              # %for.cond.55
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB14_18
# BB#16:                                # %for.body.58
                                        #   in Loop: Header=BB14_15 Depth=2
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-108(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	globals+128, %r9d
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-56(%rbp), %r10d
	movl	%r9d, -152(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	darken_left_bump
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-108(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	globals+128, %r9d
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-56(%rbp), %r10d
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	lighten_left_bump
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
# BB#17:                                # %for.inc.62
                                        #   in Loop: Header=BB14_15 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB14_15
.LBB14_18:                              # %for.end.64
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_19
.LBB14_19:                              # %if.end.65
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	-88(%rbp), %r9
	leaq	-80(%rbp), %r8
	movl	-28(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -80(%rbp)
	movl	-108(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -88(%rbp)
	movslq	-52(%rbp), %rcx
	movq	globals+152, %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	draw_vertical_line
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	%eax, -104(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	%eax, -100(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB14_21
# BB#20:                                # %if.then.81
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$2, %eax
	movl	-104(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -104(%rbp)
.LBB14_21:                              # %if.end.85
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -56(%rbp)
.LBB14_22:                              # %for.cond.86
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB14_25
# BB#23:                                # %for.body.89
                                        #   in Loop: Header=BB14_22 Depth=2
	leaq	-104(%rbp), %r9
	leaq	-80(%rbp), %r8
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -100(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -92(%rbp)
	movl	-28(%rbp), %eax
	subl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	darken_vertical_line
	leaq	-96(%rbp), %r9
	leaq	-80(%rbp), %r8
	movl	-28(%rbp), %eax
	addl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %ecx
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	lighten_vertical_line
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
# BB#24:                                # %for.inc.109
                                        #   in Loop: Header=BB14_22 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB14_22
.LBB14_25:                              # %for.end.111
                                        #   in Loop: Header=BB14_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	globals+152, %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -108(%rbp)
# BB#26:                                # %for.inc.114
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB14_1
.LBB14_27:                              # %for.end.116
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	draw_vertical_border, .Lfunc_end14-draw_vertical_border
	.cfi_endproc

	.align	16, 0x90
	.type	draw_horizontal_border,@function
draw_horizontal_border:                 # @draw_horizontal_border
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	16(%rbp), %eax
	movl	$8, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	%r10d
	movl	%eax, -56(%rbp)
	imull	$3, -56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	-56(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	$0, -100(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	$0, -44(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_5 Depth 2
                                        #     Child Loop BB15_10 Depth 2
                                        #     Child Loop BB15_15 Depth 2
                                        #     Child Loop BB15_22 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB15_27
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%edi, %edi
	movl	$2, %esi
	callq	g_random_int_range
	leaq	-80(%rbp), %r9
	leaq	-72(%rbp), %r8
	movl	%eax, -124(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-100(%rbp), %eax
	addl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	draw_horizontal_line
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	%eax, -88(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	%eax, -84(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB15_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	addl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB15_4:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$0, -48(%rbp)
.LBB15_5:                               # %for.cond.19
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB15_8
# BB#6:                                 # %for.body.22
                                        #   in Loop: Header=BB15_5 Depth=2
	leaq	-80(%rbp), %r9
	leaq	-88(%rbp), %r8
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -84(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -92(%rbp)
	movl	-24(%rbp), %eax
	subl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	darken_horizontal_line
	leaq	-80(%rbp), %r9
	leaq	-96(%rbp), %r8
	movl	-24(%rbp), %eax
	addl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	lighten_horizontal_line
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB15_5 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB15_5
.LBB15_8:                               # %for.end
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$0, -124(%rbp)
	je	.LBB15_14
# BB#9:                                 # %if.then.42
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-100(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	globals+136, %r9d
	movl	%r9d, -128(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	draw_up_bump
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movl	$0, -48(%rbp)
.LBB15_10:                              # %for.cond.44
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB15_13
# BB#11:                                # %for.body.47
                                        #   in Loop: Header=BB15_10 Depth=2
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-100(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	globals+136, %r9d
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-48(%rbp), %r10d
	movl	%r9d, -132(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	darken_up_bump
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-100(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	globals+136, %r9d
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-48(%rbp), %r10d
	movl	%r9d, -136(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	lighten_up_bump
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
# BB#12:                                # %for.inc.51
                                        #   in Loop: Header=BB15_10 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB15_10
.LBB15_13:                              # %for.end.53
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_19
.LBB15_14:                              # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-100(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	globals+140, %r9d
	movl	%r9d, -140(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	draw_down_bump
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movl	$0, -48(%rbp)
.LBB15_15:                              # %for.cond.55
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB15_18
# BB#16:                                # %for.body.58
                                        #   in Loop: Header=BB15_15 Depth=2
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-100(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	globals+140, %r9d
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-48(%rbp), %r10d
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	darken_down_bump
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-100(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	globals+140, %r9d
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-48(%rbp), %r10d
	movl	%r9d, -148(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	lighten_down_bump
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
# BB#17:                                # %for.inc.62
                                        #   in Loop: Header=BB15_15 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB15_15
.LBB15_18:                              # %for.end.64
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_19
.LBB15_19:                              # %if.end.65
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-80(%rbp), %r9
	leaq	-72(%rbp), %r8
	movl	-100(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
	movslq	-44(%rbp), %rcx
	movq	globals+144, %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -68(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	draw_horizontal_line
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	%eax, -88(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	%eax, -84(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.LBB15_21
# BB#20:                                # %if.then.81
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	-88(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -88(%rbp)
.LBB15_21:                              # %if.end.85
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$0, -48(%rbp)
.LBB15_22:                              # %for.cond.86
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB15_25
# BB#23:                                # %for.body.89
                                        #   in Loop: Header=BB15_22 Depth=2
	leaq	-80(%rbp), %r9
	leaq	-88(%rbp), %r8
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -84(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -92(%rbp)
	movl	-24(%rbp), %eax
	subl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	darken_horizontal_line
	leaq	-80(%rbp), %r9
	leaq	-96(%rbp), %r8
	movl	-24(%rbp), %eax
	addl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	lighten_horizontal_line
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
# BB#24:                                # %for.inc.109
                                        #   in Loop: Header=BB15_22 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB15_22
.LBB15_25:                              # %for.end.111
                                        #   in Loop: Header=BB15_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	globals+144, %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -100(%rbp)
# BB#26:                                # %for.inc.114
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_1
.LBB15_27:                              # %for.end.116
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	draw_horizontal_border, .Lfunc_end15-draw_horizontal_border
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI16_1:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI16_2:
	.quad	4608083138725491507     # double 1.2
.LCPI16_3:
	.quad	4587366580439587226     # double 0.050000000000000003
	.text
	.align	16, 0x90
	.type	draw_bezier_vertical_border,@function
draw_bezier_vertical_border:            # @draw_bezier_vertical_border
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$232, %rsp
.Ltmp63:
	.cfi_offset %rbx, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movl	$4, %r14d
	movl	%r14d, %r15d
	movl	$8, %r14d
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%ebx, -56(%rbp)
	movl	%r11d, -60(%rbp)
	movl	%r10d, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movl	%eax, -76(%rbp)
	movl	-40(%rbp), %eax
	cltd
	idivl	-56(%rbp)
	movl	%eax, -88(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	-60(%rbp)
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	cltd
	idivl	%r14d
	movl	%eax, -96(%rbp)
	imull	$3, -96(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -104(%rbp)
	movl	$0, -148(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movslq	-76(%rbp), %rdi
	movq	%r15, %rsi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -184(%rbp)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -192(%rbp)
	movl	$0, -80(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
                                        #     Child Loop BB16_10 Depth 2
                                        #     Child Loop BB16_15 Depth 2
                                        #     Child Loop BB16_22 Depth 2
	movl	-80(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB16_27
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	xorl	%edi, %edi
	movl	$2, %esi
	callq	g_random_int_range
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI16_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI16_3, %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -172(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	%eax, -128(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm4
	cvtsi2sdl	-88(%rbp), %xmm5
	movaps	%xmm3, %xmm6
	mulsd	%xmm5, %xmm6
	mulsd	%xmm2, %xmm6
	addsd	%xmm6, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -124(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm4
	cvtsi2sdl	-88(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -120(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -144(%rbp)
	cvtsi2sdl	-148(%rbp), %xmm2
	cvtsi2sdl	-92(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -140(%rbp)
	cvtsi2sdl	-148(%rbp), %xmm1
	cvtsi2sdl	-92(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -136(%rbp)
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -132(%rbp)
	cmpl	$0, -172(%rbp)
	je	.LBB16_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	.LCPI16_3, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	cvtsi2sdl	-88(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -124(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm1
	cvtsi2sdl	-88(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -120(%rbp)
.LBB16_4:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	leaq	-144(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	movl	-76(%rbp), %edx
	movq	-184(%rbp), %rcx
	movq	-192(%rbp), %r8
	callq	generate_bezier
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movq	-184(%rbp), %r9
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	callq	draw_bezier_line
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movl	$0, -84(%rbp)
.LBB16_5:                               # %for.cond.52
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB16_8
# BB#6:                                 # %for.body.55
                                        #   in Loop: Header=BB16_5 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-84(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -128(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movq	-184(%rbp), %r10
	movq	-192(%rbp), %r11
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%r9d, -196(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	darken_bezier_line
	xorl	%r9d, %r9d
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-76(%rbp), %eax
	movq	-184(%rbp), %r10
	movq	-192(%rbp), %r11
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	lighten_bezier_line
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB16_5 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB16_5
.LBB16_8:                               # %for.end
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB16_14
# BB#9:                                 # %if.then.65
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+132, %r9d
	movl	%r9d, -200(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	draw_right_bump
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movl	$0, -84(%rbp)
.LBB16_10:                              # %for.cond.67
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB16_13
# BB#11:                                # %for.body.70
                                        #   in Loop: Header=BB16_10 Depth=2
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+132, %r9d
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-84(%rbp), %r10d
	movl	%r9d, -204(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	darken_right_bump
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+132, %r9d
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-84(%rbp), %r10d
	movl	%r9d, -208(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	lighten_right_bump
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
# BB#12:                                # %for.inc.74
                                        #   in Loop: Header=BB16_10 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB16_10
.LBB16_13:                              # %for.end.76
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_19
.LBB16_14:                              # %if.else
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+128, %r9d
	movl	%r9d, -212(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	draw_left_bump
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movl	$0, -84(%rbp)
.LBB16_15:                              # %for.cond.78
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB16_18
# BB#16:                                # %for.body.81
                                        #   in Loop: Header=BB16_15 Depth=2
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+128, %r9d
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-84(%rbp), %r10d
	movl	%r9d, -216(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	darken_left_bump
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+128, %r9d
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-84(%rbp), %r10d
	movl	%r9d, -220(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	lighten_left_bump
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
# BB#17:                                # %for.inc.85
                                        #   in Loop: Header=BB16_15 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB16_15
.LBB16_18:                              # %for.end.87
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_19
.LBB16_19:                              # %if.end.88
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI16_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI16_3, %xmm3        # xmm3 = mem[0],zero
	movl	-52(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	%eax, -128(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm4
	cvtsi2sdl	-88(%rbp), %xmm5
	movaps	%xmm3, %xmm6
	mulsd	%xmm5, %xmm6
	mulsd	%xmm2, %xmm6
	addsd	%xmm6, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -124(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm4
	cvtsi2sdl	-88(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -120(%rbp)
	movl	-148(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-148(%rbp), %eax
	addl	-104(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	cvtsi2sdl	-92(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -140(%rbp)
	movl	-148(%rbp), %eax
	addl	-104(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-92(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -136(%rbp)
	movslq	-80(%rbp), %rcx
	movq	globals+152, %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -132(%rbp)
	cmpl	$0, -172(%rbp)
	je	.LBB16_21
# BB#20:                                # %if.then.124
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	.LCPI16_3, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	cvtsi2sdl	-88(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -124(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm1
	cvtsi2sdl	-88(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -120(%rbp)
.LBB16_21:                              # %if.end.137
                                        #   in Loop: Header=BB16_1 Depth=1
	leaq	-144(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	movl	-76(%rbp), %edx
	movq	-184(%rbp), %rcx
	movq	-192(%rbp), %r8
	callq	generate_bezier
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movq	-184(%rbp), %r9
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	callq	draw_bezier_line
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movl	$0, -84(%rbp)
.LBB16_22:                              # %for.cond.140
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB16_25
# BB#23:                                # %for.body.143
                                        #   in Loop: Header=BB16_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-84(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -128(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movq	-184(%rbp), %r10
	movq	-192(%rbp), %r11
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%r9d, -224(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	darken_bezier_line
	xorl	%r9d, %r9d
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-76(%rbp), %eax
	movq	-184(%rbp), %r10
	movq	-192(%rbp), %r11
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	lighten_bezier_line
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
# BB#24:                                # %for.inc.152
                                        #   in Loop: Header=BB16_22 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB16_22
.LBB16_25:                              # %for.end.154
                                        #   in Loop: Header=BB16_1 Depth=1
	movslq	-80(%rbp), %rax
	movq	globals+152, %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -148(%rbp)
# BB#26:                                # %for.inc.157
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB16_1
.LBB16_27:                              # %for.end.159
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$232, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	draw_bezier_vertical_border, .Lfunc_end16-draw_bezier_vertical_border
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4608083138725491507     # double 1.2
.LCPI17_1:
	.quad	4587366580439587226     # double 0.050000000000000003
.LCPI17_2:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI17_3:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.align	16, 0x90
	.type	draw_bezier_horizontal_border,@function
draw_bezier_horizontal_border:          # @draw_bezier_horizontal_border
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$232, %rsp
.Ltmp69:
	.cfi_offset %rbx, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movl	$4, %r14d
	movl	%r14d, %r15d
	movl	$8, %r14d
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%ebx, -56(%rbp)
	movl	%r11d, -60(%rbp)
	movl	%r10d, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movl	%eax, -76(%rbp)
	movl	-40(%rbp), %eax
	cltd
	idivl	-56(%rbp)
	movl	%eax, -88(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	-60(%rbp)
	movl	%eax, -92(%rbp)
	movl	-88(%rbp), %eax
	cltd
	idivl	%r14d
	movl	%eax, -96(%rbp)
	imull	$3, -96(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -104(%rbp)
	movl	$0, -148(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movslq	-76(%rbp), %rdi
	movq	%r15, %rsi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -184(%rbp)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -192(%rbp)
	movl	$0, -80(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
                                        #     Child Loop BB17_10 Depth 2
                                        #     Child Loop BB17_15 Depth 2
                                        #     Child Loop BB17_22 Depth 2
	movl	-80(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB17_27
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	xorl	%edi, %edi
	movl	$2, %esi
	callq	g_random_int_range
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI17_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI17_3, %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -172(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -128(%rbp)
	cvtsi2sdl	-148(%rbp), %xmm4
	cvtsi2sdl	-88(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -124(%rbp)
	cvtsi2sdl	-148(%rbp), %xmm3
	cvtsi2sdl	-88(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -120(%rbp)
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	%eax, -144(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm2
	cvtsi2sdl	-92(%rbp), %xmm3
	movaps	%xmm1, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -140(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm2
	cvtsi2sdl	-92(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -172(%rbp)
	jne	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	cvtsi2sdl	-92(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -140(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm1
	cvtsi2sdl	-92(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -136(%rbp)
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	leaq	-144(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	movl	-76(%rbp), %edx
	movq	-184(%rbp), %rcx
	movq	-192(%rbp), %r8
	callq	generate_bezier
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movq	-184(%rbp), %r9
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	callq	draw_bezier_line
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movl	$0, -84(%rbp)
.LBB17_5:                               # %for.cond.52
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB17_8
# BB#6:                                 # %for.body.55
                                        #   in Loop: Header=BB17_5 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-84(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -144(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-144(%rbp), %r9d
	movl	-76(%rbp), %r8d
	movq	-184(%rbp), %r10
	movq	-192(%rbp), %r11
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%r8d, -196(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	darken_bezier_line
	xorl	%r8d, %r8d
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-144(%rbp), %r9d
	movl	-76(%rbp), %eax
	movq	-184(%rbp), %r10
	movq	-192(%rbp), %r11
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	lighten_bezier_line
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB17_5 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB17_5
.LBB17_8:                               # %for.end
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB17_14
# BB#9:                                 # %if.then.65
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+136, %r9d
	movl	%r9d, -200(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	draw_up_bump
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movl	$0, -84(%rbp)
.LBB17_10:                              # %for.cond.67
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB17_13
# BB#11:                                # %for.body.70
                                        #   in Loop: Header=BB17_10 Depth=2
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+136, %r9d
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-84(%rbp), %r10d
	movl	%r9d, -204(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	darken_up_bump
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+136, %r9d
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-84(%rbp), %r10d
	movl	%r9d, -208(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	lighten_up_bump
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
# BB#12:                                # %for.inc.74
                                        #   in Loop: Header=BB17_10 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB17_10
.LBB17_13:                              # %for.end.76
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_19
.LBB17_14:                              # %if.else
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+140, %r9d
	movl	%r9d, -212(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	draw_down_bump
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movl	$0, -84(%rbp)
.LBB17_15:                              # %for.cond.78
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB17_18
# BB#16:                                # %for.body.81
                                        #   in Loop: Header=BB17_15 Depth=2
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+140, %r9d
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-84(%rbp), %r10d
	movl	%r9d, -216(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	darken_down_bump
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-148(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	globals+140, %r9d
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-84(%rbp), %r10d
	movl	%r9d, -220(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	lighten_down_bump
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
# BB#17:                                # %for.inc.85
                                        #   in Loop: Header=BB17_15 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB17_15
.LBB17_18:                              # %for.end.87
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_19
.LBB17_19:                              # %if.end.88
                                        #   in Loop: Header=BB17_1 Depth=1
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI17_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI17_3, %xmm3        # xmm3 = mem[0],zero
	movl	-148(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-148(%rbp), %eax
	addl	-104(%rbp), %eax
	cvtsi2sdl	%eax, %xmm4
	cvtsi2sdl	-88(%rbp), %xmm5
	mulsd	%xmm5, %xmm3
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -124(%rbp)
	movl	-148(%rbp), %eax
	addl	-104(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	cvtsi2sdl	-88(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -120(%rbp)
	movslq	-80(%rbp), %rcx
	movq	globals+144, %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -116(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	%eax, -144(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm2
	cvtsi2sdl	-92(%rbp), %xmm3
	movaps	%xmm1, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -140(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm2
	cvtsi2sdl	-92(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -172(%rbp)
	jne	.LBB17_21
# BB#20:                                # %if.then.124
                                        #   in Loop: Header=BB17_1 Depth=1
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	cvtsi2sdl	-92(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -140(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm1
	cvtsi2sdl	-92(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -136(%rbp)
.LBB17_21:                              # %if.end.137
                                        #   in Loop: Header=BB17_1 Depth=1
	leaq	-144(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	movl	-76(%rbp), %edx
	movq	-184(%rbp), %rcx
	movq	-192(%rbp), %r8
	callq	generate_bezier
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movq	-184(%rbp), %r9
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	callq	draw_bezier_line
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movl	$0, -84(%rbp)
.LBB17_22:                              # %for.cond.140
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB17_25
# BB#23:                                # %for.body.143
                                        #   in Loop: Header=BB17_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-84(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -144(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-144(%rbp), %r9d
	movl	-76(%rbp), %r8d
	movq	-184(%rbp), %r10
	movq	-192(%rbp), %r11
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%r8d, -224(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	darken_bezier_line
	xorl	%r8d, %r8d
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-144(%rbp), %r9d
	movl	-76(%rbp), %eax
	movq	-184(%rbp), %r10
	movq	-192(%rbp), %r11
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	lighten_bezier_line
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
# BB#24:                                # %for.inc.152
                                        #   in Loop: Header=BB17_22 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB17_22
.LBB17_25:                              # %for.end.154
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-80(%rbp), %rax
	movq	globals+144, %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -148(%rbp)
# BB#26:                                # %for.inc.157
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB17_1
.LBB17_27:                              # %for.end.159
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$232, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	draw_bezier_horizontal_border, .Lfunc_end17-draw_bezier_horizontal_border
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
.LCPI18_1:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI18_2:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	generate_bezier,@function
generate_bezier:                        # @generate_bezier
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI18_0, %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	addsd	-48(%rbp), %xmm3
	movsd	%xmm3, -48(%rbp)
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-48(%rbp), %xmm3
	movsd	%xmm3, -72(%rbp)
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-48(%rbp), %xmm3
	movsd	%xmm3, -80(%rbp)
	subsd	-48(%rbp), %xmm2
	movsd	%xmm2, -104(%rbp)
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-104(%rbp), %xmm2
	mulsd	-104(%rbp), %xmm2
	movq	-8(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm3
	mulsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	-48(%rbp), %xmm3
	mulsd	-104(%rbp), %xmm3
	mulsd	-104(%rbp), %xmm3
	movq	-8(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	-72(%rbp), %xmm3
	mulsd	-104(%rbp), %xmm3
	movq	-8(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, -88(%rbp)
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-104(%rbp), %xmm2
	mulsd	-104(%rbp), %xmm2
	movq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm3
	mulsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	-48(%rbp), %xmm3
	mulsd	-104(%rbp), %xmm3
	mulsd	-104(%rbp), %xmm3
	movq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	mulsd	-72(%rbp), %xmm1
	mulsd	-104(%rbp), %xmm1
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -96(%rbp)
	movaps	%xmm0, %xmm1
	addsd	-88(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
	addsd	-96(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	-60(%rbp), %rax
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end18:
	.size	generate_bezier, .Lfunc_end18-generate_bezier
	.cfi_endproc

	.align	16, 0x90
	.type	draw_vertical_line,@function
draw_vertical_line:                     # @draw_vertical_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-20(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %ecx
	imull	-20(%rbp), %ecx
	movl	-48(%rbp), %edx
	movq	-40(%rbp), %rdi
	imull	(%rdi), %edx
	addl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rdi
	movl	4(%rdi), %ecx
	movq	-40(%rbp), %rdi
	subl	(%rdi), %ecx
	addl	$1, %ecx
	movl	%ecx, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB19_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_3
.LBB19_3:                               # %do.body
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpl	$0, -52(%rbp)
	jl	.LBB19_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB19_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB19_6:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_7
.LBB19_7:                               # %do.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-48(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB19_1
.LBB19_9:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end19:
	.size	draw_vertical_line, .Lfunc_end19-draw_vertical_line
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	darken_vertical_line,@function
darken_vertical_line:                   # @darken_vertical_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	-20(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %ecx
	imull	-20(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movl	(%rdi), %edx
	imull	-56(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rdi
	movl	4(%rdi), %ecx
	movq	-40(%rbp), %rdi
	subl	(%rdi), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	movl	$0, -52(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB20_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_3
.LBB20_3:                               # %do.body
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB20_15
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB20_15
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB20_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	jmp	.LBB20_8
.LBB20_7:                               # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB20_8
.LBB20_8:                               # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI20_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB20_10
# BB#9:                                 # %cond.true.38
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB20_11
.LBB20_10:                              # %cond.false.46
                                        #   in Loop: Header=BB20_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB20_11
.LBB20_11:                              # %cond.end.47
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI20_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB20_13
# BB#12:                                # %cond.true.63
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB20_14
.LBB20_13:                              # %cond.false.71
                                        #   in Loop: Header=BB20_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB20_14
.LBB20_14:                              # %cond.end.72
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB20_15:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_16
.LBB20_16:                              # %do.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-56(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB20_1
.LBB20_18:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end20:
	.size	darken_vertical_line, .Lfunc_end20-darken_vertical_line
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4643176031446892544     # double 255
.LCPI21_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lighten_vertical_line,@function
lighten_vertical_line:                  # @lighten_vertical_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	-20(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %ecx
	imull	-20(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movl	(%rdi), %edx
	imull	-56(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rdi
	movl	4(%rdi), %ecx
	movq	-40(%rbp), %rdi
	subl	(%rdi), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	movl	$0, -52(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB21_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_3
.LBB21_3:                               # %do.body
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB21_15
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB21_15
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB21_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	jmp	.LBB21_8
.LBB21_7:                               # %cond.false
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB21_8
.LBB21_8:                               # %cond.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI21_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI21_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_10
# BB#9:                                 # %cond.true.38
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB21_11
.LBB21_10:                              # %cond.false.46
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB21_11
.LBB21_11:                              # %cond.end.47
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI21_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI21_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_13
# BB#12:                                # %cond.true.63
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB21_14
.LBB21_13:                              # %cond.false.71
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB21_14
.LBB21_14:                              # %cond.end.72
                                        #   in Loop: Header=BB21_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB21_15:                              # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_16
.LBB21_16:                              # %do.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-56(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB21_1
.LBB21_18:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end21:
	.size	lighten_vertical_line, .Lfunc_end21-lighten_vertical_line
	.cfi_endproc

	.align	16, 0x90
	.type	draw_right_bump,@function
draw_right_bump:                        # @draw_right_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -36(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB22_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	globals+8, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -40(%rbp)
	movslq	-36(%rbp), %rax
	movq	globals+72, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	-40(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -48(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB22_1 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB22_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB22_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB22_6:                               # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_7
.LBB22_7:                               # %do.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	globals+40, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -40(%rbp)
	movslq	-36(%rbp), %rax
	movq	globals+104, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	-40(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -48(%rbp)
# BB#8:                                 # %do.body.28
                                        #   in Loop: Header=BB22_1 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB22_11
# BB#9:                                 # %land.lhs.true.30
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB22_11
# BB#10:                                # %if.then.33
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB22_11:                              # %if.end.43
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_12
.LBB22_12:                              # %do.end.44
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_13
.LBB22_13:                              # %for.inc
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB22_1
.LBB22_14:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end22:
	.size	draw_right_bump, .Lfunc_end22-draw_right_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4608533498688228557     # double 1.3
.LCPI23_1:
	.quad	4607182418800017408     # double 1
.LCPI23_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	darken_right_bump,@function
darken_right_bump:                      # @darken_right_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$24, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	$-1, -64(%rbp)
	movl	$-1, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB23_53
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+296, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+360, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB23_35
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB23_19
# BB#4:                                 # %if.then.15
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_5
.LBB23_5:                               # %do.body
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB23_17
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB23_17
# BB#7:                                 # %if.then.21
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI23_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB23_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB23_10
.LBB23_9:                               # %cond.false
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB23_10
.LBB23_10:                              # %cond.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI23_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI23_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_12
# BB#11:                                # %cond.true.52
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB23_13
.LBB23_12:                              # %cond.false.60
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB23_13
.LBB23_13:                              # %cond.end.61
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI23_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI23_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_15
# BB#14:                                # %cond.true.77
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB23_16
.LBB23_15:                              # %cond.false.85
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB23_16
.LBB23_16:                              # %cond.end.86
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB23_17:                              # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_18
.LBB23_18:                              # %do.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_34
.LBB23_19:                              # %if.else
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_20
.LBB23_20:                              # %do.body.93
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB23_32
# BB#21:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB23_32
# BB#22:                                # %if.then.100
                                        #   in Loop: Header=BB23_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI23_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB23_24
# BB#23:                                # %cond.true.109
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	jmp	.LBB23_25
.LBB23_24:                              # %cond.false.117
                                        #   in Loop: Header=BB23_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB23_25
.LBB23_25:                              # %cond.end.118
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI23_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB23_27
# BB#26:                                # %cond.true.134
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	jmp	.LBB23_28
.LBB23_27:                              # %cond.false.142
                                        #   in Loop: Header=BB23_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB23_28
.LBB23_28:                              # %cond.end.143
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI23_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB23_30
# BB#29:                                # %cond.true.159
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	jmp	.LBB23_31
.LBB23_30:                              # %cond.false.167
                                        #   in Loop: Header=BB23_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB23_31
.LBB23_31:                              # %cond.end.168
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB23_32:                              # %if.end.175
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_33
.LBB23_33:                              # %do.end.176
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_34
.LBB23_34:                              # %if.end.177
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB23_35:                              # %if.end.178
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+328, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+392, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB23_51
# BB#36:                                # %if.then.194
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_37
.LBB23_37:                              # %do.body.195
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB23_49
# BB#38:                                # %land.lhs.true.198
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB23_49
# BB#39:                                # %if.then.202
                                        #   in Loop: Header=BB23_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI23_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB23_41
# BB#40:                                # %cond.true.212
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB23_42
.LBB23_41:                              # %cond.false.220
                                        #   in Loop: Header=BB23_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB23_42
.LBB23_42:                              # %cond.end.221
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI23_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB23_44
# BB#43:                                # %cond.true.237
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB23_45
.LBB23_44:                              # %cond.false.245
                                        #   in Loop: Header=BB23_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB23_45
.LBB23_45:                              # %cond.end.246
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI23_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB23_47
# BB#46:                                # %cond.true.262
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	jmp	.LBB23_48
.LBB23_47:                              # %cond.false.270
                                        #   in Loop: Header=BB23_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB23_48
.LBB23_48:                              # %cond.end.271
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB23_49:                              # %if.end.278
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_50
.LBB23_50:                              # %do.end.279
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB23_51:                              # %if.end.280
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_52
.LBB23_52:                              # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB23_1
.LBB23_53:                              # %for.end
	addq	$24, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	darken_right_bump, .Lfunc_end23-darken_right_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4608533498688228557     # double 1.3
.LCPI24_1:
	.quad	4643176031446892544     # double 255
.LCPI24_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lighten_right_bump,@function
lighten_right_bump:                     # @lighten_right_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$24, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	$-1, -64(%rbp)
	movl	$-1, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB24_53
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+168, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+232, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB24_35
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB24_19
# BB#4:                                 # %if.then.15
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_5
.LBB24_5:                               # %do.body
                                        #   in Loop: Header=BB24_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB24_17
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB24_17
# BB#7:                                 # %if.then.21
                                        #   in Loop: Header=BB24_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI24_2, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB24_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB24_10
.LBB24_9:                               # %cond.false
                                        #   in Loop: Header=BB24_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB24_10
.LBB24_10:                              # %cond.end
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI24_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB24_12
# BB#11:                                # %cond.true.51
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB24_13
.LBB24_12:                              # %cond.false.59
                                        #   in Loop: Header=BB24_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB24_13
.LBB24_13:                              # %cond.end.60
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI24_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB24_15
# BB#14:                                # %cond.true.76
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB24_16
.LBB24_15:                              # %cond.false.84
                                        #   in Loop: Header=BB24_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB24_16
.LBB24_16:                              # %cond.end.85
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB24_17:                              # %if.end
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_18
.LBB24_18:                              # %do.end
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_34
.LBB24_19:                              # %if.else
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_20
.LBB24_20:                              # %do.body.92
                                        #   in Loop: Header=BB24_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB24_32
# BB#21:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB24_32
# BB#22:                                # %if.then.99
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI24_2, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB24_24
# BB#23:                                # %cond.true.109
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	jmp	.LBB24_25
.LBB24_24:                              # %cond.false.117
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB24_25
.LBB24_25:                              # %cond.end.118
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI24_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI24_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB24_27
# BB#26:                                # %cond.true.134
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	jmp	.LBB24_28
.LBB24_27:                              # %cond.false.142
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB24_28
.LBB24_28:                              # %cond.end.143
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI24_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI24_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB24_30
# BB#29:                                # %cond.true.159
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	jmp	.LBB24_31
.LBB24_30:                              # %cond.false.167
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB24_31
.LBB24_31:                              # %cond.end.168
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB24_32:                              # %if.end.175
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_33
.LBB24_33:                              # %do.end.176
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_34
.LBB24_34:                              # %if.end.177
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB24_35:                              # %if.end.178
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+200, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+264, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB24_51
# BB#36:                                # %if.then.194
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_37
.LBB24_37:                              # %do.body.195
                                        #   in Loop: Header=BB24_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB24_49
# BB#38:                                # %land.lhs.true.198
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB24_49
# BB#39:                                # %if.then.202
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI24_2, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB24_41
# BB#40:                                # %cond.true.212
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB24_42
.LBB24_41:                              # %cond.false.220
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB24_42
.LBB24_42:                              # %cond.end.221
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI24_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI24_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB24_44
# BB#43:                                # %cond.true.237
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB24_45
.LBB24_44:                              # %cond.false.245
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB24_45
.LBB24_45:                              # %cond.end.246
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI24_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI24_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB24_47
# BB#46:                                # %cond.true.262
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	jmp	.LBB24_48
.LBB24_47:                              # %cond.false.270
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB24_48
.LBB24_48:                              # %cond.end.271
                                        #   in Loop: Header=BB24_1 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB24_49:                              # %if.end.278
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_50
.LBB24_50:                              # %do.end.279
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB24_51:                              # %if.end.280
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_52
.LBB24_52:                              # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB24_1
.LBB24_53:                              # %for.end
	addq	$24, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	lighten_right_bump, .Lfunc_end24-lighten_right_bump
	.cfi_endproc

	.align	16, 0x90
	.type	draw_left_bump,@function
draw_left_bump:                         # @draw_left_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -36(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB25_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	globals, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -40(%rbp)
	movslq	-36(%rbp), %rax
	movq	globals+64, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	-40(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -48(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB25_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB25_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB25_6:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_7
.LBB25_7:                               # %do.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	globals+32, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -40(%rbp)
	movslq	-36(%rbp), %rax
	movq	globals+96, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	-40(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -48(%rbp)
# BB#8:                                 # %do.body.28
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB25_11
# BB#9:                                 # %land.lhs.true.30
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB25_11
# BB#10:                                # %if.then.33
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB25_11:                              # %if.end.43
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_12
.LBB25_12:                              # %do.end.44
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_13
.LBB25_13:                              # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB25_1
.LBB25_14:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end25:
	.size	draw_left_bump, .Lfunc_end25-draw_left_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4607182418800017408     # double 1
.LCPI26_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	darken_left_bump,@function
darken_left_bump:                       # @darken_left_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	$-1, -64(%rbp)
	movl	$-1, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB26_53
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+160, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+224, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB26_18
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_4
.LBB26_4:                               # %do.body
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB26_16
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB26_16
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI26_0, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB26_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB26_9
.LBB26_8:                               # %cond.false
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB26_9
.LBB26_9:                               # %cond.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI26_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_11
# BB#10:                                # %cond.true.44
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB26_12
.LBB26_11:                              # %cond.false.52
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB26_12
.LBB26_12:                              # %cond.end.53
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI26_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_14
# BB#13:                                # %cond.true.69
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB26_15
.LBB26_14:                              # %cond.false.77
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB26_15
.LBB26_15:                              # %cond.end.78
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB26_16:                              # %if.end
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_17
.LBB26_17:                              # %do.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB26_18:                              # %if.end.85
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+192, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+256, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB26_51
# BB#19:                                # %if.then.101
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$4, %eax
	movl	-48(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB26_35
# BB#20:                                # %if.then.104
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_21
.LBB26_21:                              # %do.body.105
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB26_33
# BB#22:                                # %land.lhs.true.108
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB26_33
# BB#23:                                # %if.then.112
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI26_0, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB26_25
# BB#24:                                # %cond.true.122
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	jmp	.LBB26_26
.LBB26_25:                              # %cond.false.130
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB26_26
.LBB26_26:                              # %cond.end.131
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI26_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_28
# BB#27:                                # %cond.true.147
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	jmp	.LBB26_29
.LBB26_28:                              # %cond.false.155
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB26_29
.LBB26_29:                              # %cond.end.156
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI26_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_31
# BB#30:                                # %cond.true.172
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB26_32
.LBB26_31:                              # %cond.false.180
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB26_32
.LBB26_32:                              # %cond.end.181
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB26_33:                              # %if.end.188
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_34
.LBB26_34:                              # %do.end.189
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_50
.LBB26_35:                              # %if.else
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_36
.LBB26_36:                              # %do.body.190
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB26_48
# BB#37:                                # %land.lhs.true.193
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB26_48
# BB#38:                                # %if.then.197
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI26_0, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB26_40
# BB#39:                                # %cond.true.207
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB26_41
.LBB26_40:                              # %cond.false.215
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB26_41
.LBB26_41:                              # %cond.end.216
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI26_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI26_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB26_43
# BB#42:                                # %cond.true.232
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	jmp	.LBB26_44
.LBB26_43:                              # %cond.false.240
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB26_44
.LBB26_44:                              # %cond.end.241
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI26_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI26_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB26_46
# BB#45:                                # %cond.true.257
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	jmp	.LBB26_47
.LBB26_46:                              # %cond.false.265
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB26_47
.LBB26_47:                              # %cond.end.266
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB26_48:                              # %if.end.273
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_49
.LBB26_49:                              # %do.end.274
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_50
.LBB26_50:                              # %if.end.275
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB26_51:                              # %if.end.276
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_52
.LBB26_52:                              # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB26_1
.LBB26_53:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	darken_left_bump, .Lfunc_end26-darken_left_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4643176031446892544     # double 255
.LCPI27_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lighten_left_bump,@function
lighten_left_bump:                      # @lighten_left_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	$-1, -64(%rbp)
	movl	$-1, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB27_53
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+288, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+352, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB27_18
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_4
.LBB27_4:                               # %do.body
                                        #   in Loop: Header=BB27_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB27_16
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB27_16
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI27_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB27_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB27_9
.LBB27_8:                               # %cond.false
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB27_9
.LBB27_9:                               # %cond.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI27_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI27_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB27_11
# BB#10:                                # %cond.true.45
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB27_12
.LBB27_11:                              # %cond.false.53
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB27_12
.LBB27_12:                              # %cond.end.54
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI27_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI27_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB27_14
# BB#13:                                # %cond.true.70
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB27_15
.LBB27_14:                              # %cond.false.78
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB27_15
.LBB27_15:                              # %cond.end.79
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB27_16:                              # %if.end
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_17
.LBB27_17:                              # %do.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB27_18:                              # %if.end.86
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+320, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+384, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB27_51
# BB#19:                                # %if.then.102
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	$4, %eax
	movl	-48(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB27_35
# BB#20:                                # %if.then.105
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_21
.LBB27_21:                              # %do.body.106
                                        #   in Loop: Header=BB27_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB27_33
# BB#22:                                # %land.lhs.true.109
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB27_33
# BB#23:                                # %if.then.113
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI27_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB27_25
# BB#24:                                # %cond.true.123
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	jmp	.LBB27_26
.LBB27_25:                              # %cond.false.131
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB27_26
.LBB27_26:                              # %cond.end.132
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI27_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI27_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB27_28
# BB#27:                                # %cond.true.148
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	jmp	.LBB27_29
.LBB27_28:                              # %cond.false.156
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB27_29
.LBB27_29:                              # %cond.end.157
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI27_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI27_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB27_31
# BB#30:                                # %cond.true.173
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB27_32
.LBB27_31:                              # %cond.false.181
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB27_32
.LBB27_32:                              # %cond.end.182
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB27_33:                              # %if.end.189
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_34
.LBB27_34:                              # %do.end.190
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_50
.LBB27_35:                              # %if.else
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_36
.LBB27_36:                              # %do.body.191
                                        #   in Loop: Header=BB27_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB27_48
# BB#37:                                # %land.lhs.true.194
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB27_48
# BB#38:                                # %if.then.198
                                        #   in Loop: Header=BB27_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI27_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB27_40
# BB#39:                                # %cond.true.207
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB27_41
.LBB27_40:                              # %cond.false.215
                                        #   in Loop: Header=BB27_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB27_41
.LBB27_41:                              # %cond.end.216
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI27_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB27_43
# BB#42:                                # %cond.true.232
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	jmp	.LBB27_44
.LBB27_43:                              # %cond.false.240
                                        #   in Loop: Header=BB27_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB27_44
.LBB27_44:                              # %cond.end.241
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI27_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB27_46
# BB#45:                                # %cond.true.257
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	.LCPI27_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	jmp	.LBB27_47
.LBB27_46:                              # %cond.false.265
                                        #   in Loop: Header=BB27_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB27_47
.LBB27_47:                              # %cond.end.266
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB27_48:                              # %if.end.273
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_49
.LBB27_49:                              # %do.end.274
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_50
.LBB27_50:                              # %if.end.275
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB27_51:                              # %if.end.276
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_52
.LBB27_52:                              # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB27_1
.LBB27_53:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	lighten_left_bump, .Lfunc_end27-lighten_left_bump
	.cfi_endproc

	.align	16, 0x90
	.type	draw_horizontal_line,@function
draw_horizontal_line:                   # @draw_horizontal_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-20(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %ecx
	imull	-20(%rbp), %ecx
	movl	-48(%rbp), %edx
	movq	-40(%rbp), %rdi
	imull	(%rdi), %edx
	addl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movq	-32(%rbp), %rdi
	movl	4(%rdi), %ecx
	movq	-32(%rbp), %rdi
	subl	(%rdi), %ecx
	addl	$1, %ecx
	movl	%ecx, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB28_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB28_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB28_1 Depth=1
	jmp	.LBB28_3
.LBB28_3:                               # %do.body
                                        #   in Loop: Header=BB28_1 Depth=1
	cmpl	$0, -52(%rbp)
	jl	.LBB28_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB28_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB28_6:                               # %if.end
                                        #   in Loop: Header=BB28_1 Depth=1
	jmp	.LBB28_7
.LBB28_7:                               # %do.end
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-20(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB28_1
.LBB28_9:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end28:
	.size	draw_horizontal_line, .Lfunc_end28-draw_horizontal_line
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	darken_horizontal_line,@function
darken_horizontal_line:                 # @darken_horizontal_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	-20(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %ecx
	imull	-20(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movl	(%rdi), %edx
	imull	-56(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	movq	-32(%rbp), %rdi
	movl	4(%rdi), %ecx
	movq	-32(%rbp), %rdi
	subl	(%rdi), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	movl	$0, -52(%rbp)
.LBB29_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB29_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_3
.LBB29_3:                               # %do.body
                                        #   in Loop: Header=BB29_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB29_15
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB29_15
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB29_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI29_0, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB29_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB29_1 Depth=1
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	jmp	.LBB29_8
.LBB29_7:                               # %cond.false
                                        #   in Loop: Header=BB29_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB29_8
.LBB29_8:                               # %cond.end
                                        #   in Loop: Header=BB29_1 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI29_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB29_10
# BB#9:                                 # %cond.true.38
                                        #   in Loop: Header=BB29_1 Depth=1
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB29_11
.LBB29_10:                              # %cond.false.46
                                        #   in Loop: Header=BB29_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB29_11
.LBB29_11:                              # %cond.end.47
                                        #   in Loop: Header=BB29_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI29_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB29_13
# BB#12:                                # %cond.true.63
                                        #   in Loop: Header=BB29_1 Depth=1
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB29_14
.LBB29_13:                              # %cond.false.71
                                        #   in Loop: Header=BB29_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB29_14
.LBB29_14:                              # %cond.end.72
                                        #   in Loop: Header=BB29_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB29_15:                              # %if.end
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_16
.LBB29_16:                              # %do.end
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-20(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB29_1
.LBB29_18:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end29:
	.size	darken_horizontal_line, .Lfunc_end29-darken_horizontal_line
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4643176031446892544     # double 255
.LCPI30_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lighten_horizontal_line,@function
lighten_horizontal_line:                # @lighten_horizontal_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	-20(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %ecx
	imull	-20(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movl	(%rdi), %edx
	imull	-56(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	movq	-32(%rbp), %rdi
	movl	4(%rdi), %ecx
	movq	-32(%rbp), %rdi
	subl	(%rdi), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	movl	$0, -52(%rbp)
.LBB30_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB30_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_3
.LBB30_3:                               # %do.body
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB30_15
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB30_15
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB30_1 Depth=1
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI30_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB30_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB30_1 Depth=1
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	jmp	.LBB30_8
.LBB30_7:                               # %cond.false
                                        #   in Loop: Header=BB30_1 Depth=1
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB30_8
.LBB30_8:                               # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI30_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI30_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_10
# BB#9:                                 # %cond.true.38
                                        #   in Loop: Header=BB30_1 Depth=1
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB30_11
.LBB30_10:                              # %cond.false.46
                                        #   in Loop: Header=BB30_1 Depth=1
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB30_11
.LBB30_11:                              # %cond.end.47
                                        #   in Loop: Header=BB30_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI30_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI30_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_13
# BB#12:                                # %cond.true.63
                                        #   in Loop: Header=BB30_1 Depth=1
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB30_14
.LBB30_13:                              # %cond.false.71
                                        #   in Loop: Header=BB30_1 Depth=1
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB30_14
.LBB30_14:                              # %cond.end.72
                                        #   in Loop: Header=BB30_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB30_15:                              # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_16
.LBB30_16:                              # %do.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-20(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB30_1
.LBB30_18:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end30:
	.size	lighten_horizontal_line, .Lfunc_end30-lighten_horizontal_line
	.cfi_endproc

	.align	16, 0x90
	.type	draw_up_bump,@function
draw_up_bump:                           # @draw_up_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -36(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB31_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	globals+16, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -40(%rbp)
	movslq	-36(%rbp), %rax
	movq	globals+80, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	-40(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -48(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB31_1 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB31_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB31_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB31_6:                               # %if.end
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_7
.LBB31_7:                               # %do.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	globals+48, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -40(%rbp)
	movslq	-36(%rbp), %rax
	movq	globals+112, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	-40(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -48(%rbp)
# BB#8:                                 # %do.body.28
                                        #   in Loop: Header=BB31_1 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB31_11
# BB#9:                                 # %land.lhs.true.30
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB31_11
# BB#10:                                # %if.then.33
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB31_11:                              # %if.end.43
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_12
.LBB31_12:                              # %do.end.44
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_13
.LBB31_13:                              # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB31_1
.LBB31_14:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end31:
	.size	draw_up_bump, .Lfunc_end31-draw_up_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4607182418800017408     # double 1
.LCPI32_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	darken_up_bump,@function
darken_up_bump:                         # @darken_up_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	$-1, -64(%rbp)
	movl	$-1, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB32_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB32_53
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+176, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+240, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB32_18
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_4
.LBB32_4:                               # %do.body
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB32_16
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB32_16
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB32_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI32_0, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB32_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB32_9
.LBB32_8:                               # %cond.false
                                        #   in Loop: Header=BB32_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB32_9
.LBB32_9:                               # %cond.end
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI32_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB32_11
# BB#10:                                # %cond.true.44
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB32_12
.LBB32_11:                              # %cond.false.52
                                        #   in Loop: Header=BB32_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB32_12
.LBB32_12:                              # %cond.end.53
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI32_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB32_14
# BB#13:                                # %cond.true.69
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB32_15
.LBB32_14:                              # %cond.false.77
                                        #   in Loop: Header=BB32_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB32_15
.LBB32_15:                              # %cond.end.78
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_16:                              # %if.end
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_17
.LBB32_17:                              # %do.end
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB32_18:                              # %if.end.85
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+208, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+272, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB32_51
# BB#19:                                # %if.then.101
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$4, %eax
	movl	-48(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB32_35
# BB#20:                                # %if.then.104
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_21
.LBB32_21:                              # %do.body.105
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB32_33
# BB#22:                                # %land.lhs.true.108
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB32_33
# BB#23:                                # %if.then.112
                                        #   in Loop: Header=BB32_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI32_0, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB32_25
# BB#24:                                # %cond.true.122
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	jmp	.LBB32_26
.LBB32_25:                              # %cond.false.130
                                        #   in Loop: Header=BB32_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB32_26
.LBB32_26:                              # %cond.end.131
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI32_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB32_28
# BB#27:                                # %cond.true.147
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	jmp	.LBB32_29
.LBB32_28:                              # %cond.false.155
                                        #   in Loop: Header=BB32_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB32_29
.LBB32_29:                              # %cond.end.156
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI32_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB32_31
# BB#30:                                # %cond.true.172
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB32_32
.LBB32_31:                              # %cond.false.180
                                        #   in Loop: Header=BB32_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB32_32
.LBB32_32:                              # %cond.end.181
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_33:                              # %if.end.188
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_34
.LBB32_34:                              # %do.end.189
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_50
.LBB32_35:                              # %if.else
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_36
.LBB32_36:                              # %do.body.190
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB32_48
# BB#37:                                # %land.lhs.true.193
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB32_48
# BB#38:                                # %if.then.197
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI32_0, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB32_40
# BB#39:                                # %cond.true.207
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB32_41
.LBB32_40:                              # %cond.false.215
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB32_41
.LBB32_41:                              # %cond.end.216
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI32_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI32_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB32_43
# BB#42:                                # %cond.true.232
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	jmp	.LBB32_44
.LBB32_43:                              # %cond.false.240
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB32_44
.LBB32_44:                              # %cond.end.241
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI32_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI32_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB32_46
# BB#45:                                # %cond.true.257
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	jmp	.LBB32_47
.LBB32_46:                              # %cond.false.265
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	.LCPI32_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB32_47
.LBB32_47:                              # %cond.end.266
                                        #   in Loop: Header=BB32_1 Depth=1
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB32_48:                              # %if.end.273
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_49
.LBB32_49:                              # %do.end.274
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_50
.LBB32_50:                              # %if.end.275
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB32_51:                              # %if.end.276
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_52
.LBB32_52:                              # %for.inc
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB32_1
.LBB32_53:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	darken_up_bump, .Lfunc_end32-darken_up_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4643176031446892544     # double 255
.LCPI33_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lighten_up_bump,@function
lighten_up_bump:                        # @lighten_up_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	$-1, -64(%rbp)
	movl	$-1, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB33_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB33_53
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+304, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+368, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB33_18
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_4
.LBB33_4:                               # %do.body
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB33_16
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB33_16
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI33_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB33_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB33_9
.LBB33_8:                               # %cond.false
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB33_9
.LBB33_9:                               # %cond.end
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI33_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI33_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB33_11
# BB#10:                                # %cond.true.45
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB33_12
.LBB33_11:                              # %cond.false.53
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB33_12
.LBB33_12:                              # %cond.end.54
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI33_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI33_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB33_14
# BB#13:                                # %cond.true.70
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB33_15
.LBB33_14:                              # %cond.false.78
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB33_15
.LBB33_15:                              # %cond.end.79
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB33_16:                              # %if.end
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_17
.LBB33_17:                              # %do.end
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB33_18:                              # %if.end.86
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+336, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+400, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB33_51
# BB#19:                                # %if.then.102
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	$4, %eax
	movl	-48(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB33_35
# BB#20:                                # %if.then.105
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_21
.LBB33_21:                              # %do.body.106
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB33_33
# BB#22:                                # %land.lhs.true.109
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB33_33
# BB#23:                                # %if.then.113
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI33_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB33_25
# BB#24:                                # %cond.true.123
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	jmp	.LBB33_26
.LBB33_25:                              # %cond.false.131
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB33_26
.LBB33_26:                              # %cond.end.132
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI33_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI33_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB33_28
# BB#27:                                # %cond.true.148
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	jmp	.LBB33_29
.LBB33_28:                              # %cond.false.156
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB33_29
.LBB33_29:                              # %cond.end.157
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI33_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI33_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB33_31
# BB#30:                                # %cond.true.173
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB33_32
.LBB33_31:                              # %cond.false.181
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB33_32
.LBB33_32:                              # %cond.end.182
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB33_33:                              # %if.end.189
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_34
.LBB33_34:                              # %do.end.190
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_50
.LBB33_35:                              # %if.else
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_36
.LBB33_36:                              # %do.body.191
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB33_48
# BB#37:                                # %land.lhs.true.194
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB33_48
# BB#38:                                # %if.then.198
                                        #   in Loop: Header=BB33_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI33_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB33_40
# BB#39:                                # %cond.true.207
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB33_41
.LBB33_40:                              # %cond.false.215
                                        #   in Loop: Header=BB33_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB33_41
.LBB33_41:                              # %cond.end.216
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI33_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB33_43
# BB#42:                                # %cond.true.232
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	jmp	.LBB33_44
.LBB33_43:                              # %cond.false.240
                                        #   in Loop: Header=BB33_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB33_44
.LBB33_44:                              # %cond.end.241
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI33_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB33_46
# BB#45:                                # %cond.true.257
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	jmp	.LBB33_47
.LBB33_46:                              # %cond.false.265
                                        #   in Loop: Header=BB33_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB33_47
.LBB33_47:                              # %cond.end.266
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB33_48:                              # %if.end.273
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_49
.LBB33_49:                              # %do.end.274
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_50
.LBB33_50:                              # %if.end.275
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB33_51:                              # %if.end.276
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_52
.LBB33_52:                              # %for.inc
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB33_1
.LBB33_53:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	lighten_up_bump, .Lfunc_end33-lighten_up_bump
	.cfi_endproc

	.align	16, 0x90
	.type	draw_down_bump,@function
draw_down_bump:                         # @draw_down_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -36(%rbp)
.LBB34_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB34_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	globals+24, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -40(%rbp)
	movslq	-36(%rbp), %rax
	movq	globals+88, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	-40(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -48(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB34_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB34_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB34_6:                               # %if.end
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_7
.LBB34_7:                               # %do.end
                                        #   in Loop: Header=BB34_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	globals+56, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -40(%rbp)
	movslq	-36(%rbp), %rax
	movq	globals+120, %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	-40(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -48(%rbp)
# BB#8:                                 # %do.body.28
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB34_11
# BB#9:                                 # %land.lhs.true.30
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB34_11
# BB#10:                                # %if.then.33
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB34_11:                              # %if.end.43
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_12
.LBB34_12:                              # %do.end.44
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_13
.LBB34_13:                              # %for.inc
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB34_1
.LBB34_14:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end34:
	.size	draw_down_bump, .Lfunc_end34-draw_down_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4608083138725491507     # double 1.2
.LCPI35_1:
	.quad	4607182418800017408     # double 1
.LCPI35_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	darken_down_bump,@function
darken_down_bump:                       # @darken_down_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$24, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	$-1, -64(%rbp)
	movl	$-1, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB35_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB35_53
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+312, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+376, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB35_35
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB35_19
# BB#4:                                 # %if.then.15
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_5
.LBB35_5:                               # %do.body
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB35_17
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB35_17
# BB#7:                                 # %if.then.21
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI35_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB35_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB35_10
.LBB35_9:                               # %cond.false
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB35_10
.LBB35_10:                              # %cond.end
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI35_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI35_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_12
# BB#11:                                # %cond.true.52
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB35_13
.LBB35_12:                              # %cond.false.60
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB35_13
.LBB35_13:                              # %cond.end.61
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI35_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI35_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_15
# BB#14:                                # %cond.true.77
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB35_16
.LBB35_15:                              # %cond.false.85
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB35_16
.LBB35_16:                              # %cond.end.86
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB35_17:                              # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_18
.LBB35_18:                              # %do.end
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_34
.LBB35_19:                              # %if.else
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_20
.LBB35_20:                              # %do.body.93
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB35_32
# BB#21:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB35_32
# BB#22:                                # %if.then.100
                                        #   in Loop: Header=BB35_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI35_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB35_24
# BB#23:                                # %cond.true.109
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	jmp	.LBB35_25
.LBB35_24:                              # %cond.false.117
                                        #   in Loop: Header=BB35_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB35_25
.LBB35_25:                              # %cond.end.118
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI35_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB35_27
# BB#26:                                # %cond.true.134
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	jmp	.LBB35_28
.LBB35_27:                              # %cond.false.142
                                        #   in Loop: Header=BB35_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB35_28
.LBB35_28:                              # %cond.end.143
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI35_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB35_30
# BB#29:                                # %cond.true.159
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	jmp	.LBB35_31
.LBB35_30:                              # %cond.false.167
                                        #   in Loop: Header=BB35_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB35_31
.LBB35_31:                              # %cond.end.168
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB35_32:                              # %if.end.175
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_33
.LBB35_33:                              # %do.end.176
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_34
.LBB35_34:                              # %if.end.177
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB35_35:                              # %if.end.178
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+344, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+408, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB35_51
# BB#36:                                # %if.then.194
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_37
.LBB35_37:                              # %do.body.195
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB35_49
# BB#38:                                # %land.lhs.true.198
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB35_49
# BB#39:                                # %if.then.202
                                        #   in Loop: Header=BB35_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI35_1, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB35_41
# BB#40:                                # %cond.true.212
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB35_42
.LBB35_41:                              # %cond.false.220
                                        #   in Loop: Header=BB35_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB35_42
.LBB35_42:                              # %cond.end.221
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI35_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB35_44
# BB#43:                                # %cond.true.237
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB35_45
.LBB35_44:                              # %cond.false.245
                                        #   in Loop: Header=BB35_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB35_45
.LBB35_45:                              # %cond.end.246
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI35_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB35_47
# BB#46:                                # %cond.true.262
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	jmp	.LBB35_48
.LBB35_47:                              # %cond.false.270
                                        #   in Loop: Header=BB35_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB35_48
.LBB35_48:                              # %cond.end.271
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB35_49:                              # %if.end.278
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_50
.LBB35_50:                              # %do.end.279
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB35_51:                              # %if.end.280
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_52
.LBB35_52:                              # %for.inc
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB35_1
.LBB35_53:                              # %for.end
	addq	$24, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	darken_down_bump, .Lfunc_end35-darken_down_bump
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4608083138725491507     # double 1.2
.LCPI36_1:
	.quad	4643176031446892544     # double 255
.LCPI36_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lighten_down_bump,@function
lighten_down_bump:                      # @lighten_down_bump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$24, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	$-1, -64(%rbp)
	movl	$-1, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB36_53
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+184, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+248, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB36_35
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB36_19
# BB#4:                                 # %if.then.15
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_5
.LBB36_5:                               # %do.body
                                        #   in Loop: Header=BB36_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB36_17
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB36_17
# BB#7:                                 # %if.then.21
                                        #   in Loop: Header=BB36_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI36_2, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB36_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB36_10
.LBB36_9:                               # %cond.false
                                        #   in Loop: Header=BB36_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB36_10
.LBB36_10:                              # %cond.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI36_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB36_12
# BB#11:                                # %cond.true.51
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB36_13
.LBB36_12:                              # %cond.false.59
                                        #   in Loop: Header=BB36_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB36_13
.LBB36_13:                              # %cond.end.60
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI36_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB36_15
# BB#14:                                # %cond.true.76
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB36_16
.LBB36_15:                              # %cond.false.84
                                        #   in Loop: Header=BB36_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB36_16
.LBB36_16:                              # %cond.end.85
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB36_17:                              # %if.end
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_18
.LBB36_18:                              # %do.end
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_34
.LBB36_19:                              # %if.else
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_20
.LBB36_20:                              # %do.body.92
                                        #   in Loop: Header=BB36_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB36_32
# BB#21:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB36_32
# BB#22:                                # %if.then.99
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI36_2, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB36_24
# BB#23:                                # %cond.true.109
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	jmp	.LBB36_25
.LBB36_24:                              # %cond.false.117
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB36_25
.LBB36_25:                              # %cond.end.118
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI36_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI36_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB36_27
# BB#26:                                # %cond.true.134
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	jmp	.LBB36_28
.LBB36_27:                              # %cond.false.142
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB36_28
.LBB36_28:                              # %cond.end.143
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI36_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI36_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB36_30
# BB#29:                                # %cond.true.159
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	jmp	.LBB36_31
.LBB36_30:                              # %cond.false.167
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB36_31
.LBB36_31:                              # %cond.end.168
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB36_32:                              # %if.end.175
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_33
.LBB36_33:                              # %do.end.176
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_34
.LBB36_34:                              # %if.end.177
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB36_35:                              # %if.end.178
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+216, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	globals+280, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-52(%rbp), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB36_51
# BB#36:                                # %if.then.194
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_37
.LBB36_37:                              # %do.body.195
                                        #   in Loop: Header=BB36_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB36_49
# BB#38:                                # %land.lhs.true.198
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB36_49
# BB#39:                                # %if.then.202
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI36_2, %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB36_41
# BB#40:                                # %cond.true.212
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB36_42
.LBB36_41:                              # %cond.false.220
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB36_42
.LBB36_42:                              # %cond.end.221
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI36_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI36_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB36_44
# BB#43:                                # %cond.true.237
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB36_45
.LBB36_44:                              # %cond.false.245
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB36_45
.LBB36_45:                              # %cond.end.246
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI36_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI36_2, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB36_47
# BB#46:                                # %cond.true.262
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	jmp	.LBB36_48
.LBB36_47:                              # %cond.false.270
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB36_48
.LBB36_48:                              # %cond.end.271
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB36_49:                              # %if.end.278
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_50
.LBB36_50:                              # %do.end.279
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB36_51:                              # %if.end.280
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_52
.LBB36_52:                              # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB36_1
.LBB36_53:                              # %for.end
	addq	$24, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	lighten_down_bump, .Lfunc_end36-lighten_down_bump
	.cfi_endproc

	.align	16, 0x90
	.type	draw_bezier_line,@function
draw_bezier_line:                       # @draw_bezier_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	$0, -44(%rbp)
.LBB37_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB37_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -48(%rbp)
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %edx
	imull	-60(%rbp), %edx
	movl	-48(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -56(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB37_1 Depth=1
	cmpl	$0, -56(%rbp)
	jl	.LBB37_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB37_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
	movl	-56(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$30, (%rdx,%rcx)
.LBB37_6:                               # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_7
.LBB37_7:                               # %do.end
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_8
.LBB37_8:                               # %for.inc
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB37_1
.LBB37_9:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end37:
	.size	draw_bezier_line, .Lfunc_end37-draw_bezier_line
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI38_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	darken_bezier_line,@function
darken_bezier_line:                     # @darken_bezier_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r11d, -32(%rbp)
	movq	%r10, -40(%rbp)
	movq	%rax, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	$-1, -76(%rbp)
	movl	-20(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movl	$0, -60(%rbp)
.LBB38_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB38_20
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -64(%rbp)
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -68(%rbp)
	movl	-68(%rbp), %edx
	imull	-80(%rbp), %edx
	movl	-64(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -72(%rbp)
	movl	-72(%rbp), %edx
	cmpl	-76(%rbp), %edx
	je	.LBB38_18
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_4
.LBB38_4:                               # %do.body
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpl	$0, -72(%rbp)
	jl	.LBB38_16
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-72(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB38_16
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB38_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI38_0, %xmm1        # xmm1 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-56(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB38_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB38_1 Depth=1
	movsd	.LCPI38_0, %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-56(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB38_9
.LBB38_8:                               # %cond.false
                                        #   in Loop: Header=BB38_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB38_9
.LBB38_9:                               # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI38_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movb	%al, %cl
	movl	-72(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-56(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB38_11
# BB#10:                                # %cond.true.40
                                        #   in Loop: Header=BB38_1 Depth=1
	movsd	.LCPI38_0, %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-56(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB38_12
.LBB38_11:                              # %cond.false.48
                                        #   in Loop: Header=BB38_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB38_12
.LBB38_12:                              # %cond.end.49
                                        #   in Loop: Header=BB38_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI38_0, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movb	%al, %cl
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-56(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB38_14
# BB#13:                                # %cond.true.65
                                        #   in Loop: Header=BB38_1 Depth=1
	movsd	.LCPI38_0, %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-56(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	jmp	.LBB38_15
.LBB38_14:                              # %cond.false.73
                                        #   in Loop: Header=BB38_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB38_15
.LBB38_15:                              # %cond.end.74
                                        #   in Loop: Header=BB38_1 Depth=1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movb	%al, %cl
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB38_16:                              # %if.end
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_17
.LBB38_17:                              # %do.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB38_18:                              # %if.end.81
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_19
.LBB38_19:                              # %for.inc
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB38_1
.LBB38_20:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end38:
	.size	darken_bezier_line, .Lfunc_end38-darken_bezier_line
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI39_0:
	.quad	4643176031446892544     # double 255
.LCPI39_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lighten_bezier_line,@function
lighten_bezier_line:                    # @lighten_bezier_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r11d, -32(%rbp)
	movq	%r10, -40(%rbp)
	movq	%rax, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	$-1, -76(%rbp)
	movl	-20(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movl	$0, -60(%rbp)
.LBB39_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB39_20
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -64(%rbp)
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -68(%rbp)
	movl	-68(%rbp), %edx
	imull	-80(%rbp), %edx
	movl	-64(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -72(%rbp)
	movl	-72(%rbp), %edx
	cmpl	-76(%rbp), %edx
	je	.LBB39_18
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_4
.LBB39_4:                               # %do.body
                                        #   in Loop: Header=BB39_1 Depth=1
	cmpl	$0, -72(%rbp)
	jl	.LBB39_16
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	-72(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB39_16
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB39_1 Depth=1
	movsd	.LCPI39_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI39_1, %xmm1        # xmm1 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	-56(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB39_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB39_1 Depth=1
	movsd	.LCPI39_1, %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-56(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	jmp	.LBB39_9
.LBB39_8:                               # %cond.false
                                        #   in Loop: Header=BB39_1 Depth=1
	movsd	.LCPI39_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB39_9
.LBB39_9:                               # %cond.end
                                        #   in Loop: Header=BB39_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI39_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI39_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movb	%al, %cl
	movl	-72(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB39_11
# BB#10:                                # %cond.true.41
                                        #   in Loop: Header=BB39_1 Depth=1
	movsd	.LCPI39_1, %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-56(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB39_12
.LBB39_11:                              # %cond.false.49
                                        #   in Loop: Header=BB39_1 Depth=1
	movsd	.LCPI39_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB39_12
.LBB39_12:                              # %cond.end.50
                                        #   in Loop: Header=BB39_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI39_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI39_1, %xmm2        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movb	%al, %cl
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB39_14
# BB#13:                                # %cond.true.66
                                        #   in Loop: Header=BB39_1 Depth=1
	movsd	.LCPI39_1, %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-56(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	jmp	.LBB39_15
.LBB39_14:                              # %cond.false.74
                                        #   in Loop: Header=BB39_1 Depth=1
	movsd	.LCPI39_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB39_15
.LBB39_15:                              # %cond.end.75
                                        #   in Loop: Header=BB39_1 Depth=1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movb	%al, %cl
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB39_16:                              # %if.end
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_17
.LBB39_17:                              # %do.end
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB39_18:                              # %if.end.82
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_19
.LBB39_19:                              # %for.inc
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB39_1
.LBB39_20:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end39:
	.size	lighten_bezier_line, .Lfunc_end39-lighten_bezier_line
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.size	query.args, 192

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
	.asciz	"x"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Number of tiles across > 0"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"y"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Number of tiles down > 0"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"style"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The style/shape of the jigsaw puzzle { 0, 1 }"
	.size	.L.str.11, 46

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"blend-lines"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Number of lines for shading bevels >= 0"
	.size	.L.str.13, 40

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"blend-amount"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The power of the light highlights 0 =< 5"
	.size	.L.str.15, 41

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"plug-in-jigsaw"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Add a jigsaw-puzzle pattern to the image"
	.size	.L.str.17, 41

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Jigsaw puzzle look"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Nigel Wetten"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"May 2000"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_Jigsaw..."
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"RGB*"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<Image>/Filters/Render/Pattern"
	.size	.L.str.23, 31

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"UTF-8"
	.size	.L.str.25, 6

	.type	config,@object          # @config
	.data
	.align	8
config:
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	4602678819172646912     # double 0.5
	.size	config, 24

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"Assembling jigsaw"
	.size	.L.str.26, 18

	.type	globals,@object         # @globals
	.local	globals
	.comm	globals,416,8
	.type	.L__func__.draw_jigsaw,@object # @__func__.draw_jigsaw
.L__func__.draw_jigsaw:
	.asciz	"draw_jigsaw"
	.size	.L__func__.draw_jigsaw, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"buffer != NULL"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"draw_jigsaw: bad style\n"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"jigsaw"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Jigsaw"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-jigsaw"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gtk-cancel"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-ok"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"invalidated"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Number of Tiles"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Horizontal:"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Number of pieces going across"
	.size	.L.str.37, 30

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"label"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"value-changed"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Vertical:"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Number of pieces going down"
	.size	.L.str.41, 28

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Bevel Edges"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Bevel width:"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Degree of slope of each piece's edge"
	.size	.L.str.44, 37

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"H_ighlight:"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"The amount of highlighting on the edges of each piece"
	.size	.L.str.46, 54

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Jigsaw Style"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Square"
	.size	.L.str.48, 8

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"C_urved"
	.size	.L.str.49, 8

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Each piece has straight sides"
	.size	.L.str.50, 30

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Each piece has curved sides"
	.size	.L.str.51, 28

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"toggled"
	.size	.L.str.52, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
