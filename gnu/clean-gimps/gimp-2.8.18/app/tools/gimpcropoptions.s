	.text
	.file	"gimpcropoptions.bc"
	.globl	gimp_crop_options_get_type
	.align	16, 0x90
	.type	gimp_crop_options_get_type,@function
gimp_crop_options_get_type:             # @gimp_crop_options_get_type
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
	movq	gimp_crop_options_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_crop_options_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_tool_options_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$432, %edx              # imm = 0x1B0
	movabsq	$gimp_crop_options_class_intern_init, %rdi
	movl	$360, %r8d              # imm = 0x168
	movabsq	$gimp_crop_options_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movabsq	$gimp_crop_options_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_crop_options_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_crop_options_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_crop_options_get_type, .Lfunc_end0-gimp_crop_options_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_crop_options_class_intern_init,@function
gimp_crop_options_class_intern_init:    # @gimp_crop_options_class_intern_init
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
	movq	%rax, gimp_crop_options_parent_class
	cmpl	$0, GimpCropOptions_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCropOptions_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_crop_options_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_crop_options_class_intern_init, .Lfunc_end1-gimp_crop_options_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_crop_options_init,@function
gimp_crop_options_init:                 # @gimp_crop_options_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_crop_options_init, .Lfunc_end2-gimp_crop_options_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_crop_options_rectangle_options_iface_init,@function
gimp_crop_options_rectangle_options_iface_init: # @gimp_crop_options_rectangle_options_iface_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_crop_options_rectangle_options_iface_init, .Lfunc_end3-gimp_crop_options_rectangle_options_iface_init
	.cfi_endproc

	.globl	gimp_crop_options_gui
	.align	16, 0x90
	.type	gimp_crop_options_gui,@function
gimp_crop_options_gui:                  # @gimp_crop_options_gui
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
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_tool_options_gui
	movabsq	$.L.str.2, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.1, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_options_gui
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
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
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_crop_options_gui, .Lfunc_end4-gimp_crop_options_gui
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_crop_options_class_init,@function
gimp_crop_options_class_init:           # @gimp_crop_options_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.6, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movabsq	$gimp_crop_options_get_property, %r9
	movabsq	$gimp_crop_options_set_property, %r10
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.7, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$28, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.8, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$29, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	callq	gimp_rectangle_options_install_properties
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_crop_options_class_init, .Lfunc_end5-gimp_crop_options_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_crop_options_set_property,@function
gimp_crop_options_set_property:         # @gimp_crop_options_set_property
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_crop_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$28, %r9d
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	%r9d, -56(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_5
.LBB6_5:                                # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$29, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_3
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 352(%rdi)
	jmp	.LBB6_4
.LBB6_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 356(%rdi)
	jmp	.LBB6_4
.LBB6_3:                                # %sw.default
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_rectangle_options_set_property
.LBB6_4:                                # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_crop_options_set_property, .Lfunc_end6-gimp_crop_options_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_crop_options_get_property,@function
gimp_crop_options_get_property:         # @gimp_crop_options_get_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_crop_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$28, %r9d
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	%r9d, -56(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_5
.LBB7_5:                                # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$29, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	352(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_4
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	356(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_4
.LBB7_3:                                # %sw.default
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_rectangle_options_get_property
.LBB7_4:                                # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_crop_options_get_property, .Lfunc_end7-gimp_crop_options_get_property
	.cfi_endproc

	.type	gimp_crop_options_get_type.g_define_type_id__volatile,@object # @gimp_crop_options_get_type.g_define_type_id__volatile
	.local	gimp_crop_options_get_type.g_define_type_id__volatile
	.comm	gimp_crop_options_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCropOptions"
	.size	.L.str, 16

	.type	gimp_crop_options_get_type.g_implement_interface_info,@object # @gimp_crop_options_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_crop_options_get_type.g_implement_interface_info:
	.quad	gimp_crop_options_rectangle_options_iface_init
	.quad	0
	.quad	0
	.size	gimp_crop_options_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"layer-only"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Current layer only"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"allow-growing"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Allow growing"
	.size	.L.str.4, 14

	.type	gimp_crop_options_parent_class,@object # @gimp_crop_options_parent_class
	.local	gimp_crop_options_parent_class
	.comm	gimp_crop_options_parent_class,8,8
	.type	GimpCropOptions_private_offset,@object # @GimpCropOptions_private_offset
	.local	GimpCropOptions_private_offset
	.comm	GimpCropOptions_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"highlight"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Dim everything outside selection"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Crop only currently selected layer"
	.size	.L.str.7, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Allow resizing canvas by dragging cropping frame beyond image boundary"
	.size	.L.str.8, 71


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
