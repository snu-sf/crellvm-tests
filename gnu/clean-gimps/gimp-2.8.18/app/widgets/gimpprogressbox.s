	.text
	.file	"gimpprogressbox.bc"
	.globl	gimp_progress_box_get_type
	.align	16, 0x90
	.type	gimp_progress_box_get_type,@function
gimp_progress_box_get_type:             # @gimp_progress_box_get_type
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
	movq	gimp_progress_box_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_progress_box_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_progress_box_class_intern_init, %rdi
	movl	$160, %r8d
	movabsq	$gimp_progress_box_init, %rcx
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
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_progress_box_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_progress_box_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_progress_box_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_progress_box_get_type, .Lfunc_end0-gimp_progress_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_box_class_intern_init,@function
gimp_progress_box_class_intern_init:    # @gimp_progress_box_class_intern_init
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
	movq	%rax, gimp_progress_box_parent_class
	cmpl	$0, GimpProgressBox_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpProgressBox_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_progress_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_progress_box_class_intern_init, .Lfunc_end1-gimp_progress_box_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_progress_box_init,@function
gimp_progress_box_init:                 # @gimp_progress_box_init
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	callq	gtk_progress_bar_new
	movl	$250, %esi
	movl	$20, %edx
	movq	-8(%rbp), %rdi
	movq	%rax, 152(%rdi)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	-36(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rsi
	movq	%rax, 144(%rsi)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_ellipsize
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_show
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_progress_box_init, .Lfunc_end2-gimp_progress_box_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_box_progress_iface_init,@function
gimp_progress_box_progress_iface_init:  # @gimp_progress_box_progress_iface_init
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
	movabsq	$gimp_progress_box_progress_pulse, %rax
	movabsq	$gimp_progress_box_progress_get_value, %rcx
	movabsq	$gimp_progress_box_progress_set_value, %rdx
	movabsq	$gimp_progress_box_progress_set_text, %rsi
	movabsq	$gimp_progress_box_progress_is_active, %r8
	movabsq	$gimp_progress_box_progress_end, %r9
	movabsq	$gimp_progress_box_progress_start, %r10
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r10, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 48(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 56(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_progress_box_progress_iface_init, .Lfunc_end3-gimp_progress_box_progress_iface_init
	.cfi_endproc

	.globl	gimp_progress_box_new
	.align	16, 0x90
	.type	gimp_progress_box_new,@function
gimp_progress_box_new:                  # @gimp_progress_box_new
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
	callq	gimp_progress_box_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_progress_box_new, .Lfunc_end4-gimp_progress_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_box_class_init,@function
gimp_progress_box_class_init:           # @gimp_progress_box_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_progress_box_dispose, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_progress_box_class_init, .Lfunc_end5-gimp_progress_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_box_dispose,@function
gimp_progress_box_dispose:              # @gimp_progress_box_dispose
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
	callq	gimp_progress_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_progress_box_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_progress_box_dispose, .Lfunc_end6-gimp_progress_box_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_box_progress_start,@function
gimp_progress_box_progress_start:       # @gimp_progress_box_progress_start
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 152(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_7
.LBB7_2:                                # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 128(%rax)
	jne	.LBB7_6
# BB#3:                                 # %if.then.4
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rdi
	callq	gtk_progress_bar_set_fraction
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movl	$1, 128(%rax)
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 132(%rax)
	movq	-40(%rbp), %rax
	movsd	%xmm0, 136(%rax)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %if.then.15
	movq	-40(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_get_window
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gdk_window_process_updates
.LBB7_5:                                # %if.end.18
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.end.19
	movq	$0, -8(%rbp)
.LBB7_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_progress_box_progress_start, .Lfunc_end7-gimp_progress_box_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_box_progress_end,@function
gimp_progress_box_progress_end:         # @gimp_progress_box_progress_end
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_progress_box_progress_is_active
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	callq	gtk_progress_bar_set_fraction
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 136(%rax)
.LBB8_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_progress_box_progress_end, .Lfunc_end8-gimp_progress_box_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_box_progress_is_active,@function
gimp_progress_box_progress_is_active:   # @gimp_progress_box_progress_is_active
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	movb	%dl, -25(%rbp)          # 1-byte Spill
	je	.LBB9_2
# BB#1:                                 # %land.rhs
	movq	-16(%rbp), %rax
	cmpl	$0, 128(%rax)
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB9_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_progress_box_progress_is_active, .Lfunc_end9-gimp_progress_box_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_box_progress_set_text,@function
gimp_progress_box_progress_set_text:    # @gimp_progress_box_progress_set_text
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_progress_box_progress_is_active
	cmpl	$0, %eax
	je	.LBB10_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB10_3
# BB#2:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_get_window
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gdk_window_process_updates
.LBB10_3:                               # %if.end
	jmp	.LBB10_4
.LBB10_4:                               # %if.end.11
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_progress_box_progress_set_text, .Lfunc_end10-gimp_progress_box_progress_set_text
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_progress_box_progress_set_value,@function
gimp_progress_box_progress_set_value:   # @gimp_progress_box_progress_set_value
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_progress_box_progress_is_active
	cmpl	$0, %eax
	je	.LBB11_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 136(%rax)
	cvtsi2sdl	-40(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_fraction
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movapd	.LCPI11_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_5
# BB#2:                                 # %if.then.11
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	136(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_progress_bar_set_fraction
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB11_4
# BB#3:                                 # %if.then.16
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_get_window
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gdk_window_process_updates
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %if.end.19
	jmp	.LBB11_6
.LBB11_6:                               # %if.end.20
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_progress_box_progress_set_value, .Lfunc_end11-gimp_progress_box_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_box_progress_get_value,@function
gimp_progress_box_progress_get_value:   # @gimp_progress_box_progress_get_value
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_progress_box_progress_is_active
	cmpl	$0, %eax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	136(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB12_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_progress_box_progress_get_value, .Lfunc_end12-gimp_progress_box_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_box_progress_pulse,@function
gimp_progress_box_progress_pulse:       # @gimp_progress_box_progress_pulse
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_progress_box_progress_is_active
	cmpl	$0, %eax
	je	.LBB13_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_progress_bar_pulse
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB13_3
# BB#2:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_get_window
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gdk_window_process_updates
.LBB13_3:                               # %if.end
	jmp	.LBB13_4
.LBB13_4:                               # %if.end.12
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_progress_box_progress_pulse, .Lfunc_end13-gimp_progress_box_progress_pulse
	.cfi_endproc

	.type	gimp_progress_box_get_type.g_define_type_id__volatile,@object # @gimp_progress_box_get_type.g_define_type_id__volatile
	.local	gimp_progress_box_get_type.g_define_type_id__volatile
	.comm	gimp_progress_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpProgressBox"
	.size	.L.str, 16

	.type	gimp_progress_box_get_type.g_implement_interface_info,@object # @gimp_progress_box_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_progress_box_get_type.g_implement_interface_info:
	.quad	gimp_progress_box_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_progress_box_get_type.g_implement_interface_info, 24

	.type	gimp_progress_box_parent_class,@object # @gimp_progress_box_parent_class
	.local	gimp_progress_box_parent_class
	.comm	gimp_progress_box_parent_class,8,8
	.type	GimpProgressBox_private_offset,@object # @GimpProgressBox_private_offset
	.local	GimpProgressBox_private_offset
	.comm	GimpProgressBox_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
