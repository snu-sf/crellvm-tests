	.text
	.file	"deinterlace.bc"
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movl	$1, %r10d
	movl	$4, %r11d
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
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.15, %rsi
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
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %edi
	testl	%edi, %edi
	movl	%edi, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_24
.LBB1_24:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_25
.LBB1_25:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.8, %rdi
	movabsq	$devals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	deinterlace_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movl	$0, -56(%rbp)
.LBB1_5:                                # %if.end
	jmp	.LBB1_13
.LBB1_6:                                # %sw.bb.9
	cmpl	$4, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
.LBB1_8:                                # %if.end.11
	cmpl	$3, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, devals
.LBB1_10:                               # %if.end.17
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.18
	movabsq	$.L.str.8, %rdi
	movabsq	$devals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_23
# BB#14:                                # %if.then.21
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
.LBB1_16:                               # %if.then.27
	movabsq	$.L.str.18, %rdi
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
	callq	deinterlace
	cmpl	$1, -52(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.33
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.35
	cmpl	$0, -52(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.38
	movabsq	$.L.str.8, %rdi
	movabsq	$devals, %rax
	movl	$4, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_20:                               # %if.end.40
	jmp	.LBB1_22
.LBB1_21:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_22:                               # %if.end.41
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.42
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
	.type	deinterlace_dialog,@function
deinterlace_dialog:                     # @deinterlace_dialog
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
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.19, %rax
	xorl	%esi, %esi
	movq	%rdi, -32(%rbp)
	movq	%rax, %rdi
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
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.22, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	movl	%r10d, -104(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.23, %rsi
	movabsq	$deinterlace, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rdi
	movl	devals, %r8d
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.25, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$devals, %rdx
	leaq	-72(%rbp), %r11
	movl	$1, %r8d
	leaq	-80(%rbp), %r14
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movl	-164(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -188(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	-176(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movl	$2, %r9d
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-84(%rbp), %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	deinterlace_dialog, .Lfunc_end3-deinterlace_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	deinterlace,@function
deinterlace:                            # @deinterlace
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -136(%rbp)
	movq	-8(%rbp), %rsi
	movl	12(%rsi), %eax
	movl	%eax, -180(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-164(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-172(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-172(%rbp), %eax
	imull	-176(%rbp), %eax
	imull	-180(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-164(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	leaq	-172(%rbp), %rcx
	leaq	-176(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.4
	jmp	.LBB4_49
.LBB4_4:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	-172(%rbp), %eax
	imull	-180(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-112(%rbp), %rdi
	movl	$1, %ecx
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %r8d
	movl	-172(%rbp), %r9d
	movl	-176(%rbp), %r10d
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
.LBB4_5:                                # %if.end.8
	movq	-8(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jle	.LBB4_7
# BB#6:                                 # %cond.true
	movl	-168(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB4_8
.LBB4_8:                                # %cond.end
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	-172(%rbp), %r8d
	movl	-176(%rbp), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rdx
	cmpl	8(%rdx), %ecx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movl	%r8d, -256(%rbp)        # 4-byte Spill
	jae	.LBB4_10
# BB#9:                                 # %cond.true.14
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false.16
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
.LBB4_11:                               # %cond.end.18
	movl	-260(%rbp), %eax        # 4-byte Reload
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movl	-244(%rbp), %edx        # 4-byte Reload
	movl	-252(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-256(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -116(%rbp)
	movl	-172(%rbp), %eax
	imull	-180(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -144(%rbp)
	movl	-172(%rbp), %ecx
	imull	-180(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -152(%rbp)
	movl	-168(%rbp), %ecx
	movl	%ecx, -156(%rbp)
.LBB4_12:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_22 Depth 2
                                        #       Child Loop BB4_25 Depth 3
                                        #     Child Loop BB4_33 Depth 2
	movl	-156(%rbp), %eax
	movl	-168(%rbp), %ecx
	addl	-176(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_45
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-156(%rbp), %ecx
	movl	-172(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$2, %ecx
	movl	-156(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	devals, %edx
	je	.LBB4_38
# BB#14:                                # %if.then.33
                                        #   in Loop: Header=BB4_12 Depth=1
	cmpl	$0, -156(%rbp)
	jle	.LBB4_16
# BB#15:                                # %if.then.36
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-156(%rbp), %eax
	subl	$1, %eax
	movl	-172(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.38
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	devals, %ecx
	movl	-172(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
.LBB4_17:                               # %if.end.39
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB4_19
# BB#18:                                # %if.then.44
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	-172(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.46
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-156(%rbp), %eax
	subl	$1, %eax
	addl	devals, %eax
	movl	-172(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
.LBB4_20:                               # %if.end.49
                                        #   in Loop: Header=BB4_12 Depth=1
	cmpl	$0, -116(%rbp)
	je	.LBB4_32
# BB#21:                                # %if.then.51
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	$0, -160(%rbp)
.LBB4_22:                               # %for.cond.52
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_25 Depth 3
	movl	-160(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB4_31
# BB#23:                                # %for.body.55
                                        #   in Loop: Header=BB4_22 Depth=2
	movl	-180(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -212(%rbp)
	movl	-180(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -216(%rbp)
	movl	-212(%rbp), %eax
	addl	-216(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-220(%rbp), %eax
	shrl	$1, %eax
	movb	%al, %sil
	movl	-180(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	cmpb	$0, %sil
	je	.LBB4_29
# BB#24:                                # %if.then.68
                                        #   in Loop: Header=BB4_22 Depth=2
	movl	$0, -224(%rbp)
.LBB4_25:                               # %for.cond.69
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-224(%rbp), %eax
	movl	-180(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_28
# BB#26:                                # %for.body.73
                                        #   in Loop: Header=BB4_25 Depth=3
	movslq	-224(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	imull	-212(%rbp), %edx
	movslq	-224(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	imull	-216(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	-220(%rbp)
	movb	%al, %dil
	movslq	-224(%rbp), %rcx
	movq	-208(%rbp), %r8
	movb	%dil, (%r8,%rcx)
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB4_25 Depth=3
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB4_25
.LBB4_28:                               # %for.end
                                        #   in Loop: Header=BB4_22 Depth=2
	jmp	.LBB4_29
.LBB4_29:                               # %if.end.86
                                        #   in Loop: Header=BB4_22 Depth=2
	movl	-180(%rbp), %eax
	movq	-192(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -192(%rbp)
	movl	-180(%rbp), %eax
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
	movl	-180(%rbp), %eax
	movq	-208(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -208(%rbp)
# BB#30:                                # %for.inc.91
                                        #   in Loop: Header=BB4_22 Depth=2
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB4_22
.LBB4_31:                               # %for.end.93
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_37
.LBB4_32:                               # %if.else.94
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	$0, -160(%rbp)
.LBB4_33:                               # %for.cond.95
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-160(%rbp), %eax
	movl	-172(%rbp), %ecx
	imull	-180(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_36
# BB#34:                                # %for.body.99
                                        #   in Loop: Header=BB4_33 Depth=2
	movslq	-160(%rbp), %rax
	movq	-144(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-160(%rbp), %rax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	%esi, %edx
	shrl	$1, %edx
	movb	%dl, %dil
	movslq	-160(%rbp), %rax
	movq	-128(%rbp), %rcx
	movb	%dil, (%rcx,%rax)
# BB#35:                                # %for.inc.111
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB4_33
.LBB4_36:                               # %for.end.113
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_37
.LBB4_37:                               # %if.end.114
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_38
.LBB4_38:                               # %if.end.115
                                        #   in Loop: Header=BB4_12 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_40
# BB#39:                                # %if.then.117
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	-172(%rbp), %eax
	imull	-180(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB4_43
.LBB4_40:                               # %if.else.121
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-156(%rbp), %ecx
	movl	-172(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$20, %ecx
	movl	-156(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_42
# BB#41:                                # %if.then.125
                                        #   in Loop: Header=BB4_12 Depth=1
	cvtsi2sdl	-156(%rbp), %xmm0
	cvtsi2sdl	-176(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB4_42:                               # %if.end.130
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_43
.LBB4_43:                               # %if.end.131
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_44
.LBB4_44:                               # %for.inc.132
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB4_12
.LBB4_45:                               # %for.end.134
	cmpq	$0, -16(%rbp)
	je	.LBB4_47
# BB#46:                                # %if.then.136
	movq	-16(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-172(%rbp), %eax
	imull	-180(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-136(%rbp), %rsi
	movq	%rsi, -128(%rbp)
	jmp	.LBB4_48
.LBB4_47:                               # %if.else.138
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-164(%rbp), %esi
	movl	-168(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-176(%rbp), %r8d
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB4_48:                               # %if.end.144
	movq	-152(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
	movq	-128(%rbp), %rdi
	callq	g_free
.LBB4_49:                               # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end4:
	.size	deinterlace, .Lfunc_end4-deinterlace
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
	.size	query.args, 96

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
	.asciz	"evenodd"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Which lines to keep { KEEP-ODD (0), KEEP-EVEN (1) }"
	.size	.L.str.7, 52

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-deinterlace"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Fix images where every other row is missing"
	.size	.L.str.9, 44

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Deinterlace is useful for processing images from video capture cards. When only the odd or even fields get captured, deinterlace can be used to interpolate between the existing fields to correct this."
	.size	.L.str.10, 201

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Andrew Kieschnick"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1997"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Deinterlace..."
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<Image>/Filters/Enhance"
	.size	.L.str.15, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"UTF-8"
	.size	.L.str.17, 6

	.type	devals,@object          # @devals
	.data
	.align	4
devals:
	.long	1                       # 0x1
	.size	devals, 4

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"Deinterlace"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"deinterlace"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-deinterlace"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-cancel"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-ok"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"invalidated"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Keep o_dd fields"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Keep _even fields"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"toggled"
	.size	.L.str.26, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
