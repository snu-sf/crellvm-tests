	.text
	.file	"gimpimagemaptool.bc"
	.globl	gimp_image_map_tool_get_type
	.align	16, 0x90
	.type	gimp_image_map_tool_get_type,@function
gimp_image_map_tool_get_type:           # @gimp_image_map_tool_get_type
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
	cmpq	$0, gimp_image_map_tool_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	gimp_color_tool_get_type
	movabsq	$.L.str, %rsi
	movabsq	$gimp_image_map_tool_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_image_map_tool_get_type.type
.LBB0_2:                                # %if.end
	movq	gimp_image_map_tool_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_map_tool_get_type, .Lfunc_end0-gimp_image_map_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_base_init,@function
gimp_image_map_tool_base_init:          # @gimp_image_map_tool_base_init
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
	callq	gimp_image_map_config_get_type
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_list_new
	movq	-8(%rbp), %rdi
	movq	%rax, 336(%rdi)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_image_map_config_compare, %rsi
	movq	%rax, %rdi
	callq	gimp_list_set_sort_func
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_map_tool_base_init, .Lfunc_end1-gimp_image_map_tool_base_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_class_init,@function
gimp_image_map_tool_class_init:         # @gimp_image_map_tool_class_init
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp9:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent
	movabsq	$gimp_image_map_tool_real_settings_export, %rsi
	movabsq	$gimp_image_map_tool_real_settings_import, %rdi
	movabsq	$gimp_image_map_tool_pick_color, %rcx
	movabsq	$gimp_image_map_tool_options_notify, %rdx
	movabsq	$gimp_image_map_tool_key_press, %r8
	movabsq	$gimp_image_map_tool_control, %r9
	movabsq	$gimp_image_map_tool_initialize, %r10
	movabsq	$gimp_image_map_tool_finalize, %r11
	movabsq	$gimp_image_map_tool_constructed, %rbx
	movq	%rax, parent_class
	movq	-24(%rbp), %rax
	movq	%rbx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%r10, 176(%rax)
	movq	-32(%rbp), %rax
	movq	%r9, 184(%rax)
	movq	-32(%rbp), %rax
	movq	%r8, 216(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 272(%rax)
	movq	-40(%rbp), %rax
	movq	%rcx, 288(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 312(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 328(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 352(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 376(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 384(%rax)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_map_tool_class_init, .Lfunc_end2-gimp_image_map_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_init,@function
gimp_image_map_tool_init:               # @gimp_image_map_tool_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
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
	callq	gimp_tool_control_set_scroll_lock
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_preserve
	movl	$841, %esi              # imm = 0x349
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_dirty_mask
	movq	-8(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 312(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 376(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 384(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_map_tool_init, .Lfunc_end3-gimp_image_map_tool_init
	.cfi_endproc

	.globl	gimp_image_map_tool_create_map
	.align	16, 0x90
	.type	gimp_image_map_tool_create_map,@function
gimp_image_map_tool_create_map:         # @gimp_image_map_tool_create_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_map_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_tool_create_map, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_26
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gimp_image_map_clear
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_14:                               # %if.end.18
	jmp	.LBB4_15
.LBB4_15:                               # %do.body.19
	movq	-8(%rbp), %rax
	cmpq	$0, 304(%rax)
	jne	.LBB4_17
# BB#16:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB4_18
.LBB4_17:                               # %if.then.22
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.23
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$624, %edx              # imm = 0x270
	movabsq	$.L__func__.gimp_image_map_tool_create_map, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB4_19:                               # %if.end.24
	jmp	.LBB4_20
.LBB4_20:                               # %do.end.25
	movq	-16(%rbp), %rdi
	callq	gimp_use_gegl
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB4_22
# BB#21:                                # %lor.rhs
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB4_22:                               # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdx
	movq	296(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	64(%rax), %rsi
	cmpl	$0, -20(%rbp)
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	je	.LBB4_24
# BB#23:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_25
.LBB4_24:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_25
.LBB4_25:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	336(%rdx), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_map_new
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_image_map_tool_flush, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 344(%rdx)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB4_26:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_map_tool_create_map, .Lfunc_end4-gimp_image_map_tool_create_map
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_flush,@function
gimp_image_map_tool_flush:              # @gimp_image_map_tool_flush
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, %rdi
	callq	gimp_projection_flush_now
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_flush_now
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_map_tool_flush, .Lfunc_end5-gimp_image_map_tool_flush
	.cfi_endproc

	.globl	gimp_image_map_tool_preview
	.align	16, 0x90
	.type	gimp_image_map_tool_preview,@function
gimp_image_map_tool_preview:            # @gimp_image_map_tool_preview
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_map_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_tool_preview, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_15
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_map_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB6_15
# BB#13:                                # %land.lhs.true.19
	movq	-24(%rbp), %rax
	cmpl	$0, 352(%rax)
	je	.LBB6_15
# BB#14:                                # %if.then.21
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_tool_map
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pop_preserve
.LBB6_15:                               # %if.end.23
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_map_tool_preview, .Lfunc_end6-gimp_image_map_tool_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_map,@function
gimp_image_map_tool_map:                # @gimp_image_map_tool_map
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	352(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_untransform_viewport
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	-48(%rbp), %rax
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%r9d, -112(%rbp)        # 4-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movl	%edx, -120(%rbp)        # 4-byte Spill
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	%r8d, -128(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-48(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	movq	%rdi, %r10
	addq	$4, %r10
	movq	%rdi, %r11
	addq	$8, %r11
	movq	%rdi, %rbx
	addq	$12, %rbx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	-116(%rbp), %esi        # 4-byte Reload
	movl	-120(%rbp), %edx        # 4-byte Reload
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	-128(%rbp), %r8d        # 4-byte Reload
	movl	-112(%rbp), %r9d        # 4-byte Reload
	movl	-132(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-144(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	callq	gimp_rectangle_intersect
	leaq	-88(%rbp), %rsi
	movl	-68(%rbp), %ecx
	movl	-88(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -88(%rbp)
	movl	-72(%rbp), %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-32(%rbp), %r10
	movq	344(%r10), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_image_map_apply
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_map_tool_map, .Lfunc_end7-gimp_image_map_tool_map
	.cfi_endproc

	.globl	gimp_image_map_tool_edit_as
	.align	16, 0x90
	.type	gimp_image_map_tool_edit_as,@function
gimp_image_map_tool_edit_as:            # @gimp_image_map_tool_edit_as
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_map_tool_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_tool_edit_as, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_30
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_tool_edit_as, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_30
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_config_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB8_20
# BB#19:                                # %if.then.26
	movl	$0, -100(%rbp)
	jmp	.LBB8_25
.LBB8_20:                               # %if.else.27
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_23
# BB#21:                                # %land.lhs.true.30
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB8_23
# BB#22:                                # %if.then.34
	movl	$1, -100(%rbp)
	jmp	.LBB8_24
.LBB8_23:                               # %if.else.35
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB8_24:                               # %if.end.37
	jmp	.LBB8_25
.LBB8_25:                               # %if.end.38
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB8_27
# BB#26:                                # %if.then.41
	jmp	.LBB8_28
.LBB8_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_tool_edit_as, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_30
.LBB8_28:                               # %if.end.43
	jmp	.LBB8_29
.LBB8_29:                               # %do.end.44
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	528(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_context_set_tool
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	tool_manager_initialize_active
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	tool_manager_get_active
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-56(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 320(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_reset
.LBB8_30:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_map_tool_edit_as, .Lfunc_end8-gimp_image_map_tool_edit_as
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_reset,@function
gimp_image_map_tool_reset:              # @gimp_image_map_tool_reset
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, 368(%rdi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	368(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	jmp	.LBB9_8
.LBB9_2:                                # %if.else
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB9_7
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB9_5
# BB#4:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %if.else.13
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
.LBB9_6:                                # %if.end
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.17
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_map_tool_reset, .Lfunc_end9-gimp_image_map_tool_reset
	.cfi_endproc

	.globl	gimp_image_map_tool_dialog_get_vbox
	.align	16, 0x90
	.type	gimp_image_map_tool_dialog_get_vbox,@function
gimp_image_map_tool_dialog_get_vbox:    # @gimp_image_map_tool_dialog_get_vbox
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_map_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_tool_dialog_get_vbox, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_map_tool_dialog_get_vbox, .Lfunc_end10-gimp_image_map_tool_dialog_get_vbox
	.cfi_endproc

	.globl	gimp_image_map_tool_dialog_get_label_group
	.align	16, 0x90
	.type	gimp_image_map_tool_dialog_get_label_group,@function
gimp_image_map_tool_dialog_get_label_group: # @gimp_image_map_tool_dialog_get_label_group
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_map_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_tool_dialog_get_label_group, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_map_tool_dialog_get_label_group, .Lfunc_end11-gimp_image_map_tool_dialog_get_label_group
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_constructed,@function
gimp_image_map_tool_constructed:        # @gimp_image_map_tool_constructed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB12_4
# BB#3:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	addq	$312, %rcx              # imm = 0x138
	movq	%rcx, %rsi
	callq	*%rax
	movq	-16(%rbp), %rcx
	movq	%rax, 304(%rcx)
.LBB12_4:                               # %if.end.9
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_image_map_tool_constructed, .Lfunc_end12-gimp_image_map_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_finalize,@function
gimp_image_map_tool_finalize:           # @gimp_image_map_tool_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 312(%rax)
.LBB13_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB13_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 320(%rax)
.LBB13_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB13_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_destroy
.LBB13_8:                               # %if.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_image_map_tool_finalize, .Lfunc_end13-gimp_image_map_tool_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_image_map_tool_initialize,@function
gimp_image_map_tool_initialize:         # @gimp_image_map_tool_initialize
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
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp49:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -12(%rbp)
	jmp	.LBB14_27
.LBB14_2:                               # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB14_4
# BB#3:                                 # %if.then.15
	movq	-40(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.11, %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -12(%rbp)
	jmp	.LBB14_27
.LBB14_4:                               # %if.end.18
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-48(%rbp), %rax
	cmpq	$0, 360(%rax)
	jne	.LBB14_13
# BB#5:                                 # %if.then.21
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, 352(%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 352(%rax)
	je	.LBB14_7
# BB#6:                                 # %if.then.25
	movabsq	$.L.str.12, %rdx
	movl	$1, %ecx
	movabsq	$.L.str.13, %r8
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.14, %rax
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %r11
	movq	304(%r11), %r11
	movl	%esi, -192(%rbp)        # 4-byte Spill
	movq	%r11, %rsi
	movq	%rax, (%rsp)
	movl	$-5, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -200(%rbp)        # 8-byte Spill
	callq	gimp_overlay_dialog_new
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rax, 360(%rdx)
	movq	-96(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-80(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_overlay_box_add_child
	movq	-80(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_overlay_box_set_child_angle
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rax, 368(%rdx)
	movq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	jmp	.LBB14_8
.LBB14_7:                               # %if.else
	movabsq	$.L.str.12, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.13, %r9
	movl	$4294967290, %eax       # imm = 0xFFFFFFFA
	movabsq	$.L.str.14, %rdx
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %r11
	movq	-88(%rbp), %rbx
	movq	304(%rbx), %rbx
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	$-6, (%rsp)
	movq	-256(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movl	$-5, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%r10, -272(%rbp)        # 8-byte Spill
	callq	gimp_tool_dialog_new
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rax, 360(%rcx)
	movq	-96(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %r9
	movq	%rax, 368(%r9)
	movq	-104(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-96(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
.LBB14_8:                               # %if.end.52
	movl	$80, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_image_map_tool_response, %rcx
	xorl	%r8d, %r8d
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-88(%rbp), %rcx
	cmpq	$0, 312(%rcx)
	movq	%rax, -320(%rbp)        # 8-byte Spill
	je	.LBB14_10
# BB#9:                                 # %if.then.56
	movq	-48(%rbp), %rdi
	callq	gimp_image_map_tool_add_settings_gui
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB14_10:                              # %if.end.58
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.16, %rsi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_end
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gimp_image_map_tool_dialog
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB14_12
# BB#11:                                # %if.then.66
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_image_map_tool_gegl_notify, %rax
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB14_12:                              # %if.end.68
	jmp	.LBB14_24
.LBB14_13:                              # %if.else.69
	movq	-48(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_overlay_dialog_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB14_15
# BB#14:                                # %if.then.73
	movl	$0, -132(%rbp)
	jmp	.LBB14_20
.LBB14_15:                              # %if.else.74
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_18
# BB#16:                                # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB14_18
# BB#17:                                # %if.then.78
	movl	$1, -132(%rbp)
	jmp	.LBB14_19
.LBB14_18:                              # %if.else.79
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB14_19:                              # %if.end.81
	jmp	.LBB14_20
.LBB14_20:                              # %if.end.82
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB14_23
# BB#21:                                # %land.lhs.true.84
	movq	-48(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_get_parent
	cmpq	$0, %rax
	jne	.LBB14_23
# BB#22:                                # %if.then.88
	movq	-80(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rsi
	movq	360(%rsi), %rsi
	movq	%rax, %rdi
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	movsd	-376(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_overlay_box_add_child
	movq	-48(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB14_23:                              # %if.end.94
	jmp	.LBB14_24
.LBB14_24:                              # %if.end.95
	movq	-48(%rbp), %rax
	cmpl	$0, 352(%rax)
	jne	.LBB14_26
# BB#25:                                # %if.then.98
	movq	-48(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_viewable_dialog_set_viewable
	movq	-48(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_tool_dialog_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_tool_dialog_set_shell
.LBB14_26:                              # %if.end.110
	movq	-48(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 296(%rdi)
	movq	-48(%rbp), %rdi
	callq	gimp_image_map_tool_create_map
	movl	$1, -12(%rbp)
.LBB14_27:                              # %return
	movl	-12(%rbp), %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_image_map_tool_initialize, .Lfunc_end14-gimp_image_map_tool_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_control,@function
gimp_image_map_tool_control:            # @gimp_image_map_tool_control
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	jb	.LBB15_1
	jmp	.LBB15_6
.LBB15_6:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB15_2
	jmp	.LBB15_5
.LBB15_1:                               # %sw.bb
	jmp	.LBB15_5
.LBB15_2:                               # %sw.bb.2
	movq	-32(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_hide
	movq	-32(%rbp), %rdi
	cmpq	$0, 344(%rdi)
	je	.LBB15_4
# BB#3:                                 # %if.then
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gimp_image_map_abort
	movq	-32(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pop_preserve
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, %rdi
	callq	gimp_projection_flush_now
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_flush_now
.LBB15_4:                               # %if.end
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.LBB15_5:                               # %sw.epilog
	movq	parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_image_map_tool_control, .Lfunc_end15-gimp_image_map_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_key_press,@function
gimp_image_map_tool_key_press:          # @gimp_image_map_tool_key_press
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB16_7
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB16_7
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65076, %edx            # imm = 0xFE34
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB16_3
	jmp	.LBB16_9
.LBB16_9:                               # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65288, %eax            # imm = 0xFF08
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB16_4
	jmp	.LBB16_10
.LBB16_10:                              # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB16_3
	jmp	.LBB16_11
.LBB16_11:                              # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB16_5
	jmp	.LBB16_12
.LBB16_12:                              # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jne	.LBB16_6
	jmp	.LBB16_3
.LBB16_3:                               # %sw.bb
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_image_map_tool_response
	movl	$1, -4(%rbp)
	jmp	.LBB16_8
.LBB16_4:                               # %sw.bb.4
	movl	$1, %esi
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_image_map_tool_response
	movl	$1, -4(%rbp)
	jmp	.LBB16_8
.LBB16_5:                               # %sw.bb.6
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_image_map_tool_response
	movl	$1, -4(%rbp)
	jmp	.LBB16_8
.LBB16_6:                               # %sw.epilog
	jmp	.LBB16_7
.LBB16_7:                               # %if.end
	movl	$0, -4(%rbp)
.LBB16_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_image_map_tool_key_press, .Lfunc_end16-gimp_image_map_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_options_notify,@function
gimp_image_map_tool_options_notify:     # @gimp_image_map_tool_options_notify
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_6
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB17_6
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_map_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 352(%rax)
	je	.LBB17_4
# BB#3:                                 # %if.then.7
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-32(%rbp), %rdi
	callq	gimp_image_map_tool_map
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pop_preserve
	jmp	.LBB17_5
.LBB17_4:                               # %if.else
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gimp_image_map_clear
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pop_preserve
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_map_tool_flush
.LBB17_5:                               # %if.end
	jmp	.LBB17_6
.LBB17_6:                               # %if.end.13
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_image_map_tool_options_notify, .Lfunc_end17-gimp_image_map_tool_options_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_pick_color,@function
gimp_image_map_tool_pick_color:         # @gimp_image_map_tool_pick_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-48(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gimp_drawable_type
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movq	344(%rcx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %r10d
	subl	-52(%rbp), %r10d
	movl	-16(%rbp), %r11d
	subl	-56(%rbp), %r11d
	movq	-8(%rbp), %rcx
	movq	264(%rcx), %rcx
	movl	372(%rcx), %ecx
	movq	-8(%rbp), %rdx
	movq	264(%rdx), %rdx
	movsd	376(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	%rax, %rdi
	movl	%r10d, %esi
	movl	%r11d, %edx
	callq	gimp_pickable_pick_color
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_image_map_tool_pick_color, .Lfunc_end18-gimp_image_map_tool_pick_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_dialog_destroy,@function
gimp_image_map_tool_dialog_destroy:     # @gimp_image_map_tool_dialog_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	360(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	callq	gtk_dialog_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB19_7
.LBB19_2:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB19_5
# BB#4:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB19_6
.LBB19_5:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB19_6:                               # %if.end
	jmp	.LBB19_7
.LBB19_7:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB19_9
# BB#8:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_get_parent
	cmpq	$0, %rax
	je	.LBB19_10
.LBB19_9:                               # %if.then.11
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.13
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB19_11:                              # %if.end.15
	movq	-8(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 376(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 384(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_image_map_tool_dialog_destroy, .Lfunc_end19-gimp_image_map_tool_dialog_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_response,@function
gimp_image_map_tool_response:           # @gimp_image_map_tool_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$-5, %r8d
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	je	.LBB20_2
	jmp	.LBB20_12
.LBB20_12:                              # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB20_10
	jmp	.LBB20_1
.LBB20_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	gimp_image_map_tool_reset
	movq	-24(%rbp), %rdi
	callq	gimp_image_map_tool_preview
	jmp	.LBB20_11
.LBB20_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_hide
	movq	-24(%rbp), %rdi
	cmpq	$0, 344(%rdi)
	je	.LBB20_9
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_map_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-40(%rbp), %rax
	cmpl	$0, 352(%rax)
	jne	.LBB20_5
# BB#4:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	callq	gimp_image_map_tool_map
.LBB20_5:                               # %if.end
	movq	-24(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gimp_image_map_commit
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pop_preserve
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	movq	-24(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB20_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB20_8
# BB#7:                                 # %if.then.17
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	572(%rax), %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	gimp_settings_box_add_current
.LBB20_8:                               # %if.end.24
	jmp	.LBB20_9
.LBB20_9:                               # %if.end.25
	movq	-32(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 64(%rax)
	jmp	.LBB20_11
.LBB20_10:                              # %sw.default
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	callq	gimp_tool_control
.LBB20_11:                              # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_image_map_tool_response, .Lfunc_end20-gimp_image_map_tool_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_dialog,@function
gimp_image_map_tool_dialog:             # @gimp_image_map_tool_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	360(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_image_map_tool_dialog, .Lfunc_end21-gimp_image_map_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_gegl_notify,@function
gimp_image_map_tool_gegl_notify:        # @gimp_image_map_tool_gegl_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 344(%rdx)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-24(%rbp), %rdi
	callq	gimp_image_map_tool_create_map
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pop_preserve
	movq	-24(%rbp), %rdi
	callq	gimp_image_map_tool_preview
.LBB22_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_image_map_tool_gegl_notify, .Lfunc_end22-gimp_image_map_tool_gegl_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_tool_dialog_hide,@function
gimp_image_map_tool_dialog_hide:        # @gimp_image_map_tool_dialog_hide
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
	movq	-8(%rbp), %rdi
	movq	360(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	callq	gtk_dialog_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_7
.LBB23_2:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_5
# BB#4:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB23_6
.LBB23_5:                               # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_6:                               # %if.end
	jmp	.LBB23_7
.LBB23_7:                               # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_9
# BB#8:                                 # %if.then.9
	movq	-16(%rbp), %rdi
	callq	gimp_dialog_factory_hide_dialog
	jmp	.LBB23_19
.LBB23_9:                               # %if.else.10
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_overlay_dialog_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB23_11
# BB#10:                                # %if.then.19
	movl	$0, -60(%rbp)
	jmp	.LBB23_16
.LBB23_11:                              # %if.else.20
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_14
# BB#12:                                # %land.lhs.true.23
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB23_14
# BB#13:                                # %if.then.27
	movl	$1, -60(%rbp)
	jmp	.LBB23_15
.LBB23_14:                              # %if.else.28
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB23_15:                              # %if.end.30
	jmp	.LBB23_16
.LBB23_16:                              # %if.end.31
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB23_18
# BB#17:                                # %if.then.34
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_parent
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
.LBB23_18:                              # %if.end.39
	jmp	.LBB23_19
.LBB23_19:                              # %if.end.40
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_image_map_tool_dialog_hide, .Lfunc_end23-gimp_image_map_tool_dialog_hide
	.cfi_endproc

	.type	gimp_image_map_tool_get_type.type,@object # @gimp_image_map_tool_get_type.type
	.local	gimp_image_map_tool_get_type.type
	.comm	gimp_image_map_tool_get_type.type,8,8
	.type	gimp_image_map_tool_get_type.info,@object # @gimp_image_map_tool_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_image_map_tool_get_type.info:
	.short	392                     # 0x188
	.zero	6
	.quad	gimp_image_map_tool_base_init
	.quad	0
	.quad	gimp_image_map_tool_class_init
	.quad	0
	.quad	0
	.short	392                     # 0x188
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_image_map_tool_init
	.quad	0
	.size	gimp_image_map_tool_get_type.info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImageMapTool"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_image_map_tool_create_map,@object # @__func__.gimp_image_map_tool_create_map
.L__func__.gimp_image_map_tool_create_map:
	.asciz	"gimp_image_map_tool_create_map"
	.size	.L__func__.gimp_image_map_tool_create_map, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE_MAP_TOOL (tool)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimpimagemaptool.c"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"tool->operation || tool->apply_func"
	.size	.L.str.4, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"flush"
	.size	.L.str.5, 6

	.type	.L__func__.gimp_image_map_tool_preview,@object # @__func__.gimp_image_map_tool_preview
.L__func__.gimp_image_map_tool_preview:
	.asciz	"gimp_image_map_tool_preview"
	.size	.L__func__.gimp_image_map_tool_preview, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_IMAGE_MAP_TOOL (image_map_tool)"
	.size	.L.str.6, 40

	.type	.L__func__.gimp_image_map_tool_edit_as,@object # @__func__.gimp_image_map_tool_edit_as
.L__func__.gimp_image_map_tool_edit_as:
	.asciz	"gimp_image_map_tool_edit_as"
	.size	.L__func__.gimp_image_map_tool_edit_as, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_IMAGE_MAP_TOOL (im_tool)"
	.size	.L.str.7, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"new_tool_id"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_CONFIG (config)"
	.size	.L.str.9, 24

	.type	.L__func__.gimp_image_map_tool_dialog_get_vbox,@object # @__func__.gimp_image_map_tool_dialog_get_vbox
.L__func__.gimp_image_map_tool_dialog_get_vbox:
	.asciz	"gimp_image_map_tool_dialog_get_vbox"
	.size	.L__func__.gimp_image_map_tool_dialog_get_vbox, 36

	.type	.L__func__.gimp_image_map_tool_dialog_get_label_group,@object # @__func__.gimp_image_map_tool_dialog_get_label_group
.L__func__.gimp_image_map_tool_dialog_get_label_group:
	.asciz	"gimp_image_map_tool_dialog_get_label_group"
	.size	.L__func__.gimp_image_map_tool_dialog_get_label_group, 43

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Cannot modify the pixels of layer groups."
	.size	.L.str.10, 42

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The active layer's pixels are locked."
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-reset"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-cancel"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-ok"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"response"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"preview"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Preview"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"notify::use-gegl"
	.size	.L.str.18, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
