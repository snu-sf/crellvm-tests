	.text
	.file	"gimppluginconfig.bc"
	.globl	gimp_plugin_config_get_type
	.align	16, 0x90
	.type	gimp_plugin_config_get_type,@function
gimp_plugin_config_get_type:            # @gimp_plugin_config_get_type
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
	movq	gimp_plugin_config_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_plugin_config_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_gui_config_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$136, %edx
	movabsq	$gimp_plugin_config_class_intern_init, %rdi
	movl	$776, %r8d              # imm = 0x308
	movabsq	$gimp_plugin_config_init, %rcx
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
	movabsq	$gimp_plugin_config_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_plugin_config_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plugin_config_get_type, .Lfunc_end0-gimp_plugin_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plugin_config_class_intern_init,@function
gimp_plugin_config_class_intern_init:   # @gimp_plugin_config_class_intern_init
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
	movq	%rax, gimp_plugin_config_parent_class
	cmpl	$0, GimpPluginConfig_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPluginConfig_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_plugin_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plugin_config_class_intern_init, .Lfunc_end1-gimp_plugin_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plugin_config_init,@function
gimp_plugin_config_init:                # @gimp_plugin_config_init
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
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plugin_config_init, .Lfunc_end2-gimp_plugin_config_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plugin_config_class_init,@function
gimp_plugin_config_class_init:          # @gimp_plugin_config_class_init
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	movabsq	$gimp_plugin_config_get_property, %rsi
	movabsq	$gimp_plugin_config_set_property, %rcx
	movabsq	$gimp_plugin_config_finalize, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	callq	gimp_config_build_data_path
	movabsq	$.L.str.2, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$.L.str.3, %rdx
	movl	$3, %ecx
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %r8
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$1, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.4, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.6, %rdx
	movl	$3, %ecx
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %r8
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$2, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.7, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.9, %rdx
	movl	$3, %ecx
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %r8
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$3, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.10, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	movl	$3, %ecx
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %r8
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$4, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.13, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.15, %rdx
	movl	$3, %ecx
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %r8
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$5, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plugin_config_class_init, .Lfunc_end3-gimp_plugin_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plugin_config_finalize,@function
gimp_plugin_config_finalize:            # @gimp_plugin_config_finalize
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_plugin_config_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	736(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	744(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	752(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	760(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	768(%rax), %rdi
	callq	g_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_plugin_config_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plugin_config_finalize, .Lfunc_end4-gimp_plugin_config_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plugin_config_set_property,@function
gimp_plugin_config_set_property:        # @gimp_plugin_config_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_plugin_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB5_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	movq	736(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 736(%rdi)
	jmp	.LBB5_9
.LBB5_2:                                # %sw.bb.4
	movq	-40(%rbp), %rax
	movq	744(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 744(%rdi)
	jmp	.LBB5_9
.LBB5_3:                                # %sw.bb.7
	movq	-40(%rbp), %rax
	movq	752(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 752(%rdi)
	jmp	.LBB5_9
.LBB5_4:                                # %sw.bb.10
	movq	-40(%rbp), %rax
	movq	760(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 760(%rdi)
	jmp	.LBB5_9
.LBB5_5:                                # %sw.bb.13
	movq	-40(%rbp), %rax
	movq	768(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 768(%rdi)
	jmp	.LBB5_9
.LBB5_6:                                # %sw.default
	jmp	.LBB5_7
.LBB5_7:                                # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$170, %edx
	movabsq	$.L.str.18, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB5_9
.LBB5_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_plugin_config_set_property, .Lfunc_end5-gimp_plugin_config_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_2
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_5

	.text
	.align	16, 0x90
	.type	gimp_plugin_config_get_property,@function
gimp_plugin_config_get_property:        # @gimp_plugin_config_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_plugin_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	736(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_9
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	744(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_9
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	752(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_9
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	760(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_9
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	768(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_9
.LBB6_6:                                # %sw.default
	jmp	.LBB6_7
.LBB6_7:                                # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$206, %edx
	movabsq	$.L.str.18, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB6_9
.LBB6_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_plugin_config_get_property, .Lfunc_end6-gimp_plugin_config_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB7_2
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
.LBB7_2:                                # %entry
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
	movl	$.L.str.19, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_warning, .Lfunc_end7-g_warning
	.cfi_endproc

	.type	gimp_plugin_config_get_type.g_define_type_id__volatile,@object # @gimp_plugin_config_get_type.g_define_type_id__volatile
	.local	gimp_plugin_config_get_type.g_define_type_id__volatile
	.comm	gimp_plugin_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPluginConfig"
	.size	.L.str, 17

	.type	gimp_plugin_config_parent_class,@object # @gimp_plugin_config_parent_class
	.local	gimp_plugin_config_parent_class
	.comm	gimp_plugin_config_parent_class,8,8
	.type	GimpPluginConfig_private_offset,@object # @GimpPluginConfig_private_offset
	.local	GimpPluginConfig_private_offset
	.comm	GimpPluginConfig_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"fractalexplorer"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"fractalexplorer-path"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Where to search for fractals used by the Fractal Explorer plug-in."
	.size	.L.str.3, 67

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gfig"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gfig-path"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Where to search for Gfig figures used by the Gfig plug-in."
	.size	.L.str.6, 59

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gflare"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gflare-path"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Where to search for gflares used by the GFlare plug-in."
	.size	.L.str.9, 56

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpressionist"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimpressionist-path"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Where to search for data used by the Gimpressionist plug-in."
	.size	.L.str.12, 61

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"scripts"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"script-fu-path"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"This path will be searched for scripts when the Script-Fu plug-in is run."
	.size	.L.str.15, 74

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimppluginconfig.c"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"property"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Gimp-Config"
	.size	.L.str.19, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
