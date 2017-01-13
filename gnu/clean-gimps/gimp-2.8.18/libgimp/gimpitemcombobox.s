	.text
	.file	"gimpitemcombobox.bc"
	.globl	gimp_drawable_combo_box_get_type
	.align	16, 0x90
	.type	gimp_drawable_combo_box_get_type,@function
gimp_drawable_combo_box_get_type:       # @gimp_drawable_combo_box_get_type
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
	movq	gimp_drawable_combo_box_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_drawable_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gimp_int_combo_box_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_drawable_combo_box_class_intern_init(%rip), %rdi
	movl	$160, %r8d
	leaq	gimp_drawable_combo_box_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_drawable_combo_box_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_drawable_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_combo_box_get_type, .Lfunc_end0-gimp_drawable_combo_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_combo_box_class_intern_init,@function
gimp_drawable_combo_box_class_intern_init: # @gimp_drawable_combo_box_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_drawable_combo_box_parent_class(%rip)
	cmpl	$0, GimpDrawableComboBox_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpDrawableComboBox_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_drawable_combo_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_combo_box_class_intern_init, .Lfunc_end1-gimp_drawable_combo_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_combo_box_init,@function
gimp_drawable_combo_box_init:           # @gimp_drawable_combo_box_init
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
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$7, %esi
	leaq	targets(%rip), %rdx
	movl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	movl	-20(%rbp), %r8d         # 4-byte Reload
	callq	gtk_drag_dest_set@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_malloc0_n@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_combo_box_init, .Lfunc_end2-gimp_drawable_combo_box_init
	.cfi_endproc

	.globl	gimp_drawable_combo_box_new
	.align	16, 0x90
	.type	gimp_drawable_combo_box_new,@function
gimp_drawable_combo_box_new:            # @gimp_drawable_combo_box_new
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_drawable_combo_box_get_type@PLT
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_combo_box_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_combo_box_new, .Lfunc_end3-gimp_drawable_combo_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_combo_box_new,@function
gimp_item_combo_box_new:                # @gimp_item_combo_box_new
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
	subq	$64, %rsp
	leaq	.L.str.11(%rip), %rax
	movl	$200, %ecx
	leaq	.L.str.12(%rip), %r8
	movl	$2, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movl	%ecx, %edx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movq	%r11, %r9
	movb	$0, %al
	callq	g_object_new@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rdi
	callq	gimp_item_combo_box_populate
	leaq	.L.str.13(%rip), %rsi
	leaq	gimp_item_combo_box_changed(%rip), %rax
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rax, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-32(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_item_combo_box_new, .Lfunc_end4-gimp_item_combo_box_new
	.cfi_endproc

	.globl	gimp_channel_combo_box_get_type
	.align	16, 0x90
	.type	gimp_channel_combo_box_get_type,@function
gimp_channel_combo_box_get_type:        # @gimp_channel_combo_box_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_channel_combo_box_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB5_2
# BB#1:                                 # %land.rhs
	leaq	gimp_channel_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB5_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then
	callq	gimp_int_combo_box_get_type@PLT
	leaq	.L.str.1(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_channel_combo_box_class_intern_init(%rip), %rdi
	movl	$160, %r8d
	leaq	gimp_channel_combo_box_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_channel_combo_box_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB5_4:                                # %if.end
	movq	gimp_channel_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_channel_combo_box_get_type, .Lfunc_end5-gimp_channel_combo_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_combo_box_class_intern_init,@function
gimp_channel_combo_box_class_intern_init: # @gimp_channel_combo_box_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_channel_combo_box_parent_class(%rip)
	cmpl	$0, GimpChannelComboBox_private_offset(%rip)
	je	.LBB6_2
# BB#1:                                 # %if.then
	leaq	GimpChannelComboBox_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_channel_combo_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_channel_combo_box_class_intern_init, .Lfunc_end6-gimp_channel_combo_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_combo_box_init,@function
gimp_channel_combo_box_init:            # @gimp_channel_combo_box_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$7, %esi
	leaq	targets(%rip), %rdx
	movl	$1, %ecx
	movl	$2, %r8d
	movq	%rax, %rdi
	callq	gtk_drag_dest_set@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	g_malloc0_n@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_channel_combo_box_init, .Lfunc_end7-gimp_channel_combo_box_init
	.cfi_endproc

	.globl	gimp_channel_combo_box_new
	.align	16, 0x90
	.type	gimp_channel_combo_box_new,@function
gimp_channel_combo_box_new:             # @gimp_channel_combo_box_new
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_channel_combo_box_get_type@PLT
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_combo_box_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_channel_combo_box_new, .Lfunc_end8-gimp_channel_combo_box_new
	.cfi_endproc

	.globl	gimp_layer_combo_box_get_type
	.align	16, 0x90
	.type	gimp_layer_combo_box_get_type,@function
gimp_layer_combo_box_get_type:          # @gimp_layer_combo_box_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_layer_combo_box_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB9_2
# BB#1:                                 # %land.rhs
	leaq	gimp_layer_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB9_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB9_4
# BB#3:                                 # %if.then
	callq	gimp_int_combo_box_get_type@PLT
	leaq	.L.str.2(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_layer_combo_box_class_intern_init(%rip), %rdi
	movl	$160, %r8d
	leaq	gimp_layer_combo_box_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_layer_combo_box_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB9_4:                                # %if.end
	movq	gimp_layer_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_layer_combo_box_get_type, .Lfunc_end9-gimp_layer_combo_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_combo_box_class_intern_init,@function
gimp_layer_combo_box_class_intern_init: # @gimp_layer_combo_box_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_layer_combo_box_parent_class(%rip)
	cmpl	$0, GimpLayerComboBox_private_offset(%rip)
	je	.LBB10_2
# BB#1:                                 # %if.then
	leaq	GimpLayerComboBox_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_layer_combo_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_layer_combo_box_class_intern_init, .Lfunc_end10-gimp_layer_combo_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_combo_box_init,@function
gimp_layer_combo_box_init:              # @gimp_layer_combo_box_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$7, %esi
	leaq	targets(%rip), %rdi
	addq	$16, %rdi
	movl	$1, %ecx
	movl	$2, %r8d
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	gtk_drag_dest_set@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_malloc0_n@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_layer_combo_box_init, .Lfunc_end11-gimp_layer_combo_box_init
	.cfi_endproc

	.globl	gimp_layer_combo_box_new
	.align	16, 0x90
	.type	gimp_layer_combo_box_new,@function
gimp_layer_combo_box_new:               # @gimp_layer_combo_box_new
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_layer_combo_box_get_type@PLT
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_combo_box_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_layer_combo_box_new, .Lfunc_end12-gimp_layer_combo_box_new
	.cfi_endproc

	.globl	gimp_vectors_combo_box_get_type
	.align	16, 0x90
	.type	gimp_vectors_combo_box_get_type,@function
gimp_vectors_combo_box_get_type:        # @gimp_vectors_combo_box_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_vectors_combo_box_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB13_2
# BB#1:                                 # %land.rhs
	leaq	gimp_vectors_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB13_2:                               # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB13_4
# BB#3:                                 # %if.then
	callq	gimp_int_combo_box_get_type@PLT
	leaq	.L.str.3(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_vectors_combo_box_class_intern_init(%rip), %rdi
	movl	$160, %r8d
	leaq	gimp_vectors_combo_box_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_vectors_combo_box_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB13_4:                               # %if.end
	movq	gimp_vectors_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_vectors_combo_box_get_type, .Lfunc_end13-gimp_vectors_combo_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_combo_box_class_intern_init,@function
gimp_vectors_combo_box_class_intern_init: # @gimp_vectors_combo_box_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_vectors_combo_box_parent_class(%rip)
	cmpl	$0, GimpVectorsComboBox_private_offset(%rip)
	je	.LBB14_2
# BB#1:                                 # %if.then
	leaq	GimpVectorsComboBox_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB14_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_vectors_combo_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_vectors_combo_box_class_intern_init, .Lfunc_end14-gimp_vectors_combo_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_combo_box_init,@function
gimp_vectors_combo_box_init:            # @gimp_vectors_combo_box_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$7, %esi
	leaq	targets(%rip), %rdi
	addq	$32, %rdi
	movl	$1, %ecx
	movl	$2, %r8d
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	gtk_drag_dest_set@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_malloc0_n@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_vectors_combo_box_init, .Lfunc_end15-gimp_vectors_combo_box_init
	.cfi_endproc

	.globl	gimp_vectors_combo_box_new
	.align	16, 0x90
	.type	gimp_vectors_combo_box_new,@function
gimp_vectors_combo_box_new:             # @gimp_vectors_combo_box_new
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_vectors_combo_box_get_type@PLT
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_combo_box_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_vectors_combo_box_new, .Lfunc_end16-gimp_vectors_combo_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_combo_box_class_init,@function
gimp_drawable_combo_box_class_init:     # @gimp_drawable_combo_box_class_init
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
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_item_combo_box_drag_data_received(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 624(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_drawable_combo_box_class_init, .Lfunc_end17-gimp_drawable_combo_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_combo_box_drag_data_received,@function
gimp_item_combo_box_drag_data_received: # @gimp_item_combo_box_drag_data_received
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
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_length@PLT
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_format@PLT
	cmpl	$8, %eax
	jne	.LBB18_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -44(%rbp)
	jge	.LBB18_3
.LBB18_2:                               # %if.then
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_item_combo_box_drag_data_received(%rip), %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB18_9
.LBB18_3:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_data@PLT
	movslq	-44(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strndup@PLT
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_utf8_validate@PLT
	cmpl	$0, %eax
	je	.LBB18_8
# BB#4:                                 # %if.then.6
	leaq	.L.str.5(%rip), %rsi
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jne	.LBB18_7
# BB#5:                                 # %land.lhs.true
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_getpid@PLT
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB18_7
# BB#6:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-64(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active@PLT
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB18_7:                               # %if.end.17
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.18
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB18_9:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_item_combo_box_drag_data_received, .Lfunc_end18-gimp_item_combo_box_drag_data_received
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB19_2
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
.LBB19_2:                               # %entry
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
	leaq	.L.str.6(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end19:
	.size	g_warning, .Lfunc_end19-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_combo_box_class_init,@function
gimp_channel_combo_box_class_init:      # @gimp_channel_combo_box_class_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_item_combo_box_drag_data_received(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 624(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_channel_combo_box_class_init, .Lfunc_end20-gimp_channel_combo_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_combo_box_class_init,@function
gimp_layer_combo_box_class_init:        # @gimp_layer_combo_box_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_item_combo_box_drag_data_received(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 624(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_layer_combo_box_class_init, .Lfunc_end21-gimp_layer_combo_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_combo_box_class_init,@function
gimp_vectors_combo_box_class_init:      # @gimp_vectors_combo_box_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_item_combo_box_drag_data_received(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 624(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_vectors_combo_box_class_init, .Lfunc_end22-gimp_vectors_combo_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_combo_box_populate,@function
gimp_item_combo_box_populate:           # @gimp_item_combo_box_populate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	leaq	-60(%rbp), %rdi
	movq	%rax, -16(%rbp)
	callq	gimp_image_list@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -64(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB23_47
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_drawable_combo_box_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB23_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$0, -100(%rbp)
	jmp	.LBB23_9
.LBB23_4:                               # %if.else
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB23_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$1, -100(%rbp)
	jmp	.LBB23_8
.LBB23_7:                               # %if.else.9
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB23_8:                               # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_9
.LBB23_9:                               # %if.end.11
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.LBB23_18
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_layer_combo_box_get_type@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB23_12
# BB#11:                                # %if.then.21
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$0, -124(%rbp)
	jmp	.LBB23_17
.LBB23_12:                              # %if.else.22
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_15
# BB#13:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB23_15
# BB#14:                                # %if.then.29
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$1, -124(%rbp)
	jmp	.LBB23_16
.LBB23_15:                              # %if.else.30
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -124(%rbp)
.LBB23_16:                              # %if.end.32
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_17
.LBB23_17:                              # %if.end.33
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB23_19
.LBB23_18:                              # %if.then.36
                                        #   in Loop: Header=BB23_1 Depth=1
	leaq	-76(%rbp), %rsi
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_layers@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movslq	-64(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movl	(%rsi,%rcx,4), %edx
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %r8
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_combo_box_model_add
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB23_19:                              # %if.end.42
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_drawable_combo_box_get_type@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB23_21
# BB#20:                                # %if.then.51
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$0, -148(%rbp)
	jmp	.LBB23_26
.LBB23_21:                              # %if.else.52
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_24
# BB#22:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB23_24
# BB#23:                                # %if.then.59
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$1, -148(%rbp)
	jmp	.LBB23_25
.LBB23_24:                              # %if.else.60
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -148(%rbp)
.LBB23_25:                              # %if.end.62
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_26
.LBB23_26:                              # %if.end.63
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	jne	.LBB23_35
# BB#27:                                # %lor.lhs.false.66
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_channel_combo_box_get_type@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB23_29
# BB#28:                                # %if.then.75
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$0, -172(%rbp)
	jmp	.LBB23_34
.LBB23_29:                              # %if.else.76
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_32
# BB#30:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB23_32
# BB#31:                                # %if.then.83
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$1, -172(%rbp)
	jmp	.LBB23_33
.LBB23_32:                              # %if.else.84
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -172(%rbp)
.LBB23_33:                              # %if.end.86
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_34
.LBB23_34:                              # %if.end.87
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB23_36
.LBB23_35:                              # %if.then.90
                                        #   in Loop: Header=BB23_1 Depth=1
	leaq	-76(%rbp), %rsi
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_channels@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movslq	-64(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movl	(%rsi,%rcx,4), %edx
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %r8
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_combo_box_model_add
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB23_36:                              # %if.end.98
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_vectors_combo_box_get_type@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB23_38
# BB#37:                                # %if.then.107
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$0, -196(%rbp)
	jmp	.LBB23_43
.LBB23_38:                              # %if.else.108
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_41
# BB#39:                                # %land.lhs.true.111
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB23_41
# BB#40:                                # %if.then.115
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$1, -196(%rbp)
	jmp	.LBB23_42
.LBB23_41:                              # %if.else.116
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -196(%rbp)
.LBB23_42:                              # %if.end.118
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_43
.LBB23_43:                              # %if.end.119
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB23_45
# BB#44:                                # %if.then.122
                                        #   in Loop: Header=BB23_1 Depth=1
	leaq	-76(%rbp), %rsi
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_vectors@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movslq	-64(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movl	(%rsi,%rcx,4), %edx
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %r8
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_combo_box_model_add
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB23_45:                              # %if.end.130
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_46
.LBB23_46:                              # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB23_1
.LBB23_47:                              # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	cmpl	$0, %eax
	je	.LBB23_49
# BB#48:                                # %if.then.133
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active_iter@PLT
.LBB23_49:                              # %if.end.136
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_item_combo_box_populate, .Lfunc_end23-gimp_item_combo_box_populate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_combo_box_changed,@function
gimp_item_combo_box_changed:            # @gimp_item_combo_box_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-12(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_int_combo_box_get_active@PLT
	cmpl	$0, %eax
	je	.LBB24_12
# BB#1:                                 # %if.then
	cmpl	$0, -12(%rbp)
	jle	.LBB24_11
# BB#2:                                 # %land.lhs.true
	movl	-12(%rbp), %edi
	callq	gimp_item_is_valid@PLT
	cmpl	$0, %eax
	jne	.LBB24_11
# BB#3:                                 # %if.then.3
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	leaq	.L.str.13(%rip), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_stop_emission_by_name@PLT
	leaq	gimp_item_combo_box_remove_items(%rip), %rsi
	leaq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, %rdx
	callq	gtk_tree_model_foreach@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB24_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB24_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_remove@PLT
	movl	%eax, -60(%rbp)         # 4-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB24_4 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB24_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB24_9
.LBB24_8:                               # %cond.false
                                        #   in Loop: Header=BB24_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB24_9
.LBB24_9:                               # %cond.end
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB24_4
.LBB24_10:                              # %for.end
	movq	g_free@GOTPCREL(%rip), %rsi
	movq	-32(%rbp), %rdi
	callq	g_list_free_full@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_item_combo_box_populate
.LBB24_11:                              # %if.end
	jmp	.LBB24_12
.LBB24_12:                              # %if.end.12
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_item_combo_box_changed, .Lfunc_end24-gimp_item_combo_box_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_combo_box_model_add,@function
gimp_item_combo_box_model_add:          # @gimp_item_combo_box_model_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	$80, %eax
	movl	%eax, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%r10, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -48(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.LBB25_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movl	$45, %esi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movslq	-36(%rbp), %rdx
	callq	memset@PLT
	movslq	-36(%rbp), %rax
	movq	-96(%rbp), %rdx
	movb	$32, (%rdx,%rax)
	movl	-36(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-96(%rbp), %rdx
	movb	$0, (%rdx,%rax)
	jmp	.LBB25_3
.LBB25_2:                               # %if.else
	leaq	.L.str.14(%rip), %rdi
	callq	g_strdup@PLT
	movq	%rax, -96(%rbp)
.LBB25_3:                               # %if.end
	movl	$0, -84(%rbp)
.LBB25_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB25_24
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edi
	movslq	-84(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB25_20
.LBB25_7:                               # %if.then.15
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	-20(%rbp), %edi
	callq	gimp_image_get_name@PLT
	movq	%rax, -104(%rbp)
	movslq	-84(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_item_get_name@PLT
	leaq	.L.str.15(%rip), %rdi
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-112(%rbp), %r8
	movslq	-84(%rbp), %rax
	movq	-32(%rbp), %r9
	movl	(%r9,%rax,4), %r9d
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_free@PLT
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_vectors_combo_box_get_type@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB25_9
# BB#8:                                 # %if.then.25
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	$0, -148(%rbp)
	jmp	.LBB25_14
.LBB25_9:                               # %if.else.26
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_12
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB25_12
# BB#11:                                # %if.then.31
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	$1, -148(%rbp)
	jmp	.LBB25_13
.LBB25_12:                              # %if.else.32
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -148(%rbp)
.LBB25_13:                              # %if.end.34
                                        #   in Loop: Header=BB25_4 Depth=1
	jmp	.LBB25_14
.LBB25_14:                              # %if.end.35
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB25_16
# BB#15:                                # %if.then.37
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	$0, -128(%rbp)
	jmp	.LBB25_17
.LBB25_16:                              # %if.else.38
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	$24, %eax
	movl	$1, %ecx
	movslq	-84(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	(%rsi,%rdx,4), %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_drawable_get_thumbnail@PLT
	movq	%rax, -128(%rbp)
.LBB25_17:                              # %if.end.42
                                        #   in Loop: Header=BB25_4 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_list_store_append@PLT
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$3, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movslq	-84(%rbp), %r9
	movq	-32(%rbp), %r10
	movl	(%r10,%r9,4), %r11d
	movq	-120(%rbp), %r9
	movq	-128(%rbp), %r10
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	$3, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$-1, 16(%rsp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	cmpq	$0, -128(%rbp)
	je	.LBB25_19
# BB#18:                                # %if.then.46
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
.LBB25_19:                              # %if.end.47
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-120(%rbp), %rdi
	callq	g_free@PLT
.LBB25_20:                              # %if.end.48
                                        #   in Loop: Header=BB25_4 Depth=1
	movslq	-84(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_item_is_group@PLT
	cmpl	$0, %eax
	je	.LBB25_22
# BB#21:                                # %if.then.53
                                        #   in Loop: Header=BB25_4 Depth=1
	leaq	-164(%rbp), %rsi
	movslq	-84(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_item_get_children@PLT
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-164(%rbp), %ecx
	movq	-160(%rbp), %r8
	movl	-36(%rbp), %r9d
	addl	$1, %r9d
	callq	gimp_item_combo_box_model_add
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB25_22:                              # %if.end.60
                                        #   in Loop: Header=BB25_4 Depth=1
	jmp	.LBB25_23
.LBB25_23:                              # %for.inc
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB25_4
.LBB25_24:                              # %for.end
	movq	-96(%rbp), %rdi
	callq	g_free@PLT
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_item_combo_box_model_add, .Lfunc_end25-gimp_item_combo_box_model_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_combo_box_remove_items,@function
gimp_item_combo_box_remove_items:       # @gimp_item_combo_box_remove_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	-36(%rbp), %r8
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpl	$0, -36(%rbp)
	jle	.LBB26_2
# BB#1:                                 # %if.then
	movl	$32, %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_memdup@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB26_2:                               # %if.end
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_item_combo_box_remove_items, .Lfunc_end26-gimp_item_combo_box_remove_items
	.cfi_endproc

	.type	gimp_drawable_combo_box_get_type.g_define_type_id__volatile,@object # @gimp_drawable_combo_box_get_type.g_define_type_id__volatile
	.local	gimp_drawable_combo_box_get_type.g_define_type_id__volatile
	.comm	gimp_drawable_combo_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDrawableComboBox"
	.size	.L.str, 21

	.type	gimp_channel_combo_box_get_type.g_define_type_id__volatile,@object # @gimp_channel_combo_box_get_type.g_define_type_id__volatile
	.local	gimp_channel_combo_box_get_type.g_define_type_id__volatile
	.comm	gimp_channel_combo_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GimpChannelComboBox"
	.size	.L.str.1, 20

	.type	gimp_layer_combo_box_get_type.g_define_type_id__volatile,@object # @gimp_layer_combo_box_get_type.g_define_type_id__volatile
	.local	gimp_layer_combo_box_get_type.g_define_type_id__volatile
	.comm	gimp_layer_combo_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GimpLayerComboBox"
	.size	.L.str.2, 18

	.type	gimp_vectors_combo_box_get_type.g_define_type_id__volatile,@object # @gimp_vectors_combo_box_get_type.g_define_type_id__volatile
	.local	gimp_vectors_combo_box_get_type.g_define_type_id__volatile
	.comm	gimp_vectors_combo_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GimpVectorsComboBox"
	.size	.L.str.3, 20

	.type	gimp_drawable_combo_box_parent_class,@object # @gimp_drawable_combo_box_parent_class
	.local	gimp_drawable_combo_box_parent_class
	.comm	gimp_drawable_combo_box_parent_class,8,8
	.type	GimpDrawableComboBox_private_offset,@object # @GimpDrawableComboBox_private_offset
	.local	GimpDrawableComboBox_private_offset
	.comm	GimpDrawableComboBox_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s: received invalid item ID data"
	.size	.L.str.4, 34

	.type	.L__func__.gimp_item_combo_box_drag_data_received,@object # @__func__.gimp_item_combo_box_drag_data_received
.L__func__.gimp_item_combo_box_drag_data_received:
	.asciz	"gimp_item_combo_box_drag_data_received"
	.size	.L__func__.gimp_item_combo_box_drag_data_received, 39

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%i:%i"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"LibGimp"
	.size	.L.str.6, 8

	.type	targets,@object         # @targets
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
targets:
	.quad	.L.str.8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.9
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	targets, 48

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"gimp-item-combo-box-private"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"application/x-gimp-channel-id"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"application/x-gimp-layer-id"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"application/x-gimp-vectors-id"
	.size	.L.str.10, 30

	.type	gimp_channel_combo_box_parent_class,@object # @gimp_channel_combo_box_parent_class
	.local	gimp_channel_combo_box_parent_class
	.comm	gimp_channel_combo_box_parent_class,8,8
	.type	GimpChannelComboBox_private_offset,@object # @GimpChannelComboBox_private_offset
	.local	GimpChannelComboBox_private_offset
	.comm	GimpChannelComboBox_private_offset,4,4
	.type	gimp_layer_combo_box_parent_class,@object # @gimp_layer_combo_box_parent_class
	.local	gimp_layer_combo_box_parent_class
	.comm	gimp_layer_combo_box_parent_class,8,8
	.type	GimpLayerComboBox_private_offset,@object # @GimpLayerComboBox_private_offset
	.local	GimpLayerComboBox_private_offset
	.comm	GimpLayerComboBox_private_offset,4,4
	.type	gimp_vectors_combo_box_parent_class,@object # @gimp_vectors_combo_box_parent_class
	.local	gimp_vectors_combo_box_parent_class
	.comm	gimp_vectors_combo_box_parent_class,8,8
	.type	GimpVectorsComboBox_private_offset,@object # @GimpVectorsComboBox_private_offset
	.local	GimpVectorsComboBox_private_offset
	.comm	GimpVectorsComboBox_private_offset,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"width-request"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ellipsize"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"changed"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.zero	1
	.size	.L.str.14, 1

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s%s-%d / %s-%d"
	.size	.L.str.15, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
