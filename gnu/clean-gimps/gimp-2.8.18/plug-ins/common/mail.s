	.text
	.file	"mail.bc"
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
	movabsq	$.L.str.18, %rdi
	movl	$1, %esi
	movabsq	$mail_icon, %rdx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_plugin_icon_register
	movl	%eax, -68(%rbp)         # 4-byte Spill
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.27, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.27, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -44(%rbp)
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %edx
	movl	%edx, -52(%rbp)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edx
	movl	%edx, -56(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.18, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#3:                                 # %if.then
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_24
.LBB1_24:                               # %if.then
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_25
.LBB1_25:                               # %if.then
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_14
.LBB1_4:                                # %sw.bb
	movabsq	$.L.str.18, %rdi
	movabsq	$mail_info, %rsi
	callq	gimp_procedural_db_get_data
	movl	-52(%rbp), %edi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_image_get_filename
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.11
	movq	-64(%rbp), %rdi
	callq	g_filename_display_basename
	movabsq	$mail_info, %rdi
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rsi
	callq	g_strlcpy
	movq	-72(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB1_6:                                # %if.end
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.16
	movl	$4, -48(%rbp)
.LBB1_8:                                # %if.end.17
	jmp	.LBB1_15
.LBB1_9:                                # %sw.bb.18
	cmpl	$8, -12(%rbp)
	jge	.LBB1_11
# BB#10:                                # %if.then.20
	movl	$1, -48(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               # %if.else
	movabsq	$mail_info, %rdi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rsi
	callq	g_strlcpy
	movabsq	$mail_info, %rcx
	addq	$256, %rcx              # imm = 0x100
	movl	$256, %r8d              # imm = 0x100
	movl	%r8d, %edx
	movq	-24(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rcx, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_strlcpy
	movabsq	$mail_info, %rcx
	addq	$512, %rcx              # imm = 0x200
	movl	$256, %r8d              # imm = 0x100
	movl	%r8d, %edx
	movq	-24(%rbp), %rsi
	movq	208(%rsi), %rsi
	movq	%rcx, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_strlcpy
	movabsq	$mail_info, %rcx
	addq	$768, %rcx              # imm = 0x300
	movl	$256, %r8d              # imm = 0x100
	movl	%r8d, %edx
	movq	-24(%rbp), %rsi
	movq	248(%rsi), %rsi
	movq	%rcx, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_strlcpy
	movabsq	$mail_info, %rcx
	addq	$1024, %rcx             # imm = 0x400
	movl	$256, %r8d              # imm = 0x100
	movl	%r8d, %edx
	movq	-24(%rbp), %rsi
	movq	288(%rsi), %rsi
	movq	%rcx, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_strlcpy
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB1_12:                               # %if.end.40
	jmp	.LBB1_15
.LBB1_13:                               # %sw.bb.41
	movabsq	$.L.str.18, %rdi
	movabsq	$mail_info, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB1_15
.LBB1_14:                               # %sw.default
	jmp	.LBB1_15
.LBB1_15:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_21
# BB#16:                                # %if.then.44
	movabsq	$mail_info, %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-44(%rbp), %ecx
	callq	save_image
	movl	%eax, -48(%rbp)
	cmpl	$3, -48(%rbp)
	jne	.LBB1_20
# BB#17:                                # %if.then.47
	cmpq	$0, mesg_body
	je	.LBB1_19
# BB#18:                                # %if.then.49
	movabsq	$mail_info, %rax
	addq	$1024, %rax             # imm = 0x400
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	mesg_body, %rsi
	movq	%rax, %rdi
	callq	g_strlcpy
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB1_19:                               # %if.end.51
	movabsq	$.L.str.18, %rdi
	movabsq	$mail_info, %rsi
	movl	$1280, %edx             # imm = 0x500
	callq	gimp_procedural_db_set_data
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB1_20:                               # %if.end.53
	jmp	.LBB1_21
.LBB1_21:                               # %if.end.54
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.55
	movl	$1, -48(%rbp)
.LBB1_23:                               # %if.end.56
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	addq	$192, %rsp
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.29, %rdi
	xorl	%esi, %esi
	movl	$0, -92(%rbp)
	callq	gimp_ui_init
	movabsq	$.L.str.30, %rdi
	callq	gimp_gimprc_query
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$mail_info, %rax
	addq	$512, %rax              # imm = 0x200
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strlcpy
	movq	-88(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_free
.LBB3_2:                                # %if.end
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movabsq	$.L.str.34, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.32, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.33, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-120(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -124(%rbp)       # 4-byte Spill
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
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	callq	gtk_entry_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$255, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_max_length
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mail_info, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdi
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	-236(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.36, %rsi
	movabsq	$mail_entry_callback, %rcx
	movabsq	$mail_info, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rbx
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$255, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_max_length
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mail_info, %rcx
	addq	$256, %rcx              # imm = 0x100
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gtk_entry_set_text
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %edi
	movabsq	$.L.str.37, %rsi
	movl	$14, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	-92(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -92(%rbp)
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movl	%r9d, -308(%rbp)        # 4-byte Spill
	callq	g_dpgettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-308(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.36, %rsi
	movabsq	$mail_entry_callback, %rcx
	movabsq	$mail_info, %rdi
	addq	$256, %rdi              # imm = 0x100
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rbx
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_widget_grab_focus
	callq	gtk_entry_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$255, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_max_length
	movq	-48(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mail_info, %rcx
	addq	$512, %rcx              # imm = 0x200
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gtk_entry_set_text
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %edi
	movabsq	$.L.str.38, %rsi
	movl	$14, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	-92(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -92(%rbp)
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movl	%r9d, -372(%rbp)        # 4-byte Spill
	callq	g_dpgettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movl	-372(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.36, %rsi
	movabsq	$mail_entry_callback, %rcx
	movabsq	$mail_info, %rdi
	addq	$512, %rdi              # imm = 0x200
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rbx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-48(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$255, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_max_length
	movq	-48(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mail_info, %rcx
	addq	$768, %rcx              # imm = 0x300
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gtk_entry_set_text
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movl	-92(%rbp), %edx
	movl	%edx, %r9d
	addl	$1, %r9d
	movl	%r9d, -92(%rbp)
	movl	%edx, -428(%rbp)        # 4-byte Spill
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movl	-428(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.36, %rsi
	movabsq	$mail_entry_callback, %rcx
	movabsq	$mail_info, %rdi
	addq	$768, %rdi              # imm = 0x300
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rbx
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-64(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movq	%rax, %rdi
	movl	%r9d, %esi
	movl	%r9d, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-40(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -492(%rbp)        # 4-byte Spill
	movl	-492(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_text_buffer_new
	movabsq	$.L.str.36, %rsi
	movabsq	$mesg_body_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %ebx
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-504(%rbp), %rdx        # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rbx, %r8
	callq	g_signal_connect_data
	movabsq	$mail_info, %rcx
	addq	$1024, %rcx             # imm = 0x400
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-80(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_set_text
	movq	-80(%rbp), %rdi
	callq	gtk_text_view_new_with_buffer
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-72(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_wrap_mode
	movq	-64(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -96(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-96(%rbp), %eax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	save_dialog, .Lfunc_end3-save_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$3, -32(%rbp)
	movq	$0, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	find_extension
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB4_12
.LBB4_2:                                # %if.end
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	gimp_temp_name
	leaq	-84(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movabsq	$mail_info, %rcx
	addq	$256, %rcx              # imm = 0x100
	movabsq	$.L.str.40, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, -72(%rbp)
	movq	$0, -64(%rbp)
	callq	sendmail_pipe
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then.6
	movl	$0, -4(%rbp)
	jmp	.LBB4_12
.LBB4_4:                                # %if.end.7
	movq	-96(%rbp), %rdi
	callq	create_headers
	movq	-96(%rbp), %rdi
	callq	fflush
	movl	-28(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %r8
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_file_save
	cmpl	$0, %eax
	je	.LBB4_6
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	valid_file
	cmpl	$0, %eax
	jne	.LBB4_7
.LBB4_6:                                # %if.then.12
	jmp	.LBB4_10
.LBB4_7:                                # %if.end.13
	leaq	-104(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	to64
	cmpl	$0, %eax
	jne	.LBB4_9
# BB#8:                                 # %if.then.16
	movabsq	$.L.str.41, %rdi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_message
	movq	-104(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB4_10
.LBB4_9:                                # %if.end.17
	movabsq	$.L.str.42, %rsi
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %error.19
	movl	$2, %esi
	movl	-84(%rbp), %edi
	callq	kill
	movl	$0, -32(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB4_11:                               # %cleanup
	movq	-96(%rbp), %rdi
	callq	fclose
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movl	-84(%rbp), %edi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	waitpid
	movl	-84(%rbp), %edi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_spawn_close_pid
	movq	-48(%rbp), %rdi
	callq	g_unlink
	movq	-48(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	g_free
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_image, .Lfunc_end4-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	mail_entry_callback,@function
mail_entry_callback:                    # @mail_entry_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strlcpy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mail_entry_callback, .Lfunc_end5-mail_entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	mesg_body_callback,@function
mesg_body_callback:                     # @mesg_body_callback
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
	subq	$176, %rsp
	leaq	-96(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_text_buffer_get_bounds
	movq	mesg_body, %rdi
	callq	g_free
	leaq	-96(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_get_text
	movq	%rax, mesg_body
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mesg_body_callback, .Lfunc_end6-mesg_body_callback
	.cfi_endproc

	.align	16, 0x90
	.type	find_extension,@function
find_extension:                         # @find_extension
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movl	$46, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strrchr
	movq	%rax, -32(%rbp)
.LBB7_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_4
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_4
# BB#3:                                 # %lor.lhs.false.3
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$47, %esi
	movq	-32(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB7_5
.LBB7_4:                                # %if.then
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	$0, -8(%rbp)
	jmp	.LBB7_10
.LBB7_5:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$.L.str.44, %rsi
	movq	-32(%rbp), %rdi
	callq	g_ascii_strcasecmp
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	je	.LBB7_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$.L.str.45, %rsi
	movq	-32(%rbp), %rdi
	callq	g_ascii_strcasecmp
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	je	.LBB7_8
# BB#7:                                 # %if.then.13
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_10
.LBB7_8:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$46, %esi
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rdi
	callq	strrchr
	movq	%rax, -32(%rbp)
# BB#9:                                 # %if.end.15
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_1
.LBB7_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	find_extension, .Lfunc_end7-find_extension
	.cfi_endproc

	.align	16, 0x90
	.type	sendmail_pipe,@function
sendmail_pipe:                          # @sendmail_pipe
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$2, %eax
	leaq	-28(%rbp), %rdx
	leaq	-40(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%r9, %r8
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, 32(%rsp)
	callq	g_spawn_async_with_pipes
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-40(%rbp), %rdi
	callq	g_error_free
	movq	-24(%rbp), %rsi
	movl	$-1, (%rsi)
	movq	$0, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movabsq	$.L.str.47, %rsi
	movl	-28(%rbp), %edi
	callq	fdopen
	movq	%rax, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sendmail_pipe, .Lfunc_end8-sendmail_pipe
	.cfi_endproc

	.align	16, 0x90
	.type	create_headers,@function
create_headers:                         # @create_headers
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
	subq	$80, %rsp
	movabsq	$.L.str.48, %rsi
	movabsq	$mail_info, %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.49, %rsi
	movabsq	$mail_info, %rdx
	addq	$768, %rdx              # imm = 0x300
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$mail_info+512, %ecx
	movl	%ecx, %edi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	strlen
	cmpq	$0, %rax
	jbe	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.50, %rsi
	movabsq	$mail_info, %rax
	addq	$512, %rax              # imm = 0x200
	movq	-8(%rbp), %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB9_2:                                # %if.end
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.53, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.54, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.55, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.56, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.57, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	cmpq	$0, mesg_body
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB9_4
# BB#3:                                 # %if.then.10
	movabsq	$.L.str.41, %rsi
	movq	-8(%rbp), %rdi
	movq	mesg_body, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB9_4:                                # %if.end.12
	movabsq	$.L.str.55, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$mail_info, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	find_content_type
	movabsq	$.L.str.56, %rsi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.58, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.59, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.60, %rsi
	movabsq	$mail_info, %rdx
	movq	-8(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.61, %rsi
	movabsq	$mail_info, %rdx
	movq	-8(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	g_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	create_headers, .Lfunc_end9-create_headers
	.cfi_endproc

	.align	16, 0x90
	.type	valid_file,@function
valid_file:                             # @valid_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	leaq	-152(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	stat
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -153(%rbp)         # 1-byte Spill
	jne	.LBB10_2
# BB#1:                                 # %land.rhs
	cmpq	$0, -104(%rbp)
	setg	%al
	movb	%al, -153(%rbp)         # 1-byte Spill
.LBB10_2:                               # %land.end
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	valid_file, .Lfunc_end10-valid_file
	.cfi_endproc

	.align	16, 0x90
	.type	to64,@function
to64:                                   # @to64
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$2160, %rsp             # imm = 0x870
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -2100(%rbp)
	movl	$0, -2104(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	%eax, %esi
	callq	g_mapped_file_new
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_9
.LBB11_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	g_mapped_file_get_contents
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_mapped_file_get_length
	movq	%rax, -2112(%rbp)
	movq	$0, -2128(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-2128(%rbp), %rax
	cmpq	-2112(%rbp), %rax
	jae	.LBB11_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %ecx
	movq	-2112(%rbp), %rdx
	subq	-2128(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB11_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %ecx
	movq	%rcx, -2144(%rbp)       # 8-byte Spill
	jmp	.LBB11_7
.LBB11_6:                               # %cond.false
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-2112(%rbp), %rax
	subq	-2128(%rbp), %rax
	movq	%rax, -2144(%rbp)       # 8-byte Spill
.LBB11_7:                               # %cond.end
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-2144(%rbp), %rax       # 8-byte Reload
	movl	$1, %edx
	leaq	-2100(%rbp), %r8
	leaq	-2104(%rbp), %r9
	leaq	-2096(%rbp), %rcx
	movq	%rax, -2136(%rbp)
	movq	-48(%rbp), %rax
	addq	-2128(%rbp), %rax
	movq	-2136(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_base64_encode_step
	movl	$1, %edx
	movl	%edx, %esi
	leaq	-2096(%rbp), %rdi
	movq	%rax, -2120(%rbp)
	movq	-2120(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	fwrite
	movq	-2136(%rbp), %rcx
	addq	-2128(%rbp), %rcx
	movq	%rcx, -2128(%rbp)
	movq	%rax, -2152(%rbp)       # 8-byte Spill
	jmp	.LBB11_3
.LBB11_8:                               # %for.end
	movl	$1, %edi
	leaq	-2100(%rbp), %rdx
	leaq	-2104(%rbp), %rcx
	leaq	-2096(%rbp), %rsi
	callq	g_base64_encode_close
	movl	$1, %edi
	movl	%edi, %esi
	leaq	-2096(%rbp), %rdi
	movq	%rax, -2120(%rbp)
	movq	-2120(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	fwrite
	movq	-40(%rbp), %rdi
	movq	%rax, -2160(%rbp)       # 8-byte Spill
	callq	g_mapped_file_unref
	movl	$1, -4(%rbp)
.LBB11_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$2160, %rsp             # imm = 0x870
	popq	%rbp
	retq
.Lfunc_end11:
	.size	to64, .Lfunc_end11-to64
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB12_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB12_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_message, .Lfunc_end12-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	find_content_type,@function
find_content_type:                      # @find_content_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movabsq	$.Lfind_content_type.type_mappings, %rax
	movl	$160, %ecx
	movl	%ecx, %edx
	leaq	-176(%rbp), %rsi
	movq	%rdi, -16(%rbp)
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-16(%rbp), %rdi
	callq	find_extension
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.77, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB13_8
.LBB13_2:                               # %if.end
	movl	$0, -188(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
.LBB13_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-188(%rbp), %rax
	cmpq	$0, -176(%rbp,%rax,8)
	je	.LBB13_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-184(%rbp), %rdi
	movslq	-188(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rsi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB13_6
# BB#5:                                 # %if.then.6
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-176(%rbp,%rcx,8), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB13_8
.LBB13_6:                               # %if.end.10
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-188(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB13_3
.LBB13_7:                               # %while.end
	movabsq	$.L.str.78, %rdi
	movq	-184(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
.LBB13_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	find_content_type, .Lfunc_end13-find_content_type
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	4                       # 0x4
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
	.asciz	"to-address"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The email address to send to"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"from-address"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The email address for the From: field"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"subject"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The subject"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"comment"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The Comment"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"encapsulation"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ignored"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"plug-in-mail-image"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Send the image by email"
	.size	.L.str.19, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"You need to have sendmail installed"
	.size	.L.str.20, 36

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Adrian Likins, Reagan Blundell"
	.size	.L.str.21, 31

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Adrian Likins, Reagan Blundell, Daniel Risacher, Spencer Kimball and Peter Mattis"
	.size	.L.str.22, 82

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"1995-1997"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Send by E_mail..."
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"*"
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"<Image>/File/Send"
	.size	.L.str.26, 18

	.type	mail_icon,@object       # @mail_icon
	.section	.rodata,"a",@progbits
	.align	4
mail_icon:
	.asciz	"GdkP\000\000\002`\002\001\000\002\000\000\000@\000\000\000\020\000\000\000\020\245\000\000\000\000\001\210\212\2050\205\210\212\205\377\001\210\212\2050\210\000\000\000\000\002\210\212\2050\210\212\205\377\205\377\377\377\377\002\210\212\205\377\210\212\2050\206\000\000\000\000\013\210\212\2050\210\212\205\377\377\377\377\377\331\326\320\377\311\307\301\377\301\277\272\377\257\254\251\377\241\240\232\377\377\377\377\377\210\212\205\377\210\212\2050\204\000\000\000\000\r\210\212\2050\210\212\205\377\377\377\377\377\331\326\320\377\250\247\241\377\276\275\271\377\316\315\312\377\317\316\314\377\306\305\305\377\275\275\275\377\377\377\377\377\210\212\205\377\210\212\2050\203\000\000\000\000\007\210\212\205\377\344\344\343\377\271\270\263\377\225\224\216\377\333\332\331\377\354\354\353\377\365\365\365\377\202\377\377\377\377\004\305\305\305\377\261\256\252\377\352\352\351\377\210\212\205\377\203\000\000\000\000\004\210\212\205\377\367\367\367\377\257\256\254\377\365\365\365\377\204\377\377\377\377\005\353\353\353\377\330\330\330\377\315\314\311\377\367\367\367\377\210\212\205\377\203\000\000\000\000\004\210\212\205\377\377\377\377\377\346\345\342\377\252\251\247\377\202\353\353\353\377\007\341\341\341\377\330\330\330\377\317\317\317\377\246\245\241\377\363\363\362\377\377\377\377\377\210\212\205\377\203\000\000\000\000\005\210\212\205\377\377\377\377\377\373\373\370\377\342\342\337\377\222\221\221\377\202\266\264\263\377\006\274\273\267\377\241\240\240\377\363\363\362\377\367\365\363\377\377\377\377\377\210\212\205\377\203\000\000\000\000\005\210\212\205\377\377\377\377\377\373\373\370\377\360\357\355\377\245\242\235\377\203\373\373\370\377\005\220\215\207\377\371\367\363\377\362\360\354\377\377\377\377\377\210\212\205\377\203\000\000\000\000\004\210\212\205\377\377\377\377\377\373\372\367\377\262\261\256\377\203\373\373\370\377\202\371\370\364\377\004\274\273\267\377\351\347\342\377\377\377\377\377\210\212\205\377\203\000\000\000\000\r\210\212\205\377\377\377\377\377\311\307\304\377\373\373\370\377\367\365\361\377\372\371\366\377\370\366\362\377\372\370\365\377\367\365\362\377\353\350\343\377\317\316\312\377\377\377\377\377\210\212\205\377\203\000\000\000\000\002\210\212\205\377\360\360\360\377\211\377\377\377\377\002\360\360\360\377\210\212\205\377\203\000\000\000\000\001\210\212\205\217\213\210\212\205\377\001\210\212\205\217\221\000\000\000\000"
	.size	mail_icon, 609

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"UTF-8"
	.size	.L.str.28, 6

	.type	mail_info,@object       # @mail_info
	.local	mail_info
	.comm	mail_info,1280,1
	.type	mesg_body,@object       # @mesg_body
	.local	mesg_body
	.comm	mesg_body,8,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"mail"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gump-from"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Send by Email"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-mail"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-cancel"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Send"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Filename:"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"changed"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"email-address\004_To:"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"email-address\004_From:"
	.size	.L.str.38, 21

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"S_ubject:"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"/usr/sbin/sendmail"
	.size	.L.str.40, 19

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%s"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\n--GUMP-MIME-boundary--\n"
	.size	.L.str.42, 25

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"some sort of error with the file extension or lack thereof"
	.size	.L.str.43, 59

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	".gz"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	".bz2"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Could not start sendmail (%s)"
	.size	.L.str.46, 30

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"wb"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"To: %s \n"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Subject: %s \n"
	.size	.L.str.49, 14

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"From: %s \n"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"X-Mailer: GIMP Useless Mail Plug-In %s\n"
	.size	.L.str.51, 40

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"2.8.18"
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"MIME-Version: 1.0\n"
	.size	.L.str.53, 19

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Content-type: multipart/mixed; boundary=GUMP-MIME-boundary\n"
	.size	.L.str.54, 60

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\n\n"
	.size	.L.str.55, 3

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"--GUMP-MIME-boundary\n"
	.size	.L.str.56, 22

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Content-type: text/plain; charset=UTF-8\n\n"
	.size	.L.str.57, 42

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Content-type: %s\n"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Content-transfer-encoding: base64\n"
	.size	.L.str.59, 35

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Content-disposition: attachment; filename=\"%s\"\n"
	.size	.L.str.60, 48

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Content-description: %s\n\n"
	.size	.L.str.61, 26

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gif"
	.size	.L.str.62, 4

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"image/gif"
	.size	.L.str.63, 10

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"jpg"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"image/jpeg"
	.size	.L.str.65, 11

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"jpeg"
	.size	.L.str.66, 5

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"tif"
	.size	.L.str.67, 4

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"image/tiff"
	.size	.L.str.68, 11

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"tiff"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"png"
	.size	.L.str.70, 4

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"image/png"
	.size	.L.str.71, 10

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"g3"
	.size	.L.str.72, 3

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"image/g3fax"
	.size	.L.str.73, 12

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"ps"
	.size	.L.str.74, 3

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"application/postscript"
	.size	.L.str.75, 23

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"eps"
	.size	.L.str.76, 4

	.type	.Lfind_content_type.type_mappings,@object # @find_content_type.type_mappings
	.section	.rodata,"a",@progbits
	.align	16
.Lfind_content_type.type_mappings:
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.65
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.68
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.75
	.quad	0
	.quad	0
	.size	.Lfind_content_type.type_mappings, 160

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"application/octet-stream"
	.size	.L.str.77, 25

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"image/x-%s"
	.size	.L.str.78, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
