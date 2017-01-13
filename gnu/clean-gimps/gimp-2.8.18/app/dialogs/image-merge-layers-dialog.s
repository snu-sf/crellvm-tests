	.text
	.file	"image-merge-layers-dialog.bc"
	.globl	image_merge_layers_dialog_new
	.align	16, 0x90
	.type	image_merge_layers_dialog_new,@function
image_merge_layers_dialog_new:          # @image_merge_layers_dialog_new
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
	subq	$472, %rsp              # imm = 0x1D8
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
	movl	%r9d, -84(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_merge_layers_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_27
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -164(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -164(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_merge_layers_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_27
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	movl	$40, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-96(%rbp), %rax
	movl	$0, 24(%rax)
	movl	-80(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, 28(%rax)
	movl	-84(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movq	-64(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.6, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movq	-72(%rbp), %rsi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %r8
	movabsq	$gimp_standard_help_func, %rdi
	movabsq	$.L.str.7, %rdx
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967291, %r9d       # imm = 0xFFFFFFFB
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-192(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-184(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-200(%rbp), %r15        # 8-byte Reload
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	movq	-232(%rbp), %r12        # 8-byte Reload
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movq	%r12, %rcx
	movq	-208(%rbp), %r13        # 8-byte Reload
	movl	%r9d, -248(%rbp)        # 4-byte Spill
	movq	%r13, %r9
	movq	-216(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-224(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%r12, 16(%rsp)
	movq	-240(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r11, -256(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_new
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$image_merge_layers_dialog_free, %rcx
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_weak_ref
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
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
	movq	(%rax), %rax
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
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movabsq	$.L.str.10, %rdi
	movq	-96(%rbp), %rsi
	addq	$24, %rsi
	movq	-96(%rbp), %r9
	movl	24(%r9), %r8d
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movl	%r8d, -308(%rbp)        # 4-byte Spill
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.11, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	$2, %edx
	movq	-304(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-344(%rbp), %r11        # 8-byte Reload
	movl	%edx, -348(%rbp)        # 4-byte Spill
	movq	%r11, %rdx
	movq	-320(%rbp), %rbx        # 8-byte Reload
	movl	%ecx, -352(%rbp)        # 4-byte Spill
	movq	%rbx, %rcx
	movl	-308(%rbp), %r8d        # 4-byte Reload
	movq	-328(%rbp), %r14        # 8-byte Reload
	movq	%r9, -360(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-336(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movl	28(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	-96(%rbp), %r10
	addq	$28, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_image_get_layers
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_is_flat
	cmpl	$0, %eax
	je	.LBB0_26
# BB#25:                                # %if.then.92
	xorl	%esi, %esi
	movq	-120(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB0_26:                               # %if.end.93
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movl	32(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	movl	-428(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	-96(%rbp), %r10
	addq	$32, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB0_27:                               # %return
	movq	-48(%rbp), %rax
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	image_merge_layers_dialog_new, .Lfunc_end0-image_merge_layers_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	image_merge_layers_dialog_free,@function
image_merge_layers_dialog_free:         # @image_merge_layers_dialog_free
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
	.size	image_merge_layers_dialog_free, .Lfunc_end1-image_merge_layers_dialog_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.image_merge_layers_dialog_new,@object # @__func__.image_merge_layers_dialog_new
.L__func__.image_merge_layers_dialog_new:
	.asciz	"image_merge_layers_dialog_new"
	.size	.L__func__.image_merge_layers_dialog_new, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Merge Layers"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-image-merge-layers"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-merge-down"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Layers Merge Options"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-cancel"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"_Merge"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Final, Merged Layer should be:"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Expanded as necessary"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Clipped to image"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Clipped to bottom layer"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Merge within active _group only"
	.size	.L.str.13, 32

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"toggled"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Discard invisible layers"
	.size	.L.str.15, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
