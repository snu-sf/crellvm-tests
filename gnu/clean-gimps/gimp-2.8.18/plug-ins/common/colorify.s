	.text
	.file	"colorify.bc"
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
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.16, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.16, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$3, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movl	$21, run.values(%rip)
	movl	-44(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	-60(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_21
.LBB1_21:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_22
.LBB1_22:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.8, %rdi
	movabsq	$cvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	colorify_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_20
.LBB1_5:                                # %if.end
	jmp	.LBB1_13
.LBB1_6:                                # %sw.bb.9
	cmpl	$4, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -44(%rbp)
.LBB1_8:                                # %if.end.11
	cmpl	$3, -44(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movq	128(%rax), %rcx
	movq	%rcx, cvals
	movq	136(%rax), %rcx
	movq	%rcx, cvals+8
	movq	144(%rax), %rcx
	movq	%rcx, cvals+16
	movq	152(%rax), %rax
	movq	%rax, cvals+24
.LBB1_10:                               # %if.end.16
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.17
	movabsq	$.L.str.8, %rdi
	movabsq	$cvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	cmpl	$3, -44(%rbp)
	jne	.LBB1_19
# BB#14:                                # %if.then.20
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	colorify
	cmpl	$0, -60(%rbp)
	jne	.LBB1_16
# BB#15:                                # %if.then.24
	movabsq	$.L.str.8, %rdi
	movabsq	$cvals, %rax
	movl	$32, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_16:                               # %if.end.26
	cmpl	$1, -60(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.28
	callq	gimp_displays_flush
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.30
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.31
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_20:                               # %return
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
	.type	colorify_dialog,@function
colorify_dialog:                        # @colorify_dialog
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
	subq	$336, %rsp              # imm = 0x150
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.19, %rax
	movl	$1, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movabsq	$.L.str.21, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.22, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.23, %r11
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
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-32(%rbp), %rdi
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
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
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
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.24, %rsi
	movabsq	$colorify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$7, %esi
	movl	$1, %edx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$6, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movl	$30, %ecx
	movabsq	$cvals, %rsi
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	gimp_color_button_new
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_color_button_get_color, %rcx
	movabsq	$cvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, custom_color_button
	movq	custom_color_button, %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	custom_color_button, %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %edx
	movl	$7, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$4, %r10d
	movq	custom_color_button, %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -252(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	custom_color_button, %rdi
	callq	gtk_widget_show
	movl	$0, -84(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -84(%rbp)
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	gtk_button_new
	xorl	%esi, %esi
	movl	$512, %edx              # imm = 0x200
	movabsq	$button_color, %rcx
	movq	%rax, -64(%rbp)
	movslq	-84(%rbp), %rax
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	gimp_color_area_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$30, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.28, %rsi
	movabsq	$predefined_color_callback, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movabsq	$button_color, %rcx
	movq	-64(%rbp), %rdi
	movslq	-84(%rbp), %r10
	shlq	$5, %r10
	addq	%r10, %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$4, %r11d
	xorl	%ebx, %ebx
	movq	-64(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-84(%rbp), %r14d
	addl	$1, %r14d
	movq	%rax, %rdi
	movl	%r14d, %ecx
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -292(%rbp)        # 4-byte Spill
	movl	%r11d, -296(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -88(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-88(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	colorify_dialog, .Lfunc_end3-colorify_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4589866978952703325     # double 0.0722
.LCPI4_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI4_2:
	.quad	4596827742536767164     # double 0.21260000000000001
	.text
	.align	16, 0x90
	.type	colorify,@function
colorify:                               # @colorify
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movslq	-20(%rbp), %rcx
	movl	%eax, lum_red_lookup(,%rcx,4)
	cvtsi2sdl	-20(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-20(%rbp), %rcx
	movl	%eax, lum_green_lookup(,%rcx,4)
	cvtsi2sdl	-20(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movslq	-20(%rbp), %rcx
	movl	%eax, lum_blue_lookup(,%rcx,4)
	cvtsi2sdl	-20(%rbp), %xmm0
	mulsd	cvals, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	-20(%rbp), %rcx
	movl	%eax, final_red_lookup(,%rcx,4)
	cvtsi2sdl	-20(%rbp), %xmm0
	mulsd	cvals+8, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	-20(%rbp), %rcx
	movl	%eax, final_green_lookup(,%rcx,4)
	cvtsi2sdl	-20(%rbp), %xmm0
	mulsd	cvals+16, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	-20(%rbp), %rcx
	movl	%eax, final_blue_lookup(,%rcx,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_10
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
.LBB4_6:                                # %for.cond.29
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	imull	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_9
# BB#7:                                 # %for.body.33
                                        #   in Loop: Header=BB4_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	-20(%rbp), %eax
	imull	-32(%rbp), %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	imull	-32(%rbp), %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movl	-32(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	callq	colorify_func
# BB#8:                                 # %for.inc.38
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB4_6
.LBB4_9:                                # %for.end.40
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_11
.LBB4_10:                               # %if.else
	xorl	%esi, %esi
	movabsq	$colorify_func, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_rgn_iterate2
.LBB4_11:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	colorify, .Lfunc_end4-colorify
	.cfi_endproc

	.align	16, 0x90
	.type	predefined_color_callback,@function
predefined_color_callback:              # @predefined_color_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	custom_color_button, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	predefined_color_callback, .Lfunc_end5-predefined_color_callback
	.cfi_endproc

	.align	16, 0x90
	.type	colorify_func,@function
colorify_func:                          # @colorify_func
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movl	lum_red_lookup(,%rcx,4), %edx
	movq	-8(%rbp), %rcx
	movzbl	1(%rcx), %eax
	movl	%eax, %ecx
	addl	lum_green_lookup(,%rcx,4), %edx
	movq	-8(%rbp), %rcx
	movzbl	2(%rcx), %eax
	movl	%eax, %ecx
	addl	lum_blue_lookup(,%rcx,4), %edx
	movl	%edx, -36(%rbp)
	movslq	-36(%rbp), %rcx
	movl	final_red_lookup(,%rcx,4), %eax
	movb	%al, %r8b
	movq	-16(%rbp), %rcx
	movb	%r8b, (%rcx)
	movslq	-36(%rbp), %rcx
	movl	final_green_lookup(,%rcx,4), %eax
	movb	%al, %r8b
	movq	-16(%rbp), %rcx
	movb	%r8b, 1(%rcx)
	movslq	-36(%rbp), %rcx
	movl	final_blue_lookup(,%rcx,4), %eax
	movb	%al, %r8b
	movq	-16(%rbp), %rcx
	movb	%r8b, 2(%rcx)
	cmpl	$4, -20(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	3(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB6_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	colorify_func, .Lfunc_end6-colorify_func
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
	.long	10                      # 0xa
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
	.asciz	"color"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Color to apply"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-colorify"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Replace all colors with shades of a specified color"
	.size	.L.str.9, 52

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Makes an average of the RGB channels and uses it to set the color"
	.size	.L.str.10, 66

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Francisco Bustamante"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1.1"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Colorif_y..."
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"RGB*"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<Image>/Colors/Modify"
	.size	.L.str.15, 22

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

	.type	cvals,@object           # @cvals
	.data
	.align	8
cvals:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	cvals, 32

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"Colorifying"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"colorify"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Colorify"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-colorify"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-cancel"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-ok"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"invalidated"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Custom color:"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Colorify Custom Color"
	.size	.L.str.26, 22

	.type	custom_color_button,@object # @custom_color_button
	.local	custom_color_button
	.comm	custom_color_button,8,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"color-changed"
	.size	.L.str.27, 14

	.type	button_color,@object    # @button_color
	.data
	.align	16
button_color:
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	button_color, 224

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"clicked"
	.size	.L.str.28, 8

	.type	lum_red_lookup,@object  # @lum_red_lookup
	.local	lum_red_lookup
	.comm	lum_red_lookup,1024,16
	.type	lum_green_lookup,@object # @lum_green_lookup
	.local	lum_green_lookup
	.comm	lum_green_lookup,1024,16
	.type	lum_blue_lookup,@object # @lum_blue_lookup
	.local	lum_blue_lookup
	.comm	lum_blue_lookup,1024,16
	.type	final_red_lookup,@object # @final_red_lookup
	.local	final_red_lookup
	.comm	final_red_lookup,1024,16
	.type	final_green_lookup,@object # @final_green_lookup
	.local	final_green_lookup
	.comm	final_green_lookup,1024,16
	.type	final_blue_lookup,@object # @final_blue_lookup
	.local	final_blue_lookup
	.comm	final_blue_lookup,1024,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
