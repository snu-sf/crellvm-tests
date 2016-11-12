	.text
	.file	"gimpimagemaptool-settings.bc"
	.globl	gimp_image_map_tool_add_settings_gui
	.align	16, 0x90
	.type	gimp_image_map_tool_add_settings_gui,@function
gimp_image_map_tool_add_settings_gui:   # @gimp_image_map_tool_add_settings_gui
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edi, %edi
	movl	$6, %esi
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movq	-16(%rbp), %rsi
	movq	%rax, 384(%rsi)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.1, %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_tool_info_build_options_filename
	movq	%rax, -64(%rbp)
	callq	gimp_directory
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	312(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %r9
	movq	320(%r9), %r8
	movq	-24(%rbp), %r9
	movq	328(%r9), %r9
	movq	-32(%rbp), %r10
	movq	104(%r10), %r10
	movq	-72(%rbp), %r11
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gimp_settings_box_new
	movq	-16(%rbp), %rcx
	movq	%rax, 376(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ebx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	376(%rcx), %rsi
	movq	%rax, %rdi
	movl	%ebx, %edx
	movl	%ebx, %ecx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_settings_box_get_combo
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_image_map_tool_settings_import, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	376(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_image_map_tool_settings_export, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	376(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %r9d
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%r9d, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_map_tool_add_settings_gui, .Lfunc_end0-gimp_image_map_tool_add_settings_gui
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_settings_import,@function
gimp_image_map_tool_settings_import:    # @gimp_image_map_tool_settings_import
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_image_map_tool_settings_import, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_8
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.2
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-48(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
	movl	$0, -4(%rbp)
	jmp	.LBB1_8
.LBB1_7:                                # %if.end.6
	movq	-32(%rbp), %rdi
	callq	gimp_image_map_tool_preview
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movabsq	$.L.str.10, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movl	$1, -4(%rbp)
.LBB1_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_map_tool_settings_import, .Lfunc_end1-gimp_image_map_tool_settings_import
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_settings_export,@function
gimp_image_map_tool_settings_export:    # @gimp_image_map_tool_settings_export
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	cmpq	$0, 384(%rax)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_image_map_tool_settings_export, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_8
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB2_7
# BB#6:                                 # %if.then.2
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-48(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
	movl	$0, -4(%rbp)
	jmp	.LBB2_8
.LBB2_7:                                # %if.end.6
	movq	-24(%rbp), %rdi
	callq	g_filename_display_name
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-56(%rbp), %r8
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movl	$1, -4(%rbp)
.LBB2_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_map_tool_settings_export, .Lfunc_end2-gimp_image_map_tool_settings_export
	.cfi_endproc

	.globl	gimp_image_map_tool_real_settings_import
	.align	16, 0x90
	.type	gimp_image_map_tool_real_settings_import,@function
gimp_image_map_tool_real_settings_import: # @gimp_image_map_tool_real_settings_import
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_map_tool_real_settings_import, .Lfunc_end3-gimp_image_map_tool_real_settings_import
	.cfi_endproc

	.globl	gimp_image_map_tool_real_settings_export
	.align	16, 0x90
	.type	gimp_image_map_tool_real_settings_export,@function
gimp_image_map_tool_real_settings_export: # @gimp_image_map_tool_real_settings_export
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.5, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	312(%rdx), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.6, %rdi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	312(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %r9
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_file
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	-52(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_map_tool_real_settings_export, .Lfunc_end4-gimp_image_map_tool_real_settings_export
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Pre_sets:"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	".settings"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"import"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"export"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP %s tool settings"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"end of %s tool settings"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Writing '%s'\n"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gimp-Tools"
	.size	.L.str.8, 11

	.type	.L__func__.gimp_image_map_tool_settings_import,@object # @__func__.gimp_image_map_tool_settings_import
.L__func__.gimp_image_map_tool_settings_import:
	.asciz	"gimp_image_map_tool_settings_import"
	.size	.L__func__.gimp_image_map_tool_settings_import, 36

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"tool_class->settings_import != NULL"
	.size	.L.str.9, 36

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"settings"
	.size	.L.str.10, 9

	.type	.L__func__.gimp_image_map_tool_settings_export,@object # @__func__.gimp_image_map_tool_settings_export
.L__func__.gimp_image_map_tool_settings_export:
	.asciz	"gimp_image_map_tool_settings_export"
	.size	.L__func__.gimp_image_map_tool_settings_export, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tool_class->settings_export != NULL"
	.size	.L.str.11, 36

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Settings saved to '%s'"
	.size	.L.str.12, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
