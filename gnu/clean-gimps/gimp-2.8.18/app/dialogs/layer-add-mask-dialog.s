	.text
	.file	"layer-add-mask-dialog.bc"
	.globl	layer_add_mask_dialog_new
	.align	16, 0x90
	.type	layer_add_mask_dialog_new,@function
layer_add_mask_dialog_new:              # @layer_add_mask_dialog_new
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
	subq	$488, %rsp              # imm = 0x1E8
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -156(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -156(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.layer_add_mask_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_39
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -180(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -180(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.layer_add_mask_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_39
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB0_27
# BB#26:                                # %if.then.48
	movl	$0, -204(%rbp)
	jmp	.LBB0_32
.LBB0_27:                               # %if.else.49
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_30
# BB#28:                                # %land.lhs.true.52
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB0_30
# BB#29:                                # %if.then.56
	movl	$1, -204(%rbp)
	jmp	.LBB0_31
.LBB0_30:                               # %if.else.57
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB0_31:                               # %if.end.59
	jmp	.LBB0_32
.LBB0_32:                               # %if.end.60
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB0_34
# BB#33:                                # %if.then.63
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.64
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.layer_add_mask_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_39
.LBB0_35:                               # %if.end.65
	jmp	.LBB0_36
.LBB0_36:                               # %do.end.66
	movl	$40, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movl	-76(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-80(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rdi
	movq	-64(%rbp), %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rdx
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.10, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-72(%rbp), %r15
	movq	-232(%rbp), %r12        # 8-byte Reload
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r12, %rdi
	movq	-224(%rbp), %r13        # 8-byte Reload
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	movq	-240(%rbp), %r12        # 8-byte Reload
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movl	%r9d, -268(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movq	%r15, (%rsp)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-248(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r14, -280(%rbp)        # 8-byte Spill
	movl	%r11d, -284(%rbp)       # 4-byte Spill
	callq	gimp_viewable_dialog_new
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$layer_add_mask_dialog_free, %rcx
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_weak_ref
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_add_mask_type_get_type
	movabsq	$.L.str.11, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movabsq	$gimp_radio_button_update, %rsi
	leaq	-120(%rbp), %r8
	movq	-88(%rbp), %rdi
	addq	$16, %rdi
	movq	-336(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	callq	gimp_enum_radio_frame_new
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rcx
	movl	16(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-96(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r11d, %r11d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r11d, %edx
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_image_get_channels
	movl	$24, %edx
	movl	$1, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_combo_box_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %edx
	movl	$1, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_enum_radio_frame_add
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rsi
	movabsq	$layer_add_mask_dialog_channel_selected, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rdi
	movq	-88(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-128(%rbp), %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_image_get_active_channel
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB0_38
# BB#37:                                # %if.then.114
	movq	-128(%rbp), %rdi
	callq	gimp_image_get_channels
	movq	%rax, %rdi
	callq	gimp_container_get_first_child
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)
.LBB0_38:                               # %if.end.119
	movq	-112(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	movabsq	$.L.str.13, %rdi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movl	32(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-96(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %r10
	addq	$32, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB0_39:                               # %return
	movq	-48(%rbp), %rax
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	layer_add_mask_dialog_new, .Lfunc_end0-layer_add_mask_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	layer_add_mask_dialog_free,@function
layer_add_mask_dialog_free:             # @layer_add_mask_dialog_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$40, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	layer_add_mask_dialog_free, .Lfunc_end1-layer_add_mask_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	layer_add_mask_dialog_channel_selected,@function
layer_add_mask_dialog_channel_selected: # @layer_add_mask_dialog_channel_selected
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	%r8d, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	layer_add_mask_dialog_channel_selected, .Lfunc_end2-layer_add_mask_dialog_channel_selected
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.layer_add_mask_dialog_new,@object # @__func__.layer_add_mask_dialog_new
.L__func__.layer_add_mask_dialog_new:
	.asciz	"layer_add_mask_dialog_new"
	.size	.L__func__.layer_add_mask_dialog_new, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_LAYER (layer)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GTK_IS_WIDGET (parent)"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Add Layer Mask"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-layer-add-mask"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-layer-mask"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Add a Mask to the Layer"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-layer-mask-add"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-cancel"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-add"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Initialize Layer Mask to:"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"select-item"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"In_vert mask"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"toggled"
	.size	.L.str.14, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
