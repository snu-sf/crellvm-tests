	.text
	.file	"gimpdesaturatetool.bc"
	.globl	gimp_desaturate_tool_get_type
	.align	16, 0x90
	.type	gimp_desaturate_tool_get_type,@function
gimp_desaturate_tool_get_type:          # @gimp_desaturate_tool_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_desaturate_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_desaturate_tool_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_image_map_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$392, %edx              # imm = 0x188
	movabsq	$gimp_desaturate_tool_class_intern_init, %rdi
	movl	$416, %r8d              # imm = 0x1A0
	movabsq	$gimp_desaturate_tool_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_desaturate_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_desaturate_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_desaturate_tool_get_type, .Lfunc_end0-gimp_desaturate_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_desaturate_tool_class_intern_init,@function
gimp_desaturate_tool_class_intern_init: # @gimp_desaturate_tool_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_desaturate_tool_parent_class
	cmpl	$0, GimpDesaturateTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDesaturateTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_desaturate_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_desaturate_tool_class_intern_init, .Lfunc_end1-gimp_desaturate_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_desaturate_tool_init,@function
gimp_desaturate_tool_init:              # @gimp_desaturate_tool_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$desaturate_region, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 328(%rax)
	movq	-8(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	-16(%rbp), %rsi
	movq	%rax, 336(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_desaturate_tool_init, .Lfunc_end2-gimp_desaturate_tool_init
	.cfi_endproc

	.globl	gimp_desaturate_tool_register
	.align	16, 0x90
	.type	gimp_desaturate_tool_register,@function
gimp_desaturate_tool_register:          # @gimp_desaturate_tool_register
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_desaturate_tool_get_type
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_map_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	movq	-40(%rbp), %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%r15, 48(%rsp)
	movq	-48(%rbp), %r15         # 8-byte Reload
	callq	*%r15
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_desaturate_tool_register, .Lfunc_end3-gimp_desaturate_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_desaturate_tool_class_init,@function
gimp_desaturate_tool_class_init:        # @gimp_desaturate_tool_class_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_desaturate_tool_initialize, %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 176(%rax)
	callq	gettext
	movabsq	$gimp_desaturate_tool_dialog, %rsi
	movabsq	$gimp_desaturate_tool_map, %rdi
	movabsq	$gimp_desaturate_tool_get_operation, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-24(%rbp), %rax
	movq	%rcx, 344(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 352(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 360(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_desaturate_tool_class_init, .Lfunc_end4-gimp_desaturate_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_desaturate_tool_initialize,@function
gimp_desaturate_tool_initialize:        # @gimp_desaturate_tool_initialize
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_desaturate_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_7
.LBB5_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_7
.LBB5_4:                                # %if.end.9
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
	movq	gimp_desaturate_tool_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.end.17
	movq	-40(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	392(%rsi), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
	movl	$1, -4(%rbp)
.LBB5_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_desaturate_tool_initialize, .Lfunc_end5-gimp_desaturate_tool_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_desaturate_tool_get_operation,@function
gimp_desaturate_tool_get_operation:     # @gimp_desaturate_tool_get_operation
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_desaturate_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	callq	gegl_node_get_type
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	callq	gimp_desaturate_config_get_type
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 392(%rcx)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_desaturate_tool_config_notify, %rcx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.11, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	gegl_node_set
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_desaturate_tool_get_operation, .Lfunc_end6-gimp_desaturate_tool_get_operation
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_desaturate_tool_map,@function
gimp_desaturate_tool_map:               # @gimp_desaturate_tool_map
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_desaturate_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movl	40(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 400(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_desaturate_tool_map, .Lfunc_end7-gimp_desaturate_tool_map
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_desaturate_tool_dialog,@function
gimp_desaturate_tool_dialog:            # @gimp_desaturate_tool_dialog
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_desaturate_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_get_vbox
	movq	%rax, -24(%rbp)
	callq	gimp_desaturate_mode_get_type
	movabsq	$.L.str.12, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movabsq	$gimp_desaturate_tool_mode_changed, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	addq	$408, %rcx              # imm = 0x198
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	gimp_enum_radio_frame_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_desaturate_tool_dialog, .Lfunc_end8-gimp_desaturate_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_desaturate_tool_config_notify,@function
gimp_desaturate_tool_config_notify:     # @gimp_desaturate_tool_config_notify
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_desaturate_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 408(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
.LBB9_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_desaturate_tool_config_notify, .Lfunc_end9-gimp_desaturate_tool_config_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_desaturate_tool_mode_changed,@function
gimp_desaturate_tool_mode_changed:      # @gimp_desaturate_tool_mode_changed
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %edx
	cmpl	-28(%rbp), %edx
	je	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.14, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB10_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_desaturate_tool_mode_changed, .Lfunc_end10-gimp_desaturate_tool_mode_changed
	.cfi_endproc

	.type	gimp_desaturate_tool_get_type.g_define_type_id__volatile,@object # @gimp_desaturate_tool_get_type.g_define_type_id__volatile
	.local	gimp_desaturate_tool_get_type.g_define_type_id__volatile
	.comm	gimp_desaturate_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDesaturateTool"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-desaturate-tool"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Desaturate"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Desaturate Tool: Turn colors into shades of gray"
	.size	.L.str.3, 49

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Desaturate..."
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-desaturate"
	.size	.L.str.5, 21

	.type	gimp_desaturate_tool_parent_class,@object # @gimp_desaturate_tool_parent_class
	.local	gimp_desaturate_tool_parent_class
	.comm	gimp_desaturate_tool_parent_class,8,8
	.type	GimpDesaturateTool_private_offset,@object # @GimpDesaturateTool_private_offset
	.local	GimpDesaturateTool_private_offset
	.comm	GimpDesaturateTool_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Desaturate (Remove Colors)"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Desaturate only operates on RGB layers."
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"operation"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp:desaturate"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"notify"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"config"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Choose shade of gray based on:"
	.size	.L.str.12, 31

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-item-data"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"mode"
	.size	.L.str.14, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
