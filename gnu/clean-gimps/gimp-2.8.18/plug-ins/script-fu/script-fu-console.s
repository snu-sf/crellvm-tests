	.text
	.file	"script-fu-console.bc"
	.globl	script_fu_console_run
	.align	16, 0x90
	.type	script_fu_console_run,@function
script_fu_console_run:                  # @script_fu_console_run
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%eax, %edi
	callq	ts_set_print_flag
	callq	script_fu_console_interface
	movabsq	$script_fu_console_run.values, %rcx
	movq	-32(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movl	$21, script_fu_console_run.values
	movl	$3, script_fu_console_run.values+8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	script_fu_console_run, .Lfunc_end0-script_fu_console_run
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4608083138725491507     # double 1.2
	.text
	.align	16, 0x90
	.type	script_fu_console_interface,@function
script_fu_console_interface:            # @script_fu_console_interface
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
	pushq	%r14
	pushq	%rbx
	subq	$528, %rsp              # imm = 0x210
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movabsq	$.L.str, %rdi
	xorl	%eax, %eax
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %rsi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	memset
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	-228(%rbp), %esi        # 4-byte Reload
	callq	gimp_ui_init
	movabsq	$.L.str.1, %rdi
	movl	$-1, -48(%rbp)
	movl	$50, -24(%rbp)
	callq	gettext
	movabsq	$.L.str.2, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.3, %r9
	movabsq	$.L.str.4, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.5, %r11
	movabsq	$.L.str.6, %rbx
	movl	$4294967289, %r14d      # imm = 0xFFFFFFF9
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$0, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movl	$-7, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r14d, -244(%rbp)       # 4-byte Spill
	movl	%r10d, -248(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967289, %esi       # imm = 0xFFFFFFF9
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-96(%rbp), %rdi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.7, %rsi
	movabsq	$script_fu_console_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-96(%rbp), %rdi
	movq	-96(%rbp), %r11
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-96(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-104(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_text_buffer_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_text_view_new_with_buffer
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-72(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_editable
	movq	-72(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_wrap_mode
	movq	-72(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_left_margin
	movq	-72(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_right_margin
	movl	$480, %esi              # imm = 0x1E0
	movl	$400, %edx              # imm = 0x190
	movq	-72(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-120(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	movl	$700, %ecx              # imm = 0x2BC
	movabsq	$.L.str.10, %r8
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-88(%rbp), %rdi
	movb	$1, %al
	callq	gtk_text_buffer_create_tag
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-88(%rbp), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	leaq	-208(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_end_iter
	movl	$0, -212(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-212(%rbp), %rax
	cmpq	$16, %rax
	jae	.LBB1_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-212(%rbp), %rax
	cmpq	$0, script_fu_console_interface.greetings(,%rax,8)
	je	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-88(%rbp), %rdi
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	script_fu_console_interface.greetings(,%rcx,8), %rcx
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gettext
	leaq	-208(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	movl	%edx, %r9d
	movslq	-212(%rbp), %rdi
	movq	script_fu_console_interface.greetings(,%rdi,8), %r8
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gtk_text_buffer_insert_with_tags_by_name
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-88(%rbp), %rdi
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	script_fu_console_interface.greetings(,%rcx,8), %rcx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gettext
	leaq	-208(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_insert
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_6
.LBB1_6:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-212(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB1_1
.LBB1_7:                                # %for.end
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movq	%rax, -80(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_grab_focus
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movabsq	$script_fu_cc_key_function, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-96(%rbp), %rdi
	movq	-80(%rbp), %r10
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_misc_set_padding
	movq	-128(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -452(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rsi
	movabsq	$script_fu_browse_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-96(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	g_list_append
	movq	%rax, -40(%rbp)
	movl	$1, -32(%rbp)
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_main
	movl	-48(%rbp), %edi
	callq	g_source_remove
	cmpq	$0, -56(%rbp)
	movl	%eax, -476(%rbp)        # 4-byte Spill
	je	.LBB1_9
# BB#8:                                 # %if.then.91
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB1_9:                                # %if.end.93
	cmpq	$0, -96(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.96
	movq	-96(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB1_11:                               # %if.end.98
	addq	$528, %rsp              # imm = 0x210
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	script_fu_console_interface, .Lfunc_end1-script_fu_console_interface
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_console_response,@function
script_fu_console_response:             # @script_fu_console_response
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
	movl	-12(%rbp), %esi
	testl	%esi, %esi
	movl	%esi, -188(%rbp)        # 4-byte Spill
	je	.LBB2_1
	jmp	.LBB2_5
.LBB2_5:                                # %entry
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_3
.LBB2_1:                                # %sw.bb
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_text_buffer_get_start_iter
	leaq	-184(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_text_buffer_get_end_iter
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_text_buffer_delete
	jmp	.LBB2_4
.LBB2_2:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	script_fu_console_save_dialog
	jmp	.LBB2_4
.LBB2_3:                                # %sw.default
	callq	gtk_main_quit
.LBB2_4:                                # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	script_fu_console_response, .Lfunc_end2-script_fu_console_response
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_cc_key_function,@function
script_fu_cc_key_function:              # @script_fu_cc_key_function
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -44(%rbp)
	movq	-24(%rbp), %rdx
	movl	28(%rdx), %eax
	movl	%eax, %ecx
	subl	$78, %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	je	.LBB3_19
	jmp	.LBB3_33
.LBB3_33:                               # %entry
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$80, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB3_16
	jmp	.LBB3_34
.LBB3_34:                               # %entry
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB3_19
	jmp	.LBB3_35
.LBB3_35:                               # %entry
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB3_16
	jmp	.LBB3_36
.LBB3_36:                               # %entry
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$65076, %eax            # imm = 0xFE34
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB3_1
	jmp	.LBB3_37
.LBB3_37:                               # %entry
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB3_1
	jmp	.LBB3_38
.LBB3_38:                               # %entry
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$65362, %eax            # imm = 0xFF52
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB3_14
	jmp	.LBB3_39
.LBB3_39:                               # %entry
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$65364, %eax            # imm = 0xFF54
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB3_15
	jmp	.LBB3_40
.LBB3_40:                               # %entry
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB3_1
	jmp	.LBB3_41
.LBB3_41:                               # %entry
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$65431, %eax            # imm = 0xFF97
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB3_14
	jmp	.LBB3_42
.LBB3_42:                               # %entry
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$65433, %eax            # imm = 0xFF99
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB3_15
	jmp	.LBB3_22
.LBB3_1:                                # %sw.bb
	movq	-32(%rbp), %rdi
	callq	script_fu_cc_is_empty
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB3_32
.LBB3_3:                                # %if.end
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_list_length
	subl	$1, %eax
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_list_nth
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_5
# BB#4:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
.LBB3_5:                                # %if.end.7
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	leaq	-128(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_text_buffer_get_end_iter
	leaq	-128(%rbp), %rsi
	movabsq	$.L.str.14, %rdx
	movl	$1, %ecx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_text_buffer_insert
	leaq	-128(%rbp), %rsi
	movabsq	$.L.str.25, %rdx
	movl	$2, %ecx
	movabsq	$.L.str.8, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movb	$0, %al
	callq	gtk_text_buffer_insert_with_tags_by_name
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdi
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	leaq	-128(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_insert
	leaq	-128(%rbp), %rsi
	movabsq	$.L.str.14, %rdx
	movl	$1, %ecx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_text_buffer_insert
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	script_fu_console_scroll_end
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_string_new
	movabsq	$ts_gstring_output_func, %rdi
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	callq	ts_register_output_func
	movl	$1, %edi
	callq	gimp_plugin_set_pdb_error_handler
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	ts_interpret_string
	cmpl	$0, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.29
	movl	$1, %edi
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	script_fu_output_to_console
	jmp	.LBB3_8
.LBB3_7:                                # %if.else
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	script_fu_output_to_console
.LBB3_8:                                # %if.end.33
	xorl	%edi, %edi
	callq	gimp_plugin_set_pdb_error_handler
	movl	$1, %esi
	movq	-136(%rbp), %rdi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	g_string_free
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_displays_flush
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-32(%rbp), %rdi
	movq	56(%rdi), %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	g_list_append
	movq	-32(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-32(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	72(%rax), %ecx
	jne	.LBB3_12
# BB#9:                                 # %if.then.42
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rsi
	callq	g_list_remove
	movq	-32(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB3_11
# BB#10:                                # %if.then.51
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rdi
	callq	g_free
.LBB3_11:                               # %if.end.54
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.55
	movq	-32(%rbp), %rax
	movl	64(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 64(%rax)
.LBB3_13:                               # %if.end.57
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_list_length
	subl	$1, %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 68(%rdi)
	movl	$1, -4(%rbp)
	jmp	.LBB3_32
.LBB3_14:                               # %sw.bb.61
	movl	$-1, -44(%rbp)
	jmp	.LBB3_23
.LBB3_15:                               # %sw.bb.62
	movl	$1, -44(%rbp)
	jmp	.LBB3_23
.LBB3_16:                               # %sw.bb.63
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB3_18
# BB#17:                                # %if.then.65
	movl	$-1, -44(%rbp)
.LBB3_18:                               # %if.end.66
	jmp	.LBB3_23
.LBB3_19:                               # %sw.bb.67
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB3_21
# BB#20:                                # %if.then.71
	movl	$1, -44(%rbp)
.LBB3_21:                               # %if.end.72
	jmp	.LBB3_23
.LBB3_22:                               # %sw.default
	jmp	.LBB3_23
.LBB3_23:                               # %sw.epilog
	cmpl	$0, -44(%rbp)
	je	.LBB3_31
# BB#24:                                # %if.then.74
	movq	-32(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	callq	g_list_length
	subl	$1, %eax
	movl	-248(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB3_26
# BB#25:                                # %if.then.81
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	68(%rax), %esi
	callq	g_list_nth
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB3_26:                               # %if.end.92
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	68(%rcx), %eax
	movl	%eax, 68(%rcx)
	movq	-32(%rbp), %rcx
	cmpl	$0, 68(%rcx)
	jge	.LBB3_28
# BB#27:                                # %if.then.97
	movq	-32(%rbp), %rax
	movl	$0, 68(%rax)
.LBB3_28:                               # %if.end.99
	movq	-32(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	64(%rax), %ecx
	jl	.LBB3_30
# BB#29:                                # %if.then.104
	movq	-32(%rbp), %rax
	movl	64(%rax), %ecx
	subl	$1, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 68(%rax)
.LBB3_30:                               # %if.end.108
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	56(%rsi), %rdi
	movq	-32(%rbp), %rsi
	movl	68(%rsi), %esi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_list_nth
	movq	(%rax), %rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	callq	gtk_entry_set_text
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_set_position
	movl	$1, -4(%rbp)
	jmp	.LBB3_32
.LBB3_31:                               # %if.end.119
	movl	$0, -4(%rbp)
.LBB3_32:                               # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end3:
	.size	script_fu_cc_key_function, .Lfunc_end3-script_fu_cc_key_function
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_browse_callback,@function
script_fu_browse_callback:              # @script_fu_browse_callback
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
	subq	$120, %rsp
.Ltmp17:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 32(%rsi)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.29, %r8
	movl	$4294967286, %r9d       # imm = 0xFFFFFFF6
	movabsq	$.L.str.6, %rdi
	movl	$4294967289, %r10d      # imm = 0xFFFFFFF9
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-7, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movq	%rbx, -40(%rbp)         # 8-byte Spill
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	callq	gimp_proc_browser_dialog_new
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967286, %esi       # imm = 0xFFFFFFF6
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967289, %esi       # imm = 0xFFFFFFF9
	movl	$4294967286, %edx       # imm = 0xFFFFFFF6
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	addq	$32, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.7, %rsi
	movabsq	$script_fu_browse_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-24(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$script_fu_browse_row_activated, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB4_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	script_fu_browse_callback, .Lfunc_end4-script_fu_browse_callback
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_console_save_dialog,@function
script_fu_console_save_dialog:          # @script_fu_console_save_dialog
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp21:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.22, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.4, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	addq	$40, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.7, %rsi
	movabsq	$script_fu_console_save_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	-16(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	script_fu_console_save_dialog, .Lfunc_end5-script_fu_console_save_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_console_save_response,@function
script_fu_console_save_response:        # @script_fu_console_save_response
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB6_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movabsq	$.L.str.23, %rsi
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	callq	fopen
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then.4
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	-192(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	-192(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_5
.LBB6_3:                                # %if.end
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_text_buffer_get_start_iter
	leaq	-184(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_text_buffer_get_end_iter
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_text_buffer_get_text
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	fputs
	movq	-208(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	fclose
	movq	-200(%rbp), %rdi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	g_free
.LBB6_4:                                # %if.end.15
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
.LBB6_5:                                # %return
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	script_fu_console_save_response, .Lfunc_end6-script_fu_console_save_response
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB7_2
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
.LBB7_2:                                # %entry
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
.Lfunc_end7:
	.size	g_message, .Lfunc_end7-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_cc_is_empty,@function
script_fu_cc_is_empty:                  # @script_fu_cc_is_empty
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB8_10
.LBB8_2:                                # %if.end
	jmp	.LBB8_3
.LBB8_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB8_9
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB8_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB8_8
# BB#6:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB8_8
# BB#7:                                 # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB8_10
.LBB8_8:                                # %if.end.13
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB8_3
.LBB8_9:                                # %while.end
	movl	$1, -4(%rbp)
.LBB8_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	script_fu_cc_is_empty, .Lfunc_end8-script_fu_cc_is_empty
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_console_scroll_end,@function
script_fu_console_scroll_end:           # @script_fu_console_scroll_end
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_object_ref
	movabsq	$script_fu_console_idle_scroll_end, %rdi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	g_idle_add
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	script_fu_console_scroll_end, .Lfunc_end9-script_fu_console_scroll_end
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_output_to_console,@function
script_fu_output_to_console:            # @script_fu_output_to_console
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
	subq	$144, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB10_6
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB10_6
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_get_buffer
	leaq	-128(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_text_buffer_get_end_iter
	cmpl	$0, -4(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.5
	leaq	-128(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	gtk_text_buffer_insert
	jmp	.LBB10_5
.LBB10_4:                               # %if.else
	leaq	-128(%rbp), %rsi
	movabsq	$.L.str.11, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movb	$0, %al
	callq	gtk_text_buffer_insert_with_tags_by_name
.LBB10_5:                               # %if.end
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	script_fu_console_scroll_end
.LBB10_6:                               # %if.end.8
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	script_fu_output_to_console, .Lfunc_end10-script_fu_output_to_console
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_console_idle_scroll_end,@function
script_fu_console_idle_scroll_end:      # @script_fu_console_idle_scroll_end
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scrolled_window_get_vadjustment
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_upper
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movaps	%xmm1, %xmm0
	callq	gtk_adjustment_set_value
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	script_fu_console_idle_scroll_end, .Lfunc_end11-script_fu_console_idle_scroll_end
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_browse_response,@function
script_fu_browse_response:              # @script_fu_browse_response
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
	pushq	%r14
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gimp_proc_browser_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpl	$-10, -28(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB12_9
.LBB12_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gimp_proc_browser_dialog_get_selected
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then.4
	jmp	.LBB12_9
.LBB12_4:                               # %if.end.5
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	leaq	-100(%rbp), %rax
	leaq	-104(%rbp), %rdi
	leaq	-108(%rbp), %r10
	leaq	-120(%rbp), %r11
	leaq	-128(%rbp), %rbx
	movq	-56(%rbp), %r14
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	callq	gimp_procedural_db_proc_info
	movabsq	$.L.str.31, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	g_string_new
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_string_append
	movq	%rax, -144(%rbp)
	movl	$0, -132(%rbp)
.LBB12_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB12_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	$32, %esi
	movq	-144(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movslq	-132(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-120(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_string_append
	movq	%rax, -144(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB12_5
.LBB12_8:                               # %for.end
	movl	$41, %esi
	movq	-144(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_focus
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-144(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-56(%rbp), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-216(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$2, %rcx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	g_utf8_pointer_to_offset
	movl	%eax, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	callq	gtk_editable_set_position
	movl	$1, %esi
	movq	-144(%rbp), %rdi
	callq	g_string_free
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	movl	-104(%rbp), %esi
	callq	gimp_destroy_paramdefs
	movq	-128(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	gimp_destroy_paramdefs
.LBB12_9:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	script_fu_browse_response, .Lfunc_end12-script_fu_browse_response
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_browse_row_activated,@function
script_fu_browse_row_activated:         # @script_fu_browse_row_activated
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
	subq	$16, %rsp
	movl	$4294967286, %esi       # imm = 0xFFFFFFF6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_dialog_response
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	script_fu_browse_row_activated, .Lfunc_end13-script_fu_browse_row_activated
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB14_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB14_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	g_string_append_c_inline, .Lfunc_end14-g_string_append_c_inline
	.cfi_endproc

	.type	script_fu_console_run.values,@object # @script_fu_console_run.values
	.local	script_fu_console_run.values
	.comm	script_fu_console_run.values,40,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"script-fu"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Script-Fu Console"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-script-fu-console"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"plug-in-script-fu-console"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-save"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-clear"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-close"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"response"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"strong"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"weight"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"scale"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"emphasis"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"style"
	.size	.L.str.12, 6

	.type	script_fu_console_interface.greetings,@object # @script_fu_console_interface.greetings
	.section	.rodata,"a",@progbits
	.align	16
script_fu_console_interface.greetings:
	.quad	.L.str.8
	.quad	.L.str.13
	.quad	0
	.quad	.L.str.14
	.quad	0
	.quad	.L.str.15
	.quad	0
	.quad	.L.str.14
	.quad	.L.str.8
	.quad	.L.str.1
	.quad	0
	.quad	.L.str.16
	.quad	.L.str.11
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.14
	.size	script_fu_console_interface.greetings, 128

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"Welcome to TinyScheme"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\n"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Copyright (c) Dimitrios Souflis"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	" - "
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Interactive Scheme Development"
	.size	.L.str.17, 31

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"key-press-event"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Browse..."
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"clicked"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Save Script-Fu Console Output"
	.size	.L.str.21, 30

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-cancel"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"w"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.24, 36

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"> "
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.zero	1
	.size	.L.str.26, 1

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Script-Fu Procedure Browser"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"script-fu-procedure-browser"
	.size	.L.str.28, 28

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-apply"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"row-activated"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"("
	.size	.L.str.31, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
