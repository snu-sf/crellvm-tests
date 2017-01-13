	.text
	.file	"tool_manager.bc"
	.globl	tool_manager_init
	.align	16, 0x90
	.type	tool_manager_init,@function
tool_manager_init:                      # @tool_manager_init
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tool_manager_set
	movabsq	$.L.str.2, %rsi
	movabsq	$tool_manager_image_clean_dirty, %rax
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_container_add_handler
	movabsq	$.L.str.3, %rsi
	movabsq	$tool_manager_image_clean_dirty, %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	gimp_container_add_handler
	movq	-16(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -24(%rbp)
	callq	gimp_paint_options_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.7, %rsi
	movabsq	$tool_manager_tool_changed, %rcx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.8, %rsi
	movabsq	$tool_manager_preset_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB0_13:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tool_manager_init, .Lfunc_end0-tool_manager_init
	.cfi_endproc

	.align	16, 0x90
	.type	tool_manager_set,@function
tool_manager_set:                       # @tool_manager_set
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
	movq	%rsi, -16(%rbp)
	cmpl	$0, tool_manager_quark
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rdi
	callq	g_quark_from_static_string
	movl	%eax, tool_manager_quark
.LBB1_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	tool_manager_quark, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_qdata
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tool_manager_set, .Lfunc_end1-tool_manager_set
	.cfi_endproc

	.align	16, 0x90
	.type	tool_manager_image_clean_dirty,@function
tool_manager_image_clean_dirty:         # @tool_manager_image_clean_dirty
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_6
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_preserve
	cmpl	$0, %eax
	jne	.LBB2_6
# BB#2:                                 # %land.lhs.true.2
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_dirty_mask
	andl	-12(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB2_6
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_tool_has_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.8
	movl	$2, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rdx
	callq	tool_manager_control_active
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tool_manager_image_clean_dirty, .Lfunc_end2-tool_manager_image_clean_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	tool_manager_tool_changed,@function
tool_manager_tool_changed:              # @tool_manager_tool_changed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_13
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB3_6
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_stop_emission_by_name
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	cmpq	40(%rsi), %rax
	je	.LBB3_5
# BB#4:                                 # %if.then.3
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$tool_manager_tool_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	(%r8), %r8
	movq	32(%r8), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_context_set_tool
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$tool_manager_tool_changed, %rdi
	movq	-8(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB3_5:                                # %if.end.7
	jmp	.LBB3_13
.LBB3_6:                                # %if.end.8
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_8
# BB#7:                                 # %if.then.13
	movabsq	$.L.str.12, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	jmp	.LBB3_9
.LBB3_8:                                # %if.else
	movabsq	$.L.str.13, %rdi
	movabsq	$.L__func__.tool_manager_tool_changed, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB3_13
.LBB3_9:                                # %if.end.16
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_12
# BB#10:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_12
# BB#11:                                # %if.then.22
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdx
	callq	tool_manager_disconnect_options
.LBB3_12:                               # %if.end.25
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	tool_manager_connect_options
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-32(%rbp), %rsi
	callq	tool_manager_select_tool
	movq	-32(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_object_unref
.LBB3_13:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tool_manager_tool_changed, .Lfunc_end3-tool_manager_tool_changed
	.cfi_endproc

	.align	16, 0x90
	.type	tool_manager_preset_changed,@function
tool_manager_preset_changed:            # @tool_manager_preset_changed
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -44(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB4_3
.LBB4_2:                                # %if.then
	jmp	.LBB4_28
.LBB4_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_tool
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_context_get_tool
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB4_5
# BB#4:                                 # %if.then.5
	movl	$1, -44(%rbp)
.LBB4_5:                                # %if.end.6
	cmpl	$0, -44(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %if.then.8
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	tool_manager_disconnect_options
.LBB4_7:                                # %if.end.9
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movq	-32(%rbp), %rsi
	movq	120(%rsi), %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	cmpl	$0, -44(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.24
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_context_set_tool
	jmp	.LBB4_10
.LBB4_9:                                # %if.else
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	tool_manager_connect_options
.LBB4_10:                               # %if.end.25
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_tool_preset_get_prop_mask
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_context_copy_properties
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_12
# BB#11:                                # %if.then.33
	movl	$0, -68(%rbp)
	jmp	.LBB4_17
.LBB4_12:                               # %if.else.34
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_15
# BB#13:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_15
# BB#14:                                # %if.then.38
	movl	$1, -68(%rbp)
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.39
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_16:                               # %if.end.41
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.42
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_28
# BB#18:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$0, 272(%rax)
	je	.LBB4_21
# BB#19:                                # %land.lhs.true.53
	movq	-16(%rbp), %rax
	cmpl	$0, 52(%rax)
	je	.LBB4_21
# BB#20:                                # %if.then.55
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_options_copy_brush_props
.LBB4_21:                               # %if.end.60
	movq	-80(%rbp), %rax
	cmpl	$0, 276(%rax)
	je	.LBB4_24
# BB#22:                                # %land.lhs.true.62
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_24
# BB#23:                                # %if.then.64
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_options_copy_dynamics_props
.LBB4_24:                               # %if.end.69
	movq	-80(%rbp), %rax
	cmpl	$0, 288(%rax)
	je	.LBB4_27
# BB#25:                                # %land.lhs.true.71
	movq	-16(%rbp), %rax
	cmpl	$0, 60(%rax)
	je	.LBB4_27
# BB#26:                                # %if.then.73
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_options_copy_gradient_props
.LBB4_27:                               # %if.end.78
	jmp	.LBB4_28
.LBB4_28:                               # %if.end.79
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tool_manager_preset_changed, .Lfunc_end4-tool_manager_preset_changed
	.cfi_endproc

	.globl	tool_manager_exit
	.align	16, 0x90
	.type	tool_manager_exit,@function
tool_manager_exit:                      # @tool_manager_exit
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	tool_manager_set
	movq	-8(%rbp), %rdi
	callq	gimp_get_user_context
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$tool_manager_tool_changed, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r9
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$tool_manager_preset_changed, %rdi
	movq	-24(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	-16(%rbp), %r8
	movl	24(%r8), %esi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_container_remove_handler
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	-16(%rbp), %r8
	movl	28(%r8), %esi
	callq	gimp_container_remove_handler
	movq	-16(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB5_14
# BB#13:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB5_14:                               # %if.end.19
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_16
# BB#15:                                # %if.then.21
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB5_16:                               # %if.end.23
	jmp	.LBB5_17
.LBB5_17:                               # %do.body.24
	movl	$32, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB5_18:                               # %do.end.25
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tool_manager_exit, .Lfunc_end5-tool_manager_exit
	.cfi_endproc

	.align	16, 0x90
	.type	tool_manager_get,@function
tool_manager_get:                       # @tool_manager_get
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, tool_manager_quark
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rdi
	callq	g_quark_from_static_string
	movl	%eax, tool_manager_quark
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	tool_manager_quark, %esi
	movq	%rax, %rdi
	callq	g_object_get_qdata
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tool_manager_get, .Lfunc_end6-tool_manager_get
	.cfi_endproc

	.globl	tool_manager_get_active
	.align	16, 0x90
	.type	tool_manager_get_active,@function
tool_manager_get_active:                # @tool_manager_get_active
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
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_get_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tool_manager_get_active, .Lfunc_end7-tool_manager_get_active
	.cfi_endproc

	.globl	tool_manager_select_tool
	.align	16, 0x90
	.type	tool_manager_select_tool,@function
tool_manager_select_tool:               # @tool_manager_select_tool
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_select_tool, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_29
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_select_tool, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_29
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_28
# BB#25:                                # %land.lhs.true.41
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB8_27
# BB#26:                                # %land.lhs.true.43
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_28
.LBB8_27:                               # %if.then.47
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_tool_has_image
	movl	$2, %esi
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rdx
	callq	tool_manager_control_active
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rdi
	callq	tool_manager_focus_display_active
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_28:                               # %if.end.54
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB8_29:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tool_manager_select_tool, .Lfunc_end8-tool_manager_select_tool
	.cfi_endproc

	.globl	tool_manager_control_active
	.align	16, 0x90
	.type	tool_manager_control_active,@function
tool_manager_control_active:            # @tool_manager_control_active
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_control_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_22
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_22
# BB#13:                                # %if.then.13
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB9_16
# BB#14:                                # %land.lhs.true.17
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_tool_has_display
	cmpl	$0, %eax
	je	.LBB9_16
# BB#15:                                # %if.then.20
	movq	-64(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_tool_control
	jmp	.LBB9_21
.LBB9_16:                               # %if.else.21
	cmpl	$2, -12(%rbp)
	jne	.LBB9_20
# BB#17:                                # %if.then.23
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB9_19
# BB#18:                                # %if.then.26
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
.LBB9_19:                               # %if.end.28
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.29
	jmp	.LBB9_21
.LBB9_21:                               # %if.end.30
	jmp	.LBB9_22
.LBB9_22:                               # %if.end.31
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tool_manager_control_active, .Lfunc_end9-tool_manager_control_active
	.cfi_endproc

	.globl	tool_manager_focus_display_active
	.align	16, 0x90
	.type	tool_manager_focus_display_active,@function
tool_manager_focus_display_active:      # @tool_manager_focus_display_active
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_focus_display_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_14
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tool_set_focus_display
.LBB10_14:                              # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tool_manager_focus_display_active, .Lfunc_end10-tool_manager_focus_display_active
	.cfi_endproc

	.globl	tool_manager_push_tool
	.align	16, 0x90
	.type	tool_manager_push_tool,@function
tool_manager_push_tool:                 # @tool_manager_push_tool
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
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_push_tool, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_28
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_push_tool, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_28
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_26
# BB#25:                                # %if.then.41
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	callq	g_object_ref
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB11_26:                              # %if.end.49
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tool_manager_select_tool
	cmpq	$0, -32(%rbp)
	je	.LBB11_28
# BB#27:                                # %if.then.51
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	tool_manager_focus_display_active
.LBB11_28:                              # %if.end.52
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tool_manager_push_tool, .Lfunc_end11-tool_manager_push_tool
	.cfi_endproc

	.globl	tool_manager_pop_tool
	.align	16, 0x90
	.type	tool_manager_pop_tool,@function
tool_manager_pop_tool:                  # @tool_manager_pop_tool
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_pop_tool, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_14
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB12_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	tool_manager_select_tool
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB12_14:                              # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	tool_manager_pop_tool, .Lfunc_end12-tool_manager_pop_tool
	.cfi_endproc

	.globl	tool_manager_initialize_active
	.align	16, 0x90
	.type	tool_manager_initialize_active,@function
tool_manager_initialize_active:         # @tool_manager_initialize_active
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_initialize_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_29
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB13_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB13_19:                              # %if.end.31
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.35
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_initialize_active, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_29
.LBB13_23:                              # %if.end.37
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_28
# BB#25:                                # %if.then.41
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_tool_initialize
	cmpl	$0, %eax
	je	.LBB13_27
# BB#26:                                # %if.then.46
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	-88(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movl	$1, -4(%rbp)
	jmp	.LBB13_29
.LBB13_27:                              # %if.end.50
	jmp	.LBB13_28
.LBB13_28:                              # %if.end.51
	movl	$0, -4(%rbp)
.LBB13_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	tool_manager_initialize_active, .Lfunc_end13-tool_manager_initialize_active
	.cfi_endproc

	.globl	tool_manager_button_press_active
	.align	16, 0x90
	.type	tool_manager_button_press_active,@function
tool_manager_button_press_active:       # @tool_manager_button_press_active
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_button_press_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_14
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_14
# BB#13:                                # %if.then.13
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	gimp_tool_button_press
.LBB14_14:                              # %if.end.15
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	tool_manager_button_press_active, .Lfunc_end14-tool_manager_button_press_active
	.cfi_endproc

	.globl	tool_manager_button_release_active
	.align	16, 0x90
	.type	tool_manager_button_release_active,@function
tool_manager_button_release_active:     # @tool_manager_button_release_active
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_button_release_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_14
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_14
# BB#13:                                # %if.then.13
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_tool_button_release
.LBB15_14:                              # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	tool_manager_button_release_active, .Lfunc_end15-tool_manager_button_release_active
	.cfi_endproc

	.globl	tool_manager_motion_active
	.align	16, 0x90
	.type	tool_manager_motion_active,@function
tool_manager_motion_active:             # @tool_manager_motion_active
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_motion_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_14
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_14
# BB#13:                                # %if.then.13
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_tool_motion
.LBB16_14:                              # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	tool_manager_motion_active, .Lfunc_end16-tool_manager_motion_active
	.cfi_endproc

	.globl	tool_manager_key_press_active
	.align	16, 0x90
	.type	tool_manager_key_press_active,@function
tool_manager_key_press_active:          # @tool_manager_key_press_active
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_key_press_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_15
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_14
# BB#13:                                # %if.then.13
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_tool_key_press
	movl	%eax, -4(%rbp)
	jmp	.LBB17_15
.LBB17_14:                              # %if.end.16
	movl	$0, -4(%rbp)
.LBB17_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	tool_manager_key_press_active, .Lfunc_end17-tool_manager_key_press_active
	.cfi_endproc

	.globl	tool_manager_key_release_active
	.align	16, 0x90
	.type	tool_manager_key_release_active,@function
tool_manager_key_release_active:        # @tool_manager_key_release_active
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_key_release_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_15
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_14
# BB#13:                                # %if.then.13
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_tool_key_release
	movl	%eax, -4(%rbp)
	jmp	.LBB18_15
.LBB18_14:                              # %if.end.16
	movl	$0, -4(%rbp)
.LBB18_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	tool_manager_key_release_active, .Lfunc_end18-tool_manager_key_release_active
	.cfi_endproc

	.globl	tool_manager_modifier_state_active
	.align	16, 0x90
	.type	tool_manager_modifier_state_active,@function
tool_manager_modifier_state_active:     # @tool_manager_modifier_state_active
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_modifier_state_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_14
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_14
# BB#13:                                # %if.then.13
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_tool_set_modifier_state
.LBB19_14:                              # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	tool_manager_modifier_state_active, .Lfunc_end19-tool_manager_modifier_state_active
	.cfi_endproc

	.globl	tool_manager_active_modifier_state_active
	.align	16, 0x90
	.type	tool_manager_active_modifier_state_active,@function
tool_manager_active_modifier_state_active: # @tool_manager_active_modifier_state_active
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_active_modifier_state_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_14
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_14
# BB#13:                                # %if.then.13
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_tool_set_active_modifier_state
.LBB20_14:                              # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	tool_manager_active_modifier_state_active, .Lfunc_end20-tool_manager_active_modifier_state_active
	.cfi_endproc

	.globl	tool_manager_oper_update_active
	.align	16, 0x90
	.type	tool_manager_oper_update_active,@function
tool_manager_oper_update_active:        # @tool_manager_oper_update_active
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_oper_update_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_14
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_14
# BB#13:                                # %if.then.13
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_tool_oper_update
.LBB21_14:                              # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	tool_manager_oper_update_active, .Lfunc_end21-tool_manager_oper_update_active
	.cfi_endproc

	.globl	tool_manager_cursor_update_active
	.align	16, 0x90
	.type	tool_manager_cursor_update_active,@function
tool_manager_cursor_update_active:      # @tool_manager_cursor_update_active
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_cursor_update_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_14
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_14
# BB#13:                                # %if.then.13
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gimp_tool_cursor_update
.LBB22_14:                              # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	tool_manager_cursor_update_active, .Lfunc_end22-tool_manager_cursor_update_active
	.cfi_endproc

	.globl	tool_manager_get_popup_active
	.align	16, 0x90
	.type	tool_manager_get_popup_active,@function
tool_manager_get_popup_active:          # @tool_manager_get_popup_active
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tool_manager_get_popup_active, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_15
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	tool_manager_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_14
# BB#13:                                # %if.then.13
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	gimp_tool_get_popup
	movq	%rax, -8(%rbp)
	jmp	.LBB23_15
.LBB23_14:                              # %if.end.16
	movq	$0, -8(%rbp)
.LBB23_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	tool_manager_get_popup_active, .Lfunc_end23-tool_manager_get_popup_active
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
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
	je	.LBB24_2
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
.LBB24_2:                               # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end24:
	.size	g_warning, .Lfunc_end24-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	tool_manager_disconnect_options,@function
tool_manager_disconnect_options:        # @tool_manager_disconnect_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$0, 56(%rdx)
	je	.LBB25_11
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then.2
	movl	$0, -44(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.5
	movl	$1, -44(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.6
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.8
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_paint_options_copy_brush_props
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_paint_options_copy_dynamics_props
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_paint_options_copy_gradient_props
.LBB25_10:                              # %if.end.22
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_context_set_parent
.LBB25_11:                              # %if.end.26
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	tool_manager_disconnect_options, .Lfunc_end25-tool_manager_disconnect_options
	.cfi_endproc

	.align	16, 0x90
	.type	tool_manager_connect_options,@function
tool_manager_connect_options:           # @tool_manager_connect_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$0, 56(%rdx)
	je	.LBB26_29
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	-36(%rbp), %ecx
	orl	$64, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	orl	$128, %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 272(%rax)
	je	.LBB26_3
# BB#2:                                 # %if.then.4
	movl	-36(%rbp), %eax
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, -36(%rbp)
.LBB26_3:                               # %if.end
	movq	-32(%rbp), %rax
	cmpl	$0, 276(%rax)
	je	.LBB26_5
# BB#4:                                 # %if.then.7
	movl	-36(%rbp), %eax
	orl	$2048, %eax             # imm = 0x800
	movl	%eax, -36(%rbp)
.LBB26_5:                               # %if.end.9
	movq	-32(%rbp), %rax
	cmpl	$0, 280(%rax)
	je	.LBB26_7
# BB#6:                                 # %if.then.11
	movl	-36(%rbp), %eax
	orl	$4096, %eax             # imm = 0x1000
	movl	%eax, -36(%rbp)
.LBB26_7:                               # %if.end.13
	movq	-32(%rbp), %rax
	cmpl	$0, 284(%rax)
	je	.LBB26_9
# BB#8:                                 # %if.then.15
	movl	-36(%rbp), %eax
	orl	$16384, %eax            # imm = 0x4000
	movl	%eax, -36(%rbp)
.LBB26_9:                               # %if.end.17
	movq	-32(%rbp), %rax
	cmpl	$0, 288(%rax)
	je	.LBB26_11
# BB#10:                                # %if.then.19
	movl	-36(%rbp), %eax
	orl	$8192, %eax             # imm = 0x2000
	movl	%eax, -36(%rbp)
.LBB26_11:                              # %if.end.21
	movq	-32(%rbp), %rax
	cmpl	$0, 292(%rax)
	je	.LBB26_13
# BB#12:                                # %if.then.23
	movl	-36(%rbp), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, -36(%rbp)
.LBB26_13:                              # %if.end.25
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	56(%rdi), %ecx
	movl	-36(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_context_copy_properties
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_parent
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB26_15
# BB#14:                                # %if.then.34
	movl	$0, -60(%rbp)
	jmp	.LBB26_20
.LBB26_15:                              # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_18
# BB#16:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB26_18
# BB#17:                                # %if.then.37
	movl	$1, -60(%rbp)
	jmp	.LBB26_19
.LBB26_18:                              # %if.else.38
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB26_19:                              # %if.end.40
	jmp	.LBB26_20
.LBB26_20:                              # %if.end.41
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB26_28
# BB#21:                                # %if.then.43
	movq	-32(%rbp), %rax
	cmpl	$0, 272(%rax)
	je	.LBB26_23
# BB#22:                                # %if.then.46
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_options_copy_brush_props
.LBB26_23:                              # %if.end.50
	movq	-32(%rbp), %rax
	cmpl	$0, 276(%rax)
	je	.LBB26_25
# BB#24:                                # %if.then.53
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_options_copy_dynamics_props
.LBB26_25:                              # %if.end.58
	movq	-32(%rbp), %rax
	cmpl	$0, 288(%rax)
	je	.LBB26_27
# BB#26:                                # %if.then.61
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_options_copy_gradient_props
.LBB26_27:                              # %if.end.66
	jmp	.LBB26_28
.LBB26_28:                              # %if.end.67
	jmp	.LBB26_29
.LBB26_29:                              # %if.end.68
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	tool_manager_connect_options, .Lfunc_end26-tool_manager_connect_options
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Tools"
	.size	.L.str, 11

	.type	.L__func__.tool_manager_init,@object # @__func__.tool_manager_init
.L__func__.tool_manager_init:
	.asciz	"tool_manager_init"
	.size	.L__func__.tool_manager_init, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"clean"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"dirty"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"name"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tmp"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tool-changed"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tool-preset-changed"
	.size	.L.str.8, 20

	.type	.L__func__.tool_manager_exit,@object # @__func__.tool_manager_exit
.L__func__.tool_manager_exit:
	.asciz	"tool_manager_exit"
	.size	.L__func__.tool_manager_exit, 18

	.type	.L__func__.tool_manager_get_active,@object # @__func__.tool_manager_get_active
.L__func__.tool_manager_get_active:
	.asciz	"tool_manager_get_active"
	.size	.L__func__.tool_manager_get_active, 24

	.type	.L__func__.tool_manager_select_tool,@object # @__func__.tool_manager_select_tool
.L__func__.tool_manager_select_tool:
	.asciz	"tool_manager_select_tool"
	.size	.L__func__.tool_manager_select_tool, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_TOOL (tool)"
	.size	.L.str.9, 20

	.type	.L__func__.tool_manager_push_tool,@object # @__func__.tool_manager_push_tool
.L__func__.tool_manager_push_tool:
	.asciz	"tool_manager_push_tool"
	.size	.L__func__.tool_manager_push_tool, 23

	.type	.L__func__.tool_manager_pop_tool,@object # @__func__.tool_manager_pop_tool
.L__func__.tool_manager_pop_tool:
	.asciz	"tool_manager_pop_tool"
	.size	.L__func__.tool_manager_pop_tool, 22

	.type	.L__func__.tool_manager_initialize_active,@object # @__func__.tool_manager_initialize_active
.L__func__.tool_manager_initialize_active:
	.asciz	"tool_manager_initialize_active"
	.size	.L__func__.tool_manager_initialize_active, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.10, 26

	.type	.L__func__.tool_manager_control_active,@object # @__func__.tool_manager_control_active
.L__func__.tool_manager_control_active:
	.asciz	"tool_manager_control_active"
	.size	.L__func__.tool_manager_control_active, 28

	.type	.L__func__.tool_manager_button_press_active,@object # @__func__.tool_manager_button_press_active
.L__func__.tool_manager_button_press_active:
	.asciz	"tool_manager_button_press_active"
	.size	.L__func__.tool_manager_button_press_active, 33

	.type	.L__func__.tool_manager_button_release_active,@object # @__func__.tool_manager_button_release_active
.L__func__.tool_manager_button_release_active:
	.asciz	"tool_manager_button_release_active"
	.size	.L__func__.tool_manager_button_release_active, 35

	.type	.L__func__.tool_manager_motion_active,@object # @__func__.tool_manager_motion_active
.L__func__.tool_manager_motion_active:
	.asciz	"tool_manager_motion_active"
	.size	.L__func__.tool_manager_motion_active, 27

	.type	.L__func__.tool_manager_key_press_active,@object # @__func__.tool_manager_key_press_active
.L__func__.tool_manager_key_press_active:
	.asciz	"tool_manager_key_press_active"
	.size	.L__func__.tool_manager_key_press_active, 30

	.type	.L__func__.tool_manager_key_release_active,@object # @__func__.tool_manager_key_release_active
.L__func__.tool_manager_key_release_active:
	.asciz	"tool_manager_key_release_active"
	.size	.L__func__.tool_manager_key_release_active, 32

	.type	.L__func__.tool_manager_focus_display_active,@object # @__func__.tool_manager_focus_display_active
.L__func__.tool_manager_focus_display_active:
	.asciz	"tool_manager_focus_display_active"
	.size	.L__func__.tool_manager_focus_display_active, 34

	.type	.L__func__.tool_manager_modifier_state_active,@object # @__func__.tool_manager_modifier_state_active
.L__func__.tool_manager_modifier_state_active:
	.asciz	"tool_manager_modifier_state_active"
	.size	.L__func__.tool_manager_modifier_state_active, 35

	.type	.L__func__.tool_manager_active_modifier_state_active,@object # @__func__.tool_manager_active_modifier_state_active
.L__func__.tool_manager_active_modifier_state_active:
	.asciz	"tool_manager_active_modifier_state_active"
	.size	.L__func__.tool_manager_active_modifier_state_active, 42

	.type	.L__func__.tool_manager_oper_update_active,@object # @__func__.tool_manager_oper_update_active
.L__func__.tool_manager_oper_update_active:
	.asciz	"tool_manager_oper_update_active"
	.size	.L__func__.tool_manager_oper_update_active, 32

	.type	.L__func__.tool_manager_cursor_update_active,@object # @__func__.tool_manager_cursor_update_active
.L__func__.tool_manager_cursor_update_active:
	.asciz	"tool_manager_cursor_update_active"
	.size	.L__func__.tool_manager_cursor_update_active, 34

	.type	.L__func__.tool_manager_get_popup_active,@object # @__func__.tool_manager_get_popup_active
.L__func__.tool_manager_get_popup_active:
	.asciz	"tool_manager_get_popup_active"
	.size	.L__func__.tool_manager_get_popup_active, 30

	.type	tool_manager_quark,@object # @tool_manager_quark
	.local	tool_manager_quark
	.comm	tool_manager_quark,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-tool-manager"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"tool-info"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s: tool_info->tool_type is no GimpTool subclass"
	.size	.L.str.13, 49

	.type	.L__func__.tool_manager_tool_changed,@object # @__func__.tool_manager_tool_changed
.L__func__.tool_manager_tool_changed:
	.asciz	"tool_manager_tool_changed"
	.size	.L__func__.tool_manager_tool_changed, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
