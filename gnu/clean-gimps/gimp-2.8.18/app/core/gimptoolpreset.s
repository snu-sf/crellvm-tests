	.text
	.file	"gimptoolpreset.bc"
	.globl	gimp_tool_preset_get_type
	.align	16, 0x90
	.type	gimp_tool_preset_get_type,@function
gimp_tool_preset_get_type:              # @gimp_tool_preset_get_type
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
	movq	gimp_tool_preset_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tool_preset_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_data_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$312, %edx              # imm = 0x138
	movabsq	$gimp_tool_preset_class_intern_init, %rdi
	movl	$80, %r8d
	movabsq	$gimp_tool_preset_init, %rcx
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
	callq	gimp_config_interface_get_type
	movabsq	$gimp_tool_preset_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_tool_preset_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tool_preset_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_preset_get_type, .Lfunc_end0-gimp_tool_preset_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_class_intern_init,@function
gimp_tool_preset_class_intern_init:     # @gimp_tool_preset_class_intern_init
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
	movq	%rax, gimp_tool_preset_parent_class
	cmpl	$0, GimpToolPreset_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpToolPreset_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tool_preset_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_preset_class_intern_init, .Lfunc_end1-gimp_tool_preset_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_init,@function
gimp_tool_preset_init:                  # @gimp_tool_preset_init
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
	movq	$0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tool_preset_init, .Lfunc_end2-gimp_tool_preset_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_config_iface_init,@function
gimp_tool_preset_config_iface_init:     # @gimp_tool_preset_config_iface_init
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
	movabsq	$gimp_tool_preset_deserialize_property, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_preset_config_iface_init, .Lfunc_end3-gimp_tool_preset_config_iface_init
	.cfi_endproc

	.globl	gimp_tool_preset_new
	.align	16, 0x90
	.type	gimp_tool_preset_new,@function
gimp_tool_preset_new:                   # @gimp_tool_preset_new
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
	subq	$120, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_preset_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB4_18
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
# BB#13:                                # %do.body.12
	cmpq	$0, -40(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.14
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_preset_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.16
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.17
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -48(%rbp)
	callq	gimp_tool_preset_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-40(%rbp), %r10
	movq	64(%r10), %rdx
	movq	-48(%rbp), %r10
	movq	-24(%rbp), %r11
	movq	32(%r11), %r11
	movq	-40(%rbp), %rbx
	movq	120(%rbx), %rbx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r8
	movq	%r11, (%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -16(%rbp)
.LBB4_18:                               # %return
	movq	-16(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_preset_new, .Lfunc_end4-gimp_tool_preset_new
	.cfi_endproc

	.globl	gimp_tool_preset_get_prop_mask
	.align	16, 0x90
	.type	gimp_tool_preset_get_prop_mask,@function
gimp_tool_preset_get_prop_mask:         # @gimp_tool_preset_get_prop_mask
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
	movq	%rdi, -16(%rbp)
	movl	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tool_preset_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_preset_get_prop_mask, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_27
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_serialize_properties
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 48(%rsi)
	je	.LBB5_14
# BB#13:                                # %if.then.15
	movl	-20(%rbp), %eax
	andl	$64, %eax
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	andl	$128, %eax
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB5_14:                               # %if.end.18
	movq	-16(%rbp), %rax
	cmpl	$0, 52(%rax)
	je	.LBB5_16
# BB#15:                                # %if.then.20
	movl	-20(%rbp), %eax
	andl	$1024, %eax             # imm = 0x400
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB5_16:                               # %if.end.23
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB5_18
# BB#17:                                # %if.then.25
	movl	-20(%rbp), %eax
	andl	$2048, %eax             # imm = 0x800
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB5_18:                               # %if.end.28
	movq	-16(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB5_20
# BB#19:                                # %if.then.30
	movl	-20(%rbp), %eax
	andl	$4096, %eax             # imm = 0x1000
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB5_20:                               # %if.end.33
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	movl	-20(%rbp), %eax
	andl	$16384, %eax            # imm = 0x4000
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB5_22:                               # %if.end.38
	movq	-16(%rbp), %rax
	cmpl	$0, 60(%rax)
	je	.LBB5_24
# BB#23:                                # %if.then.40
	movl	-20(%rbp), %eax
	andl	$8192, %eax             # imm = 0x2000
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB5_24:                               # %if.end.43
	movq	-16(%rbp), %rax
	cmpl	$0, 72(%rax)
	je	.LBB5_26
# BB#25:                                # %if.then.45
	movl	-20(%rbp), %eax
	andl	$65536, %eax            # imm = 0x10000
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB5_26:                               # %if.end.48
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_preset_get_prop_mask, .Lfunc_end5-gimp_tool_preset_get_prop_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_class_init,@function
gimp_tool_preset_class_init:            # @gimp_tool_preset_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$120, %rsp
.Ltmp22:
	.cfi_offset %rbx, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.9, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movabsq	$gimp_tool_preset_get_extension, %rdx
	movabsq	$gimp_tool_preset_save, %r9
	movabsq	$gimp_tool_preset_dispatch_properties_changed, %r10
	movabsq	$gimp_tool_preset_get_property, %r11
	movabsq	$gimp_tool_preset_set_property, %rbx
	movabsq	$gimp_tool_preset_finalize, %r14
	movabsq	$gimp_tool_preset_constructed, %r15
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%r15, 72(%rax)
	movq	-40(%rbp), %rax
	movq	%r14, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%rbx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%r11, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 56(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 288(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 296(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$4, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$6, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$8, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$9, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.15, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$7, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$10, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_preset_class_init, .Lfunc_end6-gimp_tool_preset_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_constructed,@function
gimp_tool_preset_constructed:           # @gimp_tool_preset_constructed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_preset_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_tool_preset_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_preset_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_2:                                # %if.end
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB7_10
.LBB7_5:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_9:                                # %if.end.13
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_12
# BB#11:                                # %if.then.16
	jmp	.LBB7_13
.LBB7_12:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$183, %edx
	movabsq	$.L__func__.gimp_tool_preset_constructed, %rcx
	movabsq	$.L.str.18, %r8
	callq	g_assertion_message_expr
.LBB7_13:                               # %if.end.18
	jmp	.LBB7_14
.LBB7_14:                               # %do.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_preset_constructed, .Lfunc_end7-gimp_tool_preset_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_finalize,@function
gimp_tool_preset_finalize:              # @gimp_tool_preset_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_preset_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_tool_preset_set_options
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_tool_preset_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_preset_finalize, .Lfunc_end8-gimp_tool_preset_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_set_property,@function
gimp_tool_preset_set_property:          # @gimp_tool_preset_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_preset_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$9, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB9_11
# BB#15:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_value_get_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
	jmp	.LBB9_14
.LBB9_2:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB9_14
.LBB9_3:                                # %sw.bb.7
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tool_preset_set_options
	jmp	.LBB9_14
.LBB9_4:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 48(%rdi)
	jmp	.LBB9_14
.LBB9_5:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 52(%rdi)
	jmp	.LBB9_14
.LBB9_6:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 56(%rdi)
	jmp	.LBB9_14
.LBB9_7:                                # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 64(%rdi)
	jmp	.LBB9_14
.LBB9_8:                                # %sw.bb.19
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 68(%rdi)
	jmp	.LBB9_14
.LBB9_9:                                # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 60(%rdi)
	jmp	.LBB9_14
.LBB9_10:                               # %sw.bb.23
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 72(%rdi)
	jmp	.LBB9_14
.LBB9_11:                               # %sw.default
	jmp	.LBB9_12
.LBB9_12:                               # %do.body
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
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%r9, -136(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$243, %edx
	movabsq	$.L.str.21, %rcx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#13:                                # %do.end
	jmp	.LBB9_14
.LBB9_14:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tool_preset_set_property, .Lfunc_end9-gimp_tool_preset_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_1
	.quad	.LBB9_2
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_9
	.quad	.LBB9_7
	.quad	.LBB9_8
	.quad	.LBB9_10

	.text
	.align	16, 0x90
	.type	gimp_tool_preset_get_property,@function
gimp_tool_preset_get_property:          # @gimp_tool_preset_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_preset_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$9, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB10_11
# BB#15:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_string
	jmp	.LBB10_14
.LBB10_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_14
.LBB10_3:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_14
.LBB10_4:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	48(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB10_14
.LBB10_5:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	52(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB10_14
.LBB10_6:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	56(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB10_14
.LBB10_7:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	64(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB10_14
.LBB10_8:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	68(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB10_14
.LBB10_9:                               # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	60(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB10_14
.LBB10_10:                              # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	72(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB10_14
.LBB10_11:                              # %sw.default
	jmp	.LBB10_12
.LBB10_12:                              # %do.body
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
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$293, %edx              # imm = 0x125
	movabsq	$.L.str.21, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#13:                                # %do.end
	jmp	.LBB10_14
.LBB10_14:                              # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tool_preset_get_property, .Lfunc_end10-gimp_tool_preset_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_1
	.quad	.LBB10_2
	.quad	.LBB10_3
	.quad	.LBB10_4
	.quad	.LBB10_5
	.quad	.LBB10_6
	.quad	.LBB10_9
	.quad	.LBB10_7
	.quad	.LBB10_8
	.quad	.LBB10_10

	.text
	.align	16, 0x90
	.type	gimp_tool_preset_dispatch_properties_changed,@function
gimp_tool_preset_dispatch_properties_changed: # @gimp_tool_preset_dispatch_properties_changed
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	gimp_tool_preset_parent_class, %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_class_cast
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movl	$0, -28(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB11_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB11_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
	jmp	.LBB11_6
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_5
.LBB11_5:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB11_1
.LBB11_6:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tool_preset_dispatch_properties_changed, .Lfunc_end11-gimp_tool_preset_dispatch_properties_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_get_extension,@function
gimp_tool_preset_get_extension:         # @gimp_tool_preset_get_extension
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
	movabsq	$.L.str.22, %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tool_preset_get_extension, .Lfunc_end12-gimp_tool_preset_get_extension
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_set_options,@function
gimp_tool_preset_set_options:           # @gimp_tool_preset_set_options
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 40(%rsi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tool_preset_options_notify, %rdx
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
.LBB13_2:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB13_18
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_serialize_properties
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %ecx
	orl	$16, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_context_set_serialize_properties
	movl	-20(%rbp), %ecx
	andl	$64, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_5
# BB#4:                                 # %if.then.20
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_5:                               # %if.end.21
	movl	-20(%rbp), %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	jne	.LBB13_7
# BB#6:                                 # %if.then.24
	movabsq	$.L.str.11, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_7:                               # %if.end.25
	movl	-20(%rbp), %eax
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	jne	.LBB13_9
# BB#8:                                 # %if.then.28
	movabsq	$.L.str.12, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_9:                               # %if.end.29
	movl	-20(%rbp), %eax
	andl	$8192, %eax             # imm = 0x2000
	cmpl	$0, %eax
	jne	.LBB13_11
# BB#10:                                # %if.then.32
	movabsq	$.L.str.15, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_11:                              # %if.end.33
	movl	-20(%rbp), %eax
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	jne	.LBB13_13
# BB#12:                                # %if.then.36
	movabsq	$.L.str.13, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_13:                              # %if.end.37
	movl	-20(%rbp), %eax
	andl	$16384, %eax            # imm = 0x4000
	cmpl	$0, %eax
	jne	.LBB13_15
# BB#14:                                # %if.then.40
	movabsq	$.L.str.14, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_15:                              # %if.end.41
	movl	-20(%rbp), %eax
	andl	$65536, %eax            # imm = 0x10000
	cmpl	$0, %eax
	jne	.LBB13_17
# BB#16:                                # %if.then.44
	movabsq	$.L.str.16, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_17:                              # %if.end.45
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_tool_preset_options_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB13_18:                              # %if.end.48
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tool_preset_set_options, .Lfunc_end13-gimp_tool_preset_set_options
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_options_notify,@function
gimp_tool_preset_options_notify:        # @gimp_tool_preset_options_notify
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tool_preset_options_notify, .Lfunc_end14-gimp_tool_preset_options_notify
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB15_2
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
.LBB15_2:                               # %entry
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
.Lfunc_end15:
	.size	g_warning, .Lfunc_end15-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_preset_deserialize_property,@function
gimp_tool_preset_deserialize_property:  # @gimp_tool_preset_deserialize_property
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_preset_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %r10d
	subl	$3, %r10d
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	jne	.LBB16_16
	jmp	.LBB16_1
.LBB16_1:                               # %sw.bb
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movq	-56(%rbp), %rax
	movl	$264, (%rax)            # imm = 0x108
	jmp	.LBB16_17
.LBB16_3:                               # %if.end
	movq	-80(%rbp), %rdi
	callq	g_type_from_name
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB16_5
# BB#4:                                 # %if.then.5
	movabsq	$.L.str.23, %rsi
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movb	$0, %al
	callq	g_scanner_error
	movq	-56(%rbp), %rdx
	movl	$264, (%rdx)            # imm = 0x108
	movq	-80(%rbp), %rdi
	callq	g_free
	jmp	.LBB16_17
.LBB16_5:                               # %if.end.6
	movq	-88(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	jne	.LBB16_7
# BB#6:                                 # %if.then.10
	movabsq	$.L.str.24, %rsi
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movb	$0, %al
	callq	g_scanner_error
	movq	-56(%rbp), %rdx
	movl	$264, (%rdx)            # imm = 0x108
	movq	-80(%rbp), %rdi
	callq	g_free
	jmp	.LBB16_17
.LBB16_7:                               # %if.end.11
	movq	-80(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.6, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	-72(%rbp), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$97280, %edx            # imm = 0x17C00
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_copy_properties
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	24(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movq	-152(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB16_9
# BB#8:                                 # %if.then.23
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB16_17
.LBB16_9:                               # %if.end.24
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_tool
	cmpq	$0, %rax
	je	.LBB16_11
# BB#10:                                # %if.then.29
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_tool
	movabsq	$.L.str.25, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB16_15
.LBB16_11:                              # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 344(%rax)
	je	.LBB16_13
# BB#12:                                # %if.then.36
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	344(%rax), %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB16_14
.LBB16_13:                              # %if.else.40
	movabsq	$.L.str.26, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.25, %rdx
	movq	-72(%rbp), %rdi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-224(%rbp), %r8         # 8-byte Reload
	movq	-224(%rbp), %r9         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
.LBB16_14:                              # %if.end.41
	jmp	.LBB16_15
.LBB16_15:                              # %if.end.42
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_serialize_properties
	movl	%eax, -92(%rbp)
	movq	-72(%rbp), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-92(%rbp), %ecx
	orl	$16, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_context_set_serialize_properties
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_object
	jmp	.LBB16_17
.LBB16_16:                              # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB16_18
.LBB16_17:                              # %sw.epilog
	movl	$1, -4(%rbp)
.LBB16_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_tool_preset_deserialize_property, .Lfunc_end16-gimp_tool_preset_deserialize_property
	.cfi_endproc

	.type	gimp_tool_preset_get_type.g_define_type_id__volatile,@object # @gimp_tool_preset_get_type.g_define_type_id__volatile
	.local	gimp_tool_preset_get_type.g_define_type_id__volatile
	.comm	gimp_tool_preset_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpToolPreset"
	.size	.L.str, 15

	.type	gimp_tool_preset_get_type.g_implement_interface_info,@object # @gimp_tool_preset_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_tool_preset_get_type.g_implement_interface_info:
	.quad	gimp_tool_preset_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_tool_preset_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_tool_preset_new,@object # @__func__.gimp_tool_preset_new
.L__func__.gimp_tool_preset_new:
	.asciz	"gimp_tool_preset_new"
	.size	.L__func__.gimp_tool_preset_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"tool_info != NULL"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"stock-id"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tool-options"
	.size	.L.str.7, 13

	.type	.L__func__.gimp_tool_preset_get_prop_mask,@object # @__func__.gimp_tool_preset_get_prop_mask
.L__func__.gimp_tool_preset_get_prop_mask:
	.asciz	"gimp_tool_preset_get_prop_mask"
	.size	.L__func__.gimp_tool_preset_get_prop_mask, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_TOOL_PRESET (preset)"
	.size	.L.str.8, 29

	.type	gimp_tool_preset_parent_class,@object # @gimp_tool_preset_parent_class
	.local	gimp_tool_preset_parent_class
	.comm	gimp_tool_preset_parent_class,8,8
	.type	GimpToolPreset_private_offset,@object # @GimpToolPreset_private_offset
	.local	GimpToolPreset_private_offset
	.comm	GimpToolPreset_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Unnamed"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"use-fg-bg"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"use-brush"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"use-dynamics"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"use-pattern"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"use-palette"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"use-gradient"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"use-font"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimptoolpreset.c"
	.size	.L.str.17, 17

	.type	.L__func__.gimp_tool_preset_constructed,@object # @__func__.gimp_tool_preset_constructed
.L__func__.gimp_tool_preset_constructed:
	.asciz	"gimp_tool_preset_constructed"
	.size	.L__func__.gimp_tool_preset_constructed, 29

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_IS_GIMP (preset->gimp)"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"notify"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.20, 54

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"property"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	".gtp"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"unable to determine type of '%s'"
	.size	.L.str.23, 33

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"'%s' is not a subclass of GimpToolOptions"
	.size	.L.str.24, 42

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"tool-info"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"tool"
	.size	.L.str.26, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
