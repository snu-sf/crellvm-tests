	.text
	.file	"gimperrorconsole.bc"
	.globl	gimp_error_console_get_type
	.align	16, 0x90
	.type	gimp_error_console_get_type,@function
gimp_error_console_get_type:            # @gimp_error_console_get_type
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
	movq	gimp_error_console_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_error_console_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_error_console_class_intern_init, %rdi
	movl	$192, %r8d
	movabsq	$gimp_error_console_init, %rcx
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
	movabsq	$gimp_error_console_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_error_console_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_error_console_get_type, .Lfunc_end0-gimp_error_console_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_console_class_intern_init,@function
gimp_error_console_class_intern_init:   # @gimp_error_console_class_intern_init
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
	movq	%rax, gimp_error_console_parent_class
	cmpl	$0, GimpErrorConsole_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpErrorConsole_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_error_console_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_error_console_class_intern_init, .Lfunc_end1-gimp_error_console_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4608083138725491507     # double 1.2
	.text
	.align	16, 0x90
	.type	gimp_error_console_init,@function
gimp_error_console_init:                # @gimp_error_console_init
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_text_buffer_new
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.22, %rdx
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$.L.str.23, %rcx
	movl	$700, %r8d              # imm = 0x2BC
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-8(%rbp), %rdi
	movq	%rax, 144(%rdi)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$1, %al
	callq	gtk_text_buffer_create_tag
	movabsq	$.L.str.16, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movq	%rax, %rdi
	movl	%r8d, %esi
	movl	%r8d, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_text_view_new_with_buffer
	movq	-8(%rbp), %rsi
	movq	%rax, 152(%rsi)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_editable
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_wrap_mode
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_error_console_button_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	$0, 176(%rcx)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_error_console_init, .Lfunc_end2-gimp_error_console_init
	.cfi_endproc

	.globl	gimp_error_console_new
	.align	16, 0x90
	.type	gimp_error_console_new,@function
gimp_error_console_new:                 # @gimp_error_console_new
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
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_error_console_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_error_console_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_25
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	callq	gimp_error_console_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	movabsq	$.L.str.7, %r9
	movabsq	$.L.str.8, %rdx
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-24(%rbp), %r11
	movq	%rax, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movl	$2, 80(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB3_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_error_console_new, .Lfunc_end3-gimp_error_console_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_error_console_add
	.align	16, 0x90
	.type	gimp_error_console_add,@function
gimp_error_console_add:                 # @gimp_error_console_add
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_error_console_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -164(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -164(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_error_console_add, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_error_console_add, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.19
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_error_console_add, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_21:                               # %if.end.21
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.22
	callq	gimp_message_severity_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-40(%rbp), %r8
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	leaq	-120(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gtk_text_buffer_get_end_iter
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rdi
	movl	-12(%rbp), %eax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_get_message_stock_id
	movl	$4, %edx
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_render_icon
	leaq	-120(%rbp), %rsi
	movq	%rax, -136(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-136(%rbp), %rdx
	callq	gtk_text_buffer_insert_pixbuf
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	leaq	-120(%rbp), %rsi
	movabsq	$.L.str.12, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_text_buffer_insert
	movabsq	$.L.str.13, %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	leaq	-120(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movabsq	$.L.str.14, %r8
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-144(%rbp), %rdx
	movb	$0, %al
	callq	gtk_text_buffer_insert_with_tags_by_name
	movq	-144(%rbp), %rdi
	callq	g_free
	leaq	-120(%rbp), %rsi
	movabsq	$.L.str.15, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	callq	gtk_text_buffer_insert
	leaq	-120(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movabsq	$.L.str.16, %r8
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	gtk_text_buffer_insert_with_tags_by_name
	leaq	-120(%rbp), %rsi
	movabsq	$.L.str.17, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	callq	gtk_text_buffer_insert
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-120(%rbp), %rdx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	callq	gtk_text_buffer_create_mark
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movl	$1, %edx
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movsd	-208(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gtk_text_view_scroll_to_mark
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-128(%rbp), %rsi
	callq	gtk_text_buffer_delete_mark
.LBB4_23:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_error_console_add, .Lfunc_end4-gimp_error_console_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_console_class_init,@function
gimp_error_console_class_init:          # @gimp_error_console_class_init
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
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_error_console_unmap, %rsi
	movabsq	$gimp_error_console_dispose, %rdi
	movabsq	$gimp_error_console_constructed, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 216(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_error_console_class_init, .Lfunc_end5-gimp_error_console_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_console_constructed,@function
gimp_error_console_constructed:         # @gimp_error_console_constructed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_error_console_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_error_console_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_error_console_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 168(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_error_console_constructed, .Lfunc_end6-gimp_error_console_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_console_dispose,@function
gimp_error_console_dispose:             # @gimp_error_console_dispose
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
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_error_console_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_widget_destroy
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movl	$0, 80(%rcx)
	movq	gimp_error_console_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_error_console_dispose, .Lfunc_end7-gimp_error_console_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_console_unmap,@function
gimp_error_console_unmap:               # @gimp_error_console_unmap
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_error_console_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_widget_destroy
.LBB8_2:                                # %if.end
	movq	gimp_error_console_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_error_console_unmap, .Lfunc_end8-gimp_error_console_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_console_button_press,@function
gimp_error_console_button_press:        # @gimp_error_console_button_press
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	gimp_editor_popup_menu
	movl	%eax, -4(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB9_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_error_console_button_press, .Lfunc_end9-gimp_error_console_button_press
	.cfi_endproc

	.type	gimp_error_console_get_type.g_define_type_id__volatile,@object # @gimp_error_console_get_type.g_define_type_id__volatile
	.local	gimp_error_console_get_type.g_define_type_id__volatile
	.comm	gimp_error_console_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpErrorConsole"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_error_console_new,@object # @__func__.gimp_error_console_new
.L__func__.gimp_error_console_new:
	.asciz	"gimp_error_console_new"
	.size	.L__func__.gimp_error_console_new, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"menu-factory"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"menu-identifier"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"<ErrorConsole>"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ui-path"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/error-console-popup"
	.size	.L.str.8, 21

	.type	.L__func__.gimp_error_console_add,@object # @__func__.gimp_error_console_add
.L__func__.gimp_error_console_add:
	.asciz	"gimp_error_console_add"
	.size	.L__func__.gimp_error_console_add, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_ERROR_CONSOLE (console)"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"domain != NULL"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"message != NULL"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"  "
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s %s"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"title"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\n"
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"message"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\n\n"
	.size	.L.str.17, 3

	.type	gimp_error_console_parent_class,@object # @gimp_error_console_parent_class
	.local	gimp_error_console_parent_class
	.comm	gimp_error_console_parent_class,8,8
	.type	GimpErrorConsole_private_offset,@object # @GimpErrorConsole_private_offset
	.local	GimpErrorConsole_private_offset
	.comm	GimpErrorConsole_private_offset,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"error-console"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"error-console-clear"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"error-console-save-all"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"error-console-save-selection"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"scale"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"weight"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"button-press-event"
	.size	.L.str.24, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
