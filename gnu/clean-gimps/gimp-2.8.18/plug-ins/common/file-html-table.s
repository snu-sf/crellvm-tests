	.text
	.file	"file-html-table.bc"
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
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.15, %r8
	movl	$1, %r10d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.save_args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%r13, %r8
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r11d, -72(%rbp)        # 4-byte Spill
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.16, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -84(%rbp)         # 4-byte Spill
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
	movl	$3, -44(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.19, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movabsq	$.L.str.9, %rdi
	movabsq	$gtmvals, %rsi
	movabsq	$run.values, %rcx
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movl	$21, run.values
	movl	$0, run.values+8
	callq	gimp_procedural_db_get_data
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %edi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	save_dialog
	cmpl	$0, %eax
	je	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_5
# BB#4:                                 # %if.then.14
	movabsq	$.L.str.9, %rdi
	movabsq	$gtmvals, %rsi
	movl	$1052, %edx             # imm = 0x41C
	callq	gimp_procedural_db_set_data
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -44(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_8
.LBB1_7:                                # %if.else.16
	movl	$4, -44(%rbp)
.LBB1_8:                                # %if.end.17
	cmpl	$3, -44(%rbp)
	je	.LBB1_11
# BB#9:                                 # %land.lhs.true
	cmpq	$0, -64(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.19
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_11:                               # %if.end.20
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
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

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4652007308841189376     # double 1000
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
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
	subq	$928, %rsp              # imm = 0x3A0
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.21, %rax
	xorl	%esi, %esi
	movl	%edi, -20(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.9, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -32(%rbp)
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
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
	movl	-20(%rbp), %edi
	callq	gimp_image_width
	movl	-20(%rbp), %edi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_image_height
	movl	-148(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	cmpl	$4096, %ecx             # imm = 0x1000
	jle	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.23, %rdi
	movl	$6, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -120(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show_all
.LBB3_2:                                # %if.end
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	gtmvals+1024, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.27, %rdi
	movq	-96(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$gtmvals, %rdx
	addq	$1024, %rdx             # imm = 0x400
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movl	$4, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	$1, %r9d
	movl	$4, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -324(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-324(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-328(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -332(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	gtmvals+1036, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rdi
	movq	-96(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$gtmvals, %rdx
	addq	$1036, %rdx             # imm = 0x40C
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %r9d
	movl	$1, %r8d
	movl	$4, %r10d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -380(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	gtmvals+1040, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rdi
	movq	-96(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$gtmvals, %rdx
	addq	$1040, %rdx             # imm = 0x410
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$4, %r10d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -428(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	gtmvals+1028, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.35, %rdi
	movq	-96(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$gtmvals, %rdx
	addq	$1028, %rdx             # imm = 0x404
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gtmvals, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-64(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %r9d
	movl	$3, %r10d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -484(%rbp)        # 4-byte Spill
	movl	%r11d, -488(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.36, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gtm_caption_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	movq	-504(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rcx
	movl	$2, %r8d
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-512(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-88(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gtmvals, %rcx
	addq	$256, %rcx              # imm = 0x100
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gtk_entry_set_text
	movq	-64(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-88(%rbp), %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gtm_cellcontent_callback, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	movq	-576(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	cvtsi2sdl	gtmvals+1032, %xmm3
	movsd	%xmm0, -624(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-624(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -632(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-632(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-624(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-632(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.44, %rdi
	movq	-72(%rbp), %rcx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.45, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$gtmvals, %rcx
	addq	$1032, %rcx             # imm = 0x408
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movl	$60, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-88(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gtmvals, %rcx
	addq	$512, %rcx              # imm = 0x200
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gtk_entry_set_text
	movq	-64(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %r8
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -700(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-700(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.47, %rdi
	movq	-88(%rbp), %rcx
	movq	%rax, -712(%rbp)        # 8-byte Spill
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gtm_clwidth_callback, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	movq	-728(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movl	$60, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-88(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gtmvals, %rcx
	addq	$768, %rcx              # imm = 0x300
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gtk_entry_set_text
	movq	-64(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.49, %rdi
	movq	-88(%rbp), %rcx
	movq	%rax, -768(%rbp)        # 8-byte Spill
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gtm_clheight_callback, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	movq	-784(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	cvtsi2sdl	gtmvals+1044, %xmm3
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-792(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -800(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-800(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-792(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-800(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.51, %rdi
	movq	-72(%rbp), %rcx
	movq	%rax, -832(%rbp)        # 8-byte Spill
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.45, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$gtmvals, %rcx
	addq	$1044, %rcx             # imm = 0x414
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	cvtsi2sdl	gtmvals+1048, %xmm3
	movsd	%xmm0, -848(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-848(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -856(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-856(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-848(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-856(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rdi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.53, %rdi
	movq	-72(%rbp), %rcx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.45, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$gtmvals, %rcx
	addq	$1048, %rcx             # imm = 0x418
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -100(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-100(%rbp), %eax
	addq	$928, %rsp              # imm = 0x3A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	save_dialog, .Lfunc_end3-save_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp22:
	.cfi_offset %rbx, -24
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movl	4(%rdx), %eax
	movq	-32(%rbp), %rdx
	imull	8(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movabsq	$.L.str.54, %rsi
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.55, %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movl	-192(%rbp), %edx        # 4-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
	movl	$0, -12(%rbp)
	jmp	.LBB4_73
.LBB4_2:                                # %if.end
	cmpl	$0, gtmvals+1024
	je	.LBB4_4
# BB#3:                                 # %if.then.12
	movabsq	$.L.str.56, %rsi
	movq	-176(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.57, %rsi
	movq	-176(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB4_4:                                # %if.end.15
	movabsq	$.L.str.58, %rsi
	movq	-176(%rbp), %rdi
	movl	gtmvals+1032, %edx
	movl	gtmvals+1044, %ecx
	movl	gtmvals+1048, %r8d
	movb	$0, %al
	callq	fprintf
	cmpl	$0, gtmvals+1028
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB4_6
# BB#5:                                 # %if.then.18
	movabsq	$.L.str.59, %rsi
	movabsq	$gtmvals, %rdx
	movq	-176(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB4_6:                                # %if.end.20
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	leaq	-168(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-32(%rbp), %rdx
	movl	8(%rdx), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movl	4(%rdi), %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rdi
	movl	12(%rdi), %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movq	%rax, -104(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movl	$.L.str.18, %ecx
	movl	%ecx, %esi
	movl	$gtmvals+512, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB4_8
# BB#7:                                 # %if.then.35
	movabsq	$.L.str.61, %rdi
	movabsq	$gtmvals, %rax
	addq	$512, %rax              # imm = 0x200
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -112(%rbp)
.LBB4_8:                                # %if.end.37
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	movl	$gtmvals+768, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB4_10
# BB#9:                                 # %if.then.41
	movabsq	$.L.str.62, %rdi
	movabsq	$gtmvals, %rax
	addq	$768, %rax              # imm = 0x300
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -120(%rbp)
.LBB4_10:                               # %if.end.43
	cmpq	$0, -112(%rbp)
	jne	.LBB4_12
# BB#11:                                # %if.then.45
	movabsq	$.L.str.63, %rdi
	callq	g_strdup
	movq	%rax, -112(%rbp)
.LBB4_12:                               # %if.end.47
	cmpq	$0, -120(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.49
	movabsq	$.L.str.63, %rdi
	callq	g_strdup
	movq	%rax, -120(%rbp)
.LBB4_14:                               # %if.end.51
	movl	$0, -44(%rbp)
.LBB4_15:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB4_22
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	$0, -48(%rbp)
.LBB4_17:                               # %for.cond.54
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_20
# BB#18:                                # %for.body.57
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	imull	-44(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-88(%rbp), %rdx
	movl	$1, (%rdx,%rax,4)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_17
.LBB4_20:                               # %for.end
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_21
.LBB4_21:                               # %for.inc.60
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_15
.LBB4_22:                               # %for.end.62
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -64(%rbp)
.LBB4_23:                               # %for.cond.63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_25 Depth 2
                                        #       Child Loop BB4_28 Depth 3
                                        #         Child Loop BB4_33 Depth 4
                                        #       Child Loop BB4_47 Depth 3
                                        #         Child Loop BB4_49 Depth 4
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB4_69
# BB#24:                                # %for.body.66
                                        #   in Loop: Header=BB4_23 Depth=1
	movabsq	$.L.str.64, %rsi
	movq	-176(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$0, -60(%rbp)
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB4_25:                               # %for.cond.68
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_28 Depth 3
                                        #         Child Loop BB4_33 Depth 4
                                        #       Child Loop BB4_47 Depth 3
                                        #         Child Loop BB4_49 Depth 4
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_67
# BB#26:                                # %for.body.71
                                        #   in Loop: Header=BB4_25 Depth=2
	leaq	-168(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	callq	gimp_pixel_rgn_get_pixel
	cmpl	$0, gtmvals+1036
	je	.LBB4_56
# BB#27:                                # %if.then.73
                                        #   in Loop: Header=BB4_25 Depth=2
	leaq	-168(%rbp), %rdi
	movl	-60(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	-104(%rbp), %rsi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	callq	gimp_pixel_rgn_get_pixel
.LBB4_28:                               # %while.cond
                                        #   Parent Loop BB4_23 Depth=1
                                        #     Parent Loop BB4_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_33 Depth 4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	color_comp
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -241(%rbp)         # 1-byte Spill
	je	.LBB4_31
# BB#29:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_28 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movl	4(%rdx), %eax
	imull	-44(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rsi
	cmpl	$1, (%rsi,%rdx,4)
	movb	%cl, -241(%rbp)         # 1-byte Spill
	jne	.LBB4_31
# BB#30:                                # %land.rhs
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	setb	%dl
	movb	%dl, -241(%rbp)         # 1-byte Spill
.LBB4_31:                               # %land.end
                                        #   in Loop: Header=BB4_28 Depth=3
	movb	-241(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_32
	jmp	.LBB4_44
.LBB4_32:                               # %while.body
                                        #   in Loop: Header=BB4_28 Depth=3
	jmp	.LBB4_33
.LBB4_33:                               # %while.cond.86
                                        #   Parent Loop BB4_23 Depth=1
                                        #     Parent Loop BB4_25 Depth=2
                                        #       Parent Loop BB4_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	color_comp
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -242(%rbp)         # 1-byte Spill
	je	.LBB4_36
# BB#34:                                # %land.lhs.true.89
                                        #   in Loop: Header=BB4_33 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movl	4(%rdx), %eax
	imull	-44(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rsi
	cmpl	$1, (%rsi,%rdx,4)
	movb	%cl, -242(%rbp)         # 1-byte Spill
	jne	.LBB4_36
# BB#35:                                # %land.rhs.97
                                        #   in Loop: Header=BB4_33 Depth=4
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	4(%rcx), %eax
	setb	%dl
	movb	%dl, -242(%rbp)         # 1-byte Spill
.LBB4_36:                               # %land.end.101
                                        #   in Loop: Header=BB4_33 Depth=4
	movb	-242(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_37
	jmp	.LBB4_38
.LBB4_37:                               # %while.body.102
                                        #   in Loop: Header=BB4_33 Depth=4
	leaq	-168(%rbp), %rdi
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movq	-104(%rbp), %rsi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	callq	gimp_pixel_rgn_get_pixel
	jmp	.LBB4_33
.LBB4_38:                               # %while.end
                                        #   in Loop: Header=BB4_28 Depth=3
	cmpl	$0, -68(%rbp)
	je	.LBB4_40
# BB#39:                                # %if.then.107
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
.LBB4_40:                               # %if.end.110
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB4_42
# BB#41:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_28 Depth=3
	cmpl	$0, -72(%rbp)
	jne	.LBB4_43
.LBB4_42:                               # %if.then.115
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB4_43:                               # %if.end.116
                                        #   in Loop: Header=BB4_28 Depth=3
	leaq	-168(%rbp), %rdi
	movl	-60(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -68(%rbp)
	movq	-104(%rbp), %rsi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	callq	gimp_pixel_rgn_get_pixel
	jmp	.LBB4_28
.LBB4_44:                               # %while.end.117
                                        #   in Loop: Header=BB4_25 Depth=2
	cmpl	$1, -72(%rbp)
	jg	.LBB4_46
# BB#45:                                # %lor.lhs.false.120
                                        #   in Loop: Header=BB4_25 Depth=2
	cmpl	$1, -76(%rbp)
	jle	.LBB4_55
.LBB4_46:                               # %if.then.123
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	$0, -44(%rbp)
.LBB4_47:                               # %for.cond.124
                                        #   Parent Loop BB4_23 Depth=1
                                        #     Parent Loop BB4_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_49 Depth 4
	movl	-44(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB4_54
# BB#48:                                # %for.body.127
                                        #   in Loop: Header=BB4_47 Depth=3
	movl	$0, -48(%rbp)
.LBB4_49:                               # %for.cond.128
                                        #   Parent Loop BB4_23 Depth=1
                                        #     Parent Loop BB4_25 Depth=2
                                        #       Parent Loop BB4_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-48(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB4_52
# BB#50:                                # %for.body.131
                                        #   in Loop: Header=BB4_49 Depth=4
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-44(%rbp), %edx
	addl	-64(%rbp), %edx
	imull	%edx, %ecx
	movl	-48(%rbp), %edx
	addl	-60(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-88(%rbp), %rsi
	movl	$0, (%rsi,%rax,4)
# BB#51:                                # %for.inc.139
                                        #   in Loop: Header=BB4_49 Depth=4
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_49
.LBB4_52:                               # %for.end.141
                                        #   in Loop: Header=BB4_47 Depth=3
	jmp	.LBB4_53
.LBB4_53:                               # %for.inc.142
                                        #   in Loop: Header=BB4_47 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_47
.LBB4_54:                               # %for.end.144
                                        #   in Loop: Header=BB4_25 Depth=2
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	imull	-64(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-88(%rbp), %rdx
	movl	$2, (%rdx,%rax,4)
.LBB4_55:                               # %if.end.150
                                        #   in Loop: Header=BB4_25 Depth=2
	jmp	.LBB4_56
.LBB4_56:                               # %if.end.151
                                        #   in Loop: Header=BB4_25 Depth=2
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	imull	-64(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-88(%rbp), %rdx
	cmpl	$1, (%rdx,%rax,4)
	jne	.LBB4_58
# BB#57:                                # %if.then.159
                                        #   in Loop: Header=BB4_25 Depth=2
	movabsq	$.L.str.65, %rsi
	movq	-176(%rbp), %rdi
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %r8d
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %r9d
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %r10d
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	fprintf
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB4_58:                               # %if.end.167
                                        #   in Loop: Header=BB4_25 Depth=2
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	imull	-64(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-88(%rbp), %rdx
	cmpl	$2, (%rdx,%rax,4)
	jne	.LBB4_60
# BB#59:                                # %if.then.175
                                        #   in Loop: Header=BB4_25 Depth=2
	movabsq	$.L.str.66, %rsi
	movq	-176(%rbp), %rdi
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-112(%rbp), %r8
	movq	-120(%rbp), %r9
	movq	-96(%rbp), %rax
	movzbl	(%rax), %r10d
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %r11d
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %ebx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movb	$0, %al
	callq	fprintf
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB4_60:                               # %if.end.183
                                        #   in Loop: Header=BB4_25 Depth=2
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	imull	-64(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-88(%rbp), %rdx
	cmpl	$0, (%rdx,%rax,4)
	je	.LBB4_65
# BB#61:                                # %if.then.191
                                        #   in Loop: Header=BB4_25 Depth=2
	cmpl	$0, gtmvals+1040
	je	.LBB4_63
# BB#62:                                # %if.then.193
                                        #   in Loop: Header=BB4_25 Depth=2
	movabsq	$.L.str.67, %rsi
	movabsq	$gtmvals, %rax
	addq	$256, %rax              # imm = 0x100
	movq	-176(%rbp), %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB4_64
.LBB4_63:                               # %if.else
                                        #   in Loop: Header=BB4_25 Depth=2
	movabsq	$.L.str.68, %rsi
	movabsq	$gtmvals, %rax
	addq	$256, %rax              # imm = 0x100
	movq	-176(%rbp), %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB4_64:                               # %if.end.196
                                        #   in Loop: Header=BB4_25 Depth=2
	jmp	.LBB4_65
.LBB4_65:                               # %if.end.197
                                        #   in Loop: Header=BB4_25 Depth=2
	jmp	.LBB4_66
.LBB4_66:                               # %for.inc.198
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_25
.LBB4_67:                               # %for.end.200
                                        #   in Loop: Header=BB4_23 Depth=1
	movabsq	$.L.str.69, %rsi
	movq	-176(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	cvtsi2sdl	-64(%rbp), %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_progress_update
	movl	%eax, -268(%rbp)        # 4-byte Spill
# BB#68:                                # %for.inc.205
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB4_23
.LBB4_69:                               # %for.end.207
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	cmpl	$0, gtmvals+1024
	movl	%eax, -272(%rbp)        # 4-byte Spill
	je	.LBB4_71
# BB#70:                                # %if.then.210
	movabsq	$.L.str.70, %rsi
	movq	-176(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB4_72
.LBB4_71:                               # %if.else.212
	movabsq	$.L.str.71, %rsi
	movq	-176(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB4_72:                               # %if.end.214
	movq	-176(%rbp), %rdi
	callq	fclose
	movq	-32(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	$1, -12(%rbp)
.LBB4_73:                               # %return
	movl	-12(%rbp), %eax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_image, .Lfunc_end4-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	gtm_caption_callback,@function
gtm_caption_callback:                   # @gtm_caption_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movabsq	$gtmvals, %rdi
	movl	$255, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	strncpy
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gtm_caption_callback, .Lfunc_end5-gtm_caption_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gtm_cellcontent_callback,@function
gtm_cellcontent_callback:               # @gtm_cellcontent_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movabsq	$gtmvals, %rsi
	addq	$256, %rsi              # imm = 0x100
	movl	$255, %ecx
	movl	%ecx, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	strncpy
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gtm_cellcontent_callback, .Lfunc_end6-gtm_cellcontent_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gtm_clwidth_callback,@function
gtm_clwidth_callback:                   # @gtm_clwidth_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movabsq	$gtmvals, %rsi
	addq	$512, %rsi              # imm = 0x200
	movl	$255, %ecx
	movl	%ecx, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	strncpy
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gtm_clwidth_callback, .Lfunc_end7-gtm_clwidth_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gtm_clheight_callback,@function
gtm_clheight_callback:                  # @gtm_clheight_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movabsq	$gtmvals, %rsi
	addq	$768, %rsi              # imm = 0x300
	movl	$255, %ecx
	movl	%ecx, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	strncpy
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gtm_clheight_callback, .Lfunc_end8-gtm_clheight_callback
	.cfi_endproc

	.align	16, 0x90
	.type	color_comp,@function
color_comp:                             # @color_comp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movzbl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	movzbl	(%rsi), %edx
	cmpl	%edx, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB9_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movzbl	1(%rdx), %eax
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB9_3
# BB#2:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -17(%rbp)         # 1-byte Spill
.LBB9_3:                                # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	color_comp, .Lfunc_end9-color_comp
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

	.type	query.save_args,@object # @query.save_args
	.align	16
query.save_args:
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.7
	.size	query.save_args, 120

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0) }"
	.size	.L.str.1, 37

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
	.asciz	"Drawable to save"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"filename"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"raw-filename"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file-gtm-save"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP Table Magic"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Allows you to draw an HTML table in GIMP. See help for more info."
	.size	.L.str.11, 66

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Daniel Dunbar"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1998"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"HTML table"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"text/html"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"html,htm"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.zero	1
	.size	.L.str.18, 1

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"UTF-8"
	.size	.L.str.20, 6

	.type	gtmvals,@object         # @gtmvals
	.data
	.align	4
gtmvals:
	.asciz	"Made with GIMP Table Magic\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"&nbsp;\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	256
	.zero	256
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.size	gtmvals, 1052

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"file-html-table"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Warning"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-wilber-eek"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"You are about to create a huge\nHTML file which will most likely\ncrash your browser."
	.size	.L.str.24, 84

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"HTML Page Options"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Generate full HTML document"
	.size	.L.str.26, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"If checked GTM will output a full HTML document with <HTML>, <BODY>, etc. tags instead of just the table html."
	.size	.L.str.27, 111

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"toggled"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Table Creation Options"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Use cellspan"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"If checked GTM will replace any rectangular sections of identically colored blocks with one large cell with ROWSPAN and COLSPAN values."
	.size	.L.str.31, 136

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Co_mpress TD tags"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Checking this tag will cause GTM to leave no whitespace between the TD tags and the cellcontent.  This is only necessary for pixel level positioning control."
	.size	.L.str.33, 158

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"C_aption"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Check if you would like to have the table captioned."
	.size	.L.str.35, 53

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"The text for the table caption."
	.size	.L.str.36, 32

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"changed"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"active"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"sensitive"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"C_ell content:"
	.size	.L.str.40, 15

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"The text to go into each cell."
	.size	.L.str.41, 31

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Table Options"
	.size	.L.str.42, 14

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Border:"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"The number of pixels in the table border."
	.size	.L.str.44, 42

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"value-changed"
	.size	.L.str.45, 14

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Width:"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"The width for each table cell.  Can be a number or a percent."
	.size	.L.str.47, 62

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Height:"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"The height for each table cell.  Can be a number or a percent."
	.size	.L.str.49, 63

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Cell-_padding:"
	.size	.L.str.50, 15

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"The amount of cell padding."
	.size	.L.str.51, 28

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Cell-_spacing:"
	.size	.L.str.52, 15

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"The amount of cell spacing."
	.size	.L.str.53, 28

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"w"
	.size	.L.str.54, 2

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.55, 36

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"<HTML>\n<HEAD><TITLE>%s</TITLE></HEAD>\n<BODY>\n"
	.size	.L.str.56, 46

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"<H1>%s</H1>\n"
	.size	.L.str.57, 13

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"<TABLE BORDER=%d CELLPADDING=%d CELLSPACING=%d>\n"
	.size	.L.str.58, 49

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"<CAPTION>%s</CAPTION>\n"
	.size	.L.str.59, 23

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Saving '%s'"
	.size	.L.str.60, 12

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	" WIDTH=\"%s\""
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	" HEIGHT=\"%s\" "
	.size	.L.str.62, 14

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	" "
	.size	.L.str.63, 2

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"   <TR>\n"
	.size	.L.str.64, 9

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"      <TD%s%sBGCOLOR=#%02x%02x%02x>"
	.size	.L.str.65, 36

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"      <TD ROWSPAN=\"%d\" COLSPAN=\"%d\"%s%sBGCOLOR=#%02x%02x%02x>"
	.size	.L.str.66, 62

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%s</TD>\n"
	.size	.L.str.67, 9

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"\n      %s\n      </TD>\n"
	.size	.L.str.68, 23

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"   </TR>\n"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"</TABLE></BODY></HTML>\n"
	.size	.L.str.70, 24

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"</TABLE>\n"
	.size	.L.str.71, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
