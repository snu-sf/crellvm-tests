	.text
	.file	"presets.bc"
	.globl	preset_save_button_set_sensitive
	.align	16, 0x90
	.type	preset_save_button_set_sensitive,@function
preset_save_button_set_sensitive:       # @preset_save_button_set_sensitive
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	presetsavebutton, %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_7
.LBB0_2:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_5
# BB#4:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_6:                                # %if.end
	jmp	.LBB0_7
.LBB0_7:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_9
# BB#8:                                 # %if.then.8
	movq	presetsavebutton, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
.LBB0_9:                                # %if.end.11
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	preset_save_button_set_sensitive, .Lfunc_end0-preset_save_button_set_sensitive
	.cfi_endproc

	.globl	preset_free
	.align	16, 0x90
	.type	preset_free,@function
preset_free:                            # @preset_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	movq	selected_preset_orig_name, %rdi
	callq	g_free
	movq	selected_preset_filename, %rdi
	callq	g_free
	popq	%rbp
	retq
.Lfunc_end1:
	.size	preset_free, .Lfunc_end1-preset_free
	.cfi_endproc

	.globl	select_preset
	.align	16, 0x90
	.type	select_preset,@function
select_preset:                          # @select_preset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	factory_defaults, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB2_7
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	findfile
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	je	.LBB2_5
# BB#2:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	callq	load_preset
	cmpl	$0, %eax
	je	.LBB2_4
# BB#3:                                 # %if.then.7
	movl	$-2, -12(%rbp)
.LBB2_4:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	movl	$-1, -12(%rbp)
.LBB2_6:                                # %if.end.8
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.9
	cmpl	$0, -12(%rbp)
	jne	.LBB2_9
# BB#8:                                 # %if.then.10
	movabsq	$pcvals, %rax
	addq	$104, %rax
	movq	%rax, %rdi
	callq	set_colorbrushes
.LBB2_9:                                # %if.end.11
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	select_preset, .Lfunc_end2-select_preset
	.cfi_endproc

	.align	16, 0x90
	.type	load_preset,@function
load_preset:                            # @load_preset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$1104, %rsp             # imm = 0x450
	movabsq	$.L.str.13, %rsi
	xorl	%eax, %eax
	movl	$1024, %ecx             # imm = 0x400
	movl	%ecx, %edx
	leaq	-1040(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%r8, %rdi
	movq	%rsi, -1064(%rbp)       # 8-byte Spill
	movl	%eax, %esi
	callq	memset
	movq	-16(%rbp), %rdi
	movq	-1064(%rbp), %rsi       # 8-byte Reload
	callq	fopen
	movq	%rax, -1048(%rbp)
	cmpq	$0, -1048(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$-1, -4(%rbp)
	jmp	.LBB3_12
.LBB3_2:                                # %if.end
	movl	$10, %esi
	leaq	-1040(%rbp), %rdi
	movq	-1048(%rbp), %rdx
	callq	fgets
	movabsq	$.L.str.15, %rsi
	movl	$4, %ecx
	movl	%ecx, %edx
	leaq	-1040(%rbp), %rdi
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then.6
	movq	-1048(%rbp), %rdi
	callq	fclose
	movq	-16(%rbp), %rdi
	movl	%eax, -1076(%rbp)       # 4-byte Spill
	callq	load_old_preset
	movl	%eax, -4(%rbp)
	jmp	.LBB3_12
.LBB3_4:                                # %if.end.9
	callq	restore_default_values
.LBB3_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-1048(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB3_6
	jmp	.LBB3_11
.LBB3_6:                                # %while.body
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	$1024, %esi             # imm = 0x400
	leaq	-1040(%rbp), %rdi
	movq	-1048(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB3_8
# BB#7:                                 # %if.then.15
	jmp	.LBB3_11
.LBB3_8:                                # %if.end.16
                                        #   in Loop: Header=BB3_5 Depth=1
	leaq	-1040(%rbp), %rdi
	callq	g_strchomp
	movl	$61, %esi
	leaq	-1040(%rbp), %rdi
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	strchr
	movq	%rax, -1056(%rbp)
	cmpq	$0, -1056(%rbp)
	jne	.LBB3_10
# BB#9:                                 # %if.then.22
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_5
.LBB3_10:                               # %if.end.23
                                        #   in Loop: Header=BB3_5 Depth=1
	leaq	-1040(%rbp), %rdi
	movq	-1056(%rbp), %rax
	movb	$0, (%rax)
	movq	-1056(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1056(%rbp)
	movq	-1056(%rbp), %rsi
	callq	set_values
	jmp	.LBB3_5
.LBB3_11:                               # %while.end
	movq	-1048(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -1092(%rbp)       # 4-byte Spill
.LBB3_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$1104, %rsp             # imm = 0x450
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_preset, .Lfunc_end3-load_preset
	.cfi_endproc

	.globl	create_presetpage
	.align	16, 0x90
	.type	create_presetpage,@function
create_presetpage:                      # @create_presetpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movabsq	$.L.str.1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -72(%rbp)
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movq	%rax, -64(%rbp)
	movq	%rax, presetnameentry
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movq	%rax, -64(%rbp)
	movq	%rax, presetsavebutton
	movq	presetsavebutton, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movl	$4, %esi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_image_new_from_stock
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_image
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rsi
	movabsq	$create_save_preset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	create_presets_list
	movq	%rax, -56(%rbp)
	movq	%rax, presetlist
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, store
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movq	%rax, -80(%rbp)
	callq	add_factory_defaults
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rsi
	movabsq	$apply_preset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.8, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, delete_button
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.4, %rsi
	movabsq	$delete_preset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.9, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.10, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.4, %rsi
	movabsq	$preset_refresh_presets, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	%rax, presetdesclabel
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-64(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movl	$240, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -364(%rbp)       # 4-byte Spill
	movss	-364(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
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
	callq	preset_read_dir_into_list
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gtk_notebook_append_page_menu
	movl	%eax, -380(%rbp)        # 4-byte Spill
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	create_presetpage, .Lfunc_end4-create_presetpage
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	create_save_preset,@function
create_save_preset:                     # @create_save_preset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	cmpq	$0, create_save_preset.window
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	create_save_preset.window, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.61, %rsi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.62, %r9
	movabsq	$.L.str.63, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.64, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -104(%rbp)       # 4-byte Spill
	movq	%r14, -112(%rbp)        # 8-byte Spill
	callq	gimp_dialog_new
	movq	%rax, create_save_preset.window
	movq	create_save_preset.window, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.65, %rsi
	movabsq	$save_preset_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	create_save_preset.window, %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%r8, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.66, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	movabsq	$create_save_preset.window, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	create_save_preset.window, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	create_save_preset.window, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.67, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_text_buffer_new
	movabsq	$.L.str.68, %rsi
	movabsq	$preset_desc_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	movq	%r10, %r8
	callq	g_signal_connect_data
	movabsq	$presetdesc, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_set_text
	movq	-72(%rbp), %rdi
	callq	gtk_text_view_new_with_buffer
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$192, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	create_save_preset.window, %rdi
	callq	gtk_widget_show
.LBB5_3:                                # %return
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	create_save_preset, .Lfunc_end5-create_save_preset
	.cfi_endproc

	.align	16, 0x90
	.type	create_presets_list,@function
create_presets_list:                    # @create_presets_list
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
	subq	$160, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_scrolled_window_set_policy
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movl	$2, %edi
	movl	$64, %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.123, %rdx
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	%esi, %r8d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movq	-48(%rbp), %rdx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$2, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_selection_set_mode
	movabsq	$.L.str.68, %rsi
	movabsq	$presets_list_select_preset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	create_presets_list, .Lfunc_end6-create_presets_list
	.cfi_endproc

	.align	16, 0x90
	.type	add_factory_defaults,@function
add_factory_defaults:                   # @add_factory_defaults
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
	subq	$32, %rsp
	leaq	-32(%rbp), %rsi
	movq	store, %rdi
	callq	gtk_list_store_append
	leaq	-32(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	store, %rdi
	movq	factory_defaults, %rcx
	movb	$0, %al
	callq	gtk_list_store_set
	leaq	-32(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	store, %rdi
	movq	factory_defaults, %rcx
	movb	$0, %al
	callq	gtk_list_store_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	add_factory_defaults, .Lfunc_end7-add_factory_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	apply_preset,@function
apply_preset:                           # @apply_preset
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
	subq	$80, %rsp
	leaq	-56(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-64(%rbp), %rdi
	callq	select_preset
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	restore_values
	movq	selected_preset_filename, %rdi
	callq	g_free
	movq	-64(%rbp), %rcx
	movq	%rcx, selected_preset_filename
.LBB8_2:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	apply_preset, .Lfunc_end8-apply_preset
	.cfi_endproc

	.align	16, 0x90
	.type	delete_preset,@function
delete_preset:                          # @delete_preset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-56(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB9_8
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -64(%rbp)
	je	.LBB9_7
# BB#2:                                 # %if.then.2
	movabsq	$.L.str, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	findfile
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free
	cmpq	$0, -80(%rbp)
	je	.LBB9_6
# BB#3:                                 # %if.then.6
	movq	-80(%rbp), %rdi
	callq	can_delete_preset
	cmpl	$0, %eax
	je	.LBB9_5
# BB#4:                                 # %if.then.9
	movq	-80(%rbp), %rdi
	callq	g_unlink
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB9_5:                                # %if.end
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB9_6:                                # %if.end.11
	callq	preset_refresh_presets
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB9_7:                                # %if.end.12
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.13
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	delete_preset, .Lfunc_end9-delete_preset
	.cfi_endproc

	.align	16, 0x90
	.type	preset_refresh_presets,@function
preset_refresh_presets:                 # @preset_refresh_presets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	movq	store, %rdi
	callq	gtk_list_store_clear
	callq	add_factory_defaults
	callq	preset_read_dir_into_list
	popq	%rbp
	retq
.Lfunc_end10:
	.size	preset_refresh_presets, .Lfunc_end10-preset_refresh_presets
	.cfi_endproc

	.align	16, 0x90
	.type	preset_read_dir_into_list,@function
preset_read_dir_into_list:              # @preset_read_dir_into_list
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
	movabsq	$.L.str, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movabsq	$get_object_name, %r8
	movq	presetlist, %rsi
	movq	%rcx, %rdx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	movl	%eax, %ecx
	movq	-8(%rbp), %r9           # 8-byte Reload
	callq	readdirintolist_extended
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	preset_read_dir_into_list, .Lfunc_end11-preset_read_dir_into_list
	.cfi_endproc

	.align	16, 0x90
	.type	load_old_preset,@function
load_old_preset:                        # @load_old_preset
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
	subq	$32, %rsp
	movabsq	$.L.str.16, %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$-1, -4(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movabsq	$pcvals, %rax
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	$5088, %ecx             # imm = 0x13E0
	movl	%ecx, %edx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	fclose
	xorl	%r8d, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movslq	-28(%rbp), %rcx
	cmpq	$5088, %rcx             # imm = 0x13E0
	cmovnel	%r9d, %r8d
	movl	%r8d, -4(%rbp)
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB12_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	load_old_preset, .Lfunc_end12-load_old_preset
	.cfi_endproc

	.align	16, 0x90
	.type	set_values,@function
set_values:                             # @set_values
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.17, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$presetdesc, %rsi
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	parse_desc
	jmp	.LBB13_128
.LBB13_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals
	jmp	.LBB13_127
.LBB13_4:                               # %if.else.5
	movq	-8(%rbp), %rdi
	movl	$.L.str.19, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_6
# BB#5:                                 # %if.then.8
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+8
	jmp	.LBB13_126
.LBB13_6:                               # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.20, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_8
# BB#7:                                 # %if.then.13
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+16
	jmp	.LBB13_125
.LBB13_8:                               # %if.else.15
	movq	-8(%rbp), %rdi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_10
# BB#9:                                 # %if.then.18
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, %edi
	callq	orientation_type_input
	movl	%eax, pcvals+24
	jmp	.LBB13_124
.LBB13_10:                              # %if.else.21
	movq	-8(%rbp), %rdi
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_12
# BB#11:                                # %if.then.24
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+3408
	jmp	.LBB13_123
.LBB13_12:                              # %if.else.26
	movq	-8(%rbp), %rdi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_14
# BB#13:                                # %if.then.29
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+3416
	jmp	.LBB13_122
.LBB13_14:                              # %if.else.31
	movq	-8(%rbp), %rdi
	movl	$.L.str.24, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_16
# BB#15:                                # %if.then.34
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+3424
	jmp	.LBB13_121
.LBB13_16:                              # %if.else.36
	movq	-8(%rbp), %rdi
	movl	$.L.str.25, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_18
# BB#17:                                # %if.then.39
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, %edi
	callq	size_type_input
	movl	%eax, pcvals+3432
	jmp	.LBB13_120
.LBB13_18:                              # %if.else.42
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_20
# BB#19:                                # %if.then.45
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+32
	jmp	.LBB13_119
.LBB13_20:                              # %if.else.47
	movq	-8(%rbp), %rdi
	movl	$.L.str.27, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_22
# BB#21:                                # %if.then.50
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, pcvals+3408
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+3424
	movsd	%xmm0, pcvals+3416
	jmp	.LBB13_118
.LBB13_22:                              # %if.else.52
	movq	-8(%rbp), %rdi
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_24
# BB#23:                                # %if.then.55
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+48
	jmp	.LBB13_117
.LBB13_24:                              # %if.else.57
	movq	-8(%rbp), %rdi
	movl	$.L.str.29, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_26
# BB#25:                                # %if.then.60
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+56
	jmp	.LBB13_116
.LBB13_26:                              # %if.else.62
	movq	-8(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_28
# BB#27:                                # %if.then.65
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+3352
	jmp	.LBB13_115
.LBB13_28:                              # %if.else.67
	movq	-8(%rbp), %rdi
	movl	$.L.str.31, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_30
# BB#29:                                # %if.then.70
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, %edi
	callq	general_bg_type_input
	movl	%eax, pcvals+64
	jmp	.LBB13_114
.LBB13_30:                              # %if.else.73
	movq	-8(%rbp), %rdi
	movl	$.L.str.32, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_32
# BB#31:                                # %if.then.76
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+72
	jmp	.LBB13_113
.LBB13_32:                              # %if.else.78
	movq	-8(%rbp), %rdi
	movl	$.L.str.33, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_34
# BB#33:                                # %if.then.81
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+536
	jmp	.LBB13_112
.LBB13_34:                              # %if.else.83
	movq	-8(%rbp), %rdi
	movl	$.L.str.34, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_36
# BB#35:                                # %if.then.86
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+3376
	jmp	.LBB13_111
.LBB13_36:                              # %if.else.88
	movq	-8(%rbp), %rdi
	movl	$.L.str.35, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_38
# BB#37:                                # %if.then.91
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+3392
	jmp	.LBB13_110
.LBB13_38:                              # %if.else.93
	movq	-8(%rbp), %rdi
	movl	$.L.str.36, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_40
# BB#39:                                # %if.then.96
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+3400
	jmp	.LBB13_109
.LBB13_40:                              # %if.else.98
	movq	-8(%rbp), %rdi
	movl	$.L.str.37, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_42
# BB#41:                                # %if.then.101
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+5068
	jmp	.LBB13_108
.LBB13_42:                              # %if.else.103
	movq	-8(%rbp), %rdi
	movl	$.L.str.38, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_44
# BB#43:                                # %if.then.106
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+5072
	jmp	.LBB13_107
.LBB13_44:                              # %if.else.108
	movq	-8(%rbp), %rdi
	movl	$.L.str.39, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_46
# BB#45:                                # %if.then.111
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+3440
	jmp	.LBB13_106
.LBB13_46:                              # %if.else.113
	movq	-8(%rbp), %rdi
	movl	$.L.str.40, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_48
# BB#47:                                # %if.then.116
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+80
	jmp	.LBB13_105
.LBB13_48:                              # %if.else.118
	movq	-8(%rbp), %rdi
	movl	$.L.str.41, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_50
# BB#49:                                # %if.then.121
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+88
	jmp	.LBB13_104
.LBB13_50:                              # %if.else.123
	movq	-8(%rbp), %rdi
	movl	$.L.str.42, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_52
# BB#51:                                # %if.then.126
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+96
	jmp	.LBB13_103
.LBB13_52:                              # %if.else.128
	movq	-8(%rbp), %rdi
	movl	$.L.str.43, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_54
# BB#53:                                # %if.then.131
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+3380
	jmp	.LBB13_102
.LBB13_54:                              # %if.else.133
	movq	-8(%rbp), %rdi
	movl	$.L.str.44, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_56
# BB#55:                                # %if.then.136
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, %edi
	callq	place_type_input
	movl	%eax, pcvals+540
	jmp	.LBB13_101
.LBB13_56:                              # %if.else.139
	movq	-8(%rbp), %rdi
	movl	$.L.str.45, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_58
# BB#57:                                # %if.then.142
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+3348
	jmp	.LBB13_100
.LBB13_58:                              # %if.else.144
	movq	-8(%rbp), %rdi
	movl	$.L.str.46, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_60
# BB#59:                                # %if.then.147
	movabsq	$pcvals, %rax
	addq	$104, %rax
	movl	$200, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strlcpy
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB13_99
.LBB13_60:                              # %if.else.149
	movq	-8(%rbp), %rdi
	movl	$.L.str.47, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_62
# BB#61:                                # %if.then.152
	movabsq	$pcvals, %rax
	addq	$304, %rax              # imm = 0x130
	movl	$200, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strlcpy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB13_98
.LBB13_62:                              # %if.else.154
	movq	-8(%rbp), %rdi
	movl	$.L.str.48, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_64
# BB#63:                                # %if.then.157
	movq	-16(%rbp), %rdi
	callq	parse_rgb_string
	movabsq	$pcvals, %rdi
	addq	$504, %rdi              # imm = 0x1F8
	movl	$255, %r8d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movb	1(%rax), %dl
	movq	-24(%rbp), %rax
	movzbl	%cl, %esi
	movzbl	%dl, %edx
	movzbl	2(%rax), %ecx
	callq	gimp_rgba_set_uchar
	jmp	.LBB13_97
.LBB13_64:                              # %if.else.161
	movq	-8(%rbp), %rdi
	movl	$.L.str.49, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_66
# BB#65:                                # %if.then.164
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+3344
	jmp	.LBB13_96
.LBB13_66:                              # %if.else.166
	movq	-8(%rbp), %rdi
	movl	$.L.str.50, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_68
# BB#67:                                # %if.then.169
	movq	-16(%rbp), %rdi
	callq	set_orient_vector
	jmp	.LBB13_95
.LBB13_68:                              # %if.else.170
	movq	-8(%rbp), %rdi
	movl	$.L.str.51, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_70
# BB#69:                                # %if.then.173
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+3360
	jmp	.LBB13_94
.LBB13_70:                              # %if.else.175
	movq	-8(%rbp), %rdi
	movl	$.L.str.52, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_72
# BB#71:                                # %if.then.178
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+3368
	jmp	.LBB13_93
.LBB13_72:                              # %if.else.180
	movq	-8(%rbp), %rdi
	movl	$.L.str.53, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_74
# BB#73:                                # %if.then.183
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+3384
	jmp	.LBB13_92
.LBB13_74:                              # %if.else.185
	movq	-8(%rbp), %rdi
	movl	$.L.str.54, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_76
# BB#75:                                # %if.then.188
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+5048
	jmp	.LBB13_91
.LBB13_76:                              # %if.else.190
	movq	-8(%rbp), %rdi
	movl	$.L.str.55, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_78
# BB#77:                                # %if.then.193
	movq	-16(%rbp), %rdi
	callq	set_size_vector
	jmp	.LBB13_90
.LBB13_78:                              # %if.else.194
	movq	-8(%rbp), %rdi
	movl	$.L.str.56, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_80
# BB#79:                                # %if.then.197
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+5056
	jmp	.LBB13_89
.LBB13_80:                              # %if.else.199
	movq	-8(%rbp), %rdi
	movl	$.L.str.57, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_82
# BB#81:                                # %if.then.202
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, pcvals+5064
	jmp	.LBB13_88
.LBB13_82:                              # %if.else.204
	movq	-8(%rbp), %rdi
	movl	$.L.str.58, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_84
# BB#83:                                # %if.then.207
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	%eax, %edi
	callq	color_type_input
	movl	%eax, pcvals+5076
	jmp	.LBB13_87
.LBB13_84:                              # %if.else.210
	movq	-8(%rbp), %rdi
	movl	$.L.str.59, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_86
# BB#85:                                # %if.then.213
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, pcvals+5080
.LBB13_86:                              # %if.end
	jmp	.LBB13_87
.LBB13_87:                              # %if.end.215
	jmp	.LBB13_88
.LBB13_88:                              # %if.end.216
	jmp	.LBB13_89
.LBB13_89:                              # %if.end.217
	jmp	.LBB13_90
.LBB13_90:                              # %if.end.218
	jmp	.LBB13_91
.LBB13_91:                              # %if.end.219
	jmp	.LBB13_92
.LBB13_92:                              # %if.end.220
	jmp	.LBB13_93
.LBB13_93:                              # %if.end.221
	jmp	.LBB13_94
.LBB13_94:                              # %if.end.222
	jmp	.LBB13_95
.LBB13_95:                              # %if.end.223
	jmp	.LBB13_96
.LBB13_96:                              # %if.end.224
	jmp	.LBB13_97
.LBB13_97:                              # %if.end.225
	jmp	.LBB13_98
.LBB13_98:                              # %if.end.226
	jmp	.LBB13_99
.LBB13_99:                              # %if.end.227
	jmp	.LBB13_100
.LBB13_100:                             # %if.end.228
	jmp	.LBB13_101
.LBB13_101:                             # %if.end.229
	jmp	.LBB13_102
.LBB13_102:                             # %if.end.230
	jmp	.LBB13_103
.LBB13_103:                             # %if.end.231
	jmp	.LBB13_104
.LBB13_104:                             # %if.end.232
	jmp	.LBB13_105
.LBB13_105:                             # %if.end.233
	jmp	.LBB13_106
.LBB13_106:                             # %if.end.234
	jmp	.LBB13_107
.LBB13_107:                             # %if.end.235
	jmp	.LBB13_108
.LBB13_108:                             # %if.end.236
	jmp	.LBB13_109
.LBB13_109:                             # %if.end.237
	jmp	.LBB13_110
.LBB13_110:                             # %if.end.238
	jmp	.LBB13_111
.LBB13_111:                             # %if.end.239
	jmp	.LBB13_112
.LBB13_112:                             # %if.end.240
	jmp	.LBB13_113
.LBB13_113:                             # %if.end.241
	jmp	.LBB13_114
.LBB13_114:                             # %if.end.242
	jmp	.LBB13_115
.LBB13_115:                             # %if.end.243
	jmp	.LBB13_116
.LBB13_116:                             # %if.end.244
	jmp	.LBB13_117
.LBB13_117:                             # %if.end.245
	jmp	.LBB13_118
.LBB13_118:                             # %if.end.246
	jmp	.LBB13_119
.LBB13_119:                             # %if.end.247
	jmp	.LBB13_120
.LBB13_120:                             # %if.end.248
	jmp	.LBB13_121
.LBB13_121:                             # %if.end.249
	jmp	.LBB13_122
.LBB13_122:                             # %if.end.250
	jmp	.LBB13_123
.LBB13_123:                             # %if.end.251
	jmp	.LBB13_124
.LBB13_124:                             # %if.end.252
	jmp	.LBB13_125
.LBB13_125:                             # %if.end.253
	jmp	.LBB13_126
.LBB13_126:                             # %if.end.254
	jmp	.LBB13_127
.LBB13_127:                             # %if.end.255
	jmp	.LBB13_128
.LBB13_128:                             # %if.end.256
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	set_values, .Lfunc_end13-set_values
	.cfi_endproc

	.align	16, 0x90
	.type	parse_desc,@function
parse_desc:                             # @parse_desc
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strcompress
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	g_strlcpy
	movq	-32(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	parse_desc, .Lfunc_end14-parse_desc
	.cfi_endproc

	.align	16, 0x90
	.type	parse_rgb_string,@function
parse_rgb_string:                       # @parse_rgb_string
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %edi
	callq	hexval
	shll	$4, %eax
	movq	-8(%rbp), %rcx
	movsbl	1(%rcx), %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	hexval
	movl	-12(%rbp), %edi         # 4-byte Reload
	orl	%eax, %edi
	movb	%dil, %dl
	movb	%dl, parse_rgb_string.col
	movq	-8(%rbp), %rcx
	movsbl	2(%rcx), %edi
	callq	hexval
	shll	$4, %eax
	movq	-8(%rbp), %rcx
	movsbl	3(%rcx), %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	hexval
	movl	-16(%rbp), %edi         # 4-byte Reload
	orl	%eax, %edi
	movb	%dil, %dl
	movb	%dl, parse_rgb_string.col+1
	movq	-8(%rbp), %rcx
	movsbl	4(%rcx), %edi
	callq	hexval
	shll	$4, %eax
	movq	-8(%rbp), %rcx
	movsbl	5(%rcx), %edi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	hexval
	movabsq	$parse_rgb_string.col, %rcx
	movl	-20(%rbp), %edi         # 4-byte Reload
	orl	%eax, %edi
	movb	%dil, %dl
	movb	%dl, parse_rgb_string.col+2
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	parse_rgb_string, .Lfunc_end15-parse_rgb_string
	.cfi_endproc

	.align	16, 0x90
	.type	set_orient_vector,@function
set_orient_vector:                      # @set_orient_vector
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	$44, %esi
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_15
.LBB16_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movl	$44, %esi
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	movslq	-20(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, (%rcx)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB16_4
# BB#3:                                 # %if.then.5
	jmp	.LBB16_15
.LBB16_4:                               # %if.end.6
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movl	$44, %esi
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	movslq	-20(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.13
	jmp	.LBB16_15
.LBB16_6:                               # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movl	$44, %esi
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	movslq	-20(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 16(%rcx)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB16_8
# BB#7:                                 # %if.then.21
	jmp	.LBB16_15
.LBB16_8:                               # %if.end.22
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movl	$44, %esi
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	movslq	-20(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB16_10
# BB#9:                                 # %if.then.29
	jmp	.LBB16_15
.LBB16_10:                              # %if.end.30
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movl	$44, %esi
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	movslq	-20(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 32(%rcx)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB16_12
# BB#11:                                # %if.then.37
	jmp	.LBB16_15
.LBB16_12:                              # %if.end.38
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movl	$44, %esi
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	movslq	-20(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 40(%rcx)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB16_14
# BB#13:                                # %if.then.46
	jmp	.LBB16_15
.LBB16_14:                              # %if.end.47
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	%rax, %rdi
	callq	atoi
	movabsq	$pcvals, %rdi
	addq	$544, %rdi              # imm = 0x220
	movslq	-20(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rdi
	movl	%eax, 48(%rdi)
.LBB16_15:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	set_orient_vector, .Lfunc_end16-set_orient_vector
	.cfi_endproc

	.align	16, 0x90
	.type	set_size_vector,@function
set_size_vector:                        # @set_size_vector
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	atoi
	movl	$44, %esi
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_9
.LBB17_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movl	$44, %esi
	movabsq	$pcvals, %rcx
	addq	$3448, %rcx             # imm = 0xD78
	movslq	-20(%rbp), %rdi
	shlq	$5, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, (%rcx)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB17_4
# BB#3:                                 # %if.then.5
	jmp	.LBB17_9
.LBB17_4:                               # %if.end.6
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movl	$44, %esi
	movabsq	$pcvals, %rcx
	addq	$3448, %rcx             # imm = 0xD78
	movslq	-20(%rbp), %rdi
	shlq	$5, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.13
	jmp	.LBB17_9
.LBB17_6:                               # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movl	$44, %esi
	movabsq	$pcvals, %rcx
	addq	$3448, %rcx             # imm = 0xD78
	movslq	-20(%rbp), %rdi
	shlq	$5, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 16(%rcx)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB17_8
# BB#7:                                 # %if.then.21
	jmp	.LBB17_9
.LBB17_8:                               # %if.end.22
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movabsq	$pcvals, %rcx
	addq	$3448, %rcx             # imm = 0xD78
	movslq	-20(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rcx
	movsd	%xmm0, 24(%rcx)
.LBB17_9:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	set_size_vector, .Lfunc_end17-set_size_vector
	.cfi_endproc

	.align	16, 0x90
	.type	hexval,@function
hexval:                                 # @hexval
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
	subq	$16, %rsp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %edi
	callq	g_ascii_tolower
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %edi
	cmpl	$97, %edi
	jl	.LBB18_3
# BB#1:                                 # %land.lhs.true
	movsbl	-5(%rbp), %eax
	cmpl	$102, %eax
	jg	.LBB18_3
# BB#2:                                 # %if.then
	movsbl	-5(%rbp), %eax
	subl	$97, %eax
	addl	$10, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB18_7
.LBB18_3:                               # %if.end
	movsbl	-5(%rbp), %eax
	cmpl	$48, %eax
	jl	.LBB18_6
# BB#4:                                 # %land.lhs.true.9
	movsbl	-5(%rbp), %eax
	cmpl	$57, %eax
	jg	.LBB18_6
# BB#5:                                 # %if.then.13
	movsbl	-5(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.end.16
	movl	$0, -4(%rbp)
.LBB18_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	hexval, .Lfunc_end18-hexval
	.cfi_endproc

	.align	16, 0x90
	.type	save_preset_response,@function
save_preset_response:                   # @save_preset_response
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$-5, -12(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	callq	save_preset
.LBB19_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	save_preset_response, .Lfunc_end19-save_preset_response
	.cfi_endproc

	.align	16, 0x90
	.type	preset_desc_callback,@function
preset_desc_callback:                   # @preset_desc_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	leaq	-104(%rbp), %rax
	leaq	-184(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_text_buffer_get_bounds
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_get_text
	movabsq	$presetdesc, %rdi
	movl	$4096, %ecx             # imm = 0x1000
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	callq	g_strlcpy
	movq	-24(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_free
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	preset_desc_callback, .Lfunc_end20-preset_desc_callback
	.cfi_endproc

	.align	16, 0x90
	.type	save_preset,@function
save_preset:                            # @save_preset
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
	pushq	%r12
	pushq	%rbx
	subq	$864, %rsp              # imm = 0x360
.Ltmp69:
	.cfi_offset %rbx, -48
.Ltmp70:
	.cfi_offset %r12, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
	movq	presetnameentry, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -40(%rbp)
	callq	parsepath
	movq	%rax, -72(%rbp)
	callq	store_values
	cmpq	$0, -72(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.69, %rdi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB21_23
.LBB21_2:                               # %if.end
	movabsq	$.L.str, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rdi
	movb	$0, %al
	callq	g_build_filename
	movl	$4, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB21_6
# BB#3:                                 # %if.then.7
	movl	$493, %esi              # imm = 0x1ED
	movq	-56(%rbp), %rdi
	callq	mkdir
	cmpl	$-1, %eax
	jne	.LBB21_5
# BB#4:                                 # %if.then.9
	movq	-56(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.70, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB21_23
.LBB21_5:                               # %if.end.11
	jmp	.LBB21_6
.LBB21_6:                               # %if.end.12
	cmpq	$0, selected_preset_orig_name
	je	.LBB21_9
# BB#7:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	movq	selected_preset_orig_name, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB21_9
# BB#8:                                 # %if.then.16
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rdi
	movq	selected_preset_filename, %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -48(%rbp)
	jmp	.LBB21_10
.LBB21_9:                               # %if.else
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	preset_create_filename
	movq	%rax, -48(%rbp)
.LBB21_10:                              # %if.end.19
	movq	-56(%rbp), %rdi
	callq	g_free
	cmpq	$0, -48(%rbp)
	jne	.LBB21_12
# BB#11:                                # %if.then.21
	movabsq	$.L.str.71, %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB21_23
.LBB21_12:                              # %if.end.22
	movabsq	$.L.str.72, %rsi
	movq	-48(%rbp), %rdi
	callq	fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB21_14
# BB#13:                                # %if.then.25
	movq	-48(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.73, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB21_23
.LBB21_14:                              # %if.end.27
	movabsq	$.L.str.74, %rsi
	movabsq	$.L.str.15, %rdx
	movq	-64(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$presetdesc, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	g_strescape
	movabsq	$.L.str.75, %rsi
	movq	%rax, -368(%rbp)
	movq	-64(%rbp), %rdi
	movq	-368(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-368(%rbp), %rdi
	movl	%eax, -392(%rbp)        # 4-byte Spill
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	g_strescape
	movabsq	$.L.str.76, %rsi
	movq	%rax, -376(%rbp)
	movq	-64(%rbp), %rdi
	movq	-376(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-376(%rbp), %rdi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	g_free
	movabsq	$.L.str.77, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals, %edx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+8, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -400(%rbp)        # 4-byte Spill
	movq	%r8, -408(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.78, %rsi
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+16, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movq	%r8, -424(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.80, %rsi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.81, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+24, %edx
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.82, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+3408, %edx
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+3416, %xmm0      # xmm0 = mem[0],zero
	movl	%eax, -436(%rbp)        # 4-byte Spill
	movq	%r8, -448(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.83, %rsi
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+3424, %xmm0      # xmm0 = mem[0],zero
	movl	%eax, -452(%rbp)        # 4-byte Spill
	movq	%r8, -464(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.84, %rsi
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.85, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+3432, %edx
	movl	%eax, -468(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+32, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -472(%rbp)        # 4-byte Spill
	movq	%r8, -480(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.86, %rsi
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+48, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -484(%rbp)        # 4-byte Spill
	movq	%r8, -496(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.87, %rsi
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+56, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -500(%rbp)        # 4-byte Spill
	movq	%r8, -512(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.88, %rsi
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+3352, %xmm0      # xmm0 = mem[0],zero
	movl	%eax, -516(%rbp)        # 4-byte Spill
	movq	%r8, -528(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.89, %rsi
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.90, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+64, %edx
	movl	%eax, -532(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+72, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -536(%rbp)        # 4-byte Spill
	movq	%r8, -544(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.91, %rsi
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.92, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+536, %edx
	movl	%eax, -548(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.93, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+3376, %edx
	movl	%eax, -552(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.94, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+3392, %edx
	movl	%eax, -556(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+3400, %xmm0      # xmm0 = mem[0],zero
	movl	%eax, -560(%rbp)        # 4-byte Spill
	movq	%r8, -568(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.95, %rsi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.96, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+5068, %edx
	movl	%eax, -572(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.97, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+5072, %edx
	movl	%eax, -576(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+3440, %xmm0      # xmm0 = mem[0],zero
	movl	%eax, -580(%rbp)        # 4-byte Spill
	movq	%r8, -592(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.98, %rsi
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+80, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -596(%rbp)        # 4-byte Spill
	movq	%r8, -608(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.99, %rsi
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %r8
	movsd	pcvals+88, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -612(%rbp)        # 4-byte Spill
	movq	%r8, -624(%rbp)         # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.100, %rsi
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.101, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+96, %edx
	movl	%eax, -628(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.102, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+3380, %edx
	movl	%eax, -632(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.103, %rsi
	movabsq	$pcvals, %rdi
	addq	$104, %rdi
	movq	-64(%rbp), %r8
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-640(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -644(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.104, %rsi
	movabsq	$pcvals, %rdx
	addq	$304, %rdx              # imm = 0x130
	movq	-64(%rbp), %rdi
	movl	%eax, -648(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$pcvals, %rdx
	addq	$504, %rdx              # imm = 0x1F8
	leaq	-355(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rsi, %r8
	addq	$2, %r8
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-656(%rbp), %rdx        # 8-byte Reload
	movq	%r8, %rcx
	movl	%eax, -660(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movabsq	$.L.str.105, %rsi
	movq	-64(%rbp), %rdi
	movzbl	-355(%rbp), %edx
	movzbl	-354(%rbp), %ecx
	movzbl	-353(%rbp), %r8d
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.106, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+540, %edx
	movl	%eax, -664(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.107, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+3348, %edx
	movl	%eax, -668(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.108, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+3344, %edx
	movl	%eax, -672(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$0, -360(%rbp)
	movl	%eax, -676(%rbp)        # 4-byte Spill
.LBB21_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-360(%rbp), %eax
	cmpl	pcvals+3344, %eax
	jge	.LBB21_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB21_15 Depth=1
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	movabsq	$pcvals, %rax
	addq	$544, %rax              # imm = 0x220
	leaq	-352(%rbp), %rdi
	movslq	-360(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	leaq	-352(%rbp), %rdi
	addq	$39, %rdi
	movslq	-360(%rbp), %r8
	imulq	$56, %r8, %r8
	addq	%r8, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	leaq	-352(%rbp), %rdi
	addq	$78, %rdi
	movslq	-360(%rbp), %r8
	imulq	$56, %r8, %r8
	addq	%r8, %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	leaq	-352(%rbp), %rdi
	addq	$117, %rdi
	movslq	-360(%rbp), %r8
	imulq	$56, %r8, %r8
	addq	%r8, %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	leaq	-352(%rbp), %rdi
	addq	$156, %rdi
	movslq	-360(%rbp), %r8
	imulq	$56, %r8, %r8
	addq	%r8, %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	leaq	-352(%rbp), %rdi
	addq	$195, %rdi
	movslq	-360(%rbp), %r8
	imulq	$56, %r8, %r8
	addq	%r8, %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.109, %rsi
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	leaq	-352(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movl	-360(%rbp), %r9d
	movq	%rdx, %r8
	addq	$39, %r8
	movq	%rdx, %r10
	addq	$78, %r10
	movq	%rdx, %r11
	addq	$117, %r11
	movq	%rdx, %rbx
	addq	$156, %rbx
	movq	%rdx, %r14
	addq	$195, %r14
	movslq	-360(%rbp), %r15
	imulq	$56, %r15, %r15
	addq	%r15, %rcx
	movl	48(%rcx), %r12d
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movq	-728(%rbp), %rcx        # 8-byte Reload
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%r14, 16(%rsp)
	movl	%r12d, 24(%rsp)
	movq	%rax, -736(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -740(%rbp)        # 4-byte Spill
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB21_15 Depth=1
	movl	-360(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -360(%rbp)
	jmp	.LBB21_15
.LBB21_18:                              # %for.end
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %rax
	movsd	pcvals+3360, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.110, %rsi
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movsd	pcvals+3368, %xmm0      # xmm0 = mem[0],zero
	movl	%eax, -756(%rbp)        # 4-byte Spill
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.111, %rsi
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.112, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+3384, %edx
	movl	%eax, -772(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.113, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+5048, %edx
	movl	%eax, -776(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$0, -360(%rbp)
	movl	%eax, -780(%rbp)        # 4-byte Spill
.LBB21_19:                              # %for.cond.150
                                        # =>This Inner Loop Header: Depth=1
	movl	-360(%rbp), %eax
	cmpl	pcvals+5048, %eax
	jge	.LBB21_22
# BB#20:                                # %for.body.153
                                        #   in Loop: Header=BB21_19 Depth=1
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	movabsq	$pcvals, %rax
	addq	$3448, %rax             # imm = 0xD78
	leaq	-352(%rbp), %rdi
	movslq	-360(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	movabsq	$pcvals, %rcx
	addq	$3448, %rcx             # imm = 0xD78
	leaq	-352(%rbp), %rdi
	addq	$39, %rdi
	movslq	-360(%rbp), %r8
	shlq	$5, %r8
	addq	%r8, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	movabsq	$pcvals, %rcx
	addq	$3448, %rcx             # imm = 0xD78
	leaq	-352(%rbp), %rdi
	addq	$78, %rdi
	movslq	-360(%rbp), %r8
	shlq	$5, %r8
	addq	%r8, %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	movabsq	$pcvals, %rcx
	addq	$3448, %rcx             # imm = 0xD78
	leaq	-352(%rbp), %rdi
	addq	$117, %rdi
	movslq	-360(%rbp), %r8
	shlq	$5, %r8
	addq	%r8, %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.114, %rsi
	leaq	-352(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movl	-360(%rbp), %edx
	movq	%rcx, %r8
	addq	$39, %r8
	movq	%rcx, %r9
	addq	$78, %r9
	movq	%rcx, %r10
	addq	$117, %r10
	movq	%r10, (%rsp)
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -820(%rbp)        # 4-byte Spill
# BB#21:                                # %for.inc.186
                                        #   in Loop: Header=BB21_19 Depth=1
	movl	-360(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -360(%rbp)
	jmp	.LBB21_19
.LBB21_22:                              # %for.end.188
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %rax
	movsd	pcvals+5056, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.115, %rsi
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.116, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+5064, %edx
	movl	%eax, -836(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.117, %rsi
	movq	-64(%rbp), %rdi
	movl	pcvals+5076, %edx
	movl	%eax, -840(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.79, %rdx
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movsd	pcvals+5080, %xmm0      # xmm0 = mem[0],zero
	movl	%eax, -844(%rbp)        # 4-byte Spill
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.118, %rsi
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movq	-64(%rbp), %rdi
	movl	%eax, -860(%rbp)        # 4-byte Spill
	callq	fclose
	movl	%eax, -864(%rbp)        # 4-byte Spill
	callq	preset_refresh_presets
	movq	presetlist, %rdi
	movq	-48(%rbp), %rsi
	callq	reselect
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB21_23:                              # %return
	addq	$864, %rsp              # imm = 0x360
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	save_preset, .Lfunc_end21-save_preset
	.cfi_endproc

	.align	16, 0x90
	.type	preset_create_filename,@function
preset_create_filename:                 # @preset_create_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB22_3
# BB#2:                                 # %if.then
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.preset_create_filename, %rsi
	movabsq	$.L.str.119, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_28
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	jmp	.LBB22_6
.LBB22_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB22_8
# BB#7:                                 # %if.then.3
	jmp	.LBB22_9
.LBB22_8:                               # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.preset_create_filename, %rsi
	movabsq	$.L.str.120, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_28
.LBB22_9:                               # %if.end.5
	jmp	.LBB22_10
.LBB22_10:                              # %do.end.6
	jmp	.LBB22_11
.LBB22_11:                              # %do.body.7
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB22_13
# BB#12:                                # %if.then.8
	jmp	.LBB22_14
.LBB22_13:                              # %if.else.9
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.preset_create_filename, %rsi
	movabsq	$.L.str.121, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_28
.LBB22_14:                              # %if.end.10
	jmp	.LBB22_15
.LBB22_15:                              # %do.end.11
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movsbl	(%rax), %r9d
	cmpl	$46, %r9d
	jne	.LBB22_17
# BB#16:                                # %if.then.15
	movq	-40(%rbp), %rax
	movb	$45, (%rax)
.LBB22_17:                              # %if.end.17
	movl	$0, -44(%rbp)
.LBB22_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB22_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB22_18 Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$47, %edx
	je	.LBB22_21
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB22_18 Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB22_22
.LBB22_21:                              # %if.then.32
                                        #   in Loop: Header=BB22_18 Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$45, (%rcx,%rax)
.LBB22_22:                              # %if.end.35
                                        #   in Loop: Header=BB22_18 Depth=1
	jmp	.LBB22_23
.LBB22_23:                              # %for.inc
                                        #   in Loop: Header=BB22_18 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB22_18
.LBB22_24:                              # %for.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
.LBB22_25:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$16, %esi
	movq	-32(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB22_27
# BB#26:                                # %while.body
                                        #   in Loop: Header=BB22_25 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.122, %rdi
	movq	-40(%rbp), %rsi
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	movl	%eax, %edx
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB22_25
.LBB22_27:                              # %while.end
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB22_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	preset_create_filename, .Lfunc_end22-preset_create_filename
	.cfi_endproc

	.align	16, 0x90
	.type	presets_list_select_preset,@function
presets_list_select_preset:             # @presets_list_select_preset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-56(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB23_4
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-72(%rbp), %rdi
	movq	factory_defaults, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB23_3
# BB#2:                                 # %if.then.3
	movq	presetnameentry, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	selected_preset_orig_name, %rdi
	callq	g_free
	movq	selected_preset_filename, %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movq	%rax, selected_preset_orig_name
	movq	selected_preset_filename, %rdi
	callq	g_strdup
	movq	%rax, selected_preset_filename
.LBB23_3:                               # %if.end
	movq	-72(%rbp), %rdi
	callq	read_description
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB23_4:                               # %if.end.8
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	presets_list_select_preset, .Lfunc_end23-presets_list_select_preset
	.cfi_endproc

	.align	16, 0x90
	.type	read_description,@function
read_description:                       # @read_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$4144, %rsp             # imm = 0x1030
	movabsq	$.L.str, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	findfile
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	cmpq	$0, -24(%rbp)
	jne	.LBB24_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	factory_defaults, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB24_3
# BB#2:                                 # %if.then.4
	xorl	%esi, %esi
	movq	delete_button, %rdi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.124, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	set_preset_description_text
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	movabsq	$.L.str.125, %rdi
	callq	set_preset_description_text
.LBB24_4:                               # %if.end
	jmp	.LBB24_8
.LBB24_5:                               # %if.end.6
	movq	delete_button, %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -4136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	can_delete_preset
	movq	-4136(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.126, %rsi
	movq	-24(%rbp), %rdi
	callq	get_early_line_from_preset
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	je	.LBB24_7
# BB#6:                                 # %if.then.10
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %edx
	leaq	-4128(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	parse_desc
	movq	-32(%rbp), %rdi
	callq	g_free
	leaq	-4128(%rbp), %rdi
	callq	set_preset_description_text
	jmp	.LBB24_8
.LBB24_7:                               # %if.else.12
	movabsq	$.L.str.125, %rdi
	callq	set_preset_description_text
.LBB24_8:                               # %if.end.13
	addq	$4144, %rsp             # imm = 0x1030
	popq	%rbp
	retq
.Lfunc_end24:
	.size	read_description, .Lfunc_end24-read_description
	.cfi_endproc

	.align	16, 0x90
	.type	set_preset_description_text,@function
set_preset_description_text:            # @set_preset_description_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	presetdesclabel, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	set_preset_description_text, .Lfunc_end25-set_preset_description_text
	.cfi_endproc

	.align	16, 0x90
	.type	can_delete_preset,@function
can_delete_preset:                      # @can_delete_preset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_directory
	movabsq	$.L.str.127, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	can_delete_preset, .Lfunc_end26-can_delete_preset
	.cfi_endproc

	.align	16, 0x90
	.type	get_early_line_from_preset,@function
get_early_line_from_preset:             # @get_early_line_from_preset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$4176, %rsp             # imm = 0x1050
	movabsq	$.L.str.13, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, -4144(%rbp)       # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -4132(%rbp)
	movq	-16(%rbp), %rdi
	movq	-4144(%rbp), %rsi       # 8-byte Reload
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB27_12
# BB#1:                                 # %if.then
	movl	$10, %esi
	leaq	-4128(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	fgets
	movabsq	$.L.str.15, %rsi
	movl	$4, %ecx
	movl	%ecx, %edx
	leaq	-4128(%rbp), %rdi
	movq	%rax, -4152(%rbp)       # 8-byte Spill
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB27_11
# BB#2:                                 # %if.then.6
	movl	$0, -4136(%rbp)
.LBB27_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -4136(%rbp)
	jge	.LBB27_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB27_3 Depth=1
	movl	$4096, %esi             # imm = 0x1000
	leaq	-4128(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.11
	jmp	.LBB27_10
.LBB27_6:                               # %if.end
                                        #   in Loop: Header=BB27_3 Depth=1
	leaq	-4128(%rbp), %rdi
	callq	g_strchomp
	leaq	-4128(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-4132(%rbp), %rdx
	movq	%rax, -4160(%rbp)       # 8-byte Spill
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB27_8
# BB#7:                                 # %if.then.18
	movq	-32(%rbp), %rdi
	callq	fclose
	leaq	-4128(%rbp), %rdi
	movslq	-4132(%rbp), %rcx
	addq	%rcx, %rdi
	movl	%eax, -4164(%rbp)       # 4-byte Spill
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB27_13
.LBB27_8:                               # %if.end.22
                                        #   in Loop: Header=BB27_3 Depth=1
	jmp	.LBB27_9
.LBB27_9:                               # %for.inc
                                        #   in Loop: Header=BB27_3 Depth=1
	movl	-4136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4136(%rbp)
	jmp	.LBB27_3
.LBB27_10:                              # %for.end
	jmp	.LBB27_11
.LBB27_11:                              # %if.end.23
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	%eax, -4168(%rbp)       # 4-byte Spill
.LBB27_12:                              # %if.end.25
	movq	$0, -8(%rbp)
.LBB27_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$4176, %rsp             # imm = 0x1050
	popq	%rbp
	retq
.Lfunc_end27:
	.size	get_early_line_from_preset, .Lfunc_end27-get_early_line_from_preset
	.cfi_endproc

	.align	16, 0x90
	.type	get_object_name,@function
get_object_name:                        # @get_object_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	g_build_filename
	movabsq	$.L.str.128, %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	get_early_line_from_preset
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	g_strcompress
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB28_3
.LBB28_2:                               # %if.else
	movq	-48(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -32(%rbp)
.LBB28_3:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	get_object_name, .Lfunc_end28-get_object_name
	.cfi_endproc

	.type	presetsavebutton,@object # @presetsavebutton
	.local	presetsavebutton
	.comm	presetsavebutton,8,8
	.type	selected_preset_orig_name,@object # @selected_preset_orig_name
	.local	selected_preset_orig_name
	.comm	selected_preset_orig_name,8,8
	.type	selected_preset_filename,@object # @selected_preset_filename
	.local	selected_preset_filename
	.comm	selected_preset_filename,8,8
	.type	factory_defaults,@object # @factory_defaults
	.data
	.align	8
factory_defaults:
	.quad	.L.str.12
	.size	factory_defaults, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Presets"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"_Presets"
	.size	.L.str.1, 9

	.type	presetnameentry,@object # @presetnameentry
	.local	presetnameentry
	.comm	presetnameentry,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Save Current..."
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-save"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"clicked"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Save the current settings to the specified file"
	.size	.L.str.5, 48

	.type	presetlist,@object      # @presetlist
	.local	presetlist
	.comm	presetlist,8,8
	.type	store,@object           # @store
	.local	store
	.comm	store,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-apply"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Reads the selected Preset into memory"
	.size	.L.str.7, 38

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-delete"
	.size	.L.str.8, 11

	.type	delete_button,@object   # @delete_button
	.local	delete_button
	.comm	delete_button,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Deletes the selected Preset"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-refresh"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Reread the folder of Presets"
	.size	.L.str.11, 29

	.type	presetdesclabel,@object # @presetdesclabel
	.local	presetdesclabel
	.comm	presetdesclabel,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<Factory defaults>"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"rt"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Error opening file \"%s\" for reading!\n"
	.size	.L.str.14, 38

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Preset"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"rb"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"desc"
	.size	.L.str.17, 5

	.type	presetdesc,@object      # @presetdesc
	.local	presetdesc
	.comm	presetdesc,4096,16
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"orientnum"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"orientfirst"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"orientlast"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"orienttype"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"sizenum"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"sizefirst"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"sizelast"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"sizetype"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"brushrelief"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"brushscale"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"brushdensity"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"brushgamma"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"brushaspect"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"generalbgtype"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"generaldarkedge"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"generalpaintedges"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"generaltileable"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"generaldropshadow"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"generalshadowdarkness"
	.size	.L.str.36, 22

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"generalshadowdepth"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"generalshadowblur"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"devthresh"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"paperrelief"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"paperscale"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"paperinvert"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"paperoverlay"
	.size	.L.str.43, 13

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"placetype"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"placecenter"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"selectedbrush"
	.size	.L.str.46, 14

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"selectedpaper"
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"color"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"numorientvector"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"orientvector"
	.size	.L.str.50, 13

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"orientangoff"
	.size	.L.str.51, 13

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"orientstrexp"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"orientvoronoi"
	.size	.L.str.53, 14

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"numsizevector"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"sizevector"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"sizestrexp"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"sizevoronoi"
	.size	.L.str.57, 12

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"colortype"
	.size	.L.str.58, 10

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"colornoise"
	.size	.L.str.59, 11

	.type	parse_rgb_string.col,@object # @parse_rgb_string.col
	.local	parse_rgb_string.col
	.comm	parse_rgb_string.col,3,1
	.type	create_save_preset.window,@object # @create_save_preset.window
	.local	create_save_preset.window
	.comm	create_save_preset.window,8,8
	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Save Current"
	.size	.L.str.60, 13

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-gimpressionist"
	.size	.L.str.61, 20

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"plug-in-gimpressionist"
	.size	.L.str.62, 23

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gtk-cancel"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gtk-ok"
	.size	.L.str.64, 7

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"response"
	.size	.L.str.65, 9

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"destroy"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Description:"
	.size	.L.str.67, 13

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"changed"
	.size	.L.str.68, 8

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Internal error: (save_preset) thispath == NULL\n"
	.size	.L.str.69, 48

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Error creating folder \"%s\"!\n"
	.size	.L.str.70, 29

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Error building a filename for preset \"%s\"!\n"
	.size	.L.str.71, 44

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"wt"
	.size	.L.str.72, 3

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Error opening file \"%s\" for writing!\n"
	.size	.L.str.73, 38

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"%s\n"
	.size	.L.str.74, 4

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"desc=%s\n"
	.size	.L.str.75, 9

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"name=%s\n"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"orientnum=%d\n"
	.size	.L.str.77, 14

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"orientfirst=%s\n"
	.size	.L.str.78, 16

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"%f"
	.size	.L.str.79, 3

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"orientlast=%s\n"
	.size	.L.str.80, 15

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"orienttype=%d\n"
	.size	.L.str.81, 15

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"sizenum=%d\n"
	.size	.L.str.82, 12

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"sizefirst=%s\n"
	.size	.L.str.83, 14

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"sizelast=%s\n"
	.size	.L.str.84, 13

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"sizetype=%d\n"
	.size	.L.str.85, 13

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"brushrelief=%s\n"
	.size	.L.str.86, 16

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"brushdensity=%s\n"
	.size	.L.str.87, 17

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"brushgamma=%s\n"
	.size	.L.str.88, 15

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"brushaspect=%s\n"
	.size	.L.str.89, 16

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"generalbgtype=%d\n"
	.size	.L.str.90, 18

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"generaldarkedge=%s\n"
	.size	.L.str.91, 20

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"generalpaintedges=%d\n"
	.size	.L.str.92, 22

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"generaltileable=%d\n"
	.size	.L.str.93, 20

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"generaldropshadow=%d\n"
	.size	.L.str.94, 22

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"generalshadowdarkness=%s\n"
	.size	.L.str.95, 26

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"generalshadowdepth=%d\n"
	.size	.L.str.96, 23

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"generalshadowblur=%d\n"
	.size	.L.str.97, 22

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"devthresh=%s\n"
	.size	.L.str.98, 14

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"paperrelief=%s\n"
	.size	.L.str.99, 16

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"paperscale=%s\n"
	.size	.L.str.100, 15

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"paperinvert=%d\n"
	.size	.L.str.101, 16

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"paperoverlay=%d\n"
	.size	.L.str.102, 17

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"selectedbrush=%s\n"
	.size	.L.str.103, 18

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"selectedpaper=%s\n"
	.size	.L.str.104, 18

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"color=%02x%02x%02x\n"
	.size	.L.str.105, 20

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"placetype=%d\n"
	.size	.L.str.106, 14

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"placecenter=%d\n"
	.size	.L.str.107, 16

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"numorientvector=%d\n"
	.size	.L.str.108, 20

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"orientvector=%d,%s,%s,%s,%s,%s,%s,%d\n"
	.size	.L.str.109, 38

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"orientangoff=%s\n"
	.size	.L.str.110, 17

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"orientstrexp=%s\n"
	.size	.L.str.111, 17

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"orientvoronoi=%d\n"
	.size	.L.str.112, 18

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"numsizevector=%d\n"
	.size	.L.str.113, 18

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"sizevector=%d,%s,%s,%s,%s\n"
	.size	.L.str.114, 27

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"sizestrexp=%s\n"
	.size	.L.str.115, 15

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"sizevoronoi=%d\n"
	.size	.L.str.116, 16

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"colortype=%d\n"
	.size	.L.str.117, 14

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"colornoise=%s\n"
	.size	.L.str.118, 15

	.type	.L__func__.preset_create_filename,@object # @__func__.preset_create_filename
.L__func__.preset_create_filename:
	.asciz	"preset_create_filename"
	.size	.L__func__.preset_create_filename, 23

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"basename != NULL"
	.size	.L.str.119, 17

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"dest_dir != NULL"
	.size	.L.str.120, 17

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"g_path_is_absolute (dest_dir)"
	.size	.L.str.121, 30

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"%s-%d"
	.size	.L.str.122, 6

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"text"
	.size	.L.str.123, 5

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Gimpressionist Defaults"
	.size	.L.str.124, 24

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.zero	1
	.size	.L.str.125, 1

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"desc="
	.size	.L.str.126, 6

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"/"
	.size	.L.str.127, 2

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"name="
	.size	.L.str.128, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
