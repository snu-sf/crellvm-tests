	.text
	.file	"gimptagpopup.bc"
	.globl	gimp_tag_popup_get_type
	.align	16, 0x90
	.type	gimp_tag_popup_get_type,@function
gimp_tag_popup_get_type:                # @gimp_tag_popup_get_type
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
	movq	gimp_tag_popup_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tag_popup_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_window_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$904, %edx              # imm = 0x388
	movabsq	$gimp_tag_popup_class_intern_init, %rdi
	movl	$360, %r8d              # imm = 0x168
	movabsq	$gimp_tag_popup_init, %rcx
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
	movabsq	$gimp_tag_popup_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tag_popup_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tag_popup_get_type, .Lfunc_end0-gimp_tag_popup_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_class_intern_init,@function
gimp_tag_popup_class_intern_init:       # @gimp_tag_popup_class_intern_init
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
	movq	%rax, gimp_tag_popup_parent_class
	cmpl	$0, GimpTagPopup_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTagPopup_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tag_popup_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tag_popup_class_intern_init, .Lfunc_end1-gimp_tag_popup_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1056964608              # float 0.5
.LCPI2_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_tag_popup_init,@function
gimp_tag_popup_init:                    # @gimp_tag_popup_init
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2099972, %esi          # imm = 0x200B04
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 352(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_add_events
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	gtk_frame_new
	movq	-8(%rbp), %rdi
	movq	%rax, 248(%rdi)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	248(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_widget_show
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)        # 4-byte Spill
	movss	-44(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -48(%rbp)        # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-48(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	-8(%rbp), %rsi
	movq	%rax, 256(%rsi)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	256(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gtk_widget_show
	callq	gtk_drawing_area_new
	movl	$772, %esi              # imm = 0x304
	movq	-8(%rbp), %rdi
	movq	%rax, 264(%rdi)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	callq	gtk_widget_add_events
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	264(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_tag_popup_border_expose, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_tag_popup_border_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_tag_popup_list_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	264(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_tag_popup_list_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	264(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -128(%rbp)        # 8-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tag_popup_init, .Lfunc_end2-gimp_tag_popup_init
	.cfi_endproc

	.globl	gimp_tag_popup_new
	.align	16, 0x90
	.type	gimp_tag_popup_new,@function
gimp_tag_popup_new:                     # @gimp_tag_popup_new
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_combo_tag_entry_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_popup_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_tag_popup_get_type
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	movabsq	$.L.str.4, %rcx
	xorl	%edi, %edi
	movl	%edi, %r9d
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tag_popup_new, .Lfunc_end3-gimp_tag_popup_new
	.cfi_endproc

	.globl	gimp_tag_popup_show
	.align	16, 0x90
	.type	gimp_tag_popup_show,@function
gimp_tag_popup_show:                    # @gimp_tag_popup_show
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tag_popup_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_popup_show, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window
	movl	$1, %esi
	movl	$772, %edx              # imm = 0x304
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	gdk_pointer_grab
	cmpl	$0, %eax
	je	.LBB4_14
# BB#13:                                # %if.then.16
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB4_14:                               # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tag_popup_show, .Lfunc_end4-gimp_tag_popup_show
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_class_init,@function
gimp_tag_popup_class_init:              # @gimp_tag_popup_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_tag_popup_get_property, %rsi
	movabsq	$gimp_tag_popup_set_property, %rdi
	movabsq	$gimp_tag_popup_dispose, %rcx
	movabsq	$gimp_tag_popup_constructed, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_combo_tag_entry_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tag_popup_class_init, .Lfunc_end5-gimp_tag_popup_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_constructed,@function
gimp_tag_popup_constructed:             # @gimp_tag_popup_constructed
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_tag_popup_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_tag_popup_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tag_popup_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_create_pango_context
	movq	-16(%rbp), %rsi
	movq	%rax, 272(%rsi)
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	pango_layout_new
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 280(%rdi)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdi
	addq	$332, %rdi              # imm = 0x14C
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-16(%rbp), %rcx
	movq	280(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	240(%rcx), %rcx
	movq	296(%rcx), %rsi
	callq	pango_layout_set_attributes
	movq	-16(%rbp), %rcx
	movq	240(%rcx), %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_entry_parse_tags
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	g_strv_length
	movl	%eax, -132(%rbp)
	movq	-16(%rbp), %rcx
	movq	240(%rcx), %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	208(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_hash_table_get_keys
	movabsq	$gimp_tag_compare_func, %rsi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_list_sort
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_list_length
	movl	$32, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movl	%eax, 296(%rcx)
	movq	-16(%rbp), %rcx
	movslq	296(%rcx), %rdi
	callq	g_malloc0_n
	movq	-16(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movl	$0, -108(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	movl	-108(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB6_15
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movslq	-108(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	movq	%rax, -200(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-200(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movl	$0, -204(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB6_5:                                # %for.cond.40
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-204(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB6_10
# BB#6:                                 # %for.body.43
                                        #   in Loop: Header=BB6_5 Depth=2
	movq	-200(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-204(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_tag_compare_with_string
	cmpl	$0, %eax
	jne	.LBB6_8
# BB#7:                                 # %if.then.49
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-200(%rbp), %rax
	movl	$3, 24(%rax)
	jmp	.LBB6_10
.LBB6_8:                                # %if.end.51
                                        #   in Loop: Header=BB6_5 Depth=2
	jmp	.LBB6_9
.LBB6_9:                                # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB6_5
.LBB6_10:                               # %for.end
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_11
.LBB6_11:                               # %for.inc.52
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB6_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB6_14
.LBB6_13:                               # %cond.false
                                        #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB6_14
.LBB6_14:                               # %cond.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB6_3
.LBB6_15:                               # %for.end.55
	movq	-96(%rbp), %rdi
	callq	g_list_free
	movq	-128(%rbp), %rdi
	callq	g_strfreev
	movq	-16(%rbp), %rdi
	movq	240(%rdi), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 264(%rax)
	jne	.LBB6_23
# BB#16:                                # %if.then.61
	movl	$0, -108(%rbp)
.LBB6_17:                               # %for.cond.62
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB6_22
# BB#18:                                # %for.body.66
                                        #   in Loop: Header=BB6_17 Depth=1
	movslq	-108(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	cmpl	$3, 24(%rax)
	je	.LBB6_20
# BB#19:                                # %if.then.73
                                        #   in Loop: Header=BB6_17 Depth=1
	movslq	-108(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	movl	$4, 24(%rax)
.LBB6_20:                               # %if.end.78
                                        #   in Loop: Header=BB6_17 Depth=1
	jmp	.LBB6_21
.LBB6_21:                               # %for.inc.79
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB6_17
.LBB6_22:                               # %for.end.81
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_tag_popup_check_can_toggle, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	callq	gimp_container_foreach
.LBB6_23:                               # %if.end.84
	movq	-16(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -56(%rbp)
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	536(%rax), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -68(%rbp)
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_tag_popup_layout_tags
	movq	-56(%rbp), %rdi
	movl	540(%rdi), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gdk_window_get_origin
	imull	$10, -36(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movq	-32(%rbp), %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gtk_widget_get_screen
	movq	%rax, %rdi
	callq	gdk_screen_get_height
	movl	%eax, -116(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB6_25
# BB#24:                                # %cond.true.97
	movl	-72(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB6_26
.LBB6_25:                               # %cond.false.98
	movl	-112(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB6_26:                               # %cond.end.99
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -176(%rbp)
	movl	$0, -172(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-64(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-168(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-116(%rbp), %eax
	subl	-164(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-164(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.LBB6_28
# BB#27:                                # %if.then.129
	movq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-164(%rbp), %ecx
	subl	-76(%rbp), %ecx
	addl	-188(%rbp), %ecx
	movl	%ecx, -188(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -180(%rbp)
	jmp	.LBB6_35
.LBB6_28:                               # %if.else
	movl	-148(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.LBB6_30
# BB#29:                                # %if.then.141
	movq	-160(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -180(%rbp)
	jmp	.LBB6_34
.LBB6_30:                               # %if.else.144
	movl	-164(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.LBB6_32
# BB#31:                                # %if.then.151
	movq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rax
	movl	332(%rax), %ecx
	movq	-56(%rbp), %rax
	addl	540(%rax), %ecx
	addl	-188(%rbp), %ecx
	movl	%ecx, -188(%rbp)
	jmp	.LBB6_33
.LBB6_32:                               # %if.else.158
	movq	-160(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rax
	movl	332(%rax), %ecx
	movq	-56(%rbp), %rax
	addl	540(%rax), %ecx
	movl	-188(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -188(%rbp)
.LBB6_33:                               # %if.end.165
	movl	-180(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB6_34:                               # %if.end.167
	jmp	.LBB6_35
.LBB6_35:                               # %if.end.168
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB6_37
# BB#36:                                # %if.then.171
	movq	-16(%rbp), %rax
	movl	$1, 340(%rax)
	movq	-16(%rbp), %rax
	movl	$4, 352(%rax)
	movq	-16(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_alignment_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movl	332(%rsi), %edx
	addl	$2, %edx
	movq	-16(%rbp), %rsi
	movl	332(%rsi), %r8d
	addl	$2, %r8d
	movq	%rax, %rdi
	movl	%edx, %esi
	movl	%r8d, %edx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gtk_alignment_set_padding
	movq	-16(%rbp), %rax
	movl	332(%rax), %ecx
	shll	$1, %ecx
	addl	$4, %ecx
	movl	-76(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -76(%rbp)
	movl	-72(%rbp), %ecx
	subl	-76(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 320(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 324(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 328(%rax)
.LBB6_37:                               # %if.end.183
	movq	-16(%rbp), %rax
	movq	264(%rax), %rdi
	movl	-68(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	-16(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-192(%rbp), %esi
	movl	-188(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_move
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-184(%rbp), %esi
	movl	-180(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_resize
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tag_popup_constructed, .Lfunc_end6-gimp_tag_popup_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_dispose,@function
gimp_tag_popup_dispose:                 # @gimp_tag_popup_dispose
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
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tag_popup_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_tag_popup_remove_scroll_timeout
	movq	-16(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 240(%rax)
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 280(%rax)
.LBB7_4:                                # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 272(%rax)
.LBB7_6:                                # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB7_12
# BB#7:                                 # %if.then.15
	movl	$0, -20(%rbp)
.LBB7_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB7_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB7_8 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB7_8 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_8
.LBB7_11:                               # %for.end
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 288(%rax)
.LBB7_12:                               # %if.end.19
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tag_popup_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tag_popup_dispose, .Lfunc_end7-gimp_tag_popup_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_set_property,@function
gimp_tag_popup_set_property:            # @gimp_tag_popup_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tag_popup_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 240(%rdi)
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$420, %edx              # imm = 0x1A4
	movabsq	$.L.str.9, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tag_popup_set_property, .Lfunc_end8-gimp_tag_popup_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_get_property,@function
gimp_tag_popup_get_property:            # @gimp_tag_popup_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tag_popup_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_5
.LBB9_2:                                # %sw.default
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$440, %edx              # imm = 0x1B8
	movabsq	$.L.str.9, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tag_popup_get_property, .Lfunc_end9-gimp_tag_popup_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_check_can_toggle,@function
gimp_tag_popup_check_can_toggle:        # @gimp_tag_popup_check_can_toggle
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_tagged_get_tags
	movq	%rax, -24(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$32, %eax
	movl	%eax, %ecx
	movabsq	$gimp_tag_popup_data_compare, %r8
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movq	-16(%rbp), %rsi
	movq	288(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movslq	296(%rdi), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	bsearch
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB10_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$4, 24(%rax)
	jne	.LBB10_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-64(%rbp), %rax
	movl	$0, 24(%rax)
.LBB10_5:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_6
.LBB10_6:                               # %if.end.6
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB10_10
.LBB10_10:                              # %cond.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_11:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tag_popup_check_can_toggle, .Lfunc_end10-gimp_tag_popup_check_can_toggle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_layout_tags,@function
gimp_tag_popup_layout_tags:             # @gimp_tag_popup_layout_tags
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -36(%rbp)
	movl	$5, -28(%rbp)
	movl	$5, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	pango_context_get_font_description
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pango_context_get_metrics
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	pango_font_metrics_get_ascent
	movq	-24(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	pango_font_metrics_get_descent
	movl	-84(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	addl	$512, %ecx              # imm = 0x200
	sarl	$10, %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	pango_font_metrics_get_approximate_char_width
	addl	$512, %eax              # imm = 0x200
	sarl	$10, %eax
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	pango_font_metrics_unref
	movl	$0, -40(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB11_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_tag_get_name
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pango_layout_set_text
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	callq	pango_layout_get_pixel_size
	movl	-60(%rbp), %r8d
	addl	$4, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 16(%rax)
	movl	-64(%rbp), %r8d
	addl	$4, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 20(%rax)
	movl	-28(%rbp), %r8d
	addl	-48(%rbp), %r8d
	movq	-56(%rbp), %rax
	addl	16(%rax), %r8d
	addl	$5, %r8d
	subl	$1, %r8d
	cmpl	-12(%rbp), %r8d
	jle	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$5, -28(%rbp)
	movl	-44(%rbp), %eax
	addl	$4, %eax
	addl	$2, %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-28(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-32(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-56(%rbp), %rcx
	movl	16(%rcx), %eax
	addl	-48(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_1
.LBB11_6:                               # %for.end
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB11_12
# BB#7:                                 # %if.then.38
	movl	$0, -40(%rbp)
.LBB11_8:                               # %for.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB11_11
# BB#9:                                 # %for.body.42
                                        #   in Loop: Header=BB11_8 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %edx
	movq	-72(%rbp), %rax
	subl	8(%rax), %edx
	movq	-72(%rbp), %rax
	subl	16(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 8(%rax)
# BB#10:                                # %for.inc.55
                                        #   in Loop: Header=BB11_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_8
.LBB11_11:                              # %for.end.57
	jmp	.LBB11_12
.LBB11_12:                              # %if.end.58
	movl	-32(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tag_popup_layout_tags, .Lfunc_end11-gimp_tag_popup_layout_tags
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_data_compare,@function
gimp_tag_popup_data_compare:            # @gimp_tag_popup_data_compare
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	gimp_tag_compare_func
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tag_popup_data_compare, .Lfunc_end12-gimp_tag_popup_data_compare
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_remove_scroll_timeout,@function
gimp_tag_popup_remove_scroll_timeout:   # @gimp_tag_popup_remove_scroll_timeout
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 316(%rdi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	316(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 316(%rcx)
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB13_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tag_popup_remove_scroll_timeout, .Lfunc_end13-gimp_tag_popup_remove_scroll_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end14:
	.size	g_warning, .Lfunc_end14-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4604480259023595110     # double 0.69999999999999996
	.text
	.align	16, 0x90
	.type	gimp_tag_popup_border_expose,@function
gimp_tag_popup_border_expose:           # @gimp_tag_popup_border_expose
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window
	movq	-152(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB15_5
.LBB15_2:                               # %if.end
	leaq	-104(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	leaq	-136(%rbp), %rcx
	leaq	-140(%rbp), %r8
	movq	-72(%rbp), %rdi
	callq	get_arrows_visible_area
	xorl	%edx, %edx
	movl	$2, %ecx
	movabsq	$.L.str.12, %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-140(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r9d
	movl	%r9d, -144(%rbp)
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %r8
	movq	-64(%rbp), %r10
	addq	$20, %r10
	movq	-56(%rbp), %r9
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%r10, %r8
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$-1, 24(%rsp)
	movl	$-1, 32(%rsp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gtk_paint_box
	movq	-72(%rbp), %rsi
	cmpl	$0, 340(%rsi)
	je	.LBB15_4
# BB#3:                                 # %if.then.5
	movl	$2, %ecx
	movabsq	$.L.str.12, %rax
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	352(%rdx), %edx
	movq	-64(%rbp), %r8
	addq	$20, %r8
	movq	-56(%rbp), %r9
	movl	-120(%rbp), %r10d
	movl	-116(%rbp), %r11d
	movl	-112(%rbp), %ebx
	movl	-108(%rbp), %r14d
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	callq	gtk_paint_box
	movl	$2, %ecx
	movabsq	$.L.str.13, %rax
	xorl	%edx, %edx
	movl	$1, %r10d
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %r8
	movl	352(%r8), %r11d
	movq	-64(%rbp), %r8
	addq	$20, %r8
	movq	-56(%rbp), %r9
	movl	-120(%rbp), %ebx
	movl	-112(%rbp), %r14d
	subl	-144(%rbp), %r14d
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%r14d, %eax
	movl	%edx, -180(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	addl	%eax, %ebx
	movl	-116(%rbp), %eax
	movq	-88(%rbp), %r15
	addl	540(%r15), %eax
	movl	-140(%rbp), %r14d
	subl	-144(%rbp), %r14d
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%r14d, %eax
	cltd
	idivl	%ecx
	movl	-184(%rbp), %r14d       # 4-byte Reload
	addl	%eax, %r14d
	movl	-144(%rbp), %eax
	movl	-144(%rbp), %r12d
	movl	%r11d, %edx
	movq	-176(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movl	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%eax, 40(%rsp)
	movl	%r12d, 48(%rsp)
	movl	%r10d, -188(%rbp)       # 4-byte Spill
	callq	gtk_paint_arrow
	movl	$2, %ecx
	movabsq	$.L.str.12, %rsi
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %r9
	movl	356(%r9), %edx
	movq	-64(%rbp), %r9
	addq	$20, %r9
	movq	-56(%rbp), %r15
	movl	-136(%rbp), %eax
	movl	-132(%rbp), %r10d
	movl	-128(%rbp), %r11d
	movl	-124(%rbp), %ebx
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%r9, %r8
	movq	%r15, %r9
	movq	-200(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%ebx, 32(%rsp)
	callq	gtk_paint_box
	movl	$2, %eax
	movabsq	$.L.str.14, %rsi
	movl	$1, %ecx
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %r9
	movl	356(%r9), %edx
	movq	-64(%rbp), %r9
	addq	$20, %r9
	movq	-56(%rbp), %r15
	movl	-136(%rbp), %r10d
	movl	-128(%rbp), %r11d
	subl	-144(%rbp), %r11d
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%r11d, %eax
	movl	%edx, -208(%rbp)        # 4-byte Spill
	cltd
	movl	-204(%rbp), %r11d       # 4-byte Reload
	idivl	%r11d
	addl	%eax, %r10d
	movl	-132(%rbp), %eax
	movq	-88(%rbp), %r13
	addl	540(%r13), %eax
	movl	-140(%rbp), %ebx
	subl	-144(%rbp), %ebx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%ebx, %eax
	cltd
	idivl	%r11d
	movl	-212(%rbp), %ebx        # 4-byte Reload
	addl	%eax, %ebx
	movl	-144(%rbp), %eax
	movl	-144(%rbp), %r14d
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movl	-208(%rbp), %r12d       # 4-byte Reload
	movl	%r12d, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movq	%r9, %r8
	movq	%r15, %r9
	movq	-224(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%eax, 40(%rsp)
	movl	%r14d, 48(%rsp)
	callq	gtk_paint_arrow
.LBB15_4:                               # %if.end.34
	movl	$0, -44(%rbp)
.LBB15_5:                               # %return
	movl	-44(%rbp), %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_tag_popup_border_expose, .Lfunc_end15-gimp_tag_popup_border_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_border_event,@function
gimp_tag_popup_border_event:            # @gimp_tag_popup_border_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_tag_popup_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB16_11
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window
	movq	-112(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB16_4
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_tag_popup_button_scroll
	cmpl	$0, %eax
	je	.LBB16_4
# BB#3:                                 # %if.then.5
	movl	$1, -4(%rbp)
	jmp	.LBB16_33
.LBB16_4:                               # %if.end
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	callq	gdk_window_get_pointer
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	264(%rdx), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_10
# BB#5:                                 # %land.lhs.true.11
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.LBB16_9
# BB#6:                                 # %lor.lhs.false
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.LBB16_9
# BB#7:                                 # %lor.lhs.false.16
	movl	-60(%rbp), %eax
	movl	-56(%rbp), %ecx
	addl	-48(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB16_9
# BB#8:                                 # %lor.lhs.false.19
	movl	-64(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB16_10
.LBB16_9:                               # %if.then.23
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB16_10:                              # %if.end.25
	jmp	.LBB16_32
.LBB16_11:                              # %if.else
	movq	-24(%rbp), %rax
	cmpl	$3, (%rax)
	jne	.LBB16_13
# BB#12:                                # %if.then.28
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	callq	gdk_window_get_pointer
	movq	-32(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %r8
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	movl	%edx, -160(%rbp)        # 4-byte Spill
	callq	gtk_widget_get_window
	movl	$1, %r8d
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movl	-160(%rbp), %edx        # 4-byte Reload
	callq	gimp_tag_popup_handle_scrolling
	jmp	.LBB16_31
.LBB16_13:                              # %if.else.36
	movq	-24(%rbp), %rax
	cmpl	$7, (%rax)
	jne	.LBB16_18
# BB#14:                                # %if.then.40
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, 312(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window
	movq	-168(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB16_17
# BB#15:                                # %land.lhs.true.46
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_tag_popup_button_scroll
	cmpl	$0, %eax
	je	.LBB16_17
# BB#16:                                # %if.then.49
	movl	$1, -4(%rbp)
	jmp	.LBB16_33
.LBB16_17:                              # %if.end.50
	jmp	.LBB16_30
.LBB16_18:                              # %if.else.51
	movq	-24(%rbp), %rax
	cmpl	$35, (%rax)
	jne	.LBB16_20
# BB#19:                                # %if.then.55
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB16_29
.LBB16_20:                              # %if.else.57
	movq	-24(%rbp), %rax
	cmpl	$8, (%rax)
	jne	.LBB16_22
# BB#21:                                # %if.then.61
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB16_28
.LBB16_22:                              # %if.else.63
	movq	-24(%rbp), %rax
	cmpl	$31, (%rax)
	jne	.LBB16_27
# BB#23:                                # %if.then.67
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	44(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	ja	.LBB16_26
# BB#34:                                # %if.then.67
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_24:                              # %sw.bb
	movl	$15, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_tag_popup_scroll_by
	movl	$1, -4(%rbp)
	jmp	.LBB16_33
.LBB16_25:                              # %sw.bb.68
	movl	$4294967281, %esi       # imm = 0xFFFFFFF1
	movq	-32(%rbp), %rdi
	callq	gimp_tag_popup_scroll_by
	movl	$1, -4(%rbp)
	jmp	.LBB16_33
.LBB16_26:                              # %sw.epilog
	jmp	.LBB16_27
.LBB16_27:                              # %if.end.69
	jmp	.LBB16_28
.LBB16_28:                              # %if.end.70
	jmp	.LBB16_29
.LBB16_29:                              # %if.end.71
	jmp	.LBB16_30
.LBB16_30:                              # %if.end.72
	jmp	.LBB16_31
.LBB16_31:                              # %if.end.73
	jmp	.LBB16_32
.LBB16_32:                              # %if.end.74
	movl	$0, -4(%rbp)
.LBB16_33:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_tag_popup_border_event, .Lfunc_end16-gimp_tag_popup_border_event
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_25
	.quad	.LBB16_24
	.quad	.LBB16_25
	.quad	.LBB16_24

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
.LCPI17_1:
	.quad	-4620693217682128896    # double -0.5
.LCPI17_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_tag_popup_list_expose,@function
gimp_tag_popup_list_expose:             # @gimp_tag_popup_list_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp59:
	.cfi_offset %rbx, -32
.Ltmp60:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_cairo_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-64(%rbp), %rdi
	callq	cairo_clip
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	callq	cairo_set_line_width
	movl	$2, %esi
	movq	-64(%rbp), %rdi
	callq	cairo_set_line_cap
	movl	$0, -84(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB17_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-84(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	288(%rcx), %rcx
	shlq	$5, %rax
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movq	%rdx, -96(%rbp)
	movq	-40(%rbp), %rdx
	movq	280(%rdx), %rdi
	movq	(%rcx,%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_tag_get_name
	movl	$-1, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pango_layout_set_text
	movq	-96(%rbp), %rax
	movl	24(%rax), %edx
	movl	%edx, %r8d
	subl	$3, %r8d
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%r8d, -112(%rbp)        # 4-byte Spill
	je	.LBB17_3
	jmp	.LBB17_18
.LBB17_18:                              # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB17_4
	jmp	.LBB17_5
.LBB17_3:                               # %sw.bb
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	304(%rax), %rdi
	callq	pango_attr_list_copy
	movq	%rax, -80(%rbp)
	jmp	.LBB17_6
.LBB17_4:                               # %sw.bb.7
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	312(%rax), %rdi
	callq	pango_attr_list_copy
	movq	%rax, -80(%rbp)
	jmp	.LBB17_6
.LBB17_5:                               # %sw.default
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	296(%rax), %rdi
	callq	pango_attr_list_copy
	movq	%rax, -80(%rbp)
.LBB17_6:                               # %sw.epilog
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	304(%rcx), %rax
	jne	.LBB17_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$4, 24(%rax)
	je	.LBB17_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$1, %edi
	callq	pango_attr_underline_new
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	pango_attr_list_insert
.LBB17_9:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-80(%rbp), %rsi
	callq	pango_layout_set_attributes
	movq	-80(%rbp), %rdi
	callq	pango_attr_list_unref
	movq	-96(%rbp), %rax
	cmpl	$3, 24(%rax)
	jne	.LBB17_11
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	addq	$320, %rax              # imm = 0x140
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-96(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	324(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-96(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$2, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-96(%rbp), %rax
	cvtsi2sdl	20(%rax), %xmm3
	callq	cairo_rectangle
	movq	-64(%rbp), %rdi
	callq	cairo_fill
	movsd	.LCPI17_2, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movq	-96(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	324(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_move_to
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-96(%rbp), %rax
	addl	16(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-96(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	324(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_line_to
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movq	-96(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	324(%rax), %ecx
	movq	-96(%rbp), %rax
	addl	20(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_move_to
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-96(%rbp), %rax
	addl	16(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-96(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	324(%rax), %ecx
	movq	-96(%rbp), %rax
	addl	20(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_line_to
	movq	-64(%rbp), %rdi
	callq	cairo_stroke
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
.LBB17_11:                              # %if.end.76
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$2, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-96(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	324(%rax), %ecx
	addl	$2, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_move_to
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	280(%rax), %rsi
	callq	pango_cairo_show_layout
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rsi
	cmpq	304(%rsi), %rax
	jne	.LBB17_15
# BB#12:                                # %land.lhs.true.91
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$4, 24(%rax)
	je	.LBB17_15
# BB#13:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 312(%rax)
	jne	.LBB17_15
# BB#14:                                # %if.then.96
                                        #   in Loop: Header=BB17_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movl	24(%rcx), %edx
	movq	-32(%rbp), %rcx
	addq	$20, %rcx
	movq	-24(%rbp), %r8
	movq	-96(%rbp), %r10
	movl	8(%r10), %eax
	movq	-96(%rbp), %r10
	movl	12(%r10), %r11d
	movq	-40(%rbp), %r10
	subl	324(%r10), %r11d
	movq	-96(%rbp), %r10
	movl	16(%r10), %ebx
	movq	-96(%rbp), %r10
	movl	20(%r10), %r14d
	movl	%eax, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	gtk_paint_focus
.LBB17_15:                              # %if.end.108
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_16
.LBB17_16:                              # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB17_1
.LBB17_17:                              # %for.end
	movq	-64(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_tag_popup_list_expose, .Lfunc_end17-gimp_tag_popup_list_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_list_event,@function
gimp_tag_popup_list_event:              # @gimp_tag_popup_list_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$4, (%rdx)
	jne	.LBB18_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, 312(%rax)
	movq	-32(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	324(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB18_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB18_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB18_2 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	gimp_tag_popup_is_in_tag
	cmpl	$0, %eax
	je	.LBB18_5
# BB#4:                                 # %if.then.8
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_tag_popup_toggle_tag
	movq	-8(%rbp), %rdi
	callq	gtk_widget_queue_draw
	jmp	.LBB18_7
.LBB18_5:                               # %if.end
                                        #   in Loop: Header=BB18_2 Depth=1
	jmp	.LBB18_6
.LBB18_6:                               # %for.inc
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB18_2
.LBB18_7:                               # %for.end
	jmp	.LBB18_33
.LBB18_8:                               # %if.else
	movq	-16(%rbp), %rax
	cmpl	$3, (%rax)
	jne	.LBB18_22
# BB#9:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	324(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB18_10:                              # %for.cond.23
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB18_15
# BB#11:                                # %for.body.27
                                        #   in Loop: Header=BB18_10 Depth=1
	movslq	-84(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	callq	gimp_tag_popup_is_in_tag
	cmpl	$0, %eax
	je	.LBB18_13
# BB#12:                                # %if.then.34
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB18_15
.LBB18_13:                              # %if.end.35
                                        #   in Loop: Header=BB18_10 Depth=1
	jmp	.LBB18_14
.LBB18_14:                              # %for.inc.36
                                        #   in Loop: Header=BB18_10 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB18_10
.LBB18_15:                              # %for.end.38
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	304(%rcx), %rax
	je	.LBB18_21
# BB#16:                                # %if.then.42
	movq	-24(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB18_18
# BB#17:                                # %if.then.45
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rsi
	callq	gimp_tag_popup_queue_draw_tag
.LBB18_18:                              # %if.end.47
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB18_20
# BB#19:                                # %if.then.51
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rsi
	callq	gimp_tag_popup_queue_draw_tag
.LBB18_20:                              # %if.end.53
	jmp	.LBB18_21
.LBB18_21:                              # %if.end.54
	jmp	.LBB18_32
.LBB18_22:                              # %if.else.55
	movq	-16(%rbp), %rax
	cmpl	$7, (%rax)
	jne	.LBB18_31
# BB#23:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 312(%rax)
	jne	.LBB18_31
# BB#24:                                # %if.then.61
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, 312(%rax)
	movq	-104(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movq	-104(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	324(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -112(%rbp)
	movl	$0, -116(%rbp)
.LBB18_25:                              # %for.cond.74
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB18_30
# BB#26:                                # %for.body.78
                                        #   in Loop: Header=BB18_25 Depth=1
	movslq	-116(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	callq	gimp_tag_popup_is_in_tag
	cmpl	$0, %eax
	je	.LBB18_28
# BB#27:                                # %if.then.85
	movq	-24(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	gimp_tag_popup_toggle_tag
	movq	-24(%rbp), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	jmp	.LBB18_30
.LBB18_28:                              # %if.end.88
                                        #   in Loop: Header=BB18_25 Depth=1
	jmp	.LBB18_29
.LBB18_29:                              # %for.inc.89
                                        #   in Loop: Header=BB18_25 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB18_25
.LBB18_30:                              # %for.end.91
	jmp	.LBB18_31
.LBB18_31:                              # %if.end.92
	jmp	.LBB18_32
.LBB18_32:                              # %if.end.93
	jmp	.LBB18_33
.LBB18_33:                              # %if.end.94
	xorl	%eax, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_tag_popup_list_event, .Lfunc_end18-gimp_tag_popup_list_event
	.cfi_endproc

	.align	16, 0x90
	.type	get_arrows_visible_area,@function
get_arrows_visible_area:                # @get_arrows_visible_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	256(%rcx), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_alignment_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	%rax, %rdi
	callq	gtk_alignment_get_padding
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rax
	movl	(%rax), %r9d
	addl	-60(%rbp), %r9d
	movq	-24(%rbp), %rax
	movl	%r9d, (%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %r9d
	movq	-24(%rbp), %rax
	movl	%r9d, 4(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %r9d
	subl	-60(%rbp), %r9d
	subl	-64(%rbp), %r9d
	movq	-24(%rbp), %rax
	movl	%r9d, 8(%rax)
	movl	-52(%rbp), %r9d
	movq	-24(%rbp), %rax
	movl	%r9d, 12(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %r9d
	addl	-60(%rbp), %r9d
	movq	-32(%rbp), %rax
	movl	%r9d, (%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %r9d
	movq	-16(%rbp), %rax
	addl	12(%rax), %r9d
	subl	-56(%rbp), %r9d
	movq	-32(%rbp), %rax
	movl	%r9d, 4(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %r9d
	subl	-60(%rbp), %r9d
	subl	-64(%rbp), %r9d
	movq	-32(%rbp), %rax
	movl	%r9d, 8(%rax)
	movl	-56(%rbp), %r9d
	movq	-32(%rbp), %rax
	movl	%r9d, 12(%rax)
	movq	-8(%rbp), %rax
	movl	332(%rax), %r9d
	movq	-40(%rbp), %rax
	movl	%r9d, (%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	get_arrows_visible_area, .Lfunc_end19-get_arrows_visible_area
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_button_scroll,@function
gimp_tag_popup_button_scroll:           # @gimp_tag_popup_button_scroll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 344(%rsi)
	jne	.LBB20_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 348(%rax)
	je	.LBB20_5
.LBB20_2:                               # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	movabsq	$.L.str.15, %rsi
	leaq	-28(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -28(%rbp)
	je	.LBB20_4
# BB#3:                                 # %if.then.5
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	cvttsd2si	64(%rax), %esi
	movq	-24(%rbp), %rax
	cvttsd2si	72(%rax), %edx
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	callq	gimp_tag_popup_handle_scrolling
.LBB20_4:                               # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB20_6
.LBB20_5:                               # %if.end.8
	movl	$0, -4(%rbp)
.LBB20_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_tag_popup_button_scroll, .Lfunc_end20-gimp_tag_popup_button_scroll
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_handle_scrolling,@function
gimp_tag_popup_handle_scrolling:        # @gimp_tag_popup_handle_scrolling
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	movabsq	$.L.str.15, %rsi
	leaq	-52(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	leaq	-40(%rbp), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rdi
	callq	get_arrows_sensitive_area
	movl	$0, -44(%rbp)
	movq	-8(%rbp), %rcx
	cmpl	$0, 340(%rcx)
	je	.LBB21_6
# BB#1:                                 # %land.lhs.true
	movl	-12(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.LBB21_6
# BB#2:                                 # %land.lhs.true.4
	movl	-12(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_6
# BB#3:                                 # %land.lhs.true.7
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB21_6
# BB#4:                                 # %land.lhs.true.10
	movl	-16(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_6
# BB#5:                                 # %if.then
	movl	$1, -44(%rbp)
.LBB21_6:                               # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB21_8
# BB#7:                                 # %if.then.15
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 344(%rcx)
.LBB21_8:                               # %if.end.16
	movq	-8(%rbp), %rax
	cmpl	$4, 352(%rax)
	je	.LBB21_45
# BB#9:                                 # %if.then.18
	movl	$0, -56(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 340(%rax)
	je	.LBB21_35
# BB#10:                                # %if.then.21
	cmpl	$0, -52(%rbp)
	je	.LBB21_23
# BB#11:                                # %if.then.23
	cmpl	$0, -20(%rbp)
	je	.LBB21_19
# BB#12:                                # %land.lhs.true.25
	movq	-8(%rbp), %rax
	cmpl	$0, 344(%rax)
	je	.LBB21_19
# BB#13:                                # %if.then.28
	movq	-8(%rbp), %rax
	cmpl	$0, 316(%rax)
	jne	.LBB21_17
# BB#14:                                # %if.then.30
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_remove_scroll_timeout
	movq	-8(%rbp), %rdi
	movl	$-15, 328(%rdi)
	cmpl	$0, -24(%rbp)
	jne	.LBB21_16
# BB#15:                                # %if.then.32
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_start_scrolling
	movl	$1, -56(%rbp)
.LBB21_16:                              # %if.end.33
	jmp	.LBB21_18
.LBB21_17:                              # %if.else
	movl	$1, -56(%rbp)
.LBB21_18:                              # %if.end.34
	jmp	.LBB21_22
.LBB21_19:                              # %if.else.35
	cmpl	$0, -20(%rbp)
	jne	.LBB21_21
# BB#20:                                # %if.then.37
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_stop_scrolling
.LBB21_21:                              # %if.end.38
	jmp	.LBB21_22
.LBB21_22:                              # %if.end.39
	jmp	.LBB21_34
.LBB21_23:                              # %if.else.40
	movl	-16(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB21_28
# BB#24:                                # %land.lhs.true.45
	cmpl	$0, -44(%rbp)
	je	.LBB21_28
# BB#25:                                # %land.lhs.true.47
	movq	-8(%rbp), %rax
	cmpl	$0, 344(%rax)
	je	.LBB21_27
# BB#26:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movl	336(%rax), %ecx
	cmpl	-48(%rbp), %ecx
	je	.LBB21_28
.LBB21_27:                              # %if.then.53
	movq	-8(%rbp), %rax
	movl	$1, 344(%rax)
	movl	-48(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 336(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_remove_scroll_timeout
	movabsq	$gimp_tag_popup_scroll_timeout, %rsi
	movl	$50, %ecx
	movl	$20, %edx
	movl	$4294967288, %r8d       # imm = 0xFFFFFFF8
	movl	$4294967281, %r9d       # imm = 0xFFFFFFF1
	cmpl	$0, -48(%rbp)
	cmovnel	%r9d, %r8d
	movq	-8(%rbp), %rax
	movl	%r8d, 328(%rax)
	cmpl	$0, -48(%rbp)
	cmovnel	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %edi
	movq	%rax, %rdx
	callq	gdk_threads_add_timeout
	movq	-8(%rbp), %rdx
	movl	%eax, 316(%rdx)
	jmp	.LBB21_33
.LBB21_28:                              # %if.else.62
	cmpl	$0, -20(%rbp)
	jne	.LBB21_32
# BB#29:                                # %land.lhs.true.64
	cmpl	$0, -44(%rbp)
	jne	.LBB21_32
# BB#30:                                # %land.lhs.true.66
	movq	-8(%rbp), %rax
	cmpl	$0, 344(%rax)
	je	.LBB21_32
# BB#31:                                # %if.then.69
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_stop_scrolling
.LBB21_32:                              # %if.end.70
	jmp	.LBB21_33
.LBB21_33:                              # %if.end.71
	jmp	.LBB21_34
.LBB21_34:                              # %if.end.72
	jmp	.LBB21_35
.LBB21_35:                              # %if.end.73
	movq	-8(%rbp), %rax
	cmpl	$4, 352(%rax)
	je	.LBB21_44
# BB#36:                                # %if.then.77
	movl	$0, -60(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB21_38
# BB#37:                                # %if.then.79
	movl	$1, -60(%rbp)
	jmp	.LBB21_41
.LBB21_38:                              # %if.else.80
	movq	-8(%rbp), %rax
	cmpl	$0, 344(%rax)
	je	.LBB21_40
# BB#39:                                # %if.then.83
	movl	$2, -60(%rbp)
.LBB21_40:                              # %if.end.84
	jmp	.LBB21_41
.LBB21_41:                              # %if.end.85
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	352(%rcx), %eax
	je	.LBB21_43
# BB#42:                                # %if.then.89
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 352(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	leaq	-40(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gdk_window_invalidate_rect
.LBB21_43:                              # %if.end.94
	jmp	.LBB21_44
.LBB21_44:                              # %if.end.95
	jmp	.LBB21_45
.LBB21_45:                              # %if.end.96
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	get_arrows_sensitive_area
	movl	$0, -44(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 340(%rdx)
	je	.LBB21_51
# BB#46:                                # %land.lhs.true.99
	movl	-12(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.LBB21_51
# BB#47:                                # %land.lhs.true.103
	movl	-12(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_51
# BB#48:                                # %land.lhs.true.109
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB21_51
# BB#49:                                # %land.lhs.true.113
	movl	-16(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_51
# BB#50:                                # %if.then.119
	movl	$1, -44(%rbp)
.LBB21_51:                              # %if.end.120
	cmpl	$0, -52(%rbp)
	je	.LBB21_53
# BB#52:                                # %if.then.122
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 348(%rcx)
.LBB21_53:                              # %if.end.123
	movq	-8(%rbp), %rax
	cmpl	$4, 356(%rax)
	je	.LBB21_90
# BB#54:                                # %if.then.126
	movl	$0, -64(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 340(%rax)
	je	.LBB21_80
# BB#55:                                # %if.then.130
	cmpl	$0, -52(%rbp)
	je	.LBB21_68
# BB#56:                                # %if.then.132
	cmpl	$0, -20(%rbp)
	je	.LBB21_64
# BB#57:                                # %land.lhs.true.134
	movq	-8(%rbp), %rax
	cmpl	$0, 348(%rax)
	je	.LBB21_64
# BB#58:                                # %if.then.137
	movq	-8(%rbp), %rax
	cmpl	$0, 316(%rax)
	jne	.LBB21_62
# BB#59:                                # %if.then.141
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_remove_scroll_timeout
	movq	-8(%rbp), %rdi
	movl	$15, 328(%rdi)
	cmpl	$0, -24(%rbp)
	jne	.LBB21_61
# BB#60:                                # %if.then.144
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_start_scrolling
	movl	$1, -64(%rbp)
.LBB21_61:                              # %if.end.145
	jmp	.LBB21_63
.LBB21_62:                              # %if.else.146
	movl	$1, -64(%rbp)
.LBB21_63:                              # %if.end.147
	jmp	.LBB21_67
.LBB21_64:                              # %if.else.148
	cmpl	$0, -20(%rbp)
	jne	.LBB21_66
# BB#65:                                # %if.then.150
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_stop_scrolling
.LBB21_66:                              # %if.end.151
	jmp	.LBB21_67
.LBB21_67:                              # %if.end.152
	jmp	.LBB21_79
.LBB21_68:                              # %if.else.153
	movl	-16(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-28(%rbp), %ecx
	subl	$8, %ecx
	cmpl	%ecx, %eax
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB21_73
# BB#69:                                # %land.lhs.true.160
	cmpl	$0, -44(%rbp)
	je	.LBB21_73
# BB#70:                                # %land.lhs.true.162
	movq	-8(%rbp), %rax
	cmpl	$0, 348(%rax)
	je	.LBB21_72
# BB#71:                                # %lor.lhs.false.165
	movq	-8(%rbp), %rax
	movl	336(%rax), %ecx
	cmpl	-48(%rbp), %ecx
	je	.LBB21_73
.LBB21_72:                              # %if.then.169
	movq	-8(%rbp), %rax
	movl	$1, 348(%rax)
	movl	-48(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 336(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_remove_scroll_timeout
	movabsq	$gimp_tag_popup_scroll_timeout, %rsi
	movl	$50, %ecx
	movl	$20, %edx
	movl	$8, %r8d
	movl	$15, %r9d
	cmpl	$0, -48(%rbp)
	cmovnel	%r9d, %r8d
	movq	-8(%rbp), %rax
	movl	%r8d, 328(%rax)
	cmpl	$0, -48(%rbp)
	cmovnel	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %edi
	movq	%rax, %rdx
	callq	gdk_threads_add_timeout
	movq	-8(%rbp), %rdx
	movl	%eax, 316(%rdx)
	jmp	.LBB21_78
.LBB21_73:                              # %if.else.179
	cmpl	$0, -20(%rbp)
	jne	.LBB21_77
# BB#74:                                # %land.lhs.true.181
	cmpl	$0, -44(%rbp)
	jne	.LBB21_77
# BB#75:                                # %land.lhs.true.183
	movq	-8(%rbp), %rax
	cmpl	$0, 348(%rax)
	je	.LBB21_77
# BB#76:                                # %if.then.186
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_stop_scrolling
.LBB21_77:                              # %if.end.187
	jmp	.LBB21_78
.LBB21_78:                              # %if.end.188
	jmp	.LBB21_79
.LBB21_79:                              # %if.end.189
	jmp	.LBB21_80
.LBB21_80:                              # %if.end.190
	movq	-8(%rbp), %rax
	cmpl	$4, 356(%rax)
	je	.LBB21_89
# BB#81:                                # %if.then.194
	movl	$0, -68(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB21_83
# BB#82:                                # %if.then.197
	movl	$1, -68(%rbp)
	jmp	.LBB21_86
.LBB21_83:                              # %if.else.198
	movq	-8(%rbp), %rax
	cmpl	$0, 348(%rax)
	je	.LBB21_85
# BB#84:                                # %if.then.201
	movl	$2, -68(%rbp)
.LBB21_85:                              # %if.end.202
	jmp	.LBB21_86
.LBB21_86:                              # %if.end.203
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	356(%rcx), %eax
	je	.LBB21_88
# BB#87:                                # %if.then.207
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 356(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	leaq	-40(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gdk_window_invalidate_rect
.LBB21_88:                              # %if.end.212
	jmp	.LBB21_89
.LBB21_89:                              # %if.end.213
	jmp	.LBB21_90
.LBB21_90:                              # %if.end.214
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_tag_popup_handle_scrolling, .Lfunc_end21-gimp_tag_popup_handle_scrolling
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_scroll_by,@function
gimp_tag_popup_scroll_by:               # @gimp_tag_popup_scroll_by
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	324(%rdi), %esi
	addl	-12(%rbp), %esi
	movl	%esi, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	352(%rdi), %esi
	movl	%esi, -16(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB22_4
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
	cmpl	$4, -16(%rbp)
	je	.LBB22_3
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_stop_scrolling
.LBB22_3:                               # %if.end
	movl	$4, -16(%rbp)
	jmp	.LBB22_5
.LBB22_4:                               # %if.else
	xorl	%eax, %eax
	movl	$2, %ecx
	movq	-8(%rbp), %rdx
	cmpl	$0, 344(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -16(%rbp)
.LBB22_5:                               # %if.end.3
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	352(%rcx), %eax
	je	.LBB22_7
# BB#6:                                 # %if.then.6
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 352(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB22_7:                               # %if.end.9
	movq	-8(%rbp), %rax
	movl	356(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	cmpl	320(%rax), %ecx
	jl	.LBB22_11
# BB#8:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movl	320(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$4, -16(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.14
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_stop_scrolling
.LBB22_10:                              # %if.end.15
	movl	$4, -16(%rbp)
	jmp	.LBB22_12
.LBB22_11:                              # %if.else.16
	xorl	%eax, %eax
	movl	$2, %ecx
	movq	-8(%rbp), %rdx
	cmpl	$0, 348(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -16(%rbp)
.LBB22_12:                              # %if.end.19
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	356(%rcx), %eax
	je	.LBB22_14
# BB#13:                                # %if.then.22
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 356(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB22_14:                              # %if.end.26
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	324(%rcx), %eax
	je	.LBB22_16
# BB#15:                                # %if.then.29
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 324(%rcx)
	movq	-8(%rbp), %rcx
	movq	264(%rcx), %rdi
	callq	gtk_widget_get_window
	xorl	%edx, %edx
	movl	%edx, %esi
	subl	-12(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-44(%rbp), %edx         # 4-byte Reload
	callq	gdk_window_scroll
.LBB22_16:                              # %if.end.33
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_tag_popup_scroll_by, .Lfunc_end22-gimp_tag_popup_scroll_by
	.cfi_endproc

	.align	16, 0x90
	.type	get_arrows_sensitive_area,@function
get_arrows_sensitive_area:              # @get_arrows_sensitive_area
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
	leaq	-40(%rbp), %rax
	leaq	-56(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-76(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movq	%r9, %r8
	callq	get_arrows_visible_area
	cmpq	$0, -16(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rax)
.LBB23_2:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB23_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-64(%rbp), %rcx
	movq	%rcx, 8(%rax)
.LBB23_4:                               # %if.end.3
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	get_arrows_sensitive_area, .Lfunc_end23-get_arrows_sensitive_area
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_start_scrolling,@function
gimp_tag_popup_start_scrolling:         # @gimp_tag_popup_start_scrolling
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	movabsq	$.L.str.16, %rsi
	leaq	-12(%rbp), %rdx
	movabsq	$.L.str.15, %rcx
	leaq	-16(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	328(%rcx), %esi
	callq	gimp_tag_popup_scroll_by
	movabsq	$gimp_tag_popup_scroll_timeout_initial, %rsi
	movl	-12(%rbp), %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	callq	gdk_threads_add_timeout
	movq	-8(%rbp), %rcx
	movl	%eax, 316(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_tag_popup_start_scrolling, .Lfunc_end24-gimp_tag_popup_start_scrolling
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_stop_scrolling,@function
gimp_tag_popup_stop_scrolling:          # @gimp_tag_popup_stop_scrolling
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_tag_popup_remove_scroll_timeout
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	movabsq	$.L.str.15, %rsi
	leaq	-12(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -12(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$0, 344(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 348(%rax)
.LBB25_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_tag_popup_stop_scrolling, .Lfunc_end25-gimp_tag_popup_stop_scrolling
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_scroll_timeout,@function
gimp_tag_popup_scroll_timeout:          # @gimp_tag_popup_scroll_timeout
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	movabsq	$.L.str.15, %rsi
	leaq	-20(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	328(%rcx), %esi
	callq	gimp_tag_popup_scroll_by
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_tag_popup_scroll_timeout, .Lfunc_end26-gimp_tag_popup_scroll_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_scroll_timeout_initial,@function
gimp_tag_popup_scroll_timeout_initial:  # @gimp_tag_popup_scroll_timeout_initial
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	movabsq	$.L.str.16, %rsi
	leaq	-20(%rbp), %rdx
	movabsq	$.L.str.15, %rcx
	leaq	-24(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	328(%rcx), %esi
	callq	gimp_tag_popup_scroll_by
	movq	-16(%rbp), %rdi
	callq	gimp_tag_popup_remove_scroll_timeout
	movabsq	$gimp_tag_popup_scroll_timeout, %rsi
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	callq	gdk_threads_add_timeout
	xorl	%edi, %edi
	movq	-16(%rbp), %rcx
	movl	%eax, 316(%rcx)
	movl	%edi, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_tag_popup_scroll_timeout_initial, .Lfunc_end27-gimp_tag_popup_scroll_timeout_initial
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_is_in_tag,@function
gimp_tag_popup_is_in_tag:               # @gimp_tag_popup_is_in_tag
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rdi
	cmpl	8(%rdi), %edx
	jl	.LBB28_5
# BB#1:                                 # %land.lhs.true
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jl	.LBB28_5
# BB#2:                                 # %land.lhs.true.5
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB28_5
# BB#3:                                 # %land.lhs.true.10
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	20(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB28_5
# BB#4:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB28_6
.LBB28_5:                               # %if.end
	movl	$0, -4(%rbp)
.LBB28_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_tag_popup_is_in_tag, .Lfunc_end28-gimp_tag_popup_is_in_tag
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_toggle_tag,@function
gimp_tag_popup_toggle_tag:              # @gimp_tag_popup_toggle_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 24(%rsi)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$3, 24(%rax)
	jmp	.LBB29_6
.LBB29_2:                               # %if.else
	movq	-16(%rbp), %rax
	cmpl	$3, 24(%rax)
	jne	.LBB29_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	jmp	.LBB29_5
.LBB29_4:                               # %if.else.6
	jmp	.LBB29_27
.LBB29_5:                               # %if.end
	jmp	.LBB29_6
.LBB29_6:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_entry_parse_tags
	movabsq	$.L.str.17, %rdi
	movq	%rax, -24(%rbp)
	callq	g_string_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strv_length
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB29_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB29_15
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB29_7 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_tag_compare_with_string
	cmpl	$0, %eax
	jne	.LBB29_10
# BB#9:                                 # %if.then.14
                                        #   in Loop: Header=BB29_7 Depth=1
	movl	$1, -44(%rbp)
	jmp	.LBB29_13
.LBB29_10:                              # %if.else.15
                                        #   in Loop: Header=BB29_7 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB29_12
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB29_7 Depth=1
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_separator
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movl	$32, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB29_12:                              # %if.end.21
                                        #   in Loop: Header=BB29_7 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	g_string_append
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB29_13:                              # %if.end.25
                                        #   in Loop: Header=BB29_7 Depth=1
	jmp	.LBB29_14
.LBB29_14:                              # %for.inc
                                        #   in Loop: Header=BB29_7 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB29_7
.LBB29_15:                              # %for.end
	cmpl	$0, -44(%rbp)
	jne	.LBB29_19
# BB#16:                                # %if.then.27
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB29_18
# BB#17:                                # %if.then.30
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_separator
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movl	$32, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB29_18:                              # %if.end.34
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_tag_get_name
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB29_19:                              # %if.end.38
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_tag_entry_set_tag_string
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	g_string_free
	movq	-24(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_strfreev
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 264(%rax)
	jne	.LBB29_27
# BB#20:                                # %if.then.47
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	208(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -40(%rbp)
.LBB29_21:                              # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB29_26
# BB#22:                                # %for.body.54
                                        #   in Loop: Header=BB29_21 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	cmpl	$3, 24(%rax)
	je	.LBB29_24
# BB#23:                                # %if.then.60
                                        #   in Loop: Header=BB29_21 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$5, %rax
	addq	288(%rcx), %rax
	movl	$4, 24(%rax)
.LBB29_24:                              # %if.end.65
                                        #   in Loop: Header=BB29_21 Depth=1
	jmp	.LBB29_25
.LBB29_25:                              # %for.inc.66
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB29_21
.LBB29_26:                              # %for.end.68
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_tag_popup_check_can_toggle, %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	gimp_container_foreach
.LBB29_27:                              # %if.end.71
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_tag_popup_toggle_tag, .Lfunc_end29-gimp_tag_popup_toggle_tag
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_popup_queue_draw_tag,@function
gimp_tag_popup_queue_draw_tag:          # @gimp_tag_popup_queue_draw_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	264(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	324(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	20(%rax), %r8d
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-20(%rbp), %ecx         # 4-byte Reload
	callq	gtk_widget_queue_draw_area
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_tag_popup_queue_draw_tag, .Lfunc_end30-gimp_tag_popup_queue_draw_tag
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
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
	jae	.LBB31_2
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
	jmp	.LBB31_3
.LBB31_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB31_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	g_string_append_c_inline, .Lfunc_end31-g_string_append_c_inline
	.cfi_endproc

	.type	gimp_tag_popup_get_type.g_define_type_id__volatile,@object # @gimp_tag_popup_get_type.g_define_type_id__volatile
	.local	gimp_tag_popup_get_type.g_define_type_id__volatile
	.comm	gimp_tag_popup_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTagPopup"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_tag_popup_new,@object # @__func__.gimp_tag_popup_new
.L__func__.gimp_tag_popup_new:
	.asciz	"gimp_tag_popup_new"
	.size	.L__func__.gimp_tag_popup_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_COMBO_TAG_ENTRY (combo_entry)"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"type"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"owner"
	.size	.L.str.4, 6

	.type	.L__func__.gimp_tag_popup_show,@object # @__func__.gimp_tag_popup_show
.L__func__.gimp_tag_popup_show:
	.asciz	"gimp_tag_popup_show"
	.size	.L__func__.gimp_tag_popup_show, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_TAG_POPUP (popup)"
	.size	.L.str.5, 26

	.type	gimp_tag_popup_parent_class,@object # @gimp_tag_popup_parent_class
	.local	gimp_tag_popup_parent_class
	.comm	gimp_tag_popup_parent_class,8,8
	.type	GimpTagPopup_private_offset,@object # @GimpTagPopup_private_offset
	.local	GimpTagPopup_private_offset
	.comm	GimpTagPopup_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"scroll-arrow-vlength"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimptagpopup.c"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"expose-event"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"event"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"menu"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"menu_scroll_arrow_up"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"menu_scroll_arrow_down"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gtk-touchscreen-mode"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gtk-timeout-repeat"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.zero	1
	.size	.L.str.17, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
