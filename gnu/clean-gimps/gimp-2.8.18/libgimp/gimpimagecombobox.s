	.text
	.file	"gimpimagecombobox.bc"
	.globl	gimp_image_combo_box_get_type
	.align	16, 0x90
	.type	gimp_image_combo_box_get_type,@function
gimp_image_combo_box_get_type:          # @gimp_image_combo_box_get_type
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
	movq	gimp_image_combo_box_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_image_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
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
	leaq	gimp_image_combo_box_class_intern_init(%rip), %rdi
	movl	$176, %r8d
	leaq	gimp_image_combo_box_init(%rip), %rcx
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
	leaq	gimp_image_combo_box_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_image_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_combo_box_get_type, .Lfunc_end0-gimp_image_combo_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_combo_box_class_intern_init,@function
gimp_image_combo_box_class_intern_init: # @gimp_image_combo_box_class_intern_init
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
	movq	%rax, gimp_image_combo_box_parent_class(%rip)
	cmpl	$0, GimpImageComboBox_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpImageComboBox_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_combo_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_combo_box_class_intern_init, .Lfunc_end1-gimp_image_combo_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_combo_box_init,@function
gimp_image_combo_box_init:              # @gimp_image_combo_box_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$7, %esi
	leaq	target(%rip), %rdx
	movl	$1, %ecx
	movl	$2, %r8d
	movq	%rax, %rdi
	callq	gtk_drag_dest_set@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_combo_box_init, .Lfunc_end2-gimp_image_combo_box_init
	.cfi_endproc

	.globl	gimp_image_combo_box_new
	.align	16, 0x90
	.type	gimp_image_combo_box_new,@function
gimp_image_combo_box_new:               # @gimp_image_combo_box_new
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_image_combo_box_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	movl	$200, %edx
	leaq	.L.str.2(%rip), %rcx
	movl	$2, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-24(%rbp), %rdi
	callq	gimp_image_combo_box_populate
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_image_combo_box_changed(%rip), %rax
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, %rdx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_combo_box_new, .Lfunc_end3-gimp_image_combo_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_combo_box_populate,@function
gimp_image_combo_box_populate:          # @gimp_image_combo_box_populate
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	leaq	-60(%rbp), %rdi
	movq	%rax, -16(%rbp)
	callq	gimp_image_list@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rcx
	movq	-8(%rbp), %rdi
	movq	168(%rdi), %r8
	movq	%rax, %rdi
	callq	gimp_image_combo_box_model_add
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	cmpl	$0, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active_iter@PLT
.LBB4_2:                                # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_combo_box_populate, .Lfunc_end4-gimp_image_combo_box_populate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_combo_box_changed,@function
gimp_image_combo_box_changed:           # @gimp_image_combo_box_changed
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
	callq	gimp_int_combo_box_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-12(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active@PLT
	cmpl	$0, %eax
	je	.LBB5_4
# BB#1:                                 # %if.then
	movl	-12(%rbp), %edi
	callq	gimp_image_is_valid@PLT
	cmpl	$0, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_stop_emission_by_name@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_list_store_clear@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_image_combo_box_populate
.LBB5_3:                                # %if.end
	jmp	.LBB5_4
.LBB5_4:                                # %if.end.11
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_combo_box_changed, .Lfunc_end5-gimp_image_combo_box_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_combo_box_class_init,@function
gimp_image_combo_box_class_init:        # @gimp_image_combo_box_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_image_combo_box_drag_data_received(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 624(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_combo_box_class_init, .Lfunc_end6-gimp_image_combo_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_combo_box_drag_data_received,@function
gimp_image_combo_box_drag_data_received: # @gimp_image_combo_box_drag_data_received
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
	jne	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -44(%rbp)
	jge	.LBB7_3
.LBB7_2:                                # %if.then
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_image_combo_box_drag_data_received(%rip), %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB7_9
.LBB7_3:                                # %if.end
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
	je	.LBB7_8
# BB#4:                                 # %if.then.6
	leaq	.L.str.5(%rip), %rsi
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jne	.LBB7_7
# BB#5:                                 # %land.lhs.true
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_getpid@PLT
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB7_7
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
.LBB7_7:                                # %if.end.17
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.18
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB7_9:                                # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_combo_box_drag_data_received, .Lfunc_end7-gimp_image_combo_box_drag_data_received
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB8_2
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
.LBB8_2:                                # %entry
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
.Lfunc_end8:
	.size	g_warning, .Lfunc_end8-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_combo_box_model_add,@function
gimp_image_combo_box_model_add:         # @gimp_image_combo_box_model_add
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -76(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB9_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movq	-40(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB9_7
.LBB9_4:                                # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-76(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_name@PLT
	leaq	.L.str.8(%rip), %rdi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rsi
	movslq	-76(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free@PLT
	movl	$24, %edx
	movl	$1, %ecx
	movslq	-76(%rbp), %rax
	movq	-24(%rbp), %rsi
	movl	(%rsi,%rax,4), %edi
	movl	%edx, %esi
	callq	gimp_image_get_thumbnail@PLT
	leaq	-72(%rbp), %rsi
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_list_store_append@PLT
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$3, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movslq	-76(%rbp), %rax
	movq	-24(%rbp), %r10
	movl	(%r10,%rax,4), %r11d
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %r10
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	%r9d, -112(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$3, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	cmpq	$0, -104(%rbp)
	je	.LBB9_6
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-96(%rbp), %rdi
	callq	g_free@PLT
.LBB9_7:                                # %if.end.15
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_8
.LBB9_8:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB9_1
.LBB9_9:                                # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_combo_box_model_add, .Lfunc_end9-gimp_image_combo_box_model_add
	.cfi_endproc

	.type	gimp_image_combo_box_get_type.g_define_type_id__volatile,@object # @gimp_image_combo_box_get_type.g_define_type_id__volatile
	.local	gimp_image_combo_box_get_type.g_define_type_id__volatile
	.comm	gimp_image_combo_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImageComboBox"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"width-request"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ellipsize"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"changed"
	.size	.L.str.3, 8

	.type	gimp_image_combo_box_parent_class,@object # @gimp_image_combo_box_parent_class
	.local	gimp_image_combo_box_parent_class
	.comm	gimp_image_combo_box_parent_class,8,8
	.type	GimpImageComboBox_private_offset,@object # @GimpImageComboBox_private_offset
	.local	GimpImageComboBox_private_offset
	.comm	GimpImageComboBox_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s: received invalid image ID data"
	.size	.L.str.4, 35

	.type	.L__func__.gimp_image_combo_box_drag_data_received,@object # @__func__.gimp_image_combo_box_drag_data_received
.L__func__.gimp_image_combo_box_drag_data_received:
	.asciz	"gimp_image_combo_box_drag_data_received"
	.size	.L__func__.gimp_image_combo_box_drag_data_received, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%i:%i"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"LibGimp"
	.size	.L.str.6, 8

	.type	target,@object          # @target
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
target:
	.quad	.L.str.7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	target, 16

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"application/x-gimp-image-id"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s-%d"
	.size	.L.str.8, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
