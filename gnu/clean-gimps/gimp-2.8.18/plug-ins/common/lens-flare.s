	.text
	.file	"lens-flare.bc"
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movl	$1, %r10d
	movl	$5, %r11d
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
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.17, %rsi
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
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.18, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_25
.LBB1_25:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_26
.LBB1_26:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.10, %rdi
	movabsq	$fvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	flare_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_24
.LBB1_5:                                # %if.end
	jmp	.LBB1_13
.LBB1_6:                                # %sw.bb.9
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
.LBB1_8:                                # %if.end.11
	cmpl	$3, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, fvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, fvals+4
.LBB1_10:                               # %if.end.20
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.21
	movabsq	$.L.str.10, %rdi
	movabsq	$fvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_23
# BB#14:                                # %if.then.24
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_16
# BB#15:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_21
.LBB1_16:                               # %if.then.30
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-48(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-112(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	FlareFX
	cmpl	$1, -52(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.36
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.38
	cmpl	$0, -52(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.41
	movabsq	$.L.str.10, %rdi
	movabsq	$fvals, %rax
	movl	$8, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_20:                               # %if.end.43
	jmp	.LBB1_22
.LBB1_21:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_22:                               # %if.end.44
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.45
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_24:                               # %return
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
	.type	flare_dialog,@function
flare_dialog:                           # @flare_dialog
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
	subq	$208, %rsp
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.21, %rax
	movl	$1, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movabsq	$.L.str.23, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.24, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.25, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	136(%rax), %rdi
	callq	gtk_widget_add_events
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rsi
	movabsq	$FlareFX, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	flare_center_create
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-60(%rbp), %eax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	flare_dialog, .Lfunc_end3-flare_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4580178482210803728     # double 0.015686274509803921
.LCPI4_1:
	.quad	4588638185040256542     # double 0.058823529411764705
.LCPI4_2:
	.quad	4599323195920880660     # double 0.31372549019607843
.LCPI4_3:
	.quad	4598192880720285712     # double 0.25098039215686274
.LCPI4_4:
	.quad	4597504094894923166     # double 0.23137254901960785
.LCPI4_5:
	.quad	4598546104220471633     # double 0.27058823529411763
.LCPI4_6:
	.quad	4595243464493733270     # double 0.16862745098039217
.LCPI4_7:
	.quad	4594537017493361427     # double 0.14901960784313725
.LCPI4_8:
	.quad	4607182418800017408     # double 1
.LCPI4_9:
	.quad	4606829195299831487     # double 0.96078431372549022
.LCPI4_10:
	.quad	4606617261199719934     # double 0.93725490196078431
.LCPI4_11:
	.quad	4590744280160115098     # double 0.084375000000000005
.LCPI4_12:
	.quad	4599723331917185024     # double 0.3359375
.LCPI4_13:
	.quad	4595641944754880512     # double 0.1796875
.LCPI4_14:
	.quad	4590293920197378048     # double 0.078125
.LCPI4_15:
	.quad	4585565140588639027     # double 0.037499999999999999
	.text
	.align	16, 0x90
	.type	FlareFX,@function
FlareFX:                                # @FlareFX
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
	subq	$288, %rsp              # imm = 0x120
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movsd	%xmm0, -208(%rbp)
	movq	-8(%rbp), %rsi
	movl	12(%rsi), %eax
	movl	%eax, -124(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	leaq	-124(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_factor
	movabsq	$xs, %rcx
	movabsq	$ys, %r8
	movsd	%xmm0, -208(%rbp)
	movq	-16(%rbp), %rdi
	movl	fvals, %esi
	movl	fvals+4, %edx
	callq	gimp_preview_transform
	movl	$1, %edx
	movl	%edx, %esi
	movl	$0, -176(%rbp)
	movl	$0, -180(%rbp)
	movl	-116(%rbp), %edx
	movl	%edx, -184(%rbp)
	movl	-120(%rbp), %edx
	movl	%edx, -188(%rbp)
	movl	-124(%rbp), %edx
	imull	-116(%rbp), %edx
	imull	-120(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, -160(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	leaq	-176(%rbp), %rsi
	leaq	-180(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-188(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	leaq	-64(%rbp), %rdi
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %r10d
	movl	%r10d, -116(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %r10d
	movl	%r10d, -120(%rbp)
	movl	fvals, %r10d
	movl	%r10d, xs
	movl	fvals+4, %r10d
	movl	%r10d, ys
	movq	-8(%rbp), %rsi
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r10d
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
.LBB4_3:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_5
# BB#4:                                 # %if.then.12
	cvtsi2sdl	-116(%rbp), %xmm0
	mulsd	-208(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else.16
	movl	-116(%rbp), %eax
	movl	%eax, -192(%rbp)
.LBB4_6:                                # %if.end.17
	movl	$1, %eax
	movl	%eax, %esi
	movl	-184(%rbp), %eax
	subl	-176(%rbp), %eax
	imull	-124(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI4_5, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI4_6, %xmm6         # xmm6 = mem[0],zero
	movsd	.LCPI4_7, %xmm7         # xmm7 = mem[0],zero
	movsd	.LCPI4_8, %xmm8         # xmm8 = mem[0],zero
	movsd	.LCPI4_9, %xmm9         # xmm9 = mem[0],zero
	movsd	.LCPI4_10, %xmm10       # xmm10 = mem[0],zero
	movsd	.LCPI4_11, %xmm11       # xmm11 = mem[0],zero
	movsd	.LCPI4_12, %xmm12       # xmm12 = mem[0],zero
	movsd	.LCPI4_13, %xmm13       # xmm13 = mem[0],zero
	movsd	.LCPI4_14, %xmm14       # xmm14 = mem[0],zero
	movsd	.LCPI4_15, %xmm15       # xmm15 = mem[0],zero
	movq	%rax, -136(%rbp)
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	cvtsi2ssl	-192(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm15, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, scolor
	cvtsi2ssl	-192(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm14, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, sglow
	cvtsi2ssl	-192(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm13, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, sinner
	cvtsi2ssl	-192(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm12, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, souter
	cvtsi2ssl	-192(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm11, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, shalo
	movsd	%xmm10, color
	movsd	%xmm10, color+8
	movsd	%xmm10, color+16
	movsd	%xmm9, glow
	movsd	%xmm9, glow+8
	movsd	%xmm9, glow+16
	movsd	%xmm8, inner
	movsd	%xmm7, inner+8
	movsd	%xmm6, inner+16
	movsd	%xmm5, outer
	movsd	%xmm4, outer+8
	movsd	%xmm3, outer+16
	movsd	%xmm2, halo
	movsd	%xmm1, halo+8
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, halo+16
	movl	xs, %edi
	movl	ys, %esi
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	movl	-192(%rbp), %r8d
	callq	initref
	movl	-180(%rbp), %ecx
	movl	%ecx, -164(%rbp)
.LBB4_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
	movl	-164(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jge	.LBB4_32
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB4_7 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.43
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	-136(%rbp), %rdi
	movq	-152(%rbp), %rax
	movl	-164(%rbp), %ecx
	imull	-116(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-116(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.48
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-164(%rbp), %ecx
	movl	-184(%rbp), %eax
	subl	-176(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_row
.LBB4_11:                               # %if.end.50
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-176(%rbp), %ecx
	movl	%ecx, -168(%rbp)
.LBB4_12:                               # %for.cond.51
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
	movl	-168(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jge	.LBB4_24
# BB#13:                                # %for.body.54
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	-168(%rbp), %eax
	subl	xs, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-164(%rbp), %eax
	subl	ys, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	hypot
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -196(%rbp)
	movq	-144(%rbp), %rdi
	movss	-196(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	callq	mcolor
	movq	-144(%rbp), %rdi
	movss	-196(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	callq	mglow
	movq	-144(%rbp), %rdi
	movss	-196(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	callq	minner
	movq	-144(%rbp), %rdi
	movss	-196(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	callq	mouter
	movq	-144(%rbp), %rdi
	movss	-196(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	callq	mhalo
	movl	$0, -172(%rbp)
.LBB4_14:                               # %for.cond.61
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-172(%rbp), %eax
	cmpl	numref, %eax
	jge	.LBB4_22
# BB#15:                                # %for.body.64
                                        #   in Loop: Header=BB4_14 Depth=3
	movslq	-172(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	ref1+44(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	ja	.LBB4_20
# BB#36:                                # %for.body.64
                                        #   in Loop: Header=BB4_14 Depth=3
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_16:                               # %sw.bb
                                        #   in Loop: Header=BB4_14 Depth=3
	movabsq	$ref1, %rax
	movq	-144(%rbp), %rdi
	movslq	-172(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	-168(%rbp), %edx
	movl	-164(%rbp), %ecx
	movq	%rax, %rsi
	callq	mrt1
	jmp	.LBB4_20
.LBB4_17:                               # %sw.bb.67
                                        #   in Loop: Header=BB4_14 Depth=3
	movabsq	$ref1, %rax
	movq	-144(%rbp), %rdi
	movslq	-172(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	-168(%rbp), %edx
	movl	-164(%rbp), %ecx
	movq	%rax, %rsi
	callq	mrt2
	jmp	.LBB4_20
.LBB4_18:                               # %sw.bb.70
                                        #   in Loop: Header=BB4_14 Depth=3
	movabsq	$ref1, %rax
	movq	-144(%rbp), %rdi
	movslq	-172(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	-168(%rbp), %edx
	movl	-164(%rbp), %ecx
	movq	%rax, %rsi
	callq	mrt3
	jmp	.LBB4_20
.LBB4_19:                               # %sw.bb.73
                                        #   in Loop: Header=BB4_14 Depth=3
	movabsq	$ref1, %rax
	movq	-144(%rbp), %rdi
	movslq	-172(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	-168(%rbp), %edx
	movl	-164(%rbp), %ecx
	movq	%rax, %rsi
	callq	mrt4
.LBB4_20:                               # %sw.epilog
                                        #   in Loop: Header=BB4_14 Depth=3
	jmp	.LBB4_21
.LBB4_21:                               # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=3
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB4_14
.LBB4_22:                               # %for.end
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	-124(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
# BB#23:                                # %for.inc.78
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB4_12
.LBB4_24:                               # %for.end.80
                                        #   in Loop: Header=BB4_7 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_26
# BB#25:                                # %if.then.82
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	-160(%rbp), %rax
	movl	-164(%rbp), %ecx
	imull	-116(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-136(%rbp), %rsi
	movl	-116(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB4_27
.LBB4_26:                               # %if.else.89
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-164(%rbp), %ecx
	movl	-184(%rbp), %eax
	subl	-176(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
.LBB4_27:                               # %if.end.91
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	$5, %eax
	movl	-164(%rbp), %ecx
	movl	%eax, -256(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-256(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_30
# BB#28:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_7 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB4_30
# BB#29:                                # %if.then.95
                                        #   in Loop: Header=BB4_7 Depth=1
	cvtsi2sdl	-164(%rbp), %xmm0
	movl	-188(%rbp), %eax
	subl	-180(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB4_30:                               # %if.end.100
                                        #   in Loop: Header=BB4_7 Depth=1
	jmp	.LBB4_31
.LBB4_31:                               # %for.inc.101
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB4_7
.LBB4_32:                               # %for.end.103
	cmpq	$0, -16(%rbp)
	je	.LBB4_34
# BB#33:                                # %if.then.105
	movq	-16(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-116(%rbp), %eax
	imull	-124(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-152(%rbp), %rdi
	callq	g_free
	movq	-160(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_35
.LBB4_34:                               # %if.else.107
	movsd	.LCPI4_8, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-176(%rbp), %esi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %r8d
	subl	-176(%rbp), %r8d
	movl	-188(%rbp), %r9d
	subl	-180(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB4_35:                               # %if.end.115
	movq	-136(%rbp), %rdi
	callq	g_free
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end4:
	.size	FlareFX, .Lfunc_end4-FlareFX
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_16
	.quad	.LBB4_17
	.quad	.LBB4_18
	.quad	.LBB4_19

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	flare_center_create,@function
flare_center_create:                    # @flare_center_create
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
	subq	$448, %rsp              # imm = 0x1C0
	xorl	%eax, %eax
	movabsq	$.L.str.30, %rcx
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %r9d
	movl	%r9d, %edi
	movl	$24, %r9d
	movl	%r9d, %esi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%edx, -100(%rbp)        # 4-byte Spill
	callq	g_malloc0_n
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$.L.str.27, %edx
	movl	%edx, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	movl	$.L.str.28, %r8d
	movl	%r8d, %esi
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$.L.str.29, %r8d
	movl	%r8d, %esi
	movl	$g_free, %r8d
	movl	%r8d, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$2, %r9d
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	callq	g_signal_connect_data
	movl	-104(%rbp), %edi        # 4-byte Reload
	movl	-104(%rbp), %esi        # 4-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image
	movl	%eax, -52(%rbp)
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movl	%eax, %edi
	callq	gimp_image_get_resolution
	movl	$.L.str.31, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	cvtsi2sdl	fvals(%rip), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %r9d
	movl	%r9d, %ecx
	movl	%ecx, %r9d
	cvtsi2sdq	%rcx, %xmm2
	movaps	%xmm2, %xmm3
	movapd	.LCPI5_0(%rip), %xmm4   # xmm4 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm4, %xmm3
	addl	%r9d, %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm5
	movl	$.L.str.32, %r9d
	movl	%r9d, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movsd	%xmm3, -160(%rbp)       # 8-byte Spill
	movsd	%xmm2, -168(%rbp)       # 8-byte Spill
	movaps	%xmm4, -192(%rbp)       # 16-byte Spill
	movsd	%xmm5, -200(%rbp)       # 8-byte Spill
	callq	gettext
	cvtsi2sdl	fvals+4(%rip), %xmm6
	movsd	-72(%rbp), %xmm7        # xmm7 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%r9d, %ecx
	movl	%ecx, %r9d
	cvtsi2sdq	%rcx, %xmm0
	movaps	%xmm0, %xmm1
	movaps	-192(%rbp), %xmm2       # 16-byte Reload
	xorpd	%xmm2, %xmm1
	addl	%r9d, %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm3
	movl	-88(%rbp), %edi         # 4-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-84(%rbp), %r8d         # 4-byte Reload
	movl	-100(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movsd	-144(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-152(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movsd	-160(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-200(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm3, -224(%rbp)       # 8-byte Spill
	movaps	%xmm8, %xmm3
	movsd	-80(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-168(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, 24(%rsp)
	movsd	-216(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 32(%rsp)
	movsd	-224(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 40(%rsp)
	movsd	-80(%rbp), %xmm9        # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 48(%rsp)
	movsd	-208(%rbp), %xmm10      # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	%xmm10, 56(%rsp)
	callq	gimp_coordinates_new
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rsi
	movabsq	$flare_center_coords_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$flare_center_coords_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$5, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$4, %r11d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -284(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	show_cursor, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$show_cursor, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r10
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gtk_widget_queue_draw, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$flare_center_preview_realize, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$flare_center_preview_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$flare_center_preview_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	flare_center_create, .Lfunc_end5-flare_center_create
	.cfi_endproc

	.align	16, 0x90
	.type	flare_center_coords_update,@function
flare_center_coords_update:             # @flare_center_coords_update
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_size_entry_get_refval
	movl	$1, %esi
	cvttsd2si	%xmm0, %eax
	movl	%eax, fvals
	movq	-8(%rbp), %rdi
	callq	gimp_size_entry_get_refval
	cvttsd2si	%xmm0, %eax
	movl	%eax, fvals+4
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_preview_invalidate
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	flare_center_coords_update, .Lfunc_end6-flare_center_coords_update
	.cfi_endproc

	.align	16, 0x90
	.type	flare_center_preview_realize,@function
flare_center_preview_realize:           # @flare_center_preview_realize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	movl	$34, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_preview_set_default_cursor
	movq	-32(%rbp), %rdi
	callq	gdk_cursor_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	flare_center_preview_realize, .Lfunc_end7-flare_center_preview_realize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI8_1:
	.quad	4607182418800017408     # double 1
.LCPI8_2:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI8_3:
	.quad	4613937818241073152     # double 3
.LCPI8_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	flare_center_preview_expose,@function
flare_center_preview_expose:            # @flare_center_preview_expose
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, show_cursor
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	fvals, %esi
	movl	fvals+4, %edx
	callq	gimp_preview_transform
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_preview_get_size
	xorps	%xmm1, %xmm1
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	callq	cairo_move_to
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_4, %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-40(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-44(%rbp), %xmm1
	cvtsi2sdl	-40(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_2, %xmm3         # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-32(%rbp), %rdi
	callq	cairo_stroke_preserve
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	callq	cairo_set_line_width
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_0, %xmm3         # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-32(%rbp), %rdi
	callq	cairo_stroke
	movq	-32(%rbp), %rdi
	callq	cairo_destroy
.LBB8_2:                                # %if.end
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	flare_center_preview_expose, .Lfunc_end8-flare_center_preview_expose
	.cfi_endproc

	.align	16, 0x90
	.type	flare_center_preview_events,@function
flare_center_preview_events:            # @flare_center_preview_events
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_10
.LBB9_10:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB9_4
	jmp	.LBB9_7
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	jne	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_8
.LBB9_3:                                # %if.end
	jmp	.LBB9_4
.LBB9_4:                                # %sw.bb.1
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB9_6
# BB#5:                                 # %if.then.2
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	movq	-48(%rbp), %rax
	cvttsd2si	32(%rax), %edx
	callq	gimp_preview_untransform
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movabsq	$flare_center_coords_update, %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	-36(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	cvtsi2sdl	-40(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$flare_center_coords_update, %rax
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-32(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	flare_center_coords_update
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_queue_draw
	movl	$1, -4(%rbp)
	jmp	.LBB9_9
.LBB9_6:                                # %if.end.18
	jmp	.LBB9_8
.LBB9_7:                                # %sw.default
	jmp	.LBB9_8
.LBB9_8:                                # %sw.epilog
	movl	$0, -4(%rbp)
.LBB9_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	flare_center_preview_events, .Lfunc_end9-flare_center_preview_events
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4580178482210803728     # double 0.015686274509803921
.LCPI10_1:
	.quad	4589468260265693457     # double 0.066666666666666666
.LCPI10_2:
	.quad	-4614834034566919881    # double -1.3009999999999999
.LCPI10_3:
	.quad	4585637198182676955     # double 0.037999999999999999
.LCPI10_4:
	.quad	4608574031084874891     # double 1.3089999999999999
.LCPI10_5:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI10_6:
	.quad	4581308797411398676     # double 0.019607843137254902
.LCPI10_7:
	.quad	4589185681465544720     # double 0.062745098039215685
.LCPI10_8:
	.quad	4585247239438471698     # double 0.035294117647058823
.LCPI10_9:
	.quad	4596193635709233398     # double 0.19500000000000001
.LCPI10_10:
	.quad	4596013491724138578     # double 0.19
.LCPI10_11:
	.quad	4587507869839661594     # double 0.050980392156862744
.LCPI10_12:
	.quad	4591728890666883353     # double 0.098039215686274508
.LCPI10_13:
	.quad	4585812397038769172     # double 0.039215686274509803
.LCPI10_14:
	.quad	4585781313370752811     # double 0.039
.LCPI10_15:
	.quad	4592011469467032090     # double 0.10196078431372549
.LCPI10_16:
	.quad	4588073027439959068     # double 0.054901960784313725
.LCPI10_17:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI10_18:
	.quad	4590033417865990931     # double 0.074509803921568626
.LCPI10_19:
	.quad	4593971859893063953     # double 0.13333333333333333
.LCPI10_20:
	.quad	4601754680529110486     # double 0.44869999999999999
.LCPI10_21:
	.quad	4590068740216009523     # double 0.074999999999999997
.LCPI10_22:
	.quad	-4613955832639582634    # double -1.496
.LCPI10_23:
	.quad	4602678819172646912     # double 0.5
.LCPI10_24:
	.quad	-4620592337050475797    # double -0.51119999999999999
.LCPI10_25:
	.quad	4580557137803003036     # double 0.017000000000000001
.LCPI10_26:
	.quad	-4621588533288050151    # double -0.45029999999999998
.LCPI10_27:
	.quad	4588519501944194073     # double 0.058000000000000003
.LCPI10_28:
	.quad	-4622309109228429430    # double -0.4103
.LCPI10_29:
	.quad	4582862980812216730     # double 0.025000000000000001
.LCPI10_30:
	.quad	4595102175093658901     # double 0.16470588235294117
.LCPI10_31:
	.quad	-4626987448521341901    # double -0.20030000000000001
.LCPI10_32:
	.quad	4581998289683761594     # double 0.021999999999999999
.LCPI10_33:
	.quad	4591446311866734616     # double 0.094117647058823528
.LCPI10_34:
	.quad	4601034104588731207     # double 0.40870000000000001
.LCPI10_35:
	.quad	4585493082994601099     # double 0.036999999999999998
.LCPI10_36:
	.quad	4602131181457958660     # double 0.46960000000000002
.LCPI10_37:
	.quad	4579800533065604792     # double 0.014999999999999999
.LCPI10_38:
	.quad	4592859205867478301     # double 0.11372549019607843
.LCPI10_39:
	.quad	4604020891861603320     # double 0.64900000000000002
.LCPI10_40:
	.quad	4584592363069127000     # double 0.031
.LCPI10_41:
	.quad	4601159958121847451     # double 0.41568627450980394
.LCPI10_42:
	.quad	4603120348547879314     # double 0.5490196078431373
.LCPI10_43:
	.quad	4597080226694700060     # double 0.2196078431372549
.LCPI10_44:
	.quad	-4645762054647924025    # double -0.0112
.LCPI10_45:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI10_46:
	.quad	4603190993247916498     # double 0.55686274509803924
.LCPI10_47:
	.quad	4604568564898641591     # double 0.70980392156862748
.LCPI10_48:
	.quad	4600029642921252503     # double 0.35294117647058826
.LCPI10_49:
	.quad	4598521095996658470     # double 0.26919999999999999
.LCPI10_50:
	.quad	4576918229304087675     # double 0.01
.LCPI10_51:
	.quad	4601654471022107740     # double 0.44313725490196076
.LCPI10_52:
	.quad	4604209142326027407     # double 0.66990000000000005
.LCPI10_53:
	.quad	4583439441564520153     # double 0.027
	.text
	.align	16, 0x90
	.type	initref,@function
initref:                                # @initref
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
	subq	$248, %rsp
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_3, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI10_4, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI10_5, %xmm6        # xmm6 = mem[0],zero
	movsd	.LCPI10_6, %xmm7        # xmm7 = mem[0],zero
	movsd	.LCPI10_7, %xmm8        # xmm8 = mem[0],zero
	movsd	.LCPI10_8, %xmm9        # xmm9 = mem[0],zero
	movsd	.LCPI10_9, %xmm10       # xmm10 = mem[0],zero
	movsd	.LCPI10_10, %xmm11      # xmm11 = mem[0],zero
	movsd	.LCPI10_11, %xmm12      # xmm12 = mem[0],zero
	movsd	.LCPI10_12, %xmm13      # xmm13 = mem[0],zero
	movsd	.LCPI10_13, %xmm14      # xmm14 = mem[0],zero
	movsd	.LCPI10_14, %xmm15      # xmm15 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	.LCPI10_15, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	.LCPI10_16, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	.LCPI10_17, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	.LCPI10_18, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	.LCPI10_19, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	.LCPI10_20, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	.LCPI10_21, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	.LCPI10_22, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	.LCPI10_23, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	.LCPI10_24, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	.LCPI10_25, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	.LCPI10_26, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	.LCPI10_27, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movsd	.LCPI10_28, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movsd	.LCPI10_29, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	.LCPI10_30, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movsd	.LCPI10_31, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movsd	.LCPI10_32, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movsd	.LCPI10_33, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movsd	.LCPI10_34, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movsd	.LCPI10_35, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movsd	.LCPI10_36, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movsd	.LCPI10_37, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movsd	.LCPI10_38, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movsd	.LCPI10_39, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movsd	.LCPI10_40, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movsd	.LCPI10_41, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movsd	.LCPI10_42, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movsd	.LCPI10_43, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movsd	.LCPI10_44, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movsd	.LCPI10_45, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movsd	.LCPI10_46, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movsd	.LCPI10_47, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movsd	.LCPI10_48, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movsd	.LCPI10_49, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	movsd	.LCPI10_50, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movsd	.LCPI10_51, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movsd	.LCPI10_52, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movsd	.LCPI10_53, %xmm0       # xmm0 = mem[0],zero
	movl	$2, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	-12(%rbp), %ecx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-356(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$19, numref
	movl	$1, ref1+44
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm1, -376(%rbp)       # 8-byte Spill
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+32
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+36
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+40
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+8
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+16
	movl	$1, ref1+92
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+80
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-328(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+84
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-328(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+88
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+48
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+56
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+64
	movl	$1, ref1+140
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+128
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+132
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+136
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+96
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+104
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+112
	movl	$2, ref1+188
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+176
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+180
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+184
	movsd	%xmm9, ref1+144
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+152
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+160
	movl	$2, ref1+236
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+224
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+228
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+232
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+192
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+200
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+208
	movl	$2, ref1+284
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+272
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+276
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+280
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+240
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+248
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+256
	movl	$2, ref1+332
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+320
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+324
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+328
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+288
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+296
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+304
	movl	$2, ref1+380
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+368
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+372
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+376
	movsd	%xmm2, ref1+352
	movsd	%xmm9, ref1+344
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+336
	movl	$2, ref1+428
	cvtsi2ssl	-20(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, ref1+416
	cvtsi2sdl	-32(%rbp), %xmm1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, ref1+420
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+424
	movsd	%xmm14, ref1+400
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+392
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+384
	movl	$2, ref1+476
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+464
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+468
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+472
	movsd	%xmm7, ref1+432
	movsd	%xmm7, ref1+440
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+448
	movl	$2, ref1+524
	cvtsi2ssl	-20(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm6, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, ref1+512
	cvtsi2sdl	-32(%rbp), %xmm1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, ref1+516
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+520
	movsd	%xmm9, ref1+480
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+488
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+496
	movl	$2, ref1+572
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+560
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+564
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+568
	movsd	%xmm9, ref1+528
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+536
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+544
	movl	$3, ref1+620
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+608
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+612
	cvtsi2sdl	-36(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, ref1+616
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+576
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, ref1+584
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+592
	movl	$3, ref1+668
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+656
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, ref1+660
	movl	-36(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, ref1+664
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+624
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+632
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+640
	movl	$3, ref1+716
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm15, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+704
	cvtsi2sdl	-32(%rbp), %xmm0
	movaps	%xmm3, %xmm15
	mulsd	%xmm0, %xmm15
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm15
	cvttsd2si	%xmm15, %eax
	movl	%eax, ref1+708
	cvtsi2sdl	-36(%rbp), %xmm0
	movaps	%xmm3, %xmm15
	mulsd	%xmm0, %xmm15
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm15
	cvttsd2si	%xmm15, %eax
	movl	%eax, ref1+712
	movsd	%xmm14, ref1+672
	movsd	%xmm13, ref1+680
	movsd	%xmm12, ref1+688
	movl	$4, ref1+764
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm11, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, ref1+752
	cvtsi2sdl	-32(%rbp), %xmm0
	movaps	%xmm5, %xmm11
	mulsd	%xmm0, %xmm11
	cvtsi2sdl	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm11
	cvttsd2si	%xmm11, %eax
	movl	%eax, ref1+756
	cvtsi2sdl	-36(%rbp), %xmm0
	movaps	%xmm5, %xmm11
	mulsd	%xmm0, %xmm11
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm0, %xmm11
	cvttsd2si	%xmm11, %eax
	movl	%eax, ref1+760
	movsd	%xmm9, ref1+720
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, ref1+728
	movsd	%xmm2, ref1+736
	movl	$4, ref1+812
	cvtsi2ssl	-20(%rbp), %xmm11
	cvtss2sd	%xmm11, %xmm11
	mulsd	%xmm10, %xmm11
	cvtsd2ss	%xmm11, %xmm10
	movss	%xmm10, ref1+800
	cvtsi2sdl	-32(%rbp), %xmm10
	movaps	%xmm5, %xmm11
	mulsd	%xmm10, %xmm11
	cvtsi2sdl	-24(%rbp), %xmm10
	addsd	%xmm10, %xmm11
	cvttsd2si	%xmm11, %eax
	movl	%eax, ref1+804
	cvtsi2sdl	-36(%rbp), %xmm10
	movaps	%xmm5, %xmm11
	mulsd	%xmm10, %xmm11
	cvtsi2sdl	-28(%rbp), %xmm10
	addsd	%xmm10, %xmm11
	cvttsd2si	%xmm11, %eax
	movl	%eax, ref1+808
	movsd	%xmm9, ref1+768
	movsd	%xmm8, ref1+776
	movsd	%xmm7, ref1+784
	movl	$4, ref1+860
	cvtsi2ssl	-20(%rbp), %xmm7
	cvtss2sd	%xmm7, %xmm7
	mulsd	%xmm6, %xmm7
	cvtsd2ss	%xmm7, %xmm6
	movss	%xmm6, ref1+848
	cvtsi2sdl	-32(%rbp), %xmm6
	movaps	%xmm5, %xmm7
	mulsd	%xmm6, %xmm7
	cvtsi2sdl	-24(%rbp), %xmm6
	addsd	%xmm6, %xmm7
	cvttsd2si	%xmm7, %eax
	movl	%eax, ref1+852
	cvtsi2sdl	-36(%rbp), %xmm6
	mulsd	%xmm6, %xmm5
	cvtsi2sdl	-28(%rbp), %xmm6
	addsd	%xmm6, %xmm5
	cvttsd2si	%xmm5, %eax
	movl	%eax, ref1+856
	movsd	%xmm2, ref1+816
	movsd	-376(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm5, ref1+824
	movsd	%xmm0, ref1+832
	movl	$4, ref1+908
	cvtsi2ssl	-20(%rbp), %xmm6
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm4, %xmm6
	cvtsd2ss	%xmm6, %xmm4
	movss	%xmm4, ref1+896
	cvtsi2sdl	-32(%rbp), %xmm4
	movaps	%xmm3, %xmm6
	mulsd	%xmm4, %xmm6
	cvtsi2sdl	-24(%rbp), %xmm4
	addsd	%xmm4, %xmm6
	cvttsd2si	%xmm6, %eax
	movl	%eax, ref1+900
	cvtsi2sdl	-36(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	cvtsi2sdl	-28(%rbp), %xmm4
	addsd	%xmm4, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, ref1+904
	movsd	%xmm2, ref1+864
	movsd	%xmm5, ref1+872
	movsd	%xmm0, ref1+880
	addq	$248, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	initref, .Lfunc_end10-initref
	.cfi_endproc

	.align	16, 0x90
	.type	mcolor,@function
mcolor:                                 # @mcolor
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
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	scolor, %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	scolor, %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm2
	movss	%xmm2, -16(%rbp)
	cvtss2sd	-16(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$color, %rsi
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	fixpix
.LBB11_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	mcolor, .Lfunc_end11-mcolor
	.cfi_endproc

	.align	16, 0x90
	.type	mglow,@function
mglow:                                  # @mglow
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
	subq	$16, %rsp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	sglow, %xmm0            # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	sglow, %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm2
	movss	%xmm2, -16(%rbp)
	cvtss2sd	-16(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB12_2
# BB#1:                                 # %if.then
	movabsq	$glow, %rsi
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	fixpix
.LBB12_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	mglow, .Lfunc_end12-mglow
	.cfi_endproc

	.align	16, 0x90
	.type	minner,@function
minner:                                 # @minner
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
	subq	$16, %rsp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	sinner, %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	sinner, %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm2
	movss	%xmm2, -16(%rbp)
	cvtss2sd	-16(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$inner, %rsi
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	fixpix
.LBB13_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	minner, .Lfunc_end13-minner
	.cfi_endproc

	.align	16, 0x90
	.type	mouter,@function
mouter:                                 # @mouter
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
	subq	$16, %rsp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	souter, %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	souter, %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm2
	movss	%xmm2, -16(%rbp)
	cvtss2sd	-16(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$outer, %rsi
	movq	-8(%rbp), %rdi
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	fixpix
.LBB14_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	mouter, .Lfunc_end14-mouter
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
.LCPI15_2:
	.quad	4589708452245819884     # double 0.070000000000000007
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	mhalo,@function
mhalo:                                  # @mhalo
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
	subq	$16, %rsp
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_2, %xmm2        # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	shalo, %xmm0
	movss	%xmm0, -16(%rbp)
	cvtss2sd	shalo, %xmm0
	mulsd	%xmm2, %xmm0
	cvtss2sd	-16(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -16(%rbp)
	cvtss2sd	-16(%rbp), %xmm0
	movapd	.LCPI15_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	cvtss2sd	-16(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$halo, %rsi
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	callq	fixpix
.LBB15_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	mhalo, .Lfunc_end15-mhalo
	.cfi_endproc

	.align	16, 0x90
	.type	mrt1,@function
mrt1:                                   # @mrt1
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rsi
	cvtss2sd	32(%rsi), %xmm0
	movq	-16(%rbp), %rsi
	movl	36(%rsi), %ecx
	subl	-20(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %ecx
	subl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	hypot
	xorps	%xmm1, %xmm1
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rsi
	movss	32(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm2
	movss	%xmm2, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB16_2
# BB#1:                                 # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-8(%rbp), %rdi
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	callq	fixpix
.LBB16_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	mrt1, .Lfunc_end16-mrt1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4594572339843380019     # double 0.14999999999999999
.LCPI17_1:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI17_2:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	mrt2,@function
mrt2:                                   # @mrt2
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rsi
	cvtss2sd	32(%rsi), %xmm0
	movq	-16(%rbp), %rsi
	movl	36(%rsi), %ecx
	subl	-20(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %ecx
	subl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	hypot
	xorps	%xmm1, %xmm1
	movsd	.LCPI17_0, %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rsi
	cvtss2sd	32(%rsi), %xmm0
	mulsd	%xmm2, %xmm0
	cvtss2sd	-28(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB17_4
# BB#1:                                 # %if.then
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-28(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_3
# BB#2:                                 # %if.then.15
	movss	.LCPI17_2, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)
.LBB17_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	callq	fixpix
.LBB17_4:                               # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	mrt2, .Lfunc_end17-mrt2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4593311331947716280     # double 0.12
.LCPI18_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	mrt3,@function
mrt3:                                   # @mrt3
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rsi
	cvtss2sd	32(%rsi), %xmm0
	movq	-16(%rbp), %rsi
	movl	36(%rsi), %ecx
	subl	-20(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %ecx
	subl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	hypot
	xorps	%xmm1, %xmm1
	movsd	.LCPI18_0, %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rsi
	cvtss2sd	32(%rsi), %xmm0
	mulsd	%xmm2, %xmm0
	cvtss2sd	-28(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_4
# BB#1:                                 # %if.then
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-28(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_3
# BB#2:                                 # %if.then.15
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	cvtss2sd	-28(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
.LBB18_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	callq	fixpix
.LBB18_4:                               # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	mrt3, .Lfunc_end18-mrt3
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
.LCPI19_2:
	.quad	4585925428558828667     # double 0.040000000000000001
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI19_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	mrt4,@function
mrt4:                                   # @mrt4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	36(%rsi), %ecx
	subl	-20(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %ecx
	subl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	hypot
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI19_2, %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	cvtss2sd	32(%rsi), %xmm3
	subsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rsi
	cvtss2sd	32(%rsi), %xmm0
	mulsd	%xmm2, %xmm0
	cvtss2sd	-28(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	movapd	.LCPI19_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_2
# BB#1:                                 # %if.then
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-28(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rsi
	callq	fixpix
.LBB19_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	mrt4, .Lfunc_end19-mrt4
	.cfi_endproc

	.align	16, 0x90
	.type	fixpix,@function
fixpix:                                 # @fixpix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %eax
	movl	$255, %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	cvtsi2ssl	%edx, %xmm0
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r8b
	movb	%r8b, (%rdi)
	movq	-8(%rbp), %rsi
	movzbl	1(%rsi), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	cvtsi2ssl	%edx, %xmm0
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r8b
	movb	%r8b, 1(%rsi)
	movq	-8(%rbp), %rsi
	movzbl	2(%rsi), %eax
	subl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm0
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	movsd	16(%rdi), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r8b
	movb	%r8b, 2(%rsi)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	fixpix, .Lfunc_end20-fixpix
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
	.size	query.args, 120

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
	.asciz	"pos-x"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"X-position"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pos-y"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Y-position"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-flarefx"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Add a lens flare effect"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Adds a lens flare effects.  Makes your image look like it was snapped with a cheap camera with a lot of lens :)"
	.size	.L.str.12, 112

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Karl-Johan Andersson"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"May 2000"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Lens _Flare..."
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"RGB*"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<Image>/Filters/Light and Shadow/Light"
	.size	.L.str.17, 39

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"UTF-8"
	.size	.L.str.19, 6

	.type	fvals,@object           # @fvals
	.data
	.align	4
fvals:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.size	fvals, 8

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Render lens flare"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"flarefx"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Lens Flare"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-flarefx"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-cancel"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-ok"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"invalidated"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Center of Flare Effect"
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"center"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"destroy"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%p"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_X:"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Y:"
	.size	.L.str.32, 4

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"value-changed"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"refval-changed"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Show _position"
	.size	.L.str.35, 15

	.type	show_cursor,@object     # @show_cursor
	.data
	.align	4
show_cursor:
	.long	1                       # 0x1
	.size	show_cursor, 4

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"toggled"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"realize"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"expose-event"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"event"
	.size	.L.str.39, 6

	.type	xs,@object              # @xs
	.local	xs
	.comm	xs,4,4
	.type	ys,@object              # @ys
	.local	ys
	.comm	ys,4,4
	.type	scolor,@object          # @scolor
	.local	scolor
	.comm	scolor,4,4
	.type	sglow,@object           # @sglow
	.local	sglow
	.comm	sglow,4,4
	.type	sinner,@object          # @sinner
	.local	sinner
	.comm	sinner,4,4
	.type	souter,@object          # @souter
	.local	souter
	.comm	souter,4,4
	.type	shalo,@object           # @shalo
	.local	shalo
	.comm	shalo,4,4
	.type	color,@object           # @color
	.local	color
	.comm	color,32,8
	.type	glow,@object            # @glow
	.local	glow
	.comm	glow,32,8
	.type	inner,@object           # @inner
	.local	inner
	.comm	inner,32,8
	.type	outer,@object           # @outer
	.local	outer
	.comm	outer,32,8
	.type	halo,@object            # @halo
	.local	halo
	.comm	halo,32,8
	.type	numref,@object          # @numref
	.local	numref
	.comm	numref,4,4
	.type	ref1,@object            # @ref1
	.local	ref1
	.comm	ref1,912,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
