	.text
	.file	"checkerboard.bc"
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
	movl	$3, -60(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.18, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-60(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-56(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_23
.LBB1_23:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_24
.LBB1_24:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.10, %rdi
	movabsq	$cvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	checkerboard_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_22
.LBB1_5:                                # %if.end
	jmp	.LBB1_13
.LBB1_6:                                # %sw.bb.12
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.13
	movl	$1, -60(%rbp)
.LBB1_8:                                # %if.end.14
	cmpl	$3, -60(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.16
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, cvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, cvals+4
.LBB1_10:                               # %if.end.23
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.24
	movabsq	$.L.str.10, %rdi
	movabsq	$cvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_15
# BB#14:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_20
.LBB1_15:                               # %if.then.31
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	do_checkerboard_pattern
	cmpl	$1, -56(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.35
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_17:                               # %if.end.37
	cmpl	$0, -56(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.39
	movabsq	$.L.str.10, %rdi
	movabsq	$cvals, %rax
	movl	$8, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.41
	jmp	.LBB1_21
.LBB1_20:                               # %if.else
	movl	$0, -60(%rbp)
.LBB1_21:                               # %if.end.42
	movl	-60(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_22:                               # %return
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
	.text
	.align	16, 0x90
	.type	checkerboard_dialog,@function
checkerboard_dialog:                    # @checkerboard_dialog
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
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.21, %rax
	xorl	%ecx, %ecx
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
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
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.26, %rsi
	movabsq	$do_checkerboard_pattern, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movl	-12(%rbp), %edi
	callq	gimp_image_get_resolution
	movl	-12(%rbp), %edi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_image_get_unit
	movl	%eax, -88(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_width
	movl	%eax, -80(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_height
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB3_2
# BB#1:                                 # %cond.true
	movl	-80(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movl	-84(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB3_3:                                # %cond.end
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movabsq	$.L.str.27, %rdx
	xorl	%r9d, %r9d
	movl	$8, %esi
	movl	%eax, -76(%rbp)
	movl	-88(%rbp), %eax
	movl	%ecx, %edi
	movl	%esi, -204(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movl	-208(%rbp), %r8d        # 4-byte Reload
	movl	$8, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_size_entry_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_unit
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$1, %edx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	movq	%rax, %rdi
	callq	gimp_size_entry_set_size
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	cvals+4, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movabsq	$.L.str.29, %rsi
	movabsq	$check_size_update_callback, %rdi
	movabsq	$cvals, %r10
	addq	$4, %r10
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	cvals, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$cvals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	movl	%eax, -108(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-108(%rbp), %eax
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	checkerboard_dialog, .Lfunc_end3-checkerboard_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	do_checkerboard_pattern,@function
do_checkerboard_pattern:                # @do_checkerboard_pattern
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
	subq	$144, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gimp_context_get_background
	leaq	-64(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	addq	$4, %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get_color_uchar
	leaq	-64(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-64(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get_color_uchar
	cmpl	$1, cvals+4
	jge	.LBB4_2
# BB#1:                                 # %if.then
	movl	$1, cvals+4
.LBB4_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_8
# BB#3:                                 # %if.then.4
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdx
	movl	12(%rdx), %eax
	movl	%eax, -88(%rbp)
	movl	-76(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	-88(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -96(%rbp)
	movl	$0, -84(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	-76(%rbp), %ecx
	imull	-80(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	-24(%rbp), %rax
	movl	-68(%rbp), %ecx
	movl	-84(%rbp), %edx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	-76(%rbp)
	addl	%edx, %ecx
	movl	-72(%rbp), %edx
	movl	-84(%rbp), %esi
	movl	%esi, %eax
	movl	%edx, -124(%rbp)        # 4-byte Spill
	cltd
	idivl	-76(%rbp)
	movl	-124(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movq	-96(%rbp), %rdi
	movl	-84(%rbp), %eax
	imull	-88(%rbp), %eax
	movslq	%eax, %r8
	addq	%r8, %rdi
	movl	-88(%rbp), %eax
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	%r9, %rdx
	movl	%eax, %ecx
	callq	checkerboard_func
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB4_4
.LBB4_7:                                # %for.end
	movq	-16(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-76(%rbp), %eax
	imull	-88(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-96(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_9
.LBB4_8:                                # %if.else
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_rgn_iterator_new
	movabsq	$checkerboard_func, %rsi
	leaq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	gimp_rgn_iterator_dest
	movq	-32(%rbp), %rdi
	callq	gimp_rgn_iterator_free
.LBB4_9:                                # %if.end.15
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	do_checkerboard_pattern, .Lfunc_end4-do_checkerboard_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	check_size_update_callback,@function
check_size_update_callback:             # @check_size_update_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	cvttsd2si	%xmm0, %esi
	movl	%esi, cvals+4
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	check_size_update_callback, .Lfunc_end5-check_size_update_callback
	.cfi_endproc

	.align	16, 0x90
	.type	checkerboard_func,@function
checkerboard_func:                      # @checkerboard_func
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	cmpl	$0, cvals
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %edi
	movl	cvals+4, %esi
	callq	inblock
	movl	-8(%rbp), %edi
	movl	cvals+4, %esi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	inblock
	movl	-60(%rbp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movl	-4(%rbp), %eax
	cltd
	idivl	cvals+4
	movl	%eax, -48(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	cvals+4
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	andl	$1, %eax
	movl	-52(%rbp), %ecx
	andl	$1, %ecx
	cmpl	%ecx, %eax
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movl	%eax, -44(%rbp)
.LBB6_3:                                # %if.end
	movl	$0, -56(%rbp)
.LBB6_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB6_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB6_4 Depth=1
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
                                        #   in Loop: Header=BB6_4 Depth=1
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	4(%rcx,%rax), %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
.LBB6_8:                                # %cond.end
                                        #   in Loop: Header=BB6_4 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-56(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB6_4 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_4
.LBB6_10:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	checkerboard_func, .Lfunc_end6-checkerboard_func
	.cfi_endproc

	.align	16, 0x90
	.type	inblock,@function
inblock:                                # @inblock
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$2, -8(%rbp)
.LBB7_2:                                # %if.end
	cmpq	$0, inblock.in
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true
	movl	inblock.len, %eax
	movl	-8(%rbp), %ecx
	imull	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB7_5
# BB#4:                                 # %if.then.2
	movq	inblock.in, %rax
	movq	%rax, %rdi
	callq	g_free
	movq	$0, inblock.in
.LBB7_5:                                # %if.end.3
	movl	-8(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, inblock.len
	cmpq	$0, inblock.in
	jne	.LBB7_23
# BB#6:                                 # %if.then.6
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, -12(%rbp)
	movslq	inblock.len, %rdi
	callq	g_malloc_n
	movq	%rax, inblock.in
	movl	$0, -16(%rbp)
	movl	$1, -20(%rbp)
.LBB7_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB7_14
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$0, -24(%rbp)
.LBB7_9:                                # %for.cond.9
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB7_12
# BB#10:                                # %for.body.12
                                        #   in Loop: Header=BB7_9 Depth=2
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%rbp)
	movslq	%ecx, %rsi
	movq	inblock.in, %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB7_9 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB7_9
.LBB7_12:                               # %for.end
                                        #   in Loop: Header=BB7_7 Depth=1
	cmpl	$0, -12(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -12(%rbp)
# BB#13:                                # %for.inc.15
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_7
.LBB7_14:                               # %for.end.17
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB7_15:                               # %for.cond.18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
	cmpl	$1, -20(%rbp)
	jl	.LBB7_22
# BB#16:                                # %for.body.21
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	$0, -24(%rbp)
.LBB7_17:                               # %for.cond.22
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB7_20
# BB#18:                                # %for.body.25
                                        #   in Loop: Header=BB7_17 Depth=2
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%rbp)
	movslq	%ecx, %rsi
	movq	inblock.in, %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#19:                                # %for.inc.29
                                        #   in Loop: Header=BB7_17 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB7_17
.LBB7_20:                               # %for.end.31
                                        #   in Loop: Header=BB7_15 Depth=1
	cmpl	$0, -12(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -12(%rbp)
# BB#21:                                # %for.inc.35
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_15
.LBB7_22:                               # %for.end.36
	jmp	.LBB7_23
.LBB7_23:                               # %if.end.37
	movl	-4(%rbp), %eax
	movl	inblock.len, %ecx
	subl	$1, %ecx
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	movq	inblock.in, %rdi
	movl	(%rdi,%rsi,4), %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	inblock, .Lfunc_end7-inblock
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
	.asciz	"check-mode"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Check mode { REGULAR (0), PSYCHOBILY (1) }"
	.size	.L.str.7, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"check-size"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Size of the checks"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-checkerboard"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Create a checkerboard pattern"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"More here later"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Brent Burton & the Edward Blevins"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1997"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Checkerboard..."
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<Image>/Filters/Render/Pattern"
	.size	.L.str.17, 31

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

	.type	cvals,@object           # @cvals
	.data
	.align	4
cvals:
	.long	0                       # 0x0
	.long	10                      # 0xa
	.size	cvals, 8

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Adding checkerboard"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"checkerboard"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Checkerboard"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-checkerboard"
	.size	.L.str.23, 18

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
	.asciz	"%a"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Size:"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"value-changed"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Psychobilly"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"toggled"
	.size	.L.str.31, 8

	.type	inblock.in,@object      # @inblock.in
	.local	inblock.in
	.comm	inblock.in,8,8
	.type	inblock.len,@object     # @inblock.len
	.data
	.align	4
inblock.len:
	.long	4294967295              # 0xffffffff
	.size	inblock.len, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
