	.text
	.file	"gimpvectortool.bc"
	.globl	gimp_vector_tool_get_type
	.align	16, 0x90
	.type	gimp_vector_tool_get_type,@function
gimp_vector_tool_get_type:              # @gimp_vector_tool_get_type
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
	movq	gimp_vector_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_vector_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_draw_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$288, %edx              # imm = 0x120
	movabsq	$gimp_vector_tool_class_intern_init, %rdi
	movl	$368, %r8d              # imm = 0x170
	movabsq	$gimp_vector_tool_init, %rcx
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
	movabsq	$gimp_vector_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_vector_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vector_tool_get_type, .Lfunc_end0-gimp_vector_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_class_intern_init,@function
gimp_vector_tool_class_intern_init:     # @gimp_vector_tool_class_intern_init
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
	movq	%rax, gimp_vector_tool_parent_class
	cmpl	$0, GimpVectorTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpVectorTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_vector_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_vector_tool_class_intern_init, .Lfunc_end1-gimp_vector_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_init,@function
gimp_vector_tool_init:                  # @gimp_vector_tool_init
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
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_handle_empty_image
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_motion_mode
	movl	$2, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movl	$6, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	$1, 248(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 252(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 256(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 280(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 284(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 312(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 328(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 336(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 352(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 360(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_vector_tool_init, .Lfunc_end2-gimp_vector_tool_init
	.cfi_endproc

	.globl	gimp_vector_tool_register
	.align	16, 0x90
	.type	gimp_vector_tool_register,@function
gimp_vector_tool_register:              # @gimp_vector_tool_register
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
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_vector_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_vector_options_gui, %rdx
	movl	$32704, %ecx            # imm = 0x7FC0
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movabsq	$.L.str.6, %r11
	movq	-48(%rbp), %rbx
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	*%r11
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_vector_tool_register, .Lfunc_end3-gimp_vector_tool_register
	.cfi_endproc

	.globl	gimp_vector_tool_set_vectors
	.align	16, 0x90
	.type	gimp_vector_tool_set_vectors,@function
gimp_vector_tool_set_vectors:           # @gimp_vector_tool_set_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_vector_tool_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_vector_tool_set_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_67
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_vector_tool_set_vectors, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_67
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_vector_options_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_27
# BB#26:                                # %if.then.50
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
.LBB4_27:                               # %if.end.53
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	328(%rcx), %rax
	jne	.LBB4_29
# BB#28:                                # %if.then.56
	jmp	.LBB4_67
.LBB4_29:                               # %if.end.57
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB4_33
# BB#30:                                # %land.lhs.true.60
	cmpq	$0, -16(%rbp)
	je	.LBB4_32
# BB#31:                                # %lor.lhs.false.62
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_image
	movq	-40(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_image
	movq	-176(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB4_33
.LBB4_32:                               # %if.then.66
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB4_33:                               # %if.end.67
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB4_39
# BB#34:                                # %if.then.70
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_vector_tool_vectors_changed, %rdi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%r9, -200(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_vector_tool_vectors_removed, %rdi
	movq	-8(%rbp), %r9
	movq	328(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-208(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_vector_tool_vectors_visible, %rdi
	movq	-8(%rbp), %r9
	movq	328(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-224(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_vector_tool_vectors_freeze, %rdi
	movq	-8(%rbp), %r9
	movq	328(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-240(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_vector_tool_vectors_thaw, %rdi
	movq	-8(%rbp), %r9
	movq	328(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-256(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	328(%rdi), %rdi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-48(%rbp), %rdi
	cmpq	$0, 360(%rdi)
	je	.LBB4_36
# BB#35:                                # %if.then.87
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_vector_tool_to_selection, %rax
	movq	-48(%rbp), %rdi
	movq	360(%rdi), %rdi
	movq	-32(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -272(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_vector_tool_to_selection_extended, %rdi
	movq	-48(%rbp), %r9
	movq	360(%r9), %r9
	movq	-32(%rbp), %r10
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-280(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB4_36:                               # %if.end.93
	movq	-48(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB4_38
# BB#37:                                # %if.then.95
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_vector_tool_stroke_vectors, %rax
	movq	-48(%rbp), %rdi
	movq	368(%rdi), %rdi
	movq	-32(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -296(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB4_38:                               # %if.end.99
	jmp	.LBB4_39
.LBB4_39:                               # %if.end.100
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 328(%rcx)
	movq	-8(%rbp), %rax
	movl	$15, 248(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_vector_tool_verify_state
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	jne	.LBB4_41
# BB#40:                                # %if.then.104
	movq	-32(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_resume
	movq	-8(%rbp), %rax
	movl	$1, 248(%rax)
	jmp	.LBB4_67
.LBB4_41:                               # %if.end.107
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_image
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_vector_tool_vectors_changed, %rdi
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_vector_tool_vectors_removed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_vector_tool_vectors_visible, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_vector_tool_vectors_freeze, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_vector_tool_vectors_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-48(%rbp), %rcx
	cmpq	$0, 360(%rcx)
	movq	%rax, -392(%rbp)        # 8-byte Spill
	je	.LBB4_43
# BB#42:                                # %if.then.117
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_vector_tool_to_selection, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdx
	movq	360(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_vector_tool_to_selection_extended, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdx
	movq	360(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %esi
	movq	-48(%rbp), %rcx
	movq	360(%rcx), %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_sensitive
.LBB4_43:                               # %if.end.123
	movq	-48(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB4_45
# BB#44:                                # %if.then.126
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_vector_tool_stroke_vectors, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdx
	movq	368(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %esi
	movq	-48(%rbp), %rcx
	movq	368(%rcx), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_sensitive
.LBB4_45:                               # %if.end.130
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB4_65
# BB#46:                                # %if.then.133
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB4_49
# BB#47:                                # %land.lhs.true.136
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	-40(%rbp), %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_item_get_image
	movq	-448(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB4_49
# BB#48:                                # %if.then.141
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_draw_tool_start
	jmp	.LBB4_64
.LBB4_49:                               # %if.else.143
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_context_get_display
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB4_51
# BB#50:                                # %lor.lhs.false.150
	movq	-120(%rbp), %rdi
	callq	gimp_display_get_image
	movq	-40(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_item_get_image
	movq	-456(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB4_61
.LBB4_51:                               # %if.then.154
	movq	$0, -120(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_image
	movq	32(%rax), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -128(%rbp)
.LBB4_52:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB4_60
# BB#53:                                # %for.body
                                        #   in Loop: Header=BB4_52 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_display_get_image
	movq	-40(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_item_get_image
	movq	-464(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB4_55
# BB#54:                                # %if.then.163
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_context_set_display
	jmp	.LBB4_60
.LBB4_55:                               # %if.end.164
                                        #   in Loop: Header=BB4_52 Depth=1
	movq	$0, -120(%rbp)
# BB#56:                                # %for.inc
                                        #   in Loop: Header=BB4_52 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB4_58
# BB#57:                                # %cond.true
                                        #   in Loop: Header=BB4_52 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB4_59
.LBB4_58:                               # %cond.false
                                        #   in Loop: Header=BB4_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB4_59
.LBB4_59:                               # %cond.end
                                        #   in Loop: Header=BB4_52 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	jmp	.LBB4_52
.LBB4_60:                               # %for.end
	jmp	.LBB4_61
.LBB4_61:                               # %if.end.166
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB4_63
# BB#62:                                # %if.then.170
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_draw_tool_start
.LBB4_63:                               # %if.end.172
	jmp	.LBB4_64
.LBB4_64:                               # %if.end.173
	jmp	.LBB4_65
.LBB4_65:                               # %if.end.174
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_resume
	movq	-48(%rbp), %rdi
	cmpl	$0, 352(%rdi)
	je	.LBB4_67
# BB#66:                                # %if.then.176
	movabsq	$.L.str.17, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB4_67:                               # %if.end.177
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_vector_tool_set_vectors, .Lfunc_end4-gimp_vector_tool_set_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_vectors_changed,@function
gimp_vector_tool_vectors_changed:       # @gimp_vector_tool_vectors_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_image_get_active_vectors
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_set_vectors
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_vector_tool_vectors_changed, .Lfunc_end5-gimp_vector_tool_vectors_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_vectors_removed,@function
gimp_vector_tool_vectors_removed:       # @gimp_vector_tool_vectors_removed
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	gimp_vector_tool_set_vectors
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_vector_tool_vectors_removed, .Lfunc_end6-gimp_vector_tool_vectors_removed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_vector_tool_vectors_visible,@function
gimp_vector_tool_vectors_visible:       # @gimp_vector_tool_vectors_visible
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB7_10
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 208(%rax)
	jne	.LBB7_10
# BB#2:                                 # %if.then
	movq	$0, -32(%rbp)
.LBB7_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB7_9
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-44(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_stroke_interpolate
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB7_8
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB7_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB7_3 Depth=1
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	8(%rdx), %edx
	movq	%rax, %rsi
	callq	gimp_draw_tool_add_strokes
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB7_7:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB7_8:                                # %if.end.13
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_3
.LBB7_9:                                # %while.end
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.14
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_vector_tool_vectors_visible, .Lfunc_end7-gimp_vector_tool_vectors_visible
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_vectors_freeze,@function
gimp_vector_tool_vectors_freeze:        # @gimp_vector_tool_vectors_freeze
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_vector_tool_vectors_freeze, .Lfunc_end8-gimp_vector_tool_vectors_freeze
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_vectors_thaw,@function
gimp_vector_tool_vectors_thaw:          # @gimp_vector_tool_vectors_thaw
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_vector_tool_verify_state
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_vector_tool_vectors_thaw, .Lfunc_end9-gimp_vector_tool_vectors_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_to_selection,@function
gimp_vector_tool_to_selection:          # @gimp_vector_tool_to_selection
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
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_vector_tool_to_selection_extended
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_vector_tool_to_selection, .Lfunc_end10-gimp_vector_tool_to_selection
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_to_selection_extended,@function
gimp_vector_tool_to_selection_extended: # @gimp_vector_tool_to_selection_extended
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 328(%rdi)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_modifiers_to_channel_op
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_item_to_selection
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB11_3:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_vector_tool_to_selection_extended, .Lfunc_end11-gimp_vector_tool_to_selection_extended
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_stroke_vectors,@function
gimp_vector_tool_stroke_vectors:        # @gimp_vector_tool_stroke_vectors
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 328(%rsi)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_5
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rdi
	movq	56(%rax), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_message
	jmp	.LBB12_5
.LBB12_4:                               # %if.end.12
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.56, %rsi
	movq	-16(%rbp), %r9
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	stroke_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
.LBB12_5:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_vector_tool_stroke_vectors, .Lfunc_end12-gimp_vector_tool_stroke_vectors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_vector_tool_verify_state,@function
gimp_vector_tool_verify_state:          # @gimp_vector_tool_verify_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 336(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 344(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 352(%rdi)
	movq	-8(%rbp), %rdi
	cmpq	$0, 328(%rdi)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 312(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 304(%rax)
	jmp	.LBB13_35
.LBB13_2:                               # %if.end
	jmp	.LBB13_3
.LBB13_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
                                        #     Child Loop BB13_22 Depth 2
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB13_31
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_stroke_get_draw_anchors
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	cmpq	304(%rdi), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	$1, -24(%rbp)
.LBB13_6:                               # %if.end.7
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB13_7:                               # %for.cond
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB13_21
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	288(%rcx), %rax
	jne	.LBB13_10
# BB#9:                                 # %if.then.12
                                        #   in Loop: Header=BB13_7 Depth=2
	movl	$1, -20(%rbp)
.LBB13_10:                              # %if.end.13
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	-48(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB13_16
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	-48(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB13_16
# BB#12:                                # %if.then.16
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	-8(%rbp), %rax
	movl	336(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 336(%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, 336(%rax)
	jne	.LBB13_14
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 344(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 352(%rcx)
	jmp	.LBB13_15
.LBB13_14:                              # %if.else
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	-8(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 352(%rax)
.LBB13_15:                              # %if.end.25
                                        #   in Loop: Header=BB13_7 Depth=2
	jmp	.LBB13_16
.LBB13_16:                              # %if.end.26
                                        #   in Loop: Header=BB13_7 Depth=2
	jmp	.LBB13_17
.LBB13_17:                              # %for.inc
                                        #   in Loop: Header=BB13_7 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB13_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB13_20
.LBB13_19:                              # %cond.false
                                        #   in Loop: Header=BB13_7 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB13_20
.LBB13_20:                              # %cond.end
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB13_7
.LBB13_21:                              # %for.end
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rdi
	callq	gimp_stroke_get_draw_controls
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB13_22:                              # %for.cond.29
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB13_30
# BB#23:                                # %for.body.31
                                        #   in Loop: Header=BB13_22 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	288(%rcx), %rax
	jne	.LBB13_25
# BB#24:                                # %if.then.36
                                        #   in Loop: Header=BB13_22 Depth=2
	movl	$1, -20(%rbp)
.LBB13_25:                              # %if.end.37
                                        #   in Loop: Header=BB13_22 Depth=2
	jmp	.LBB13_26
.LBB13_26:                              # %for.inc.38
                                        #   in Loop: Header=BB13_22 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB13_28
# BB#27:                                # %cond.true.40
                                        #   in Loop: Header=BB13_22 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB13_29
.LBB13_28:                              # %cond.false.42
                                        #   in Loop: Header=BB13_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB13_29
.LBB13_29:                              # %cond.end.43
                                        #   in Loop: Header=BB13_22 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB13_22
.LBB13_30:                              # %for.end.45
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB13_3
.LBB13_31:                              # %while.end
	cmpl	$0, -24(%rbp)
	jne	.LBB13_33
# BB#32:                                # %if.then.47
	movq	-8(%rbp), %rax
	movq	$0, 304(%rax)
.LBB13_33:                              # %if.end.49
	cmpl	$0, -20(%rbp)
	jne	.LBB13_35
# BB#34:                                # %if.then.51
	movq	-8(%rbp), %rax
	movq	$0, 288(%rax)
.LBB13_35:                              # %if.end.53
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_vector_tool_verify_state, .Lfunc_end13-gimp_vector_tool_verify_state
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_class_init,@function
gimp_vector_tool_class_init:            # @gimp_vector_tool_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp49:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_vector_tool_draw, %rsi
	movabsq	$gimp_vector_tool_cursor_update, %rdi
	movabsq	$gimp_vector_tool_oper_update, %rcx
	movabsq	$gimp_vector_tool_modifier_key, %rdx
	movabsq	$gimp_vector_tool_key_press, %r8
	movabsq	$gimp_vector_tool_motion, %r9
	movabsq	$gimp_vector_tool_button_release, %r10
	movabsq	$gimp_vector_tool_button_press, %r11
	movabsq	$gimp_vector_tool_control, %rbx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbx, 184(%rax)
	movq	-24(%rbp), %rax
	movq	%r11, 192(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 200(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 208(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 216(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 248(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 256(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_vector_tool_class_init, .Lfunc_end14-gimp_vector_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_control,@function
gimp_vector_tool_control:               # @gimp_vector_tool_control
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	jb	.LBB15_1
	jmp	.LBB15_4
.LBB15_4:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB15_2
	jmp	.LBB15_3
.LBB15_1:                               # %sw.bb
	jmp	.LBB15_3
.LBB15_2:                               # %sw.bb.2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_vector_tool_set_vectors
.LBB15_3:                               # %sw.epilog
	movq	gimp_vector_tool_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_vector_tool_control, .Lfunc_end15-gimp_vector_tool_control
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
.LCPI16_1:
	.quad	4607182418800017408     # double 1
.LCPI16_2:
	.quad	4605681218924227243     # double 0.83333333333333337
.LCPI16_3:
	.quad	4595172819793696085     # double 0.16666666666666666
	.text
	.align	16, 0x90
	.type	gimp_vector_tool_button_press,@function
gimp_vector_tool_button_press:          # @gimp_vector_tool_button_press
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
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp56:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_vector_options_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$15, 248(%rax)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_92
.LBB16_2:                               # %if.end
	jmp	.LBB16_3
.LBB16_3:                               # %do.body
	movq	-64(%rbp), %rax
	cmpq	$0, 328(%rax)
	jne	.LBB16_6
# BB#4:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpl	$0, 248(%rax)
	je	.LBB16_6
# BB#5:                                 # %lor.lhs.false.14
	movq	-64(%rbp), %rax
	cmpl	$1, 248(%rax)
	jne	.LBB16_7
.LBB16_6:                               # %if.then.17
	jmp	.LBB16_8
.LBB16_7:                               # %if.else
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_vector_tool_button_press, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_92
.LBB16_8:                               # %if.end.18
	jmp	.LBB16_9
.LBB16_9:                               # %do.end
	movq	-64(%rbp), %rax
	movl	$0, 280(%rax)
	movl	-32(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 260(%rax)
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB16_12
# BB#10:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB16_12
# BB#11:                                # %if.then.22
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB16_12:                              # %if.end.23
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-64(%rbp), %rax
	cmpl	$0, 248(%rax)
	jne	.LBB16_16
# BB#13:                                # %if.then.27
	movl	$13, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	leaq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	callq	gimp_draw_tool_on_vectors
	cmpl	$0, %eax
	je	.LBB16_15
# BB#14:                                # %if.then.30
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_vector_tool_set_vectors
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_image_set_active_vectors
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB16_15:                              # %if.end.32
	movq	-64(%rbp), %rax
	movl	$15, 248(%rax)
.LBB16_16:                              # %if.end.34
	movq	-64(%rbp), %rax
	cmpl	$1, 248(%rax)
	jne	.LBB16_18
# BB#17:                                # %if.then.37
	movabsq	$.L.str.19, %rdi
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vectors_new
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movl	$1, 284(%rax)
	movq	-64(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_image_add_vectors
	movq	-80(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_vector_tool_set_vectors
	movq	-64(%rbp), %rdx
	movl	$2, 248(%rdx)
.LBB16_18:                              # %if.end.43
	movq	-64(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_vectors_freeze
	movq	-64(%rbp), %rax
	cmpl	$2, 248(%rax)
	jne	.LBB16_21
# BB#19:                                # %land.lhs.true.47
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_21
# BB#20:                                # %if.then.50
	movabsq	$.L.str.20, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	callq	gimp_bezier_stroke_new
	movq	-64(%rbp), %rsi
	movq	%rax, 304(%rsi)
	movq	-64(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	304(%rax), %rsi
	callq	gimp_vectors_stroke_add
	movq	-64(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-64(%rbp), %rax
	movq	304(%rax), %rax
	movq	-64(%rbp), %rsi
	movq	%rax, 352(%rsi)
	movq	-64(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-64(%rbp), %rax
	movl	$3, 248(%rax)
.LBB16_21:                              # %if.end.59
	movq	-64(%rbp), %rax
	cmpl	$3, 248(%rax)
	jne	.LBB16_27
# BB#22:                                # %land.lhs.true.62
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_27
# BB#23:                                # %if.then.65
	movabsq	$.L.str.21, %rdi
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-152(%rbp), %rcx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -112(%rbp)
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm2           # xmm2 = mem[0],zero
	movsd	%xmm2, -152(%rbp)
	movq	-24(%rbp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	movsd	%xmm2, -144(%rbp)
	movq	-64(%rbp), %rdi
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gettext
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	leaq	-152(%rbp), %rsi
	movl	$1, %ecx
	movq	-64(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	344(%rax), %rdx
	callq	gimp_bezier_stroke_extend
	movq	-64(%rbp), %rdx
	movq	%rax, 288(%rdx)
	movq	-64(%rbp), %rax
	movl	$3, 252(%rax)
	movq	-72(%rbp), %rax
	cmpl	$0, 356(%rax)
	jne	.LBB16_25
# BB#24:                                # %if.then.75
	movq	-64(%rbp), %rax
	movl	$6, 248(%rax)
	jmp	.LBB16_26
.LBB16_25:                              # %if.else.77
	movq	-64(%rbp), %rax
	movl	$4, 248(%rax)
.LBB16_26:                              # %if.end.79
	movq	-64(%rbp), %rax
	movq	352(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 304(%rcx)
.LBB16_27:                              # %if.end.82
	movq	-64(%rbp), %rax
	cmpl	$10, 248(%rax)
	jne	.LBB16_35
# BB#28:                                # %land.lhs.true.85
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_35
# BB#29:                                # %if.then.88
	movabsq	$.L.str.22, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movq	-64(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-64(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	288(%rax), %rsi
	movq	-64(%rbp), %rax
	movsd	312(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_stroke_anchor_insert
	movq	-64(%rbp), %rsi
	movq	%rax, 288(%rsi)
	movq	-64(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB16_33
# BB#30:                                # %if.then.97
	movq	-72(%rbp), %rax
	cmpl	$0, 356(%rax)
	je	.LBB16_32
# BB#31:                                # %if.then.100
	movl	$1, %edx
	movq	-64(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	288(%rax), %rsi
	callq	gimp_stroke_anchor_convert
.LBB16_32:                              # %if.end.103
	movq	-64(%rbp), %rax
	movl	$4, 248(%rax)
	jmp	.LBB16_34
.LBB16_33:                              # %if.else.105
	movq	-64(%rbp), %rax
	movl	$15, 248(%rax)
.LBB16_34:                              # %if.end.107
	jmp	.LBB16_35
.LBB16_35:                              # %if.end.108
	movq	-64(%rbp), %rax
	cmpl	$6, 248(%rax)
	jne	.LBB16_44
# BB#36:                                # %land.lhs.true.111
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_44
# BB#37:                                # %if.then.114
	movabsq	$.L.str.23, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB16_43
# BB#38:                                # %if.then.118
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB16_40
# BB#39:                                # %if.then.121
	movl	$1, %eax
	movq	-64(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	-64(%rbp), %rcx
	movq	304(%rcx), %rsi
	movq	-64(%rbp), %rcx
	movq	288(%rcx), %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_vectors_anchor_select
	movq	-64(%rbp), %rdx
	movl	$1, 280(%rdx)
.LBB16_40:                              # %if.end.126
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$13, %ecx
	movl	$1, %edx
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	-24(%rbp), %r8
	movq	-64(%rbp), %r9
	addq	$288, %r9               # imm = 0x120
	movq	-64(%rbp), %r10
	addq	$304, %r10              # imm = 0x130
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-296(%rbp), %rax        # 8-byte Reload
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movl	-304(%rbp), %r8d        # 4-byte Reload
	movl	-304(%rbp), %r11d       # 4-byte Reload
	movq	%r9, -312(%rbp)         # 8-byte Spill
	movl	%r11d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movq	-312(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	%r10, 24(%rsp)
	callq	gimp_draw_tool_on_vectors_handle
	movq	-64(%rbp), %rcx
	cmpq	$0, 288(%rcx)
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jne	.LBB16_42
# BB#41:                                # %if.then.135
	movq	-64(%rbp), %rax
	movl	$15, 248(%rax)
.LBB16_42:                              # %if.end.137
	jmp	.LBB16_43
.LBB16_43:                              # %if.end.138
	jmp	.LBB16_44
.LBB16_44:                              # %if.end.139
	movq	-64(%rbp), %rax
	cmpl	$4, 248(%rax)
	jne	.LBB16_49
# BB#45:                                # %land.lhs.true.142
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_49
# BB#46:                                # %if.then.145
	movabsq	$.L.str.24, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB16_48
# BB#47:                                # %if.then.150
	movl	$1, %eax
	movq	-64(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	-64(%rbp), %rcx
	movq	304(%rcx), %rsi
	movq	-64(%rbp), %rcx
	movq	288(%rcx), %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_vectors_anchor_select
	movq	-64(%rbp), %rdx
	movl	$1, 280(%rdx)
.LBB16_48:                              # %if.end.155
	jmp	.LBB16_49
.LBB16_49:                              # %if.end.156
	movq	-64(%rbp), %rax
	cmpl	$5, 248(%rax)
	jne	.LBB16_56
# BB#50:                                # %land.lhs.true.159
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_56
# BB#51:                                # %if.then.162
	movabsq	$.L.str.25, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movl	-32(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB16_55
# BB#52:                                # %if.then.165
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	288(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	cmpl	$0, 68(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	callq	gimp_vectors_anchor_select
	movq	-64(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB16_54
# BB#53:                                # %if.then.176
	movq	-64(%rbp), %rax
	movl	$15, 248(%rax)
.LBB16_54:                              # %if.end.178
	jmp	.LBB16_55
.LBB16_55:                              # %if.end.179
	jmp	.LBB16_56
.LBB16_56:                              # %if.end.180
	movq	-64(%rbp), %rax
	cmpl	$7, 248(%rax)
	jne	.LBB16_63
# BB#57:                                # %land.lhs.true.183
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_63
# BB#58:                                # %if.then.186
	movabsq	$.L.str.26, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movsd	.LCPI16_2, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	ucomisd	312(%rax), %xmm0
	jbe	.LBB16_60
# BB#59:                                # %if.then.190
	movl	$1, %eax
	movq	-64(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	-64(%rbp), %rcx
	movq	304(%rcx), %rsi
	movq	-64(%rbp), %rcx
	movq	288(%rcx), %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_vectors_anchor_select
	movq	-64(%rbp), %rdx
	movl	$1, 280(%rdx)
.LBB16_60:                              # %if.end.195
	movsd	.LCPI16_3, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	312(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB16_62
# BB#61:                                # %if.then.198
	movl	$1, %ecx
	movsd	.LCPI16_2, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	304(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	296(%rax), %rdx
	movq	-64(%rbp), %rax
	movsd	312(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	setae	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	callq	gimp_vectors_anchor_select
	movq	-64(%rbp), %rax
	movl	$1, 280(%rax)
.LBB16_62:                              # %if.end.204
	jmp	.LBB16_63
.LBB16_63:                              # %if.end.205
	movq	-64(%rbp), %rax
	cmpl	$12, 248(%rax)
	jne	.LBB16_69
# BB#64:                                # %land.lhs.true.209
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_69
# BB#65:                                # %if.then.212
	movabsq	$.L.str.27, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	344(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	288(%rax), %rcx
	callq	gimp_stroke_connect_stroke
	movq	-64(%rbp), %rcx
	movl	$1, 280(%rcx)
	movq	-64(%rbp), %rcx
	movq	304(%rcx), %rcx
	movq	-64(%rbp), %rdx
	cmpq	352(%rdx), %rcx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	je	.LBB16_68
# BB#66:                                # %land.lhs.true.224
	movq	-64(%rbp), %rax
	movq	304(%rax), %rdi
	callq	gimp_stroke_is_empty
	cmpl	$0, %eax
	je	.LBB16_68
# BB#67:                                # %if.then.228
	movq	-64(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	304(%rax), %rsi
	callq	gimp_vectors_stroke_remove
.LBB16_68:                              # %if.end.231
	movl	$1, %eax
	movq	-64(%rbp), %rcx
	movq	288(%rcx), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, 344(%rdx)
	movq	-64(%rbp), %rcx
	movq	352(%rcx), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, 304(%rdx)
	movq	-64(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	-64(%rbp), %rcx
	movq	352(%rcx), %rsi
	movq	-64(%rbp), %rcx
	movq	344(%rcx), %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_vectors_anchor_select
	movq	-64(%rbp), %rdx
	movl	$15, 248(%rdx)
.LBB16_69:                              # %if.end.240
	movq	-64(%rbp), %rax
	cmpl	$8, 248(%rax)
	je	.LBB16_71
# BB#70:                                # %lor.lhs.false.244
	movq	-64(%rbp), %rax
	cmpl	$9, 248(%rax)
	jne	.LBB16_73
.LBB16_71:                              # %land.lhs.true.248
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_73
# BB#72:                                # %if.then.251
	movabsq	$.L.str.28, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
.LBB16_73:                              # %if.end.253
	movq	-64(%rbp), %rax
	cmpl	$14, 248(%rax)
	jne	.LBB16_79
# BB#74:                                # %land.lhs.true.257
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_79
# BB#75:                                # %if.then.260
	movabsq	$.L.str.29, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movl	$1, %edx
	movq	-64(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	288(%rax), %rsi
	callq	gimp_stroke_anchor_convert
	movq	-64(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB16_77
# BB#76:                                # %if.then.269
	movl	$1, %eax
	movq	-64(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	-64(%rbp), %rcx
	movq	304(%rcx), %rsi
	movq	-64(%rbp), %rcx
	movq	288(%rcx), %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_vectors_anchor_select
	movq	-64(%rbp), %rdx
	movl	$4, 248(%rdx)
	jmp	.LBB16_78
.LBB16_77:                              # %if.else.274
	movq	-64(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-64(%rbp), %rax
	movl	$15, 248(%rax)
.LBB16_78:                              # %if.end.278
	jmp	.LBB16_79
.LBB16_79:                              # %if.end.279
	movq	-64(%rbp), %rax
	cmpl	$11, 248(%rax)
	jne	.LBB16_84
# BB#80:                                # %land.lhs.true.283
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_84
# BB#81:                                # %if.then.286
	movabsq	$.L.str.30, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movq	-64(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	288(%rax), %rsi
	callq	gimp_stroke_anchor_delete
	movq	-64(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-64(%rbp), %rax
	movq	304(%rax), %rdi
	callq	gimp_stroke_is_empty
	cmpl	$0, %eax
	je	.LBB16_83
# BB#82:                                # %if.then.294
	movq	-64(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	304(%rax), %rsi
	callq	gimp_vectors_stroke_remove
.LBB16_83:                              # %if.end.297
	movq	-64(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-64(%rbp), %rax
	movl	$15, 248(%rax)
.LBB16_84:                              # %if.end.301
	movq	-64(%rbp), %rax
	cmpl	$13, 248(%rax)
	jne	.LBB16_89
# BB#85:                                # %land.lhs.true.305
	movq	-64(%rbp), %rdi
	callq	gimp_vector_tool_check_writable
	cmpl	$0, %eax
	je	.LBB16_89
# BB#86:                                # %if.then.308
	movabsq	$.L.str.31, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movq	-64(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	288(%rax), %rsi
	callq	gimp_stroke_open
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.LBB16_88
# BB#87:                                # %if.then.314
	movq	-64(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-160(%rbp), %rsi
	callq	gimp_vectors_stroke_add
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB16_88:                              # %if.end.316
	movq	-64(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-64(%rbp), %rax
	movl	$15, 248(%rax)
.LBB16_89:                              # %if.end.321
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movq	-64(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_vectors_thaw
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB16_91
# BB#90:                                # %if.then.327
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_draw_tool_start
.LBB16_91:                              # %if.end.328
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_resume
.LBB16_92:                              # %return
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_vector_tool_button_press, .Lfunc_end16-gimp_vector_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_button_release,@function
gimp_vector_tool_button_release:        # @gimp_vector_tool_button_release
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	$15, 248(%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 284(%rax)
	je	.LBB17_4
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, 280(%rax)
	je	.LBB17_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$1, -28(%rbp)
	jne	.LBB17_4
.LBB17_3:                               # %if.then
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_undo_stack
	xorl	%esi, %esi
	leaq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_undo_stack_pop_undo
	movl	$1, %esi
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rdx
	callq	gimp_image_undo_event
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	callq	gimp_undo_free
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB17_4:                               # %if.end
	movq	-48(%rbp), %rax
	movl	$0, 284(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 280(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	movq	-56(%rbp), %rdi
	callq	gimp_image_flush
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_vector_tool_button_release, .Lfunc_end17-gimp_vector_tool_button_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4602678819172646912     # double 0.5
.LCPI18_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_vector_tool_motion,@function
gimp_vector_tool_motion:                # @gimp_vector_tool_motion
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_vector_options_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-112(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$15, 248(%rax)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_27
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_vectors_freeze
	movq	-40(%rbp), %rax
	movl	260(%rax), %ecx
	andl	$1, %ecx
	movl	-24(%rbp), %edx
	andl	$1, %edx
	cmpl	%edx, %ecx
	je	.LBB18_4
# BB#3:                                 # %if.then.11
	movq	-40(%rbp), %rax
	movl	$0, 256(%rax)
.LBB18_4:                               # %if.end.12
	movq	-40(%rbp), %rax
	cmpl	$0, 256(%rax)
	jne	.LBB18_9
# BB#5:                                 # %if.then.14
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB18_7
# BB#6:                                 # %if.then.17
	movq	-40(%rbp), %rax
	movl	$3, 252(%rax)
	jmp	.LBB18_8
.LBB18_7:                               # %if.else
	movq	-40(%rbp), %rax
	movl	$0, 252(%rax)
.LBB18_8:                               # %if.end.19
	jmp	.LBB18_9
.LBB18_9:                               # %if.end.20
	movq	-40(%rbp), %rax
	movl	248(%rax), %ecx
	addl	$-4, %ecx
	movl	%ecx, %eax
	subl	$5, %ecx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	ja	.LBB18_25
# BB#28:                                # %if.end.20
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_10:                              # %sw.bb
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB18_12
# BB#11:                                # %if.then.23
	leaq	-112(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	288(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	252(%rax), %ecx
	callq	gimp_stroke_anchor_move_absolute
	movq	-40(%rbp), %rax
	movl	$1, 280(%rax)
.LBB18_12:                              # %if.end.26
	jmp	.LBB18_26
.LBB18_13:                              # %sw.bb.27
	movq	-48(%rbp), %rax
	cmpl	$0, 356(%rax)
	je	.LBB18_15
# BB#14:                                # %if.then.29
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	264(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	272(%rax), %xmm1
	callq	gimp_vector_tool_move_selected_anchors
	movq	-40(%rbp), %rax
	movl	$1, 280(%rax)
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.34
	leaq	-112(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	288(%rax), %rsi
	movq	-40(%rbp), %rax
	movsd	312(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movl	252(%rax), %ecx
	callq	gimp_stroke_point_move_absolute
	movq	-40(%rbp), %rax
	movl	$1, 280(%rax)
.LBB18_16:                              # %if.end.39
	jmp	.LBB18_26
.LBB18_17:                              # %sw.bb.40
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	264(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	272(%rax), %xmm1
	callq	gimp_vector_tool_move_selected_anchors
	movq	-40(%rbp), %rax
	movl	$1, 280(%rax)
	jmp	.LBB18_26
.LBB18_18:                              # %sw.bb.48
	movq	-40(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB18_20
# BB#19:                                # %if.then.51
	movq	-40(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	264(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	272(%rax), %xmm1
	callq	gimp_stroke_translate
	movq	-40(%rbp), %rax
	movl	$1, 280(%rax)
	jmp	.LBB18_23
.LBB18_20:                              # %if.else.60
	movq	-40(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB18_22
# BB#21:                                # %if.then.62
	movq	-40(%rbp), %rax
	movq	352(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	264(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	272(%rax), %xmm1
	callq	gimp_stroke_translate
	movq	-40(%rbp), %rax
	movl	$1, 280(%rax)
.LBB18_22:                              # %if.end.71
	jmp	.LBB18_23
.LBB18_23:                              # %if.end.72
	jmp	.LBB18_26
.LBB18_24:                              # %sw.bb.73
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rsi
	subsd	264(%rsi), %xmm0
	cvttsd2si	%xmm0, %esi
	movq	-16(%rbp), %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	subsd	272(%rdi), %xmm0
	cvttsd2si	%xmm0, %edx
	movq	%rax, %rdi
	callq	gimp_item_translate
	movq	-40(%rbp), %rax
	movl	$1, 280(%rax)
	jmp	.LBB18_26
.LBB18_25:                              # %sw.default
	jmp	.LBB18_26
.LBB18_26:                              # %sw.epilog
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_vectors_thaw
.LBB18_27:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_vector_tool_motion, .Lfunc_end18-gimp_vector_tool_motion
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_10
	.quad	.LBB18_17
	.quad	.LBB18_10
	.quad	.LBB18_13
	.quad	.LBB18_18
	.quad	.LBB18_24

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
.LCPI19_1:
	.quad	4621819117588971520     # double 10
.LCPI19_2:
	.quad	4632233691727265792     # double 50
	.text
	.align	16, 0x90
	.type	gimp_vector_tool_key_press,@function
gimp_vector_tool_key_press:             # @gimp_vector_tool_key_press
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_vector_options_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -56(%rbp)
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 328(%rax)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB19_23
.LBB19_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	200(%rcx), %rax
	je	.LBB19_4
# BB#3:                                 # %if.then.10
	movl	$0, -4(%rbp)
	jmp	.LBB19_23
.LBB19_4:                               # %if.end.11
	movq	-48(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB19_6
# BB#5:                                 # %if.then.15
	movsd	.LCPI19_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB19_6:                               # %if.end.16
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-124(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB19_8
# BB#7:                                 # %if.then.21
	movsd	.LCPI19_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB19_8:                               # %if.end.22
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65076, %edx            # imm = 0xFE34
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	movl	%edx, -132(%rbp)        # 4-byte Spill
	je	.LBB19_9
	jmp	.LBB19_24
.LBB19_24:                              # %if.end.22
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$65288, %eax            # imm = 0xFF08
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB19_10
	jmp	.LBB19_25
.LBB19_25:                              # %if.end.22
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB19_9
	jmp	.LBB19_26
.LBB19_26:                              # %if.end.22
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB19_18
	jmp	.LBB19_27
.LBB19_27:                              # %if.end.22
	movl	-128(%rbp), %eax        # 4-byte Reload
	addl	$-65361, %eax           # imm = 0xFFFFFFFFFFFF00AF
	subl	$4, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jb	.LBB19_11
	jmp	.LBB19_28
.LBB19_28:                              # %if.end.22
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB19_9
	jmp	.LBB19_29
.LBB19_29:                              # %if.end.22
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB19_10
	jmp	.LBB19_21
.LBB19_9:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	24(%rax), %esi
	callq	gimp_vector_tool_to_selection_extended
	jmp	.LBB19_22
.LBB19_10:                              # %sw.bb.24
	movq	-40(%rbp), %rdi
	callq	gimp_vector_tool_delete_selected_anchors
	jmp	.LBB19_22
.LBB19_11:                              # %sw.bb.25
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	200(%rax), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	208(%rax), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rdi
	movl	$.L.str.34, %ecx
	movl	%ecx, %eax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movq	-40(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_vectors_freeze
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$-65361, %ecx           # imm = 0xFFFFFFFFFFFF00AF
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	ja	.LBB19_16
# BB#30:                                # %sw.bb.25
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	.LJTI19_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB19_12:                              # %sw.bb.30
	xorps	%xmm1, %xmm1
	movq	-40(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	callq	gimp_vector_tool_move_selected_anchors
	jmp	.LBB19_17
.LBB19_13:                              # %sw.bb.31
	xorps	%xmm1, %xmm1
	movq	-40(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_vector_tool_move_selected_anchors
	jmp	.LBB19_17
.LBB19_14:                              # %sw.bb.32
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rdi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	gimp_vector_tool_move_selected_anchors
	jmp	.LBB19_17
.LBB19_15:                              # %sw.bb.34
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rdi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_vector_tool_move_selected_anchors
	jmp	.LBB19_17
.LBB19_16:                              # %sw.default
	jmp	.LBB19_17
.LBB19_17:                              # %sw.epilog
	movq	-40(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_vectors_thaw
	movq	-40(%rbp), %rax
	movl	$0, 284(%rax)
	jmp	.LBB19_22
.LBB19_18:                              # %sw.bb.36
	movq	-56(%rbp), %rax
	cmpl	$0, 352(%rax)
	je	.LBB19_20
# BB#19:                                # %if.then.38
	movabsq	$.L.str.17, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB19_20:                              # %if.end.39
	jmp	.LBB19_22
.LBB19_21:                              # %sw.default.40
	movl	$0, -4(%rbp)
	jmp	.LBB19_23
.LBB19_22:                              # %sw.epilog.41
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	movl	$1, -4(%rbp)
.LBB19_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_vector_tool_key_press, .Lfunc_end19-gimp_vector_tool_key_press
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI19_0:
	.quad	.LBB19_12
	.quad	.LBB19_14
	.quad	.LBB19_13
	.quad	.LBB19_15

	.text
	.align	16, 0x90
	.type	gimp_vector_tool_modifier_key,@function
gimp_vector_tool_modifier_key:          # @gimp_vector_tool_modifier_key
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_vector_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_19
.LBB20_2:                               # %if.end
	movl	-12(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB20_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$8, -12(%rbp)
	jne	.LBB20_19
.LBB20_4:                               # %if.then.10
	movq	-48(%rbp), %rax
	movl	352(%rax), %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB20_8
# BB#5:                                 # %if.then.11
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	orl	$8, %eax
	movl	-92(%rbp), %ecx         # 4-byte Reload
	andl	%eax, %ecx
	movl	-88(%rbp), %eax         # 4-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB20_7
# BB#6:                                 # %if.then.14
	movq	-48(%rbp), %rax
	movl	352(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 360(%rax)
.LBB20_7:                               # %if.end.16
	jmp	.LBB20_11
.LBB20_8:                               # %if.else
	movl	-20(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	orl	$8, %eax
	movl	-96(%rbp), %ecx         # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB20_10
# BB#9:                                 # %if.then.21
	movq	-40(%rbp), %rax
	movl	360(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB20_10:                              # %if.end.23
	jmp	.LBB20_11
.LBB20_11:                              # %if.end.24
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB20_13
# BB#12:                                # %if.then.27
	movl	$2, -52(%rbp)
	jmp	.LBB20_16
.LBB20_13:                              # %if.else.28
	movl	-20(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-100(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB20_15
# BB#14:                                # %if.then.32
	movl	$1, -52(%rbp)
.LBB20_15:                              # %if.end.33
	jmp	.LBB20_16
.LBB20_16:                              # %if.end.34
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	352(%rcx), %eax
	je	.LBB20_18
# BB#17:                                # %if.then.37
	movabsq	$.L.str.17, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB20_18:                              # %if.end.38
	jmp	.LBB20_19
.LBB20_19:                              # %if.end.39
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_vector_tool_modifier_key, .Lfunc_end20-gimp_vector_tool_modifier_key
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_vector_tool_oper_update,@function
gimp_vector_tool_oper_update:           # @gimp_vector_tool_oper_update
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
	pushq	%r14
	pushq	%rbx
	subq	$320, %rsp              # imm = 0x140
.Ltmp72:
	.cfi_offset %rbx, -32
.Ltmp73:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_vector_options_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movsd	%xmm0, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 256(%rax)
	movq	-56(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB21_5
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	200(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB21_5
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$13, %ecx
	xorl	%edx, %edx
	leaq	-80(%rbp), %rsi
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	328(%r9), %r9
	movq	-32(%rbp), %r10
	movq	-56(%rbp), %r11
	cmpl	$2, 336(%r11)
	setg	%bl
	andb	$1, %bl
	movzbl	%bl, %r14d
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	-192(%rbp), %r8d        # 4-byte Reload
	movl	-192(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	callq	gimp_draw_tool_on_vectors_handle
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jne	.LBB21_4
# BB#3:                                 # %if.then.18
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$13, %ecx
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-104(%rbp), %rdi
	leaq	-80(%rbp), %r8
	leaq	-88(%rbp), %r9
	leaq	-96(%rbp), %r10
	movq	-48(%rbp), %r11
	movq	-56(%rbp), %rbx
	movq	328(%rbx), %rdx
	movq	-32(%rbp), %rbx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movq	%rbx, %rcx
	movl	-220(%rbp), %r14d       # 4-byte Reload
	movq	%r8, -232(%rbp)         # 8-byte Spill
	movl	%r14d, %r8d
	movq	%r9, -240(%rbp)         # 8-byte Spill
	movl	%r14d, %r9d
	movq	$0, (%rsp)
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-240(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	%r10, 32(%rsp)
	callq	gimp_draw_tool_on_vectors_curve
	movl	%eax, -112(%rbp)
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %if.end.23
	cmpl	$0, -108(%rbp)
	jne	.LBB21_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$0, -112(%rbp)
	je	.LBB21_8
.LBB21_7:                               # %if.then.26
	movq	-56(%rbp), %rax
	movq	$0, 320(%rax)
	jmp	.LBB21_9
.LBB21_8:                               # %if.else
	movl	$13, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %r8
	addq	$320, %r8               # imm = 0x140
	movl	%eax, %ecx
	movq	%r8, -248(%rbp)         # 8-byte Spill
	movl	%eax, %r8d
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-248(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	callq	gimp_draw_tool_on_vectors
	movl	%eax, -116(%rbp)
.LBB21_9:                               # %if.end.29
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 312(%rax)
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-96(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movq	-72(%rbp), %rax
	movl	352(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
	je	.LBB21_10
	jmp	.LBB21_107
.LBB21_107:                             # %if.end.29
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	je	.LBB21_49
	jmp	.LBB21_108
.LBB21_108:                             # %if.end.29
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	je	.LBB21_88
	jmp	.LBB21_106
.LBB21_10:                              # %sw.bb
	movq	-56(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB21_12
# BB#11:                                # %lor.lhs.false.32
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	200(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB21_16
.LBB21_12:                              # %if.then.38
	cmpl	$0, -116(%rbp)
	je	.LBB21_14
# BB#13:                                # %if.then.40
	movq	-56(%rbp), %rax
	movl	$0, 248(%rax)
	jmp	.LBB21_15
.LBB21_14:                              # %if.else.41
	movq	-56(%rbp), %rax
	movl	$1, 248(%rax)
	movq	-56(%rbp), %rax
	movl	$3, 252(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 256(%rax)
.LBB21_15:                              # %if.end.44
	jmp	.LBB21_48
.LBB21_16:                              # %if.else.45
	cmpl	$0, -108(%rbp)
	je	.LBB21_31
# BB#17:                                # %if.then.47
	movq	-80(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB21_26
# BB#18:                                # %if.then.50
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB21_20
# BB#19:                                # %if.then.52
	movq	-56(%rbp), %rax
	movl	$5, 248(%rax)
	jmp	.LBB21_25
.LBB21_20:                              # %if.else.54
	movq	-56(%rbp), %rax
	cmpl	$2, 336(%rax)
	jl	.LBB21_23
# BB#21:                                # %land.lhs.true.58
	movq	-80(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB21_23
# BB#22:                                # %if.then.60
	movq	-56(%rbp), %rax
	movl	$5, 248(%rax)
	jmp	.LBB21_24
.LBB21_23:                              # %if.else.62
	movq	-56(%rbp), %rax
	movl	$4, 248(%rax)
.LBB21_24:                              # %if.end.64
	jmp	.LBB21_25
.LBB21_25:                              # %if.end.65
	jmp	.LBB21_30
.LBB21_26:                              # %if.else.66
	movq	-56(%rbp), %rax
	movl	$6, 248(%rax)
	movl	-36(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB21_28
# BB#27:                                # %if.then.70
	movq	-56(%rbp), %rax
	movl	$3, 252(%rax)
	jmp	.LBB21_29
.LBB21_28:                              # %if.else.72
	movq	-56(%rbp), %rax
	movl	$0, 252(%rax)
.LBB21_29:                              # %if.end.74
	jmp	.LBB21_30
.LBB21_30:                              # %if.end.75
	jmp	.LBB21_47
.LBB21_31:                              # %if.else.76
	cmpl	$0, -112(%rbp)
	je	.LBB21_39
# BB#32:                                # %if.then.78
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_stroke_point_is_movable
	cmpl	$0, %eax
	je	.LBB21_37
# BB#33:                                # %if.then.81
	movq	-56(%rbp), %rax
	movl	$7, 248(%rax)
	movl	-36(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB21_35
# BB#34:                                # %if.then.85
	movq	-56(%rbp), %rax
	movl	$3, 252(%rax)
	jmp	.LBB21_36
.LBB21_35:                              # %if.else.87
	movq	-56(%rbp), %rax
	movl	$0, 252(%rax)
.LBB21_36:                              # %if.end.89
	jmp	.LBB21_38
.LBB21_37:                              # %if.else.90
	movq	-56(%rbp), %rax
	movl	$15, 248(%rax)
.LBB21_38:                              # %if.end.92
	jmp	.LBB21_46
.LBB21_39:                              # %if.else.93
	movq	-56(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB21_44
# BB#40:                                # %land.lhs.true.95
	movq	-56(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB21_44
# BB#41:                                # %land.lhs.true.97
	movq	-56(%rbp), %rax
	movq	352(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	344(%rax), %rsi
	callq	gimp_stroke_is_extendable
	cmpl	$0, %eax
	je	.LBB21_44
# BB#42:                                # %land.lhs.true.102
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB21_44
# BB#43:                                # %if.then.105
	movq	-56(%rbp), %rax
	movl	$3, 248(%rax)
	jmp	.LBB21_45
.LBB21_44:                              # %if.else.107
	movq	-56(%rbp), %rax
	movl	$2, 248(%rax)
.LBB21_45:                              # %if.end.109
	movq	-56(%rbp), %rax
	movl	$3, 252(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 256(%rax)
.LBB21_46:                              # %if.end.112
	jmp	.LBB21_47
.LBB21_47:                              # %if.end.113
	jmp	.LBB21_48
.LBB21_48:                              # %if.end.114
	jmp	.LBB21_106
.LBB21_49:                              # %sw.bb.115
	movq	-56(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB21_51
# BB#50:                                # %lor.lhs.false.118
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	200(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB21_55
.LBB21_51:                              # %if.then.124
	cmpl	$0, -116(%rbp)
	je	.LBB21_53
# BB#52:                                # %if.then.126
	movq	-56(%rbp), %rax
	movl	$0, 248(%rax)
	jmp	.LBB21_54
.LBB21_53:                              # %if.else.128
	movq	-56(%rbp), %rax
	movl	$15, 248(%rax)
.LBB21_54:                              # %if.end.130
	jmp	.LBB21_87
.LBB21_55:                              # %if.else.131
	cmpl	$0, -108(%rbp)
	je	.LBB21_76
# BB#56:                                # %if.then.133
	movq	-80(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB21_71
# BB#57:                                # %if.then.137
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB21_63
# BB#58:                                # %land.lhs.true.140
	movq	-56(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB21_63
# BB#59:                                # %land.lhs.true.143
	movq	-56(%rbp), %rax
	movq	344(%rax), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB21_63
# BB#60:                                # %land.lhs.true.147
	movq	-56(%rbp), %rax
	movq	352(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	344(%rax), %rsi
	callq	gimp_stroke_is_extendable
	cmpl	$0, %eax
	je	.LBB21_63
# BB#61:                                # %land.lhs.true.152
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_stroke_is_extendable
	cmpl	$0, %eax
	je	.LBB21_63
# BB#62:                                # %if.then.155
	movq	-56(%rbp), %rax
	movl	$12, 248(%rax)
	jmp	.LBB21_70
.LBB21_63:                              # %if.else.157
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB21_65
# BB#64:                                # %if.then.160
	movq	-56(%rbp), %rax
	movl	$11, 248(%rax)
	jmp	.LBB21_69
.LBB21_65:                              # %if.else.162
	movq	-72(%rbp), %rax
	cmpl	$0, 356(%rax)
	je	.LBB21_67
# BB#66:                                # %if.then.164
	movq	-56(%rbp), %rax
	movl	$4, 248(%rax)
	jmp	.LBB21_68
.LBB21_67:                              # %if.else.166
	movq	-56(%rbp), %rax
	movl	$6, 248(%rax)
.LBB21_68:                              # %if.end.168
	jmp	.LBB21_69
.LBB21_69:                              # %if.end.169
	jmp	.LBB21_70
.LBB21_70:                              # %if.end.170
	jmp	.LBB21_75
.LBB21_71:                              # %if.else.171
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB21_73
# BB#72:                                # %if.then.174
	movq	-56(%rbp), %rax
	movl	$14, 248(%rax)
	jmp	.LBB21_74
.LBB21_73:                              # %if.else.176
	movq	-56(%rbp), %rax
	movl	$6, 248(%rax)
.LBB21_74:                              # %if.end.178
	jmp	.LBB21_75
.LBB21_75:                              # %if.end.179
	jmp	.LBB21_86
.LBB21_76:                              # %if.else.180
	cmpl	$0, -112(%rbp)
	je	.LBB21_84
# BB#77:                                # %if.then.182
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB21_79
# BB#78:                                # %if.then.185
	movq	-56(%rbp), %rax
	movl	$13, 248(%rax)
	jmp	.LBB21_83
.LBB21_79:                              # %if.else.187
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_stroke_anchor_is_insertable
	cmpl	$0, %eax
	je	.LBB21_81
# BB#80:                                # %if.then.190
	movq	-56(%rbp), %rax
	movl	$10, 248(%rax)
	jmp	.LBB21_82
.LBB21_81:                              # %if.else.192
	movq	-56(%rbp), %rax
	movl	$15, 248(%rax)
.LBB21_82:                              # %if.end.194
	jmp	.LBB21_83
.LBB21_83:                              # %if.end.195
	jmp	.LBB21_85
.LBB21_84:                              # %if.else.196
	movq	-56(%rbp), %rax
	movl	$15, 248(%rax)
.LBB21_85:                              # %if.end.198
	jmp	.LBB21_86
.LBB21_86:                              # %if.end.199
	jmp	.LBB21_87
.LBB21_87:                              # %if.end.200
	jmp	.LBB21_106
.LBB21_88:                              # %sw.bb.201
	movq	-56(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB21_90
# BB#89:                                # %lor.lhs.false.204
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	200(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB21_94
.LBB21_90:                              # %if.then.210
	cmpl	$0, -116(%rbp)
	je	.LBB21_92
# BB#91:                                # %if.then.212
	movq	-56(%rbp), %rax
	movl	$0, 248(%rax)
	jmp	.LBB21_93
.LBB21_92:                              # %if.else.214
	movq	-56(%rbp), %rax
	movl	$15, 248(%rax)
.LBB21_93:                              # %if.end.216
	jmp	.LBB21_105
.LBB21_94:                              # %if.else.217
	cmpl	$0, -108(%rbp)
	jne	.LBB21_96
# BB#95:                                # %lor.lhs.false.219
	cmpl	$0, -112(%rbp)
	je	.LBB21_100
.LBB21_96:                              # %if.then.221
	movl	-36(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB21_98
# BB#97:                                # %if.then.224
	movq	-56(%rbp), %rax
	movl	$9, 248(%rax)
	jmp	.LBB21_99
.LBB21_98:                              # %if.else.226
	movq	-56(%rbp), %rax
	movl	$8, 248(%rax)
.LBB21_99:                              # %if.end.228
	jmp	.LBB21_104
.LBB21_100:                             # %if.else.229
	cmpl	$0, -116(%rbp)
	je	.LBB21_102
# BB#101:                               # %if.then.231
	movq	-56(%rbp), %rax
	movl	$0, 248(%rax)
	jmp	.LBB21_103
.LBB21_102:                             # %if.else.233
	movq	-56(%rbp), %rax
	movl	$9, 248(%rax)
.LBB21_103:                             # %if.end.235
	jmp	.LBB21_104
.LBB21_104:                             # %if.end.236
	jmp	.LBB21_105
.LBB21_105:                             # %if.end.237
	jmp	.LBB21_106
.LBB21_106:                             # %sw.epilog
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	gimp_vector_tool_status_update
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_vector_tool_oper_update, .Lfunc_end21-gimp_vector_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_cursor_update,@function
gimp_vector_tool_cursor_update:         # @gimp_vector_tool_cursor_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$6, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	248(%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$14, %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	ja	.LBB22_13
# BB#15:                                # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI22_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB22_1:                               # %sw.bb
	movl	$36, -44(%rbp)
	jmp	.LBB22_14
.LBB22_2:                               # %sw.bb.2
	movl	$7, -48(%rbp)
	jmp	.LBB22_14
.LBB22_3:                               # %sw.bb.3
	movl	$7, -44(%rbp)
	movl	$2, -48(%rbp)
	jmp	.LBB22_14
.LBB22_4:                               # %sw.bb.4
	movl	$7, -44(%rbp)
	movl	$3, -48(%rbp)
	jmp	.LBB22_14
.LBB22_5:                               # %sw.bb.5
	movl	$9, -44(%rbp)
	movl	$3, -48(%rbp)
	jmp	.LBB22_14
.LBB22_6:                               # %sw.bb.6
	movl	$8, -44(%rbp)
	movl	$5, -48(%rbp)
	jmp	.LBB22_14
.LBB22_7:                               # %sw.bb.7
	movl	$8, -44(%rbp)
	movl	$3, -48(%rbp)
	jmp	.LBB22_14
.LBB22_8:                               # %sw.bb.8
	movl	$7, -44(%rbp)
	movl	$5, -48(%rbp)
	jmp	.LBB22_14
.LBB22_9:                               # %sw.bb.9
	movl	$9, -44(%rbp)
	movl	$5, -48(%rbp)
	jmp	.LBB22_14
.LBB22_10:                              # %sw.bb.10
	movl	$5, -48(%rbp)
	jmp	.LBB22_14
.LBB22_11:                              # %sw.bb.11
	movl	$7, -44(%rbp)
	movl	$5, -48(%rbp)
	jmp	.LBB22_14
.LBB22_12:                              # %sw.bb.12
	movl	$9, -44(%rbp)
	movl	$12, -48(%rbp)
	jmp	.LBB22_14
.LBB22_13:                              # %sw.default
	movl	$1, -48(%rbp)
.LBB22_14:                              # %sw.epilog
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_tool_control_set_tool_cursor
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	gimp_vector_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_vector_tool_cursor_update, .Lfunc_end22-gimp_vector_tool_cursor_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_1
	.quad	.LBB22_2
	.quad	.LBB22_2
	.quad	.LBB22_3
	.quad	.LBB22_8
	.quad	.LBB22_11
	.quad	.LBB22_6
	.quad	.LBB22_9
	.quad	.LBB22_10
	.quad	.LBB22_10
	.quad	.LBB22_3
	.quad	.LBB22_4
	.quad	.LBB22_12
	.quad	.LBB22_5
	.quad	.LBB22_7

	.text
	.align	16, 0x90
	.type	gimp_vector_tool_draw,@function
gimp_vector_tool_draw:                  # @gimp_vector_tool_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB23_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	gimp_vectors_get_bezier
	cmpq	$0, %rax
	jne	.LBB23_3
.LBB23_2:                               # %if.then
	jmp	.LBB23_35
.LBB23_3:                               # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	jne	.LBB23_5
# BB#4:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_vectors_get_bezier
	xorps	%xmm0, %xmm0
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_draw_tool_add_path
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB23_5:                               # %if.end.12
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -24(%rbp)
.LBB23_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_8 Depth 2
                                        #     Child Loop BB23_20 Depth 2
                                        #     Child Loop BB23_26 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB23_35
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_stroke_get_draw_anchors
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB23_8:                               # %for.cond.16
                                        #   Parent Loop BB23_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB23_16
# BB#9:                                 # %for.body.18
                                        #   in Loop: Header=BB23_8 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB23_11
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB23_8 Depth=2
	movl	$13, %eax
	xorl	%r8d, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	cmpl	$0, 68(%rsi)
	cmovnel	%edx, %ecx
	movq	-64(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-64(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movl	%ecx, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB23_11:                              # %if.end.23
                                        #   in Loop: Header=BB23_8 Depth=2
	jmp	.LBB23_12
.LBB23_12:                              # %for.inc
                                        #   in Loop: Header=BB23_8 Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB23_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB23_8 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB23_15
.LBB23_14:                              # %cond.false
                                        #   in Loop: Header=BB23_8 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB23_15
.LBB23_15:                              # %cond.end
                                        #   in Loop: Header=BB23_8 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB23_8
.LBB23_16:                              # %for.end
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rdi
	cmpl	$2, 336(%rdi)
	jg	.LBB23_33
# BB#17:                                # %if.then.27
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_stroke_get_draw_lines
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB23_25
# BB#18:                                # %if.then.30
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB23_24
# BB#19:                                # %if.then.32
                                        #   in Loop: Header=BB23_6 Depth=1
	movl	$0, -68(%rbp)
.LBB23_20:                              # %for.cond.33
                                        #   Parent Loop BB23_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB23_23
# BB#21:                                # %for.body.36
                                        #   in Loop: Header=BB23_20 Depth=2
	movq	-8(%rbp), %rdi
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movl	-68(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm2           # xmm2 = mem[0],zero
	movl	-68(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm3          # xmm3 = mem[0],zero
	callq	gimp_draw_tool_add_line
	movl	$1, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_canvas_item_set_highlight
# BB#22:                                # %for.inc.53
                                        #   in Loop: Header=BB23_20 Depth=2
	movl	-68(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB23_20
.LBB23_23:                              # %for.end.55
                                        #   in Loop: Header=BB23_6 Depth=1
	jmp	.LBB23_24
.LBB23_24:                              # %if.end.56
                                        #   in Loop: Header=BB23_6 Depth=1
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB23_25:                              # %if.end.58
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_stroke_get_draw_controls
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB23_26:                              # %for.cond.60
                                        #   Parent Loop BB23_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB23_32
# BB#27:                                # %for.body.62
                                        #   in Loop: Header=BB23_26 Depth=2
	xorl	%eax, %eax
	movl	$10, %ecx
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -88(%rbp)
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movl	%eax, %esi
	movl	%ecx, %edx
	movl	%eax, %r8d
	callq	gimp_draw_tool_add_handle
	movq	%rax, -160(%rbp)        # 8-byte Spill
# BB#28:                                # %for.inc.70
                                        #   in Loop: Header=BB23_26 Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB23_30
# BB#29:                                # %cond.true.72
                                        #   in Loop: Header=BB23_26 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB23_31
.LBB23_30:                              # %cond.false.74
                                        #   in Loop: Header=BB23_26 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB23_31
.LBB23_31:                              # %cond.end.75
                                        #   in Loop: Header=BB23_26 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB23_26
.LBB23_32:                              # %for.end.77
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_list_free
.LBB23_33:                              # %if.end.78
                                        #   in Loop: Header=BB23_6 Depth=1
	jmp	.LBB23_34
.LBB23_34:                              # %for.inc.79
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -24(%rbp)
	jmp	.LBB23_6
.LBB23_35:                              # %for.end.81
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_vector_tool_draw, .Lfunc_end23-gimp_vector_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_check_writable,@function
gimp_vector_tool_check_writable:        # @gimp_vector_tool_check_writable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	56(%rax), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_tool_message_literal
	movq	-16(%rbp), %rax
	movl	$15, 248(%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB24_3
.LBB24_2:                               # %if.end
	movl	$1, -4(%rbp)
.LBB24_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_vector_tool_check_writable, .Lfunc_end24-gimp_vector_tool_check_writable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_undo_push,@function
gimp_vector_tool_undo_push:             # @gimp_vector_tool_undo_push
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB25_3
# BB#2:                                 # %if.then
	jmp	.LBB25_4
.LBB25_3:                               # %if.else
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_vector_tool_undo_push, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_8
.LBB25_4:                               # %if.end
	jmp	.LBB25_5
.LBB25_5:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 284(%rax)
	je	.LBB25_7
# BB#6:                                 # %if.then.1
	jmp	.LBB25_8
.LBB25_7:                               # %if.end.2
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	328(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_image_undo_push_vectors_mod
	movq	-8(%rbp), %rdx
	movl	$1, 284(%rdx)
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB25_8:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_vector_tool_undo_push, .Lfunc_end25-gimp_vector_tool_undo_push
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_move_selected_anchors,@function
gimp_vector_tool_move_selected_anchors: # @gimp_vector_tool_move_selected_anchors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorl	%esi, %esi
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-120(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	%rcx, %rdi
	callq	memset
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
.LBB26_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_3 Depth 2
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB26_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	gimp_stroke_get_draw_anchors
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB26_3:                               # %for.cond
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB26_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB26_3 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB26_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB26_3 Depth=2
	leaq	-120(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_stroke_anchor_move_relative
.LBB26_6:                               # %if.end
                                        #   in Loop: Header=BB26_3 Depth=2
	jmp	.LBB26_7
.LBB26_7:                               # %for.inc
                                        #   in Loop: Header=BB26_3 Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB26_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB26_3 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB26_10
.LBB26_9:                               # %cond.false
                                        #   in Loop: Header=BB26_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB26_10
.LBB26_10:                              # %cond.end
                                        #   in Loop: Header=BB26_3 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB26_3
.LBB26_11:                              # %for.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB26_1
.LBB26_12:                              # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_vector_tool_move_selected_anchors, .Lfunc_end26-gimp_vector_tool_move_selected_anchors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_delete_selected_anchors,@function
gimp_vector_tool_delete_selected_anchors: # @gimp_vector_tool_delete_selected_anchors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_vectors_freeze
.LBB27_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_3 Depth 2
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB27_16
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_stroke_get_draw_anchors
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB27_3:                               # %for.cond
                                        #   Parent Loop BB27_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB27_15
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB27_3 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB27_10
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB27_3 Depth=2
	cmpl	$0, -44(%rbp)
	jne	.LBB27_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB27_3 Depth=2
	movabsq	$.L.str.35, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vector_tool_undo_push
	movl	$1, -44(%rbp)
.LBB27_7:                               # %if.end
                                        #   in Loop: Header=BB27_3 Depth=2
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_stroke_anchor_delete
	movq	-24(%rbp), %rdi
	callq	gimp_stroke_is_empty
	cmpl	$0, %eax
	je	.LBB27_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB27_3 Depth=2
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_vectors_stroke_remove
	movq	$0, -24(%rbp)
.LBB27_9:                               # %if.end.14
                                        #   in Loop: Header=BB27_3 Depth=2
	jmp	.LBB27_10
.LBB27_10:                              # %if.end.15
                                        #   in Loop: Header=BB27_3 Depth=2
	jmp	.LBB27_11
.LBB27_11:                              # %for.inc
                                        #   in Loop: Header=BB27_3 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB27_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB27_3 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB27_14
.LBB27_13:                              # %cond.false
                                        #   in Loop: Header=BB27_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB27_14
.LBB27_14:                              # %cond.end
                                        #   in Loop: Header=BB27_3 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB27_3
.LBB27_15:                              # %for.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB27_1
.LBB27_16:                              # %while.end
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_vectors_thaw
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_vector_tool_delete_selected_anchors, .Lfunc_end27-gimp_vector_tool_delete_selected_anchors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vector_tool_status_update,@function
gimp_vector_tool_status_update:         # @gimp_vector_tool_status_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_vector_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tool_pop_status
	cmpl	$0, -24(%rbp)
	je	.LBB28_32
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$15, %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	ja	.LBB28_27
# BB#33:                                # %if.then
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI28_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB28_2:                               # %sw.bb
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB28_27
.LBB28_3:                               # %sw.bb.8
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB28_27
.LBB28_4:                               # %sw.bb.10
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB28_27
.LBB28_5:                               # %sw.bb.12
	movabsq	$.L.str.39, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	movl	$1, -52(%rbp)
	jmp	.LBB28_27
.LBB28_6:                               # %sw.bb.15
	movq	-40(%rbp), %rax
	cmpl	$1, 352(%rax)
	je	.LBB28_8
# BB#7:                                 # %if.then.16
	callq	gimp_get_toggle_behavior_mask
	movabsq	$.L.str.40, %rdi
	movl	%eax, -56(%rbp)
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-56(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	movl	$1, -52(%rbp)
	jmp	.LBB28_9
.LBB28_8:                               # %if.else
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
.LBB28_9:                               # %if.end
	jmp	.LBB28_27
.LBB28_10:                              # %sw.bb.23
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB28_27
.LBB28_11:                              # %sw.bb.25
	movq	-32(%rbp), %rax
	cmpl	$3, 252(%rax)
	je	.LBB28_13
# BB#12:                                # %if.then.27
	movabsq	$.L.str.42, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	jmp	.LBB28_14
.LBB28_13:                              # %if.else.32
	movabsq	$.L.str.43, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
.LBB28_14:                              # %if.end.37
	movl	$1, -52(%rbp)
	jmp	.LBB28_27
.LBB28_15:                              # %sw.bb.38
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_vector_options_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 356(%rax)
	je	.LBB28_17
# BB#16:                                # %if.then.45
	movabsq	$.L.str.41, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	jmp	.LBB28_18
.LBB28_17:                              # %if.else.50
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movabsq	$.L.str.45, %rdi
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
.LBB28_18:                              # %if.end.56
	movl	$1, -52(%rbp)
	jmp	.LBB28_27
.LBB28_19:                              # %sw.bb.57
	movabsq	$.L.str.46, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-184(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	movl	$1, -52(%rbp)
	jmp	.LBB28_27
.LBB28_20:                              # %sw.bb.62
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB28_27
.LBB28_21:                              # %sw.bb.64
	movabsq	$.L.str.48, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	movl	$1, -52(%rbp)
	jmp	.LBB28_27
.LBB28_22:                              # %sw.bb.69
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB28_27
.LBB28_23:                              # %sw.bb.71
	movabsq	$.L.str.50, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB28_27
.LBB28_24:                              # %sw.bb.73
	movabsq	$.L.str.51, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB28_27
.LBB28_25:                              # %sw.bb.75
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB28_27
.LBB28_26:                              # %sw.bb.77
	movq	$0, -48(%rbp)
.LBB28_27:                              # %sw.epilog
	cmpq	$0, -48(%rbp)
	je	.LBB28_29
# BB#28:                                # %if.then.79
	movabsq	$.L.str.53, %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_push_status
.LBB28_29:                              # %if.end.80
	cmpl	$0, -52(%rbp)
	je	.LBB28_31
# BB#30:                                # %if.then.82
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB28_31:                              # %if.end.83
	jmp	.LBB28_32
.LBB28_32:                              # %if.end.84
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_vector_tool_status_update, .Lfunc_end28-gimp_vector_tool_status_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI28_0:
	.quad	.LBB28_2
	.quad	.LBB28_3
	.quad	.LBB28_4
	.quad	.LBB28_5
	.quad	.LBB28_6
	.quad	.LBB28_10
	.quad	.LBB28_11
	.quad	.LBB28_15
	.quad	.LBB28_19
	.quad	.LBB28_20
	.quad	.LBB28_21
	.quad	.LBB28_22
	.quad	.LBB28_23
	.quad	.LBB28_24
	.quad	.LBB28_25
	.quad	.LBB28_26

	.type	gimp_vector_tool_get_type.g_define_type_id__volatile,@object # @gimp_vector_tool_get_type.g_define_type_id__volatile
	.local	gimp_vector_tool_get_type.g_define_type_id__volatile
	.comm	gimp_vector_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpVectorTool"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-vector-tool"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Paths"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Paths Tool: Create and edit paths"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Pat_hs"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"b"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-path"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Tools"
	.size	.L.str.7, 11

	.type	.L__func__.gimp_vector_tool_set_vectors,@object # @__func__.gimp_vector_tool_set_vectors
.L__func__.gimp_vector_tool_set_vectors:
	.asciz	"gimp_vector_tool_set_vectors"
	.size	.L__func__.gimp_vector_tool_set_vectors, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_VECTOR_TOOL (vector_tool)"
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vectors == NULL || GIMP_IS_VECTORS (vectors)"
	.size	.L.str.9, 45

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"active-vectors-changed"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"removed"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"visibility-changed"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"freeze"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"thaw"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"clicked"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"extended-clicked"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"vectors-edit-mode"
	.size	.L.str.17, 18

	.type	gimp_vector_tool_parent_class,@object # @gimp_vector_tool_parent_class
	.local	gimp_vector_tool_parent_class
	.comm	gimp_vector_tool_parent_class,8,8
	.type	GimpVectorTool_private_offset,@object # @GimpVectorTool_private_offset
	.local	GimpVectorTool_private_offset
	.comm	GimpVectorTool_private_offset,4,4
	.type	.L__func__.gimp_vector_tool_button_press,@object # @__func__.gimp_vector_tool_button_press
.L__func__.gimp_vector_tool_button_press:
	.asciz	"gimp_vector_tool_button_press"
	.size	.L__func__.gimp_vector_tool_button_press, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"vector_tool->vectors != NULL || vector_tool->function == VECTORS_SELECT_VECTOR || vector_tool->function == VECTORS_CREATE_VECTOR"
	.size	.L.str.18, 129

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Unnamed"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Add Stroke"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Add Anchor"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Insert Anchor"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Drag Handle"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Drag Anchor"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Drag Anchors"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Drag Curve"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Connect Strokes"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Drag Path"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Convert Edge"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Delete Anchor"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Delete Segment"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The active path is locked."
	.size	.L.str.32, 27

	.type	.L__func__.gimp_vector_tool_undo_push,@object # @__func__.gimp_vector_tool_undo_push
.L__func__.gimp_vector_tool_undo_push:
	.asciz	"gimp_vector_tool_undo_push"
	.size	.L__func__.gimp_vector_tool_undo_push, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"vector_tool->vectors != NULL"
	.size	.L.str.33, 29

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Move Anchors"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Delete Anchors"
	.size	.L.str.35, 15

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Click to pick path to edit"
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Click to create a new path"
	.size	.L.str.37, 27

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Click to create a new component of the path"
	.size	.L.str.38, 44

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Click or Click-Drag to create a new anchor"
	.size	.L.str.39, 43

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Click-Drag to move the anchor around"
	.size	.L.str.40, 37

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Click-Drag to move the anchors around"
	.size	.L.str.41, 38

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Click-Drag to move the handle around"
	.size	.L.str.42, 37

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Click-Drag to move the handles around symmetrically"
	.size	.L.str.43, 52

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Click-Drag to change the shape of the curve"
	.size	.L.str.44, 44

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%s: symmetrical"
	.size	.L.str.45, 16

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Click-Drag to move the component around"
	.size	.L.str.46, 40

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Click-Drag to move the path around"
	.size	.L.str.47, 35

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Click-Drag to insert an anchor on the path"
	.size	.L.str.48, 43

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Click to delete this anchor"
	.size	.L.str.49, 28

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Click to connect this anchor with the selected endpoint"
	.size	.L.str.50, 56

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Click to open up the path"
	.size	.L.str.51, 26

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Click to make this node angular"
	.size	.L.str.52, 32

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%s"
	.size	.L.str.53, 3

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"There is no active layer or channel to stroke to"
	.size	.L.str.54, 49

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Stroke Path"
	.size	.L.str.55, 12

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-path-stroke"
	.size	.L.str.56, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
