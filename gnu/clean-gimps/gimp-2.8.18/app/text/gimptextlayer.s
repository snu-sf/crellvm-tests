	.text
	.file	"gimptextlayer.bc"
	.globl	gimp_text_layer_get_type
	.align	16, 0x90
	.type	gimp_text_layer_get_type,@function
gimp_text_layer_get_type:               # @gimp_text_layer_get_type
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
	movq	gimp_text_layer_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_text_layer_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_layer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$712, %edx              # imm = 0x2C8
	movabsq	$gimp_text_layer_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_text_layer_init, %rcx
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
	movabsq	$gimp_text_layer_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_text_layer_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_layer_get_type, .Lfunc_end0-gimp_text_layer_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_class_intern_init,@function
gimp_text_layer_class_intern_init:      # @gimp_text_layer_class_intern_init
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
	movq	%rax, gimp_text_layer_parent_class
	cmpl	$0, GimpTextLayer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTextLayer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_text_layer_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_layer_class_intern_init, .Lfunc_end1-gimp_text_layer_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_init,@function
gimp_text_layer_init:                   # @gimp_text_layer_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 112(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_layer_init, .Lfunc_end2-gimp_text_layer_init
	.cfi_endproc

	.globl	gimp_text_layer_new
	.align	16, 0x90
	.type	gimp_text_layer_new,@function
gimp_text_layer_new:                    # @gimp_text_layer_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layer_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_30
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layer_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_30
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB3_27
# BB#25:                                # %land.lhs.true.41
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB3_27
# BB#26:                                # %if.then.43
	movq	$0, -8(%rbp)
	jmp	.LBB3_30
.LBB3_27:                               # %if.end.44
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type_with_alpha
	movl	%eax, -36(%rbp)
	callq	gimp_text_layer_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movq	%rax, %rdi
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$1, (%rsp)
	movl	-96(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	callq	gimp_drawable_new
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_text_layer_set_text
	movq	-32(%rbp), %rdi
	callq	gimp_text_layer_render
	cmpl	$0, %eax
	jne	.LBB3_29
# BB#28:                                # %if.then.52
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB3_30
.LBB3_29:                               # %if.end.53
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB3_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_layer_new, .Lfunc_end3-gimp_text_layer_new
	.cfi_endproc

	.globl	gimp_text_layer_set_text
	.align	16, 0x90
	.type	gimp_text_layer_set_text,@function
gimp_text_layer_set_text:               # @gimp_text_layer_set_text
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_layer_get_type
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
	movabsq	$.L__func__.gimp_text_layer_set_text, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layer_set_text, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB4_27
# BB#26:                                # %if.then.42
	jmp	.LBB4_32
.LBB4_27:                               # %if.end.43
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB4_29
# BB#28:                                # %if.then.46
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_layer_text_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	$0, 104(%rdi)
.LBB4_29:                               # %if.end.51
	cmpq	$0, -16(%rbp)
	je	.LBB4_31
# BB#30:                                # %if.then.53
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_text_layer_text_changed, %rdi
	movl	$2, %r8d
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB4_31:                               # %if.end.57
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
.LBB4_32:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_layer_set_text, .Lfunc_end4-gimp_text_layer_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_render,@function
gimp_text_layer_render:                 # @gimp_text_layer_render
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 104(%rdi)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_32
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	456(%rax), %rdi
	callq	gimp_container_is_empty
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.26, %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_32
.LBB5_4:                                # %if.end.10
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_resolution
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	104(%rdx), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_layout_new
	movq	%rax, -48(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB5_6
# BB#5:                                 # %if.then.14
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	movq	-80(%rbp), %rdi
	callq	g_error_free
.LBB5_6:                                # %if.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gimp_text_layout_get_size
	cmpl	$0, %eax
	je	.LBB5_14
# BB#7:                                 # %land.lhs.true
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-148(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB5_9
# BB#8:                                 # %lor.lhs.false
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-152(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB5_14
.LBB5_9:                                # %if.then.23
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, -156(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -160(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-156(%rbp), %edi        # 4-byte Reload
	movl	-160(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	xorl	%esi, %esi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_set_tiles
	movq	-88(%rbp), %rdi
	callq	tile_manager_unref
	movq	-16(%rbp), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB5_13
# BB#10:                                # %if.then.31
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -96(%rbp)
	cmpq	$0, gimp_text_layer_render.unused_eek
	jne	.LBB5_12
# BB#11:                                # %if.then.36
	movabsq	$.L.str.27, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	gimp_context_new
	movq	%rax, gimp_text_layer_render.unused_eek
.LBB5_12:                               # %if.end.39
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	gimp_text_layer_render.unused_eek, %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %r8d
	movq	%rax, %rdi
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-204(%rbp), %r8d        # 4-byte Reload
	movl	-204(%rbp), %r9d        # 4-byte Reload
	callq	gimp_item_resize
.LBB5_13:                               # %if.end.42
	jmp	.LBB5_14
.LBB5_14:                               # %if.end.43
	movq	-16(%rbp), %rax
	cmpl	$0, 120(%rax)
	je	.LBB5_26
# BB#15:                                # %if.then.45
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB5_17
# BB#16:                                # %if.then.52
	movl	$30, %esi
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_utf8_strtrim
	movq	%rax, -112(%rbp)
	jmp	.LBB5_20
.LBB5_17:                               # %if.else
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB5_19
# BB#18:                                # %if.then.58
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	40(%rax), %rdi
	callq	gimp_markup_extract_text
	movl	$30, %esi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_utf8_strtrim
	movq	%rax, -112(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB5_19:                               # %if.end.63
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.64
	cmpq	$0, -112(%rbp)
	jne	.LBB5_22
# BB#21:                                # %if.then.66
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -112(%rbp)
.LBB5_22:                               # %if.end.69
	movq	-104(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB5_24
# BB#23:                                # %if.then.72
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_tree
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_tree_rename_item
	movq	-112(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.74
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
.LBB5_25:                               # %if.end.77
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.78
	cmpl	$0, -68(%rbp)
	jle	.LBB5_29
# BB#27:                                # %land.lhs.true.80
	cmpl	$0, -72(%rbp)
	jle	.LBB5_29
# BB#28:                                # %if.then.82
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_text_layer_render_layout
.LBB5_29:                               # %if.end.83
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, -68(%rbp)
	movb	%dl, -225(%rbp)         # 1-byte Spill
	jle	.LBB5_31
# BB#30:                                # %land.rhs
	cmpl	$0, -72(%rbp)
	setg	%al
	movb	%al, -225(%rbp)         # 1-byte Spill
.LBB5_31:                               # %land.end
	movb	-225(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB5_32:                               # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_layer_render, .Lfunc_end5-gimp_text_layer_render
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_text_changed,@function
gimp_text_layer_text_changed:           # @gimp_text_layer_text_changed
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
	cmpq	$0, 112(%rdi)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_item_parasite_detach
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_text_layer_render
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_layer_text_changed, .Lfunc_end6-gimp_text_layer_text_changed
	.cfi_endproc

	.globl	gimp_text_layer_get_text
	.align	16, 0x90
	.type	gimp_text_layer_get_text,@function
gimp_text_layer_get_text:               # @gimp_text_layer_get_text
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layer_get_text, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_layer_get_text, .Lfunc_end7-gimp_text_layer_get_text
	.cfi_endproc

	.globl	gimp_text_layer_set
	.align	16, 0x90
	.type	gimp_text_layer_set,@function
gimp_text_layer_set:                    # @gimp_text_layer_set
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
	subq	$512, %rsp              # imm = 0x200
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB8_17
# BB#16:                                # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB8_17:                               # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layer_set, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_15
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.body.3
	movq	-8(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.8
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layer_set, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_15
.LBB8_9:                                # %if.end.10
	jmp	.LBB8_10
.LBB8_10:                               # %do.end.11
	movq	-8(%rbp), %rdi
	callq	gimp_text_layer_get_text
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_12
# BB#11:                                # %if.then.14
	jmp	.LBB8_15
.LBB8_12:                               # %if.end.15
	movq	-8(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movl	$31, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_image_undo_group_start
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -444(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-8(%rbp), %rax
	cmpl	$0, 124(%rax)
	je	.LBB8_14
# BB#13:                                # %if.then.22
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	gimp_image_undo_push_text_layer_modified
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_push_drawable_mod
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB8_14:                               # %if.end.27
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	gimp_image_undo_push_text_layer
	movl	$80, %r8d
	movl	%r8d, %esi
	leaq	-64(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$24, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_set_valist
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-64(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_object_set
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-32(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -500(%rbp)        # 4-byte Spill
.LBB8_15:                               # %return
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_layer_set, .Lfunc_end8-gimp_text_layer_set
	.cfi_endproc

	.globl	gimp_item_is_text_layer
	.align	16, 0x90
	.type	gimp_item_is_text_layer,@function
gimp_item_is_text_layer:                # @gimp_item_is_text_layer
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB9_7
.LBB9_2:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB9_5
# BB#4:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB9_6:                                # %if.end
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.6
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB9_10
# BB#8:                                 # %land.lhs.true.8
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpq	$0, 104(%rax)
	movb	%dl, -33(%rbp)          # 1-byte Spill
	je	.LBB9_10
# BB#9:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 124(%rax)
	sete	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB9_10:                               # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_item_is_text_layer, .Lfunc_end9-gimp_item_is_text_layer
	.cfi_endproc

	.globl	gimp_text_layer_discard
	.align	16, 0x90
	.type	gimp_text_layer_discard,@function
gimp_text_layer_discard:                # @gimp_text_layer_discard
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layer_discard, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_20
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB10_15
# BB#14:                                # %if.then.16
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layer_discard, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_20
.LBB10_16:                              # %if.end.18
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.19
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB10_19
# BB#18:                                # %if.then.21
	jmp	.LBB10_20
.LBB10_19:                              # %if.end.22
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.11, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_text_layer
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_set_text
.LBB10_20:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_layer_discard, .Lfunc_end10-gimp_text_layer_discard
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_class_init,@function
gimp_text_layer_class_init:             # @gimp_text_layer_class_init
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp36:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.13, %rdi
	movabsq	$gimp_text_layer_rename, %rsi
	movabsq	$gimp_text_layer_duplicate, %rcx
	movabsq	$.L.str.12, %rdx
	movabsq	$gimp_text_layer_get_memsize, %r8
	movabsq	$gimp_text_layer_set_property, %r9
	movabsq	$gimp_text_layer_get_property, %r10
	movabsq	$gimp_text_layer_finalize, %r11
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%r8, 152(%rax)
	movq	-40(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-48(%rbp), %rax
	movq	%rcx, 344(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 360(%rax)
	callq	gettext
	movabsq	$.L.str.14, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, 440(%rcx)
	callq	gettext
	movabsq	$.L.str.15, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, 448(%rcx)
	callq	gettext
	movabsq	$.L.str.16, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, 456(%rcx)
	callq	gettext
	movabsq	$.L.str.17, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, 464(%rcx)
	callq	gettext
	movabsq	$.L.str.18, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, 472(%rcx)
	callq	gettext
	movabsq	$.L.str.19, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, 480(%rcx)
	callq	gettext
	movabsq	$.L.str.20, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, 488(%rcx)
	callq	gettext
	movabsq	$gimp_text_layer_push_undo, %rcx
	movabsq	$gimp_text_layer_set_tiles, %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, 496(%rsi)
	movq	-56(%rbp), %rax
	movq	%rdx, 656(%rax)
	movq	-56(%rbp), %rax
	movq	%rcx, 664(%rax)
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_text_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.21, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_text_layer_class_init, .Lfunc_end11-gimp_text_layer_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_finalize,@function
gimp_text_layer_finalize:               # @gimp_text_layer_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB12_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_layer_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_text_layer_finalize, .Lfunc_end12-gimp_text_layer_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_get_property,@function
gimp_text_layer_get_property:           # @gimp_text_layer_get_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB13_1
	jmp	.LBB13_8
.LBB13_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB13_2
	jmp	.LBB13_9
.LBB13_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB13_3
	jmp	.LBB13_4
.LBB13_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB13_7
.LBB13_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	120(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB13_7
.LBB13_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	124(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB13_7
.LBB13_4:                               # %sw.default
	jmp	.LBB13_5
.LBB13_5:                               # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movl	$213, %edx
	movabsq	$.L.str.24, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB13_7
.LBB13_7:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_text_layer_get_property, .Lfunc_end13-gimp_text_layer_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_set_property,@function
gimp_text_layer_set_property:           # @gimp_text_layer_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_8
.LBB14_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_9
.LBB14_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB14_3
	jmp	.LBB14_4
.LBB14_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_text_layer_set_text
	jmp	.LBB14_7
.LBB14_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 120(%rdi)
	jmp	.LBB14_7
.LBB14_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 124(%rdi)
	jmp	.LBB14_7
.LBB14_4:                               # %sw.default
	jmp	.LBB14_5
.LBB14_5:                               # %do.body
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
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movl	$239, %edx
	movabsq	$.L.str.24, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB14_7
.LBB14_7:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_text_layer_set_property, .Lfunc_end14-gimp_text_layer_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_get_memsize,@function
gimp_text_layer_get_memsize:            # @gimp_text_layer_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_text_layer_parent_class, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_text_layer_get_memsize, .Lfunc_end15-gimp_text_layer_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_duplicate,@function
gimp_text_layer_duplicate:              # @gimp_text_layer_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layer_duplicate, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_19
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	movq	gimp_text_layer_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_7
# BB#6:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB16_12
.LBB16_7:                               # %if.else.8
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_10
# BB#8:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_10
# BB#9:                                 # %if.then.11
	movl	$1, -52(%rbp)
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_11:                              # %if.end.14
	jmp	.LBB16_12
.LBB16_12:                              # %if.end.15
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_18
# BB#13:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movq	-64(%rbp), %rsi
	cmpq	$0, 104(%rsi)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB16_15
# BB#14:                                # %if.then.28
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_text_layer_set_text
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB16_15:                              # %if.end.35
	movq	-64(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB16_17
# BB#16:                                # %if.then.37
	movq	-64(%rbp), %rax
	movq	112(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 112(%rcx)
.LBB16_17:                              # %if.end.40
	jmp	.LBB16_18
.LBB16_18:                              # %if.end.41
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_text_layer_duplicate, .Lfunc_end16-gimp_text_layer_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_rename,@function
gimp_text_layer_rename:                 # @gimp_text_layer_rename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	gimp_text_layer_parent_class, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	360(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.21, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	movl	$1, -4(%rbp)
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB17_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_text_layer_rename, .Lfunc_end17-gimp_text_layer_rename
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_set_tiles,@function
gimp_text_layer_set_tiles:              # @gimp_text_layer_set_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -64(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB18_3
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpl	$0, 124(%rax)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$15, %esi
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB18_3:                               # %if.end
	movq	gimp_text_layer_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	656(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
	cmpl	$0, -12(%rbp)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true.10
	movq	-56(%rbp), %rax
	cmpl	$0, 124(%rax)
	jne	.LBB18_6
# BB#5:                                 # %if.then.13
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	gimp_image_undo_push_text_layer_modified
	movabsq	$.L.str.10, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_object_set
	movq	-64(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB18_6:                               # %if.end.16
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_text_layer_set_tiles, .Lfunc_end18-gimp_text_layer_set_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_push_undo,@function
gimp_text_layer_push_undo:              # @gimp_text_layer_push_undo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 124(%rax)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movl	$14, %esi
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB19_2:                               # %if.end
	movq	gimp_text_layer_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	664(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %r10d
	movl	-44(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	*%rax
	movq	-56(%rbp), %rax
	cmpl	$0, 124(%rax)
	jne	.LBB19_4
# BB#3:                                 # %if.then.10
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	gimp_image_undo_push_text_layer_modified
	movabsq	$.L.str.10, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_object_set
	movq	-64(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB19_4:                               # %if.end.13
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_text_layer_push_undo, .Lfunc_end19-gimp_text_layer_push_undo
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB20_2
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
.LBB20_2:                               # %entry
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
.Lfunc_end20:
	.size	g_warning, .Lfunc_end20-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_render_layout,@function
gimp_text_layer_render_layout:          # @gimp_text_layer_render_layout
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_layer_render_layout, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_20
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %do.end
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -144(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_height
	xorl	%edi, %edi
	movl	%eax, -148(%rbp)
	movl	-144(%rbp), %esi
	movl	-148(%rbp), %edx
	callq	cairo_image_surface_create
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	cairo_surface_status
	movl	%eax, -164(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB21_7
# BB#6:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.30, %rdi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	movq	-56(%rbp), %rdi
	callq	cairo_surface_destroy
	jmp	.LBB21_20
.LBB21_7:                               # %if.end.14
	movq	-56(%rbp), %rdi
	callq	cairo_create
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	96(%rax), %edx
	callq	gimp_text_layout_render
	movq	-48(%rbp), %rdi
	callq	cairo_destroy
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-144(%rbp), %r8d
	movl	-148(%rbp), %r9d
	movq	%rax, %rsi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -132(%rbp)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -136(%rbp)
	movq	-56(%rbp), %rdi
	callq	cairo_surface_flush
	movq	-56(%rbp), %rdi
	callq	cairo_image_surface_get_data
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rdi
	callq	cairo_image_surface_get_stride
	movl	$1, %edi
	leaq	-120(%rbp), %rsi
	movl	%eax, -140(%rbp)
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -160(%rbp)
.LBB21_8:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_10 Depth 2
                                        #       Child Loop BB21_12 Depth 3
	cmpq	$0, -160(%rbp)
	je	.LBB21_19
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB21_8 Depth=1
	movq	-128(%rbp), %rax
	movl	-80(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-84(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-72(%rbp), %ecx
	movl	%ecx, -196(%rbp)
.LBB21_10:                              # %while.cond
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_12 Depth 3
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -196(%rbp)
	cmpl	$0, %eax
	je	.LBB21_17
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB21_10 Depth=2
	movq	-184(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -220(%rbp)
.LBB21_12:                              # %while.cond.28
                                        #   Parent Loop BB21_8 Depth=1
                                        #     Parent Loop BB21_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-220(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -220(%rbp)
	cmpl	$0, %eax
	je	.LBB21_16
# BB#13:                                # %while.body.31
                                        #   in Loop: Header=BB21_12 Depth=3
	jmp	.LBB21_14
.LBB21_14:                              # %do.body.32
                                        #   in Loop: Header=BB21_12 Depth=3
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -228(%rbp)
	movq	-208(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -232(%rbp)
	movq	-208(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -236(%rbp)
	movq	-208(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -240(%rbp)
	movl	-236(%rbp), %ecx
	shll	$8, %ecx
	movl	-240(%rbp), %edx
	addl	$1, %edx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%edx, -272(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-272(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movb	%al, %sil
	movb	%sil, -224(%rbp)
	movl	-232(%rbp), %eax
	shll	$8, %eax
	movl	-240(%rbp), %edi
	addl	$1, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	%edi
	movb	%al, %sil
	movb	%sil, -223(%rbp)
	movl	-228(%rbp), %eax
	shll	$8, %eax
	movl	-240(%rbp), %edi
	addl	$1, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	%edi
	movb	%al, %sil
	movb	%sil, -222(%rbp)
	movl	-240(%rbp), %eax
	movb	%al, %sil
	movb	%sil, -221(%rbp)
# BB#15:                                # %do.end.53
                                        #   in Loop: Header=BB21_12 Depth=3
	xorl	%ecx, %ecx
	leaq	-224(%rbp), %r8
	movq	-40(%rbp), %rdi
	movl	-132(%rbp), %esi
	movq	-216(%rbp), %rdx
	callq	gimp_image_transform_color
	movb	-221(%rbp), %al
	movslq	-136(%rbp), %rdx
	movq	-216(%rbp), %rdi
	movb	%al, (%rdi,%rdx)
	movq	-208(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -208(%rbp)
	movl	-68(%rbp), %ecx
	movq	-216(%rbp), %rdx
	movslq	%ecx, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -216(%rbp)
	jmp	.LBB21_12
.LBB21_16:                              # %while.end
                                        #   in Loop: Header=BB21_10 Depth=2
	movl	-140(%rbp), %eax
	movq	-184(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -184(%rbp)
	movl	-88(%rbp), %eax
	movq	-192(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -192(%rbp)
	jmp	.LBB21_10
.LBB21_17:                              # %while.end.65
                                        #   in Loop: Header=BB21_8 Depth=1
	jmp	.LBB21_18
.LBB21_18:                              # %for.inc
                                        #   in Loop: Header=BB21_8 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -160(%rbp)
	jmp	.LBB21_8
.LBB21_19:                              # %for.end
	movq	-56(%rbp), %rdi
	callq	cairo_surface_destroy
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	-144(%rbp), %ecx
	movl	-148(%rbp), %r8d
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_drawable_update
.LBB21_20:                              # %return
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_text_layer_render_layout, .Lfunc_end21-gimp_text_layer_render_layout
	.cfi_endproc

	.type	gimp_text_layer_get_type.g_define_type_id__volatile,@object # @gimp_text_layer_get_type.g_define_type_id__volatile
	.local	gimp_text_layer_get_type.g_define_type_id__volatile
	.comm	gimp_text_layer_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTextLayer"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Text"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_text_layer_new,@object # @__func__.gimp_text_layer_new
.L__func__.gimp_text_layer_new:
	.asciz	"gimp_text_layer_new"
	.size	.L__func__.gimp_text_layer_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_TEXT (text)"
	.size	.L.str.3, 20

	.type	.L__func__.gimp_text_layer_set_text,@object # @__func__.gimp_text_layer_set_text
.L__func__.gimp_text_layer_set_text:
	.asciz	"gimp_text_layer_set_text"
	.size	.L__func__.gimp_text_layer_set_text, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_TEXT_LAYER (layer)"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"text == NULL || GIMP_IS_TEXT (text)"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"changed"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"text"
	.size	.L.str.7, 5

	.type	.L__func__.gimp_text_layer_get_text,@object # @__func__.gimp_text_layer_get_text
.L__func__.gimp_text_layer_get_text:
	.asciz	"gimp_text_layer_get_text"
	.size	.L__func__.gimp_text_layer_get_text, 25

	.type	.L__func__.gimp_text_layer_set,@object # @__func__.gimp_text_layer_set
.L__func__.gimp_text_layer_set:
	.asciz	"gimp_text_layer_set"
	.size	.L__func__.gimp_text_layer_set, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp_item_is_text_layer (GIMP_ITEM (layer))"
	.size	.L.str.8, 44

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (layer))"
	.size	.L.str.9, 42

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"modified"
	.size	.L.str.10, 9

	.type	.L__func__.gimp_text_layer_discard,@object # @__func__.gimp_text_layer_discard
.L__func__.gimp_text_layer_discard:
	.asciz	"gimp_text_layer_discard"
	.size	.L__func__.gimp_text_layer_discard, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Discard Text Information"
	.size	.L.str.11, 25

	.type	gimp_text_layer_parent_class,@object # @gimp_text_layer_parent_class
	.local	gimp_text_layer_parent_class
	.comm	gimp_text_layer_parent_class,8,8
	.type	GimpTextLayer_private_offset,@object # @GimpTextLayer_private_offset
	.local	GimpTextLayer_private_offset
	.comm	GimpTextLayer_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-text-layer"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Text Layer"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Rename Text Layer"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Move Text Layer"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Scale Text Layer"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Resize Text Layer"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Flip Text Layer"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Rotate Text Layer"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Transform Text Layer"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"auto-rename"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.22, 54

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimptextlayer.c"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"property"
	.size	.L.str.24, 9

	.type	.L__func__.gimp_text_layer_duplicate,@object # @__func__.gimp_text_layer_duplicate
.L__func__.gimp_text_layer_duplicate:
	.asciz	"gimp_text_layer_duplicate"
	.size	.L__func__.gimp_text_layer_duplicate, 26

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)"
	.size	.L.str.25, 43

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Due to lack of any fonts, text functionality is not available."
	.size	.L.str.26, 63

	.type	gimp_text_layer_render.unused_eek,@object # @gimp_text_layer_render.unused_eek
	.local	gimp_text_layer_render.unused_eek
	.comm	gimp_text_layer_render.unused_eek,8,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"eek"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Empty Text Layer"
	.size	.L.str.28, 17

	.type	.L__func__.gimp_text_layer_render_layout,@object # @__func__.gimp_text_layer_render_layout
.L__func__.gimp_text_layer_render_layout:
	.asciz	"gimp_text_layer_render_layout"
	.size	.L__func__.gimp_text_layer_render_layout, 30

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp_drawable_has_alpha (drawable)"
	.size	.L.str.29, 35

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Your text cannot be rendered. It is likely too big. Please make it shorter or use a smaller font."
	.size	.L.str.30, 98


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
