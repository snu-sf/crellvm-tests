	.text
	.file	"gimpbrushclipboard.bc"
	.globl	gimp_brush_clipboard_get_type
	.align	16, 0x90
	.type	gimp_brush_clipboard_get_type,@function
gimp_brush_clipboard_get_type:          # @gimp_brush_clipboard_get_type
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
	movq	gimp_brush_clipboard_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brush_clipboard_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_brush_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$384, %edx              # imm = 0x180
	movabsq	$gimp_brush_clipboard_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_brush_clipboard_init, %rcx
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
	movabsq	$gimp_brush_clipboard_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brush_clipboard_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_clipboard_get_type, .Lfunc_end0-gimp_brush_clipboard_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_clipboard_class_intern_init,@function
gimp_brush_clipboard_class_intern_init: # @gimp_brush_clipboard_class_intern_init
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
	movq	%rax, gimp_brush_clipboard_parent_class
	cmpl	$0, GimpBrushClipboard_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrushClipboard_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_clipboard_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_clipboard_class_intern_init, .Lfunc_end1-gimp_brush_clipboard_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_clipboard_init,@function
gimp_brush_clipboard_init:              # @gimp_brush_clipboard_init
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
	movq	$0, 120(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_clipboard_init, .Lfunc_end2-gimp_brush_clipboard_init
	.cfi_endproc

	.globl	gimp_brush_clipboard_new
	.align	16, 0x90
	.type	gimp_brush_clipboard_new,@function
gimp_brush_clipboard_new:               # @gimp_brush_clipboard_new
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
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_brush_clipboard_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_brush_clipboard_get_type
	movabsq	$.L.str.4, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.5, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_clipboard_new, .Lfunc_end3-gimp_brush_clipboard_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_clipboard_class_init,@function
gimp_brush_clipboard_class_init:        # @gimp_brush_clipboard_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_brush_clipboard_get_property, %rsi
	movabsq	$gimp_brush_clipboard_set_property, %rdi
	movabsq	$gimp_brush_clipboard_constructed, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
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
.Lfunc_end4:
	.size	gimp_brush_clipboard_class_init, .Lfunc_end4-gimp_brush_clipboard_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_clipboard_constructed,@function
gimp_brush_clipboard_constructed:       # @gimp_brush_clipboard_constructed
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_clipboard_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_brush_clipboard_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_brush_clipboard_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_9:                                # %if.end.13
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.16
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$109, %edx
	movabsq	$.L__func__.gimp_brush_clipboard_constructed, %rcx
	movabsq	$.L.str.7, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.18
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_brush_clipboard_buffer_changed, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_brush_clipboard_buffer_changed
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_clipboard_constructed, .Lfunc_end5-gimp_brush_clipboard_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_clipboard_set_property,@function
gimp_brush_clipboard_set_property:      # @gimp_brush_clipboard_set_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_clipboard_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB6_2
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 120(%rdi)
	jmp	.LBB6_5
.LBB6_2:                                # %sw.default
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$132, %edx
	movabsq	$.L.str.10, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB6_5
.LBB6_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_clipboard_set_property, .Lfunc_end6-gimp_brush_clipboard_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_clipboard_get_property,@function
gimp_brush_clipboard_get_property:      # @gimp_brush_clipboard_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_clipboard_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$151, %edx
	movabsq	$.L.str.10, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_clipboard_get_property, .Lfunc_end7-gimp_brush_clipboard_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_clipboard_buffer_changed,@function
gimp_brush_clipboard_buffer_changed:    # @gimp_brush_clipboard_buffer_changed
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
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 32(%rsi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB8_4:                                # %if.end.7
	movq	-8(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB8_31
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	440(%rax), %rdi
	callq	gimp_buffer_get_tiles
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	440(%rax), %rdi
	callq	gimp_buffer_get_image_type
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	440(%rdi), %rdi
	callq	gimp_buffer_get_width
	cmpl	$1024, %eax             # imm = 0x400
	jge	.LBB8_7
# BB#6:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	440(%rax), %rdi
	callq	gimp_buffer_get_width
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jmp	.LBB8_8
.LBB8_8:                                # %cond.end
	movl	-512(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rcx
	movq	440(%rcx), %rdi
	callq	gimp_buffer_get_height
	cmpl	$1024, %eax             # imm = 0x400
	jge	.LBB8_10
# BB#9:                                 # %cond.true.20
	movq	-8(%rbp), %rax
	movq	440(%rax), %rdi
	callq	gimp_buffer_get_height
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               # %cond.false.23
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB8_11
.LBB8_11:                               # %cond.end.24
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	%esi, %r9d
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	%ecx, -520(%rbp)        # 4-byte Spill
	movl	-520(%rbp), %r8d        # 4-byte Reload
	callq	temp_buf_new
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	%esi, %r9d
	movq	-16(%rbp), %r10
	movq	%rax, 32(%r10)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	movl	-524(%rbp), %r8d        # 4-byte Reload
	callq	temp_buf_new
	movq	-16(%rbp), %r9
	movq	%rax, 40(%r9)
	cmpl	$1, -36(%rbp)
	je	.LBB8_14
# BB#12:                                # %lor.lhs.false
	cmpl	$3, -36(%rbp)
	je	.LBB8_14
# BB#13:                                # %lor.lhs.false.32
	cmpl	$5, -36(%rbp)
	jne	.LBB8_15
.LBB8_14:                               # %if.then.34
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-168(%rbp), %rdi
	xorl	%eax, %eax
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-168(%rbp), %rdx
	callq	extract_alpha_region
	jmp	.LBB8_16
.LBB8_15:                               # %if.else
	leaq	-232(%rbp), %rdi
	xorl	%eax, %eax
	movb	$-1, -233(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rsi
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	leaq	-232(%rbp), %rdi
	leaq	-233(%rbp), %rsi
	callq	color_region
.LBB8_16:                               # %if.end.38
	cmpl	$0, -36(%rbp)
	je	.LBB8_18
# BB#17:                                # %lor.lhs.false.40
	cmpl	$1, -36(%rbp)
	jne	.LBB8_24
.LBB8_18:                               # %if.then.42
	leaq	-304(%rbp), %rdi
	xorl	%eax, %eax
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-368(%rbp), %rdi
	xorl	%eax, %eax
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	cmpl	$1, -36(%rbp)
	je	.LBB8_21
# BB#19:                                # %lor.lhs.false.46
	cmpl	$3, -36(%rbp)
	je	.LBB8_21
# BB#20:                                # %lor.lhs.false.48
	cmpl	$5, -36(%rbp)
	jne	.LBB8_22
.LBB8_21:                               # %if.then.50
	leaq	-304(%rbp), %rdi
	leaq	-368(%rbp), %rsi
	callq	copy_color
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.51
	leaq	-304(%rbp), %rdi
	leaq	-368(%rbp), %rsi
	callq	copy_region
.LBB8_23:                               # %if.end.52
	jmp	.LBB8_30
.LBB8_24:                               # %if.else.53
	movl	$1, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	leaq	-432(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -504(%rbp)
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-496(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-504(%rbp), %rsi
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
	cmpl	$1, -36(%rbp)
	je	.LBB8_27
# BB#25:                                # %lor.lhs.false.57
	cmpl	$3, -36(%rbp)
	je	.LBB8_27
# BB#26:                                # %lor.lhs.false.59
	cmpl	$5, -36(%rbp)
	jne	.LBB8_28
.LBB8_27:                               # %if.then.61
	leaq	-432(%rbp), %rdi
	leaq	-496(%rbp), %rsi
	xorl	%edx, %edx
	callq	copy_component
	jmp	.LBB8_29
.LBB8_28:                               # %if.else.62
	leaq	-432(%rbp), %rdi
	leaq	-496(%rbp), %rsi
	callq	copy_region
.LBB8_29:                               # %if.end.63
	movq	-504(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	temp_buf_copy
	movq	-504(%rbp), %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	temp_buf_free
.LBB8_30:                               # %if.end.66
	jmp	.LBB8_32
.LBB8_31:                               # %if.else.67
	movl	$1, %edx
	xorl	%eax, %eax
	leaq	-505(%rbp), %r9
	movb	$0, -505(%rbp)
	movl	$17, -20(%rbp)
	movl	$17, -24(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	-16(%rbp), %r9
	movq	%rax, 32(%r9)
.LBB8_32:                               # %if.end.70
	movl	$2, %eax
	xorps	%xmm0, %xmm0
	movl	-20(%rbp), %ecx
	movl	%eax, -540(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-540(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	movq	-16(%rbp), %rsi
	movsd	%xmm1, 56(%rsi)
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 64(%rsi)
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 72(%rsi)
	movl	-24(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 80(%rsi)
	movq	-16(%rbp), %rsi
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_clipboard_buffer_changed, .Lfunc_end8-gimp_brush_clipboard_buffer_changed
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.type	gimp_brush_clipboard_get_type.g_define_type_id__volatile,@object # @gimp_brush_clipboard_get_type.g_define_type_id__volatile
	.local	gimp_brush_clipboard_get_type.g_define_type_id__volatile
	.comm	gimp_brush_clipboard_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrushClipboard"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_brush_clipboard_new,@object # @__func__.gimp_brush_clipboard_new
.L__func__.gimp_brush_clipboard_new:
	.asciz	"gimp_brush_clipboard_new"
	.size	.L__func__.gimp_brush_clipboard_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Clipboard"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp"
	.size	.L.str.5, 5

	.type	gimp_brush_clipboard_parent_class,@object # @gimp_brush_clipboard_parent_class
	.local	gimp_brush_clipboard_parent_class
	.comm	gimp_brush_clipboard_parent_class,8,8
	.type	GimpBrushClipboard_private_offset,@object # @GimpBrushClipboard_private_offset
	.local	GimpBrushClipboard_private_offset
	.comm	GimpBrushClipboard_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpbrushclipboard.c"
	.size	.L.str.6, 21

	.type	.L__func__.gimp_brush_clipboard_constructed,@object # @__func__.gimp_brush_clipboard_constructed
.L__func__.gimp_brush_clipboard_constructed:
	.asciz	"gimp_brush_clipboard_constructed"
	.size	.L__func__.gimp_brush_clipboard_constructed, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_GIMP (brush->gimp)"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"buffer-changed"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
