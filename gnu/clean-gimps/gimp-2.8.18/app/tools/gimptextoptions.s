	.text
	.file	"gimptextoptions.bc"
	.globl	gimp_text_options_get_type
	.align	16, 0x90
	.type	gimp_text_options_get_type,@function
gimp_text_options_get_type:             # @gimp_text_options_get_type
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
	movq	gimp_text_options_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_text_options_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_text_options_class_intern_init, %rdi
	movl	$440, %r8d              # imm = 0x1B8
	movabsq	$gimp_text_options_init, %rcx
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
	movabsq	$gimp_text_options_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_text_options_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_text_options_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_options_get_type, .Lfunc_end0-gimp_text_options_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_class_intern_init,@function
gimp_text_options_class_intern_init:    # @gimp_text_options_class_intern_init
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
	movq	%rax, gimp_text_options_parent_class
	cmpl	$0, GimpTextOptions_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTextOptions_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_text_options_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_options_class_intern_init, .Lfunc_end1-gimp_text_options_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_init,@function
gimp_text_options_init:                 # @gimp_text_options_init
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
	movq	$0, 432(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_options_init, .Lfunc_end2-gimp_text_options_init
	.cfi_endproc

	.globl	gimp_text_options_connect_text
	.align	16, 0x90
	.type	gimp_text_options_connect_text,@function
gimp_text_options_connect_text:         # @gimp_text_options_connect_text
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_text_options_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_options_connect_text, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_options_connect_text, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_25
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_foreground
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_font_name
	movabsq	$.L.str.4, %rsi
	leaq	-56(%rbp), %rdx
	movabsq	$.L.str.5, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_object_set
	movl	$80, %r10d
	movl	%r10d, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %r10d
	movl	%r10d, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_connect
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_text_options_notify_font, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_text_options_notify_text_font, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_text_options_notify_color, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_text_options_notify_text_color, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB3_25:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_options_connect_text, .Lfunc_end3-gimp_text_options_connect_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_notify_font,@function
gimp_text_options_notify_font:          # @gimp_text_options_notify_font
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_text_options_notify_text_font, %r9
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_context_get_font_name
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set
	movl	$24, %esi
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	movabsq	$gimp_text_options_notify_text_font, %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r11d, %edx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_options_notify_font, .Lfunc_end4-gimp_text_options_notify_font
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_notify_text_font,@function
gimp_text_options_notify_text_font:     # @gimp_text_options_notify_text_font
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
	subq	$64, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_text_options_notify_font, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	48(%r8), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_context_set_font_name
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_options_notify_font, %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_options_notify_text_font, .Lfunc_end5-gimp_text_options_notify_text_font
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_notify_color,@function
gimp_text_options_notify_color:         # @gimp_text_options_notify_color
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp22:
	.cfi_offset %rbx, -24
	leaq	-64(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_context_get_foreground
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_text_options_notify_text_color, %rax
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movabsq	$.L.str.4, %rsi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
	movl	$24, %esi
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	movabsq	$gimp_text_options_notify_text_color, %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r10d, %edx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -100(%rbp)        # 4-byte Spill
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_options_notify_color, .Lfunc_end6-gimp_text_options_notify_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_notify_text_color,@function
gimp_text_options_notify_text_color:    # @gimp_text_options_notify_text_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_text_options_notify_color, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r8
	addq	$104, %r8
	movq	%r8, %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_context_set_foreground
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_options_notify_color, %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_options_notify_text_color, .Lfunc_end7-gimp_text_options_notify_text_color
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_1:
	.quad	4607182418800017408     # double 1
.LCPI8_2:
	.quad	4621819117588971520     # double 10
.LCPI8_3:
	.quad	4634766966517661696     # double 72
	.text
	.globl	gimp_text_options_gui
	.align	16, 0x90
	.type	gimp_text_options_gui,@function
gimp_text_options_gui:                  # @gimp_text_options_gui
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              # imm = 0x230
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_tool_options_gui
	movq	%rax, -32(%rbp)
	movl	$0, -108(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2, %ecx
	movabsq	$.L.str.10, %r8
	movabsq	$.L.str.11, %r9
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_font_box_new
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rsi
	xorl	%edx, %edx
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movl	$1, %r9d
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	gimp_prop_size_entry_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movl	-108(%rbp), %edx
	movl	%edx, %r9d
	addl	$1, %r9d
	movl	%r9d, -108(%rbp)
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-72(%rbp), %r8
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$1, %edi
	movl	$2, %esi
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rcx, 432(%r8)
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %ecx        # 4-byte Reload
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.16, %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.18, %rsi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$6, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$0, -108(%rbp)
	callq	gtk_size_group_new
	movabsq	$.L.str.20, %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movl	-108(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -108(%rbp)
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	-324(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.23, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.22, %rsi
	movl	$40, %ecx
	movl	$24, %r8d
	xorl	%r9d, %r9d
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_color_button_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_panel_set_context
	movq	-40(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rdi
	movl	-108(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -108(%rbp)
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movl	-388(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %rdx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gimp_prop_enum_stock_box_new
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movl	-108(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -108(%rbp)
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movl	$1, %ecx
	movq	-80(%rbp), %r8
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movl	-420(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-104(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_size_group_add_widget
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.28, %rsi
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_prop_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-40(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rdx
	movl	$1, %r9d
	movl	-108(%rbp), %r10d
	movl	%r10d, %r11d
	addl	$1, %r11d
	movl	%r11d, -108(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movl	%r10d, %esi
	movl	%r9d, %r8d
	callq	gimp_table_attach_stock
	movabsq	$.L.str.30, %rsi
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_prop_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-40(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rdx
	movl	$1, %r8d
	movl	-108(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -108(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movl	%r9d, %esi
	movl	%r8d, -484(%rbp)        # 4-byte Spill
	movl	-484(%rbp), %r9d        # 4-byte Reload
	callq	gimp_table_attach_stock
	movabsq	$.L.str.32, %rsi
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_prop_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-40(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rdx
	movl	$1, %r8d
	movl	-108(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -108(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movl	%r9d, %esi
	movl	%r8d, -508(%rbp)        # 4-byte Spill
	movl	-508(%rbp), %r9d        # 4-byte Reload
	callq	gimp_table_attach_stock
	movabsq	$.L.str.34, %rsi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdi
	movl	-108(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -108(%rbp)
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-96(%rbp), %r8
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movl	-524(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-32(%rbp), %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_options_gui, .Lfunc_end8-gimp_text_options_gui
	.cfi_endproc

	.globl	gimp_text_options_editor_new
	.align	16, 0x90
	.type	gimp_text_options_editor_new,@function
gimp_text_options_editor_new:           # @gimp_text_options_editor_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_options_editor_new, %rsi
	movabsq	$.L.str.36, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_66
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_text_options_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_options_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_66
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB9_27
# BB#26:                                # %if.then.48
	movl	$0, -164(%rbp)
	jmp	.LBB9_32
.LBB9_27:                               # %if.else.49
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_30
# BB#28:                                # %land.lhs.true.52
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB9_30
# BB#29:                                # %if.then.56
	movl	$1, -164(%rbp)
	jmp	.LBB9_31
.LBB9_30:                               # %if.else.57
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB9_31:                               # %if.end.59
	jmp	.LBB9_32
.LBB9_32:                               # %if.end.60
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB9_34
# BB#33:                                # %if.then.63
	jmp	.LBB9_35
.LBB9_34:                               # %if.else.64
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_options_editor_new, %rsi
	movabsq	$.L.str.37, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_66
.LBB9_35:                               # %if.end.65
	jmp	.LBB9_36
.LBB9_36:                               # %do.end.66
	jmp	.LBB9_37
.LBB9_37:                               # %do.body.67
	cmpq	$0, -48(%rbp)
	je	.LBB9_39
# BB#38:                                # %if.then.69
	jmp	.LBB9_40
.LBB9_39:                               # %if.else.70
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_options_editor_new, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_66
.LBB9_40:                               # %if.end.71
	jmp	.LBB9_41
.LBB9_41:                               # %do.end.72
	jmp	.LBB9_42
.LBB9_42:                               # %do.body.73
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB9_44
# BB#43:                                # %if.then.82
	movl	$0, -188(%rbp)
	jmp	.LBB9_49
.LBB9_44:                               # %if.else.83
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_47
# BB#45:                                # %land.lhs.true.86
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB9_47
# BB#46:                                # %if.then.90
	movl	$1, -188(%rbp)
	jmp	.LBB9_48
.LBB9_47:                               # %if.else.91
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB9_48:                               # %if.end.93
	jmp	.LBB9_49
.LBB9_49:                               # %if.end.94
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB9_51
# BB#50:                                # %if.then.97
	jmp	.LBB9_52
.LBB9_51:                               # %if.else.98
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_options_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_66
.LBB9_52:                               # %if.end.99
	jmp	.LBB9_53
.LBB9_53:                               # %do.end.100
	jmp	.LBB9_54
.LBB9_54:                               # %do.body.101
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB9_56
# BB#55:                                # %if.then.110
	movl	$0, -212(%rbp)
	jmp	.LBB9_61
.LBB9_56:                               # %if.else.111
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_59
# BB#57:                                # %land.lhs.true.114
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB9_59
# BB#58:                                # %if.then.118
	movl	$1, -212(%rbp)
	jmp	.LBB9_60
.LBB9_59:                               # %if.else.119
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB9_60:                               # %if.end.121
	jmp	.LBB9_61
.LBB9_61:                               # %if.end.122
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB9_63
# BB#62:                                # %if.then.125
	jmp	.LBB9_64
.LBB9_63:                               # %if.else.126
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_options_editor_new, %rsi
	movabsq	$.L.str.39, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_66
.LBB9_64:                               # %if.end.127
	jmp	.LBB9_65
.LBB9_65:                               # %do.end.128
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_editor_new
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_font_name
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_text_editor_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movl	384(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_text_editor_set_direction
	movq	-88(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_text_editor_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_text_editor_set_font_name
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_text_options_editor_dir_changed, %rax
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_text_options_editor_notify_dir, %rcx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_text_options_editor_notify_font, %rcx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-88(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB9_66:                               # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_text_options_editor_new, .Lfunc_end9-gimp_text_options_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_editor_dir_changed,@function
gimp_text_options_editor_dir_changed:   # @gimp_text_options_editor_dir_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.48, %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	264(%rdi), %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_object_set
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_options_editor_dir_changed, .Lfunc_end10-gimp_text_options_editor_dir_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_editor_notify_dir,@function
gimp_text_options_editor_notify_dir:    # @gimp_text_options_editor_notify_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.48, %rax
	leaq	-28(%rbp), %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%r9, %rcx
	movb	$0, %al
	callq	g_object_get
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_text_editor_set_direction
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_text_options_editor_notify_dir, .Lfunc_end11-gimp_text_options_editor_notify_dir
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_editor_notify_font,@function
gimp_text_options_editor_notify_font:   # @gimp_text_options_editor_notify_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_font_name
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_text_editor_set_font_name
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_text_options_editor_notify_font, .Lfunc_end12-gimp_text_options_editor_notify_font
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	-4557642822898941952    # double -8192
.LCPI13_1:
	.quad	4665729213955833856     # double 8192
.LCPI13_2:
	.quad	4625759767262920704     # double 18
	.text
	.align	16, 0x90
	.type	gimp_text_options_class_init,@function
gimp_text_options_class_init:           # @gimp_text_options_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp44:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.42, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movabsq	$gimp_text_options_reset, %rdx
	movabsq	$gimp_text_options_get_property, %r9
	movabsq	$gimp_text_options_set_property, %r10
	movabsq	$gimp_text_options_finalize, %r11
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 424(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.43, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$487, %ebx              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$487, (%rsp)            # imm = 0x1E7
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_unit
	movl	$30, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.44, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_2, %xmm2        # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$29, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.18, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$31, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_text_hint_style_get_type
	movabsq	$.L.str.20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.45, %rdx
	movl	$2, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$32, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_get_default_language
	movabsq	$.L.str.46, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.47, %rdx
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$33, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_text_direction_get_type
	movabsq	$.L.str.48, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$34, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_text_justification_get_type
	movabsq	$.L.str.25, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.49, %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$35, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.28, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.50, %rdx
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$4583, %ecx             # imm = 0x11E7
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$36, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.30, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.51, %rdx
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$4583, %ecx             # imm = 0x11E7
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$37, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.32, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.52, %rdx
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$4583, %ecx             # imm = 0x11E7
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$38, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_text_box_mode_get_type
	movabsq	$.L.str.34, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.53, %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$39, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.16, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.54, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$40, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_view_type_get_type
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$41, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$12, %ecx
	movl	$64, %r8d
	movl	$24, %r9d
	movl	$487, %esi              # imm = 0x1E7
	movq	-24(%rbp), %rdx
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	g_param_spec_int
	movl	$42, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	callq	gimp_rectangle_options_install_properties
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_text_options_class_init, .Lfunc_end13-gimp_text_options_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_finalize,@function
gimp_text_options_finalize:             # @gimp_text_options_finalize
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
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 376(%rax)
.LBB14_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_options_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_text_options_finalize, .Lfunc_end14-gimp_text_options_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_options_set_property,@function
gimp_text_options_set_property:         # @gimp_text_options_set_property
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	addl	$-29, %r8d
	movl	%r8d, %eax
	subl	$13, %r8d
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	ja	.LBB15_15
# BB#17:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 360(%rdi)
	jmp	.LBB15_16
.LBB15_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 352(%rdi)
	jmp	.LBB15_16
.LBB15_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 368(%rdi)
	jmp	.LBB15_16
.LBB15_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 372(%rdi)
	jmp	.LBB15_16
.LBB15_5:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 384(%rdi)
	jmp	.LBB15_16
.LBB15_6:                               # %sw.bb.11
	movq	-40(%rbp), %rax
	movq	376(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 376(%rdi)
	jmp	.LBB15_16
.LBB15_7:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 388(%rdi)
	jmp	.LBB15_16
.LBB15_8:                               # %sw.bb.16
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 392(%rdi)
	jmp	.LBB15_16
.LBB15_9:                               # %sw.bb.18
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 400(%rdi)
	jmp	.LBB15_16
.LBB15_10:                              # %sw.bb.20
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 408(%rdi)
	jmp	.LBB15_16
.LBB15_11:                              # %sw.bb.22
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 416(%rdi)
	jmp	.LBB15_16
.LBB15_12:                              # %sw.bb.24
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 428(%rdi)
	jmp	.LBB15_16
.LBB15_13:                              # %sw.bb.26
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 420(%rdi)
	jmp	.LBB15_16
.LBB15_14:                              # %sw.bb.28
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 424(%rdi)
	jmp	.LBB15_16
.LBB15_15:                              # %sw.default
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_rectangle_options_set_property
.LBB15_16:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_text_options_set_property, .Lfunc_end15-gimp_text_options_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_1
	.quad	.LBB15_2
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_6
	.quad	.LBB15_5
	.quad	.LBB15_7
	.quad	.LBB15_8
	.quad	.LBB15_9
	.quad	.LBB15_10
	.quad	.LBB15_11
	.quad	.LBB15_12
	.quad	.LBB15_13
	.quad	.LBB15_14

	.text
	.align	16, 0x90
	.type	gimp_text_options_get_property,@function
gimp_text_options_get_property:         # @gimp_text_options_get_property
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	addl	$-29, %r8d
	movl	%r8d, %eax
	subl	$13, %r8d
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	ja	.LBB16_15
# BB#17:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	360(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB16_16
.LBB16_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	352(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB16_16
.LBB16_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	368(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB16_16
.LBB16_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	372(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_16
.LBB16_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	376(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB16_16
.LBB16_6:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	384(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_16
.LBB16_7:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	388(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_16
.LBB16_8:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	392(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB16_16
.LBB16_9:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	400(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB16_16
.LBB16_10:                              # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	408(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB16_16
.LBB16_11:                              # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	416(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_16
.LBB16_12:                              # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	428(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB16_16
.LBB16_13:                              # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	420(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_16
.LBB16_14:                              # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	424(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB16_16
.LBB16_15:                              # %sw.default
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_rectangle_options_get_property
.LBB16_16:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_text_options_get_property, .Lfunc_end16-gimp_text_options_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_1
	.quad	.LBB16_2
	.quad	.LBB16_3
	.quad	.LBB16_4
	.quad	.LBB16_5
	.quad	.LBB16_6
	.quad	.LBB16_7
	.quad	.LBB16_8
	.quad	.LBB16_9
	.quad	.LBB16_10
	.quad	.LBB16_11
	.quad	.LBB16_12
	.quad	.LBB16_13
	.quad	.LBB16_14

	.text
	.align	16, 0x90
	.type	gimp_text_options_reset,@function
gimp_text_options_reset:                # @gimp_text_options_reset
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.22, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.12, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.18, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.20, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.46, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.48, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.25, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.28, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.30, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.32, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.34, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	movabsq	$.L.str.16, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_reset_property
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_text_options_reset, .Lfunc_end17-gimp_text_options_reset
	.cfi_endproc

	.type	gimp_text_options_get_type.g_define_type_id__volatile,@object # @gimp_text_options_get_type.g_define_type_id__volatile
	.local	gimp_text_options_get_type.g_define_type_id__volatile
	.comm	gimp_text_options_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTextOptions"
	.size	.L.str, 16

	.type	gimp_text_options_get_type.g_implement_interface_info,@object # @gimp_text_options_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_text_options_get_type.g_implement_interface_info:
	.zero	24
	.size	gimp_text_options_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_text_options_connect_text,@object # @__func__.gimp_text_options_connect_text
.L__func__.gimp_text_options_connect_text:
	.asciz	"gimp_text_options_connect_text"
	.size	.L__func__.gimp_text_options_connect_text, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TEXT_OPTIONS (options)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_TEXT (text)"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"color"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"font"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"notify::font"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"notify::foreground"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"notify::color"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Font"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"font-view-type"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"font-view-size"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"font-size"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"font-size-unit"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%p"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Size:"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"use-editor"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Use editor"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"antialias"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Antialiasing"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"hint-style"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Hinting:"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"foreground"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Text Color"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Color:"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"justify"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-justify"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Justify:"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"indent"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-indent"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"line-spacing"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-line-spacing"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"letter-spacing"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-letter-spacing"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"box-mode"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Box:"
	.size	.L.str.35, 5

	.type	.L__func__.gimp_text_options_editor_new,@object # @__func__.gimp_text_options_editor_new
.L__func__.gimp_text_options_editor_new:
	.asciz	"gimp_text_options_editor_new"
	.size	.L__func__.gimp_text_options_editor_new, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.36, 20

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.37, 36

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"title != NULL"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"GIMP_IS_TEXT_BUFFER (text_buffer)"
	.size	.L.str.39, 34

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"dir-changed"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"notify::base-direction"
	.size	.L.str.41, 23

	.type	gimp_text_options_parent_class,@object # @gimp_text_options_parent_class
	.local	gimp_text_options_parent_class
	.comm	gimp_text_options_parent_class,8,8
	.type	GimpTextOptions_private_offset,@object # @GimpTextOptions_private_offset
	.local	GimpTextOptions_private_offset
	.comm	GimpTextOptions_private_offset,4,4
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"highlight"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Font size unit"
	.size	.L.str.43, 15

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Font size"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Hinting alters the font outline to produce a crisp bitmap at small sizes"
	.size	.L.str.45, 73

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"language"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"The text language may have an effect on the way the text is rendered."
	.size	.L.str.47, 70

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"base-direction"
	.size	.L.str.48, 15

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Text alignment"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Indentation of the first line"
	.size	.L.str.50, 30

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Adjust line spacing"
	.size	.L.str.51, 20

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Adjust letter spacing"
	.size	.L.str.52, 22

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Whether text flows into rectangular shape or moves into a new line when you press Enter"
	.size	.L.str.53, 88

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Use an external editor window for text entry"
	.size	.L.str.54, 45


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
