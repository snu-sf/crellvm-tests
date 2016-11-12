	.text
	.file	"edge-sobel.bc"
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
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rax
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %r8
	movl	$1, %r10d
	movl	$6, %r11d
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
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.19, %rsi
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
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.20, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.20, %rdi
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
	movl	20(%rax), %ecx
	addl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_tile_cache_ntiles
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_22
.LBB1_22:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_23
.LBB1_23:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.12, %rdi
	movabsq	$bvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	sobel_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_21
.LBB1_5:                                # %if.end
	jmp	.LBB1_12
.LBB1_6:                                # %sw.bb.9
	cmpl	$6, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.11
	movl	$1, -56(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 128(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, bvals
	movq	-24(%rbp), %rdx
	cmpl	$0, 168(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, bvals+4
	movq	-24(%rbp), %rdx
	cmpl	$0, 208(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, bvals+8
.LBB1_9:                                # %if.end.26
	jmp	.LBB1_12
.LBB1_10:                               # %sw.bb.27
	movabsq	$.L.str.12, %rdi
	movabsq	$bvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %sw.default
	jmp	.LBB1_12
.LBB1_12:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_14
# BB#13:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_19
.LBB1_14:                               # %if.then.34
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-48(%rbp), %rdi
	movl	bvals, %esi
	movl	bvals+4, %edx
	movl	bvals+8, %ecx
	callq	sobel
	cmpl	$1, -52(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.37
	callq	gimp_displays_flush
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_16:                               # %if.end.39
	cmpl	$0, -52(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.42
	movabsq	$.L.str.12, %rdi
	movabsq	$bvals, %rax
	movl	$12, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.44
	jmp	.LBB1_20
.LBB1_19:                               # %if.else.45
	movabsq	$.L.str.22, %rdi
	movl	$0, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	callq	gettext
	movq	%rax, run.values+48
.LBB1_20:                               # %if.end.47
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_21:                               # %return
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
	.type	sobel_dialog,@function
sobel_dialog:                           # @sobel_dialog
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
	subq	$320, %rsp              # imm = 0x140
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.23, %rax
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movabsq	$.L.str.25, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.26, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.27, %r11
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.28, %rsi
	movabsq	$sobel_preview_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r11
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	bvals, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$bvals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	bvals+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$bvals, %rdi
	addq	$4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	bvals+8, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$bvals, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
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
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sobel_dialog, .Lfunc_end3-sobel_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
.LCPI4_2:
	.quad	4616189618054758400     # double 4
.LCPI4_3:
	.quad	4620693217682128896     # double 8
.LCPI4_4:
	.quad	4618058611900117156     # double 5.6600000000000001
	.text
	.align	16, 0x90
	.type	sobel,@function
sobel:                                  # @sobel
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	$0, -256(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-236(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_preview_get_size
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-236(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	leaq	-136(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.9
	jmp	.LBB4_44
.LBB4_4:                                # %if.end
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB4_5:                                # %if.end.12
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -244(%rbp)
	movl	-132(%rbp), %eax
	addl	$2, %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -176(%rbp)
	movl	-132(%rbp), %ecx
	addl	$2, %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -192(%rbp)
	movl	-132(%rbp), %ecx
	addl	$2, %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -208(%rbp)
	movl	-132(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpq	$0, -32(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.30
	movl	$1, %eax
	movl	%eax, %esi
	movl	-132(%rbp), %eax
	imull	-136(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -256(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.35
	leaq	-128(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %r9d
	movl	%eax, %edx
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
.LBB4_8:                                # %if.end.38
	leaq	-80(%rbp), %rdi
	movq	-176(%rbp), %rax
	movslq	-140(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movslq	-140(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -200(%rbp)
	movq	-208(%rbp), %rax
	movslq	-140(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -216(%rbp)
	movq	-184(%rbp), %rsi
	movl	-236(%rbp), %edx
	movl	-240(%rbp), %r8d
	subl	$1, %r8d
	movl	-132(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	callq	sobel_prepare_row
	leaq	-80(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-236(%rbp), %edx
	movl	-240(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	sobel_prepare_row
	movl	$0, -248(%rbp)
	movl	-240(%rbp), %ecx
	movl	%ecx, -228(%rbp)
.LBB4_9:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	movl	-228(%rbp), %eax
	movl	-240(%rbp), %ecx
	addl	-136(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_40
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB4_9 Depth=1
	leaq	-80(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movl	-236(%rbp), %edx
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	-132(%rbp), %r8d
	movl	%eax, %ecx
	callq	sobel_prepare_row
	movq	-160(%rbp), %rsi
	movq	%rsi, -168(%rbp)
	movl	$0, -232(%rbp)
.LBB4_11:                               # %for.cond.46
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-232(%rbp), %eax
	movl	-132(%rbp), %ecx
	imull	-140(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_33
# BB#12:                                # %for.body.50
                                        #   in Loop: Header=BB4_11 Depth=2
	cmpl	$0, -12(%rbp)
	je	.LBB4_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-232(%rbp), %eax
	subl	-140(%rbp), %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-232(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	shll	$1, %esi
	addl	%esi, %eax
	movl	-232(%rbp), %esi
	addl	-140(%rbp), %esi
	movslq	%esi, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movl	-232(%rbp), %esi
	subl	-140(%rbp), %esi
	movslq	%esi, %rcx
	movq	-216(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movslq	-232(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	shll	$1, %edi
	addl	%edi, %esi
	movl	-232(%rbp), %edi
	addl	-140(%rbp), %edi
	movslq	%edi, %rcx
	movq	-216(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	addl	%edi, %esi
	subl	%esi, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB4_15
.LBB4_14:                               # %cond.false
                                        #   in Loop: Header=BB4_11 Depth=2
	xorl	%eax, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB4_15
.LBB4_15:                               # %cond.end
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB4_17
# BB#16:                                # %cond.true.80
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-232(%rbp), %eax
	subl	-140(%rbp), %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-232(%rbp), %esi
	subl	-140(%rbp), %esi
	movslq	%esi, %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	shll	$1, %esi
	addl	%esi, %eax
	movl	-232(%rbp), %esi
	subl	-140(%rbp), %esi
	movslq	%esi, %rcx
	movq	-216(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	movl	-232(%rbp), %esi
	addl	-140(%rbp), %esi
	movslq	%esi, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	-232(%rbp), %edi
	addl	-140(%rbp), %edi
	movslq	%edi, %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	shll	$1, %edi
	addl	%edi, %esi
	movl	-232(%rbp), %edi
	addl	-140(%rbp), %edi
	movslq	%edi, %rcx
	movq	-216(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	addl	%edi, %esi
	subl	%esi, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false.112
                                        #   in Loop: Header=BB4_11 Depth=2
	xorl	%eax, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_18:                               # %cond.end.113
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB4_21
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_11 Depth=2
	cmpl	$0, -12(%rbp)
	je	.LBB4_21
# BB#20:                                # %cond.true.117
                                        #   in Loop: Header=BB4_11 Depth=2
	movsd	.LCPI4_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movl	-148(%rbp), %eax
	imull	-148(%rbp), %eax
	movl	-152(%rbp), %ecx
	imull	-152(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-280(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB4_25
.LBB4_21:                               # %cond.false.126
                                        #   in Loop: Header=BB4_11 Depth=2
	cmpl	$0, -20(%rbp)
	je	.LBB4_23
# BB#22:                                # %cond.true.128
                                        #   in Loop: Header=BB4_11 Depth=2
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movl	-148(%rbp), %eax
	addl	-152(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	addl	$127, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB4_24
.LBB4_23:                               # %cond.false.135
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-148(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB4_24:                               # %cond.end.142
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-300(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB4_25:                               # %cond.end.145
                                        #   in Loop: Header=BB4_11 Depth=2
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -244(%rbp)
	je	.LBB4_28
# BB#26:                                # %land.lhs.true.149
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-232(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-140(%rbp)
	cmpl	$0, %edx
	jne	.LBB4_28
# BB#27:                                # %if.then.153
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	$255, %eax
	xorl	%ecx, %ecx
	cmpl	$0, -248(%rbp)
	cmovel	%ecx, %eax
	movb	%al, %dl
	movq	-168(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -168(%rbp)
	movb	%dl, (%rsi)
	movl	$0, -248(%rbp)
	jmp	.LBB4_31
.LBB4_28:                               # %if.else.158
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-144(%rbp), %eax
	movb	%al, %cl
	movq	-168(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movb	%cl, (%rdx)
	cmpl	$10, -144(%rbp)
	jle	.LBB4_30
# BB#29:                                # %if.then.163
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -248(%rbp)
.LBB4_30:                               # %if.end.164
                                        #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_31
.LBB4_31:                               # %if.end.165
                                        #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_32
.LBB4_32:                               # %for.inc
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB4_11
.LBB4_33:                               # %for.end
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -216(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_35
# BB#34:                                # %if.then.168
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-256(%rbp), %rax
	movl	-132(%rbp), %ecx
	movl	-228(%rbp), %edx
	subl	-240(%rbp), %edx
	imull	%edx, %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	-160(%rbp), %rsi
	movl	-132(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB4_38
.LBB4_35:                               # %if.else.176
                                        #   in Loop: Header=BB4_9 Depth=1
	leaq	-128(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-236(%rbp), %edx
	movl	-228(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$20, %ecx
	movl	-228(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_37
# BB#36:                                # %if.then.180
                                        #   in Loop: Header=BB4_9 Depth=1
	cvtsi2sdl	-228(%rbp), %xmm0
	cvtsi2sdl	-136(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB4_37:                               # %if.end.185
                                        #   in Loop: Header=BB4_9 Depth=1
	jmp	.LBB4_38
.LBB4_38:                               # %if.end.186
                                        #   in Loop: Header=BB4_9 Depth=1
	jmp	.LBB4_39
.LBB4_39:                               # %for.inc.187
                                        #   in Loop: Header=BB4_9 Depth=1
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB4_9
.LBB4_40:                               # %for.end.189
	cmpq	$0, -32(%rbp)
	je	.LBB4_42
# BB#41:                                # %if.then.191
	movq	-32(%rbp), %rdi
	movq	-256(%rbp), %rsi
	movl	-132(%rbp), %eax
	imull	-140(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-256(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_43
.LBB4_42:                               # %if.else.193
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
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
	movl	-236(%rbp), %esi
	movl	-240(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %r8d
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB4_43:                               # %if.end.199
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-192(%rbp), %rdi
	callq	g_free
	movq	-208(%rbp), %rdi
	callq	g_free
	movq	-160(%rbp), %rdi
	callq	g_free
.LBB4_44:                               # %return
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sobel, .Lfunc_end4-sobel
	.cfi_endproc

	.align	16, 0x90
	.type	sobel_preview_update,@function
sobel_preview_update:                   # @sobel_preview_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_preview_get_drawable
	movl	bvals, %esi
	movl	bvals+4, %edx
	movl	bvals+8, %ecx
	movq	-8(%rbp), %r8
	movq	%rax, %rdi
	callq	sobel
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sobel_preview_update, .Lfunc_end5-sobel_preview_update
	.cfi_endproc

	.align	16, 0x90
	.type	sobel_prepare_row,@function
sobel_prepare_row:                      # @sobel_prepare_row
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movl	36(%rsi), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jle	.LBB6_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB6_6
.LBB6_2:                                # %cond.false
	cmpl	$0, -24(%rbp)
	jge	.LBB6_4
# BB#3:                                 # %cond.true.4
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false.5
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB6_5:                                # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB6_6:                                # %cond.end.6
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -32(%rbp)
.LBB6_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB6_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%eax, %eax
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-8(%rbp), %rcx
	subl	16(%rcx), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB6_7
.LBB6_10:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sobel_prepare_row, .Lfunc_end6-sobel_prepare_row
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
	.size	query.args, 144

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
	.asciz	"horizontal"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Sobel in horizontal direction"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"vertical"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Sobel in vertical direction"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"keep-sign"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Keep sign of result (one direction only)"
	.size	.L.str.11, 41

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"plug-in-sobel"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Specialized direction-dependent edge detection"
	.size	.L.str.13, 47

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"This plugin calculates the gradient with a sobel operator. The user can specify which direction to use. When both directions are used, the result is the RMS of the two gradients; if only one direction is used, the result either the absolut value of the gradient, or 127 + gradient (if the 'keep sign' switch is on). This way, information about the direction of the gradient is preserved. Resulting images are not autoscaled."
	.size	.L.str.14, 425

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Thorsten Schnier"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"1997"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Sobel..."
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<Image>/Filters/Edge-Detect"
	.size	.L.str.19, 28

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"UTF-8"
	.size	.L.str.21, 6

	.type	bvals,@object           # @bvals
	.data
	.align	4
bvals:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	bvals, 12

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.22, 40

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"edge-sobel"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Sobel Edge Detection"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-edge-sobel"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-cancel"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-ok"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"invalidated"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Sobel _horizontally"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"toggled"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Sobel _vertically"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Keep sign of result (one direction only)"
	.size	.L.str.32, 42

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Sobel edge detecting"
	.size	.L.str.33, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
