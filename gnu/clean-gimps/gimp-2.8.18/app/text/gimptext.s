	.text
	.file	"gimptext.bc"
	.globl	gimp_text_get_type
	.align	16, 0x90
	.type	gimp_text_get_type,@function
gimp_text_get_type:                     # @gimp_text_get_type
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
	movq	gimp_text_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_text_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$168, %edx
	movabsq	$gimp_text_class_intern_init, %rdi
	movl	$256, %r8d              # imm = 0x100
	movabsq	$gimp_text_init, %rcx
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
	movabsq	$gimp_text_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_text_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_text_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_get_type, .Lfunc_end0-gimp_text_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_class_intern_init,@function
gimp_text_class_intern_init:            # @gimp_text_class_intern_init
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
	movq	%rax, gimp_text_parent_class
	cmpl	$0, GimpText_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpText_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_text_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_class_intern_init, .Lfunc_end1-gimp_text_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_init,@function
gimp_text_init:                         # @gimp_text_init
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
	.size	gimp_text_init, .Lfunc_end2-gimp_text_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_text_get_transformation
	.align	16, 0x90
	.type	gimp_text_get_transformation,@function
gimp_text_get_transformation:           # @gimp_text_get_transformation
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_get_type
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
	movabsq	$.L__func__.gimp_text_get_transformation, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_18
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_get_transformation, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_18
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	movsd	200(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm2, (%rax)
	movq	-8(%rbp), %rax
	movsd	208(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm2, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	232(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm2, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	216(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm2, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	224(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm2, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	240(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm2, 40(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm1, 48(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm1, 56(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 56(%rax)
.LBB3_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_get_transformation, .Lfunc_end3-gimp_text_get_transformation
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI4_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI4_2:
	.quad	4688247212092686336     # double 262144
.LCPI4_3:
	.quad	-4557642822898941952    # double -8192
.LCPI4_4:
	.quad	4665729213955833856     # double 8192
.LCPI4_5:
	.quad	4627448617123184640     # double 24
.LCPI4_6:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_text_class_init,@function
gimp_text_class_init:                   # @gimp_text_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$448, %rsp              # imm = 0x1C0
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.4, %rdi
	movl	$1, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -152(%rbp)        # 8-byte Spill
	callq	g_signal_new
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_6, %xmm3         # xmm3 = mem[0],zero
	movabsq	$gimp_text_get_memsize, %rsi
	movabsq	$gimp_text_dispatch_properties_changed, %r8
	movabsq	$gimp_text_set_property, %r9
	movabsq	$gimp_text_get_property, %r10
	movabsq	$gimp_text_finalize, %r11
	movl	%eax, text_signals
	movq	-32(%rbp), %rbx
	movq	%r11, 48(%rbx)
	movq	-32(%rbp), %r11
	movq	%r10, 32(%r11)
	movq	-32(%rbp), %r10
	movq	%r9, 24(%r10)
	movq	-32(%rbp), %r9
	movq	%r8, 56(%r9)
	movq	-40(%rbp), %r8
	movq	%rsi, 152(%r8)
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-160(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	leaq	-104(%rbp), %rdi
	callq	gimp_matrix2_identity
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_get_default_language
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$487, %r8d              # imm = 0x1E7
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$2, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movabsq	$.L.str.8, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_string
	movl	$3, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	$487, %r8d              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movl	%esi, -204(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	-204(%rbp), %r14d       # 4-byte Reload
	movl	%r8d, -220(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	%r14d, %r9d
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	gimp_param_spec_unit
	movl	$5, %esi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$6, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_text_hint_style_get_type
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$2, %r8d
	movl	$4583, %r9d             # imm = 0x11E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$7, %esi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$4583, %r8d             # imm = 0x11E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$8, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$487, %r8d              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_string
	movl	$9, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gimp_text_direction_get_type
	movabsq	$.L.str.15, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$10, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.16, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	leaq	-72(%rbp), %r8
	movl	$487, %r9d              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	gimp_param_spec_rgb
	movl	$11, %esi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	gimp_text_outline_get_type
	movabsq	$.L.str.17, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$4583, %r9d             # imm = 0x11E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$12, %esi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_text_justification_get_type
	movabsq	$.L.str.18, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$13, %esi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.19, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$4583, %ecx             # imm = 0x11E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$14, %esi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$4583, %ecx             # imm = 0x11E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$15, %esi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.21, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$4583, %ecx             # imm = 0x11E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$16, %esi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gimp_text_box_mode_get_type
	movabsq	$.L.str.22, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$17, %esi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.23, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movl	$4583, %ecx             # imm = 0x11E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movsd	-336(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$18, %esi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.24, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movl	$4583, %ecx             # imm = 0x11E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movsd	-352(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$19, %esi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.25, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	$487, %r8d              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movl	%esi, -356(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	-356(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -372(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	gimp_param_spec_unit
	movl	$20, %esi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.26, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	leaq	-104(%rbp), %rcx
	movl	$4583, %r8d             # imm = 0x11E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	gimp_param_spec_matrix2
	movl	$21, %esi
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.27, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$4583, %ecx             # imm = 0x11E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$22, %esi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.28, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$4583, %ecx             # imm = 0x11E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$23, %esi
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.29, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$230, %esi
	movq	-32(%rbp), %rdx
	movl	%esi, -404(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	-420(%rbp), %r9d        # 4-byte Reload
	movl	$230, (%rsp)
	callq	g_param_spec_int
	movl	$24, %esi
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.30, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$25, %esi
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-112(%rbp), %rdi
	callq	g_free
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_class_init, .Lfunc_end4-gimp_text_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_finalize,@function
gimp_text_finalize:                     # @gimp_text_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_text_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB5_4:                                # %if.end.9
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB5_6
# BB#5:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB5_6:                                # %if.end.14
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB5_8
# BB#7:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
.LBB5_8:                                # %if.end.19
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_finalize, .Lfunc_end5-gimp_text_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_get_property,@function
gimp_text_get_property:                 # @gimp_text_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$24, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_25
# BB#29:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_28
.LBB6_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_28
.LBB6_3:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_28
.LBB6_4:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_28
.LBB6_5:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	56(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_28
.LBB6_6:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	72(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_28
.LBB6_7:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	76(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_28
.LBB6_8:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	80(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_28
.LBB6_9:                                # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	96(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_28
.LBB6_10:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	88(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_28
.LBB6_11:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB6_28
.LBB6_12:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	136(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_28
.LBB6_13:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	140(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_28
.LBB6_14:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	144(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_28
.LBB6_15:                               # %sw.bb.16
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	152(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_28
.LBB6_16:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	160(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_28
.LBB6_17:                               # %sw.bb.18
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	168(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_28
.LBB6_18:                               # %sw.bb.19
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	176(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_28
.LBB6_19:                               # %sw.bb.20
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	184(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_28
.LBB6_20:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	192(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_28
.LBB6_21:                               # %sw.bb.22
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$200, %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB6_28
.LBB6_22:                               # %sw.bb.23
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	232(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_28
.LBB6_23:                               # %sw.bb.24
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	240(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_28
.LBB6_24:                               # %sw.bb.25
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cmpl	$0, 76(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	g_value_set_boolean
	jmp	.LBB6_28
.LBB6_25:                               # %sw.default
	jmp	.LBB6_26
.LBB6_26:                               # %do.body
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
	movabsq	$.L.str.31, %rdi
	movabsq	$.L.str.32, %rsi
	movl	$382, %edx              # imm = 0x17E
	movabsq	$.L.str.33, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#27:                                # %do.end
	jmp	.LBB6_28
.LBB6_28:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_get_property, .Lfunc_end6-gimp_text_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6
	.quad	.LBB6_7
	.quad	.LBB6_8
	.quad	.LBB6_10
	.quad	.LBB6_9
	.quad	.LBB6_11
	.quad	.LBB6_12
	.quad	.LBB6_13
	.quad	.LBB6_14
	.quad	.LBB6_15
	.quad	.LBB6_16
	.quad	.LBB6_17
	.quad	.LBB6_18
	.quad	.LBB6_19
	.quad	.LBB6_20
	.quad	.LBB6_21
	.quad	.LBB6_22
	.quad	.LBB6_23
	.quad	.LBB6_25
	.quad	.LBB6_24

	.text
	.align	16, 0x90
	.type	gimp_text_set_property,@function
gimp_text_set_property:                 # @gimp_text_set_property
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_text_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$24, %r8d
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	ja	.LBB7_39
# BB#43:                                # %entry
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB7_4
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movabsq	$.L.str.6, %rsi
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rdi
	callq	g_object_notify
.LBB7_4:                                # %if.end
	jmp	.LBB7_42
.LBB7_5:                                # %sw.bb.9
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB7_8
# BB#6:                                 # %land.lhs.true.15
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB7_8
# BB#7:                                 # %if.then.18
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movabsq	$.L.str.5, %rsi
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rdi
	callq	g_object_notify
.LBB7_8:                                # %if.end.21
	jmp	.LBB7_42
.LBB7_9:                                # %sw.bb.22
	movq	-24(%rbp), %rdi
	callq	g_value_get_string
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free
	cmpq	$0, -64(%rbp)
	je	.LBB7_13
# BB#10:                                # %if.then.26
	movabsq	$.L.str.34, %rsi
	movq	-64(%rbp), %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	g_str_has_suffix
	cmpl	$0, %eax
	je	.LBB7_12
# BB#11:                                # %if.then.30
	movq	-72(%rbp), %rax
	subq	$12, %rax
	movq	%rax, -72(%rbp)
.LBB7_12:                               # %if.end.31
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_strndup
	movq	-40(%rbp), %rsi
	movq	%rax, 48(%rsi)
	jmp	.LBB7_14
.LBB7_13:                               # %if.else
	movq	-40(%rbp), %rax
	movq	$0, 48(%rax)
.LBB7_14:                               # %if.end.35
	jmp	.LBB7_42
.LBB7_15:                               # %sw.bb.36
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 64(%rdi)
	jmp	.LBB7_42
.LBB7_16:                               # %sw.bb.38
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 56(%rdi)
	jmp	.LBB7_42
.LBB7_17:                               # %sw.bb.40
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 72(%rdi)
	jmp	.LBB7_42
.LBB7_18:                               # %sw.bb.42
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 76(%rdi)
	jmp	.LBB7_42
.LBB7_19:                               # %sw.bb.44
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 80(%rdi)
	jmp	.LBB7_42
.LBB7_20:                               # %sw.bb.46
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 88(%rdi)
	jmp	.LBB7_42
.LBB7_21:                               # %sw.bb.49
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 96(%rdi)
	jmp	.LBB7_42
.LBB7_22:                               # %sw.bb.51
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	%rcx, 104(%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 112(%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 120(%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 128(%rax)
	jmp	.LBB7_42
.LBB7_23:                               # %sw.bb.54
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 136(%rdi)
	jmp	.LBB7_42
.LBB7_24:                               # %sw.bb.56
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 140(%rdi)
	jmp	.LBB7_42
.LBB7_25:                               # %sw.bb.58
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 144(%rdi)
	jmp	.LBB7_42
.LBB7_26:                               # %sw.bb.60
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 152(%rdi)
	jmp	.LBB7_42
.LBB7_27:                               # %sw.bb.62
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 160(%rdi)
	jmp	.LBB7_42
.LBB7_28:                               # %sw.bb.64
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 168(%rdi)
	jmp	.LBB7_42
.LBB7_29:                               # %sw.bb.66
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 176(%rdi)
	jmp	.LBB7_42
.LBB7_30:                               # %sw.bb.68
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 184(%rdi)
	jmp	.LBB7_42
.LBB7_31:                               # %sw.bb.70
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 192(%rdi)
	jmp	.LBB7_42
.LBB7_32:                               # %sw.bb.72
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	%rcx, 200(%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 208(%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 216(%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 224(%rax)
	jmp	.LBB7_42
.LBB7_33:                               # %sw.bb.74
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 232(%rdi)
	jmp	.LBB7_42
.LBB7_34:                               # %sw.bb.76
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 240(%rdi)
	jmp	.LBB7_42
.LBB7_35:                               # %sw.bb.78
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	cvtsi2sdl	%eax, %xmm0
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 248(%rdi)
	jmp	.LBB7_42
.LBB7_36:                               # %sw.bb.80
	movq	-40(%rbp), %rax
	cmpl	$2, 76(%rax)
	jne	.LBB7_38
# BB#37:                                # %if.then.83
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	xorl	%ecx, %ecx
	movl	$2, %edx
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movq	-40(%rbp), %rdi
	movl	%ecx, 76(%rdi)
.LBB7_38:                               # %if.end.87
	jmp	.LBB7_42
.LBB7_39:                               # %sw.default
	jmp	.LBB7_40
.LBB7_40:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-92(%rbp), %r8d
	movq	-88(%rbp), %rax
	movq	8(%rax), %r9
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.31, %rdi
	movabsq	$.L.str.32, %rsi
	movl	$517, %edx              # imm = 0x205
	movabsq	$.L.str.33, %rcx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#41:                                # %do.end
	jmp	.LBB7_42
.LBB7_42:                               # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_set_property, .Lfunc_end7-gimp_text_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_5
	.quad	.LBB7_9
	.quad	.LBB7_15
	.quad	.LBB7_16
	.quad	.LBB7_17
	.quad	.LBB7_18
	.quad	.LBB7_19
	.quad	.LBB7_20
	.quad	.LBB7_21
	.quad	.LBB7_22
	.quad	.LBB7_23
	.quad	.LBB7_24
	.quad	.LBB7_25
	.quad	.LBB7_26
	.quad	.LBB7_27
	.quad	.LBB7_28
	.quad	.LBB7_29
	.quad	.LBB7_30
	.quad	.LBB7_31
	.quad	.LBB7_32
	.quad	.LBB7_33
	.quad	.LBB7_34
	.quad	.LBB7_35
	.quad	.LBB7_36

	.text
	.align	16, 0x90
	.type	gimp_text_dispatch_properties_changed,@function
gimp_text_dispatch_properties_changed:  # @gimp_text_dispatch_properties_changed
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	gimp_text_parent_class, %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_class_cast
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	text_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_dispatch_properties_changed, .Lfunc_end8-gimp_text_dispatch_properties_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_get_memsize,@function
gimp_text_get_memsize:                  # @gimp_text_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_text_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_text_parent_class, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_text_get_memsize, .Lfunc_end9-gimp_text_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.type	gimp_text_get_type.g_define_type_id__volatile,@object # @gimp_text_get_type.g_define_type_id__volatile
	.local	gimp_text_get_type.g_define_type_id__volatile
	.comm	gimp_text_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpText"
	.size	.L.str, 9

	.type	gimp_text_get_type.g_implement_interface_info,@object # @gimp_text_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_text_get_type.g_implement_interface_info:
	.zero	24
	.size	gimp_text_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Text"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_text_get_transformation,@object # @__func__.gimp_text_get_transformation
.L__func__.gimp_text_get_transformation:
	.asciz	"gimp_text_get_transformation"
	.size	.L__func__.gimp_text_get_transformation, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TEXT (text)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"matrix != NULL"
	.size	.L.str.3, 15

	.type	gimp_text_parent_class,@object # @gimp_text_parent_class
	.local	gimp_text_parent_class
	.comm	gimp_text_parent_class,8,8
	.type	GimpText_private_offset,@object # @GimpText_private_offset
	.local	GimpText_private_offset
	.comm	GimpText_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"changed"
	.size	.L.str.4, 8

	.type	text_signals,@object    # @text_signals
	.local	text_signals
	.comm	text_signals,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"text"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"markup"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"font"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Sans"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"font-size"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"font-size-unit"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"antialias"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"hint-style"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"kerning"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"language"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"base-direction"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"color"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"outline"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"justify"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"indent"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"line-spacing"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"letter-spacing"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"box-mode"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"box-width"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"box-height"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"box-unit"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"transformation"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"offset-x"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"offset-y"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"border"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"hinting"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.31, 54

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimptext.c"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"property"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	" Not-Rotated"
	.size	.L.str.34, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
