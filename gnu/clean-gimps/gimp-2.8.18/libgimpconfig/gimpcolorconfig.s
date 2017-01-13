	.text
	.file	"gimpcolorconfig.bc"
	.globl	gimp_color_config_get_type
	.align	16, 0x90
	.type	gimp_color_config_get_type,@function
gimp_color_config_get_type:             # @gimp_color_config_get_type
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_color_config_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_config_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	leaq	.L.str(%rip), %rdi
	callq	g_intern_static_string@PLT
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$136, %edx
	leaq	gimp_color_config_class_intern_init(%rip), %rsi
	movl	$192, %r8d
	leaq	gimp_color_config_init(%rip), %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	leaq	gimp_color_config_get_type.g_implement_interface_info(%rip), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static@PLT
	leaq	.L.str.1(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	gimp_color_config_get_type.g_define_type_id__volatile(%rip), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_config_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_config_get_type, .Lfunc_end0-gimp_color_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_config_class_intern_init,@function
gimp_color_config_class_intern_init:    # @gimp_color_config_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_color_config_parent_class(%rip)
	cmpl	$0, GimpColorConfig_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorConfig_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_config_class_intern_init, .Lfunc_end1-gimp_color_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_config_init,@function
gimp_color_config_init:                 # @gimp_color_config_init
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
	.size	gimp_color_config_init, .Lfunc_end2-gimp_color_config_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_config_class_init,@function
gimp_color_config_class_init:           # @gimp_color_config_class_init
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
	subq	$144, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	-48(%rbp), %rdi
	movl	$128, %ecx
	movl	$255, %r8d
	movq	%rax, -16(%rbp)
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_rgba_set_uchar@PLT
	leaq	gimp_color_config_get_property(%rip), %rax
	leaq	gimp_color_config_set_property(%rip), %rdi
	leaq	gimp_color_config_finalize(%rip), %r9
	movq	-16(%rbp), %r10
	movq	%r9, 48(%r10)
	movq	-16(%rbp), %r9
	movq	%rdi, 24(%r9)
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_management_mode_get_type@PLT
	leaq	.L.str.2(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	.L.str.3(%rip), %rdx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$1, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.4(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	leaq	.L.str.5(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$487, %r9d              # imm = 0x1E7
	movq	-16(%rbp), %r10
	movq	%rax, %rsi
	movq	%rax, %r8
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_config_path@PLT
	movl	$2, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.6(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	leaq	.L.str.7(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$487, %r9d              # imm = 0x1E7
	movq	-16(%rbp), %r8
	movq	%rax, %rsi
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	callq	gimp_param_spec_config_path@PLT
	movl	$3, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.8(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	leaq	.L.str.9(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$487, %r9d              # imm = 0x1E7
	movq	-16(%rbp), %r8
	movq	%rax, %rsi
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	callq	gimp_param_spec_config_path@PLT
	movl	$4, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.10(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	.L.str.11(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean@PLT
	movl	$5, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.12(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	leaq	.L.str.13(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$487, %r9d              # imm = 0x1E7
	movq	-16(%rbp), %r10
	movq	%rax, %rsi
	movq	%rax, %r8
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_config_path@PLT
	movl	$6, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_color_rendering_intent_get_type@PLT
	leaq	.L.str.14(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	.L.str.15(%rip), %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$7, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_color_rendering_intent_get_type@PLT
	leaq	.L.str.16(%rip), %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	leaq	.L.str.17(%rip), %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$8, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.18(%rip), %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	leaq	.L.str.19(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean@PLT
	movl	$9, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.20(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	.L.str.21(%rip), %rdx
	xorl	%ecx, %ecx
	leaq	-48(%rbp), %r8
	movl	$487, %r9d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_rgb@PLT
	movl	$10, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.22(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	leaq	.L.str.23(%rip), %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_string@PLT
	movl	$11, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_config_class_init, .Lfunc_end3-gimp_color_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_config_finalize,@function
gimp_color_config_finalize:             # @gimp_color_config_finalize
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
	callq	gimp_color_config_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
.LBB4_4:                                # %if.end.6
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB4_6
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free@PLT
.LBB4_6:                                # %if.end.10
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB4_8
# BB#7:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_free@PLT
.LBB4_8:                                # %if.end.14
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB4_10
# BB#9:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free@PLT
.LBB4_10:                               # %if.end.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_config_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_config_finalize, .Lfunc_end4-gimp_color_config_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_config_set_property,@function
gimp_color_config_set_property:         # @gimp_color_config_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_config_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$10, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB5_12
# BB#16:                                # %entry
	leaq	.LJTI5_0(%rip), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 24(%rdi)
	jmp	.LBB5_15
.LBB5_2:                                # %sw.bb.3
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB5_15
.LBB5_3:                                # %sw.bb.6
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 40(%rdi)
	jmp	.LBB5_15
.LBB5_4:                                # %sw.bb.9
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 48(%rdi)
	jmp	.LBB5_15
.LBB5_5:                                # %sw.bb.12
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 56(%rdi)
	jmp	.LBB5_15
.LBB5_6:                                # %sw.bb.14
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 64(%rdi)
	jmp	.LBB5_15
.LBB5_7:                                # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 72(%rdi)
	jmp	.LBB5_15
.LBB5_8:                                # %sw.bb.19
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 76(%rdi)
	jmp	.LBB5_15
.LBB5_9:                                # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 88(%rdi)
	jmp	.LBB5_15
.LBB5_10:                               # %sw.bb.23
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_value_get_boxed@PLT
	movq	(%rax), %rdi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, 96(%rcx)
	movq	8(%rax), %rdi
	movq	%rdi, 104(%rcx)
	movq	16(%rax), %rdi
	movq	%rdi, 112(%rcx)
	movq	24(%rax), %rax
	movq	%rax, 120(%rcx)
	jmp	.LBB5_15
.LBB5_11:                               # %sw.bb.25
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 80(%rdi)
	jmp	.LBB5_15
.LBB5_12:                               # %sw.default
	jmp	.LBB5_13
.LBB5_13:                               # %do.body
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
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.24(%rip), %rdi
	leaq	.L.str.25(%rip), %rsi
	movl	$258, %edx              # imm = 0x102
	leaq	.L.str.26(%rip), %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#14:                                # %do.end
	jmp	.LBB5_15
.LBB5_15:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_config_set_property, .Lfunc_end5-gimp_color_config_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI5_0:
	.long	.LBB5_1-.LJTI5_0
	.long	.LBB5_2-.LJTI5_0
	.long	.LBB5_3-.LJTI5_0
	.long	.LBB5_4-.LJTI5_0
	.long	.LBB5_5-.LJTI5_0
	.long	.LBB5_6-.LJTI5_0
	.long	.LBB5_7-.LJTI5_0
	.long	.LBB5_8-.LJTI5_0
	.long	.LBB5_9-.LJTI5_0
	.long	.LBB5_10-.LJTI5_0
	.long	.LBB5_11-.LJTI5_0

	.text
	.align	16, 0x90
	.type	gimp_color_config_get_property,@function
gimp_color_config_get_property:         # @gimp_color_config_get_property
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
	callq	gimp_color_config_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$10, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_12
# BB#16:                                # %entry
	leaq	.LJTI6_0(%rip), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB6_15
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB6_15
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB6_15
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB6_15
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	56(%rax), %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB6_15
.LBB6_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB6_15
.LBB6_7:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	72(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB6_15
.LBB6_8:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	76(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB6_15
.LBB6_9:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	88(%rax), %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB6_15
.LBB6_10:                               # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed@PLT
	jmp	.LBB6_15
.LBB6_11:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	80(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB6_15
.LBB6_12:                               # %sw.default
	jmp	.LBB6_13
.LBB6_13:                               # %do.body
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
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.24(%rip), %rdi
	leaq	.L.str.25(%rip), %rsi
	movl	$308, %edx              # imm = 0x134
	leaq	.L.str.26(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#14:                                # %do.end
	jmp	.LBB6_15
.LBB6_15:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_config_get_property, .Lfunc_end6-gimp_color_config_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI6_0:
	.long	.LBB6_1-.LJTI6_0
	.long	.LBB6_2-.LJTI6_0
	.long	.LBB6_3-.LJTI6_0
	.long	.LBB6_4-.LJTI6_0
	.long	.LBB6_5-.LJTI6_0
	.long	.LBB6_6-.LJTI6_0
	.long	.LBB6_7-.LJTI6_0
	.long	.LBB6_8-.LJTI6_0
	.long	.LBB6_9-.LJTI6_0
	.long	.LBB6_10-.LJTI6_0
	.long	.LBB6_11-.LJTI6_0

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
	leaq	.L.str.27(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_warning, .Lfunc_end7-g_warning
	.cfi_endproc

	.type	gimp_color_config_get_type.g_define_type_id__volatile,@object # @gimp_color_config_get_type.g_define_type_id__volatile
	.local	gimp_color_config_get_type.g_define_type_id__volatile
	.comm	gimp_color_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorConfig"
	.size	.L.str, 16

	.type	gimp_color_config_get_type.g_implement_interface_info,@object # @gimp_color_config_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_color_config_get_type.g_implement_interface_info:
	.zero	24
	.size	gimp_color_config_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gimp20-libgimp"
	.size	.L.str.1, 15

	.type	gimp_color_config_parent_class,@object # @gimp_color_config_parent_class
	.local	gimp_color_config_parent_class
	.comm	gimp_color_config_parent_class,8,8
	.type	GimpColorConfig_private_offset,@object # @GimpColorConfig_private_offset
	.local	GimpColorConfig_private_offset
	.comm	GimpColorConfig_private_offset,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"mode"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Mode of operation for color management."
	.size	.L.str.3, 40

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"rgb-profile"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The default RGB working space color profile."
	.size	.L.str.5, 45

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cmyk-profile"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The CMYK color profile used to convert between RGB and CMYK."
	.size	.L.str.7, 61

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"display-profile"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The color profile of your (primary) monitor."
	.size	.L.str.9, 45

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"display-profile-from-gdk"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"When enabled, GIMP will try to use the display color profile from the windowing system.  The configured monitor profile is then only used as a fallback."
	.size	.L.str.11, 153

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"printer-profile"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The color profile used for simulating a printed version (softproof)."
	.size	.L.str.13, 69

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"display-rendering-intent"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Sets how colors are mapped for your display."
	.size	.L.str.15, 45

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"simulation-rendering-intent"
	.size	.L.str.16, 28

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Sets how colors are converted from RGB working space to the print simulation device."
	.size	.L.str.17, 85

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"simulation-gamut-check"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"When enabled, the print simulation will mark colors which can not be represented in the target color space."
	.size	.L.str.19, 108

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"out-of-gamut-color"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The color to use for marking colors which are out of gamut."
	.size	.L.str.21, 60

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"display-module"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"CdisplayLcms"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.24, 54

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimpcolorconfig.c"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"property"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"LibGimpConfig"
	.size	.L.str.27, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
