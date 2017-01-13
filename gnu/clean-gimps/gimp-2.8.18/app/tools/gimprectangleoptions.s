	.text
	.file	"gimprectangleoptions.bc"
	.globl	gimp_rectangle_options_interface_get_type
	.align	16, 0x90
	.type	gimp_rectangle_options_interface_get_type,@function
gimp_rectangle_options_interface_get_type: # @gimp_rectangle_options_interface_get_type
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
	subq	$16, %rsp
	cmpq	$0, gimp_rectangle_options_interface_get_type.iface_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_rectangle_options_interface_get_type.iface_info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_rectangle_options_interface_get_type.iface_type
	movq	gimp_rectangle_options_interface_get_type.iface_type, %rdi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_add_prerequisite
.LBB0_2:                                # %if.end
	movq	gimp_rectangle_options_interface_get_type.iface_type, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rectangle_options_interface_get_type, .Lfunc_end0-gimp_rectangle_options_interface_get_type
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4562254508917369340     # double 0.001
.LCPI1_1:
	.quad	4688247212092686336     # double 262144
.LCPI1_2:
	.quad	4607182418800017408     # double 1
.LCPI1_3:
	.quad	4636737291354636288     # double 100
.LCPI1_4:
	.quad	-4535124824762089472    # double -262144
	.text
	.align	16, 0x90
	.type	gimp_rectangle_options_iface_base_init,@function
gimp_rectangle_options_iface_base_init: # @gimp_rectangle_options_iface_base_init
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	cmpl	$0, gimp_rectangle_options_iface_base_init.initialized
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.4, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$.L.str.51, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-8(%rbp), %r9
	movq	%r9, -16(%rbp)          # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.52, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_guides_type_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.53, %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$.L.str.54, %rdx
	movsd	.LCPI1_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$231, %ecx
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.55, %rdx
	movsd	.LCPI1_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$231, %ecx
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.56, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movl	$231, %ecx
	movq	-8(%rbp), %rax
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.57, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movl	$231, %ecx
	movq	-8(%rbp), %rax
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.58, %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	$231, %r8d
	movq	-8(%rbp), %rax
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$231, (%rsp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_unit
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.59, %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	$231, %r8d
	movq	-8(%rbp), %rax
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$231, (%rsp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_unit
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.60, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_fixed_rule_get_type
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.61, %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.15, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$.L.str.62, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_3, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.63, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_3, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.17, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_3, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.18, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_3, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_3, %xmm2         # xmm2 = mem[0],zero
	movl	$227, %ecx
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_3, %xmm2         # xmm2 = mem[0],zero
	movl	$227, %ecx
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.21, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.22, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.23, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.24, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movl	$231, %ecx
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.25, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movl	$231, %ecx
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.26, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.27, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.28, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.64, %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	$231, %r8d
	movq	-8(%rbp), %rax
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -240(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$231, (%rsp)
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_unit
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.29, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.65, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movl	$1, gimp_rectangle_options_iface_base_init.initialized
.LBB1_2:                                # %if.end
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rectangle_options_iface_base_init, .Lfunc_end1-gimp_rectangle_options_iface_base_init
	.cfi_endproc

	.globl	gimp_rectangle_options_get_private
	.align	16, 0x90
	.type	gimp_rectangle_options_get_private,@function
gimp_rectangle_options_get_private:     # @gimp_rectangle_options_get_private
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_rectangle_options_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_rectangle_options_get_private, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_17
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	cmpl	$0, gimp_rectangle_options_get_private.private_key
	jne	.LBB2_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.3, %rdi
	callq	g_quark_from_static_string
	movl	%eax, gimp_rectangle_options_get_private.private_key
.LBB2_14:                               # %if.end.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	gimp_rectangle_options_get_private.private_key, %esi
	movq	%rax, %rdi
	callq	g_object_get_qdata
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_16
# BB#15:                                # %if.then.18
	movl	$272, %eax              # imm = 0x110
	movl	%eax, %edi
	callq	g_slice_alloc0
	movl	$3, %edi
	movl	$60, %ecx
	movl	%ecx, %edx
	movl	$64, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	%rdx, %rsi
	movb	$0, %al
	callq	gtk_list_store_new
	movl	$3, %edi
	movl	$60, %r8d
	movl	%r8d, %ecx
	movl	$64, %r8d
	movl	%r8d, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, 208(%rsi)
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	gtk_list_store_new
	movl	$80, %edi
	movl	%edi, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 232(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_rectangle_options_private_finalize, %rcx
	movl	gimp_rectangle_options_get_private.private_key, %esi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_qdata_full
.LBB2_16:                               # %if.end.23
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rectangle_options_get_private, .Lfunc_end2-gimp_rectangle_options_get_private
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_options_private_finalize,@function
gimp_rectangle_options_private_finalize: # @gimp_rectangle_options_private_finalize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	callq	g_object_unref
# BB#1:                                 # %do.body
	movl	$272, %eax              # imm = 0x110
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_rectangle_options_private_finalize, .Lfunc_end3-gimp_rectangle_options_private_finalize
	.cfi_endproc

	.globl	gimp_rectangle_options_install_properties
	.align	16, 0x90
	.type	gimp_rectangle_options_install_properties,@function
gimp_rectangle_options_install_properties: # @gimp_rectangle_options_install_properties
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
	subq	$16, %rsp
	movl	$1, %esi
	movabsq	$.L.str.4, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$2, %esi
	movabsq	$.L.str.5, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$4, %esi
	movabsq	$.L.str.6, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$5, %esi
	movabsq	$.L.str.7, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$6, %esi
	movabsq	$.L.str.8, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$7, %esi
	movabsq	$.L.str.9, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$8, %esi
	movabsq	$.L.str.10, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$9, %esi
	movabsq	$.L.str.11, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$10, %esi
	movabsq	$.L.str.12, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$11, %esi
	movabsq	$.L.str.13, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$12, %esi
	movabsq	$.L.str.14, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$13, %esi
	movabsq	$.L.str.15, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$14, %esi
	movabsq	$.L.str.16, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$15, %esi
	movabsq	$.L.str.17, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$16, %esi
	movabsq	$.L.str.18, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$17, %esi
	movabsq	$.L.str.19, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$18, %esi
	movabsq	$.L.str.20, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$19, %esi
	movabsq	$.L.str.21, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$20, %esi
	movabsq	$.L.str.22, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$21, %esi
	movabsq	$.L.str.23, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$22, %esi
	movabsq	$.L.str.24, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$23, %esi
	movabsq	$.L.str.25, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$24, %esi
	movabsq	$.L.str.26, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$25, %esi
	movabsq	$.L.str.27, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$26, %esi
	movabsq	$.L.str.28, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$27, %esi
	movabsq	$.L.str.29, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_rectangle_options_install_properties, .Lfunc_end4-gimp_rectangle_options_install_properties
	.cfi_endproc

	.globl	gimp_rectangle_options_set_property
	.align	16, 0x90
	.type	gimp_rectangle_options_set_property,@function
gimp_rectangle_options_set_property:    # @gimp_rectangle_options_set_property
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
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$26, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB5_28
# BB#32:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB5_31
.LBB5_2:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, 4(%rdi)
	jmp	.LBB5_31
.LBB5_3:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB5_31
.LBB5_4:                                # %sw.bb.10
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-48(%rbp), %rdi
	movl	%eax, 12(%rdi)
	jmp	.LBB5_31
.LBB5_5:                                # %sw.bb.12
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	jmp	.LBB5_31
.LBB5_6:                                # %sw.bb.14
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	jmp	.LBB5_31
.LBB5_7:                                # %sw.bb.16
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	jmp	.LBB5_31
.LBB5_8:                                # %sw.bb.18
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	jmp	.LBB5_31
.LBB5_9:                                # %sw.bb.20
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-48(%rbp), %rdi
	movl	%eax, 48(%rdi)
	jmp	.LBB5_31
.LBB5_10:                               # %sw.bb.22
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-48(%rbp), %rdi
	movl	%eax, 52(%rdi)
	jmp	.LBB5_31
.LBB5_11:                               # %sw.bb.24
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, 56(%rdi)
	jmp	.LBB5_31
.LBB5_12:                               # %sw.bb.26
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-48(%rbp), %rdi
	movl	%eax, 60(%rdi)
	jmp	.LBB5_31
.LBB5_13:                               # %sw.bb.28
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 64(%rdi)
	jmp	.LBB5_31
.LBB5_14:                               # %sw.bb.30
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 72(%rdi)
	jmp	.LBB5_31
.LBB5_15:                               # %sw.bb.32
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 80(%rdi)
	jmp	.LBB5_31
.LBB5_16:                               # %sw.bb.34
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 88(%rdi)
	jmp	.LBB5_31
.LBB5_17:                               # %sw.bb.36
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 96(%rdi)
	jmp	.LBB5_31
.LBB5_18:                               # %sw.bb.38
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 104(%rdi)
	jmp	.LBB5_31
.LBB5_19:                               # %sw.bb.40
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, 112(%rdi)
	jmp	.LBB5_31
.LBB5_20:                               # %sw.bb.42
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 120(%rdi)
	jmp	.LBB5_31
.LBB5_21:                               # %sw.bb.44
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 128(%rdi)
	jmp	.LBB5_31
.LBB5_22:                               # %sw.bb.46
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 136(%rdi)
	jmp	.LBB5_31
.LBB5_23:                               # %sw.bb.48
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 144(%rdi)
	jmp	.LBB5_31
.LBB5_24:                               # %sw.bb.50
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, 152(%rdi)
	jmp	.LBB5_31
.LBB5_25:                               # %sw.bb.52
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, 160(%rdi)
	jmp	.LBB5_31
.LBB5_26:                               # %sw.bb.54
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-48(%rbp), %rdi
	movl	%eax, 164(%rdi)
	jmp	.LBB5_31
.LBB5_27:                               # %sw.bb.56
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, 156(%rdi)
	jmp	.LBB5_31
.LBB5_28:                               # %sw.default
	jmp	.LBB5_29
.LBB5_29:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$566, %edx              # imm = 0x236
	movabsq	$.L.str.32, %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#30:                                # %do.end
	jmp	.LBB5_31
.LBB5_31:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_rectangle_options_set_property, .Lfunc_end5-gimp_rectangle_options_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_2
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_5
	.quad	.LBB5_6
	.quad	.LBB5_7
	.quad	.LBB5_8
	.quad	.LBB5_9
	.quad	.LBB5_10
	.quad	.LBB5_11
	.quad	.LBB5_12
	.quad	.LBB5_13
	.quad	.LBB5_14
	.quad	.LBB5_15
	.quad	.LBB5_16
	.quad	.LBB5_17
	.quad	.LBB5_18
	.quad	.LBB5_19
	.quad	.LBB5_20
	.quad	.LBB5_21
	.quad	.LBB5_22
	.quad	.LBB5_23
	.quad	.LBB5_24
	.quad	.LBB5_25
	.quad	.LBB5_26
	.quad	.LBB5_27

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
.Lfunc_end6:
	.size	g_warning, .Lfunc_end6-g_warning
	.cfi_endproc

	.globl	gimp_rectangle_options_get_property
	.align	16, 0x90
	.type	gimp_rectangle_options_get_property,@function
gimp_rectangle_options_get_property:    # @gimp_rectangle_options_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$26, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB7_28
# BB#32:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_31
.LBB7_2:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	4(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_31
.LBB7_3:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_31
.LBB7_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	12(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB7_31
.LBB7_5:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_6:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_7:                                # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_8:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_9:                                # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	48(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_31
.LBB7_10:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	52(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_31
.LBB7_11:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	56(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_31
.LBB7_12:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	60(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB7_31
.LBB7_13:                               # %sw.bb.16
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_14:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_15:                               # %sw.bb.18
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_16:                               # %sw.bb.19
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_17:                               # %sw.bb.20
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_18:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_19:                               # %sw.bb.22
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	112(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_31
.LBB7_20:                               # %sw.bb.23
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_21:                               # %sw.bb.24
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_22:                               # %sw.bb.25
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	136(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_23:                               # %sw.bb.26
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	144(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_31
.LBB7_24:                               # %sw.bb.27
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	152(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_31
.LBB7_25:                               # %sw.bb.28
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	160(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_31
.LBB7_26:                               # %sw.bb.29
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	164(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_31
.LBB7_27:                               # %sw.bb.30
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	156(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_31
.LBB7_28:                               # %sw.default
	jmp	.LBB7_29
.LBB7_29:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$670, %edx              # imm = 0x29E
	movabsq	$.L.str.32, %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#30:                                # %do.end
	jmp	.LBB7_31
.LBB7_31:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_rectangle_options_get_property, .Lfunc_end7-gimp_rectangle_options_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4
	.quad	.LBB7_5
	.quad	.LBB7_6
	.quad	.LBB7_7
	.quad	.LBB7_8
	.quad	.LBB7_9
	.quad	.LBB7_10
	.quad	.LBB7_11
	.quad	.LBB7_12
	.quad	.LBB7_13
	.quad	.LBB7_14
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

	.text
	.globl	gimp_rectangle_options_get_width_entry
	.align	16, 0x90
	.type	gimp_rectangle_options_get_width_entry,@function
gimp_rectangle_options_get_width_entry: # @gimp_rectangle_options_get_width_entry
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
	callq	gimp_rectangle_options_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	256(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_rectangle_options_get_width_entry, .Lfunc_end8-gimp_rectangle_options_get_width_entry
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4688247212092686336     # double 262144
.LCPI9_2:
	.quad	4643985272004935680     # double 300
.LCPI9_3:
	.quad	4562254508917369340     # double 0.001
	.text
	.globl	gimp_rectangle_options_gui
	.align	16, 0x90
	.type	gimp_rectangle_options_gui,@function
gimp_rectangle_options_gui:             # @gimp_rectangle_options_gui
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
	pushq	%r14
	pushq	%rbx
	subq	$576, %rsp              # imm = 0x240
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_tool_options_gui
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movabsq	$.L.str.33, %rdi
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.29, %rsi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.13, %rsi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_rectangle_options_fixed_rule_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_rectangle_options_fixed_rule_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	callq	gtk_size_group_new
	xorl	%edi, %edi
	movl	$2, %esi
	movq	%rax, -104(%rbp)
	callq	gtk_box_new
	movq	-32(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	192(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	192(%rax), %rsi
	callq	gtk_size_group_add_widget
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$192, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	movabsq	$.L.str.24, %rcx
	movabsq	$.L.str.25, %r8
	movabsq	$.L.str.26, %r9
	xorl	%r11d, %r11d
	movl	$1, %ebx
	movabsq	$.L.str.37, %rax
	movsd	.LCPI9_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	%r11d, -236(%rbp)       # 4-byte Spill
	movl	%ebx, -240(%rbp)        # 4-byte Spill
	callq	gimp_prop_number_pair_entry_new
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r11d
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r11d, %edx
	movl	%r11d, %ecx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_rectangle_options_string_current_updates, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_rectangle_options_string_current_updates, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-40(%rbp), %rdx
	movq	-96(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	208(%rcx), %rdx
	movq	%rax, %rdi
	callq	gimp_rectangle_options_setup_ratio_completion
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movabsq	$.L.str.41, %rdx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gimp_prop_enum_stock_box_new
	movq	-32(%rbp), %rdx
	movq	%rax, 200(%rdx)
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdx
	movq	200(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	-292(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$200, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movq	-32(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_widget_hide
	movq	-112(%rbp), %rdi
	callq	g_list_free
	movabsq	$.L.str.15, %rsi
	movl	$1, %ecx
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.42, %r8
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-308(%rbp), %r9d        # 4-byte Reload
	callq	gimp_prop_size_entry_new
	movq	-32(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rcx
	movq	176(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %ecx        # 4-byte Reload
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	176(%rax), %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$176, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.16, %rsi
	movl	$1, %ecx
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.42, %r8
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	%ecx, %edx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-328(%rbp), %r9d        # 4-byte Reload
	callq	gimp_prop_size_entry_new
	movq	-32(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rcx
	movq	184(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %ecx        # 4-byte Reload
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	184(%rax), %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$184, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	-32(%rbp), %r10
	movq	%rax, 216(%r10)
	movq	-80(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	216(%rax), %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$216, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.20, %r8
	movabsq	$.L.str.21, %r9
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movabsq	$.L.str.43, %rax
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -360(%rbp)       # 4-byte Spill
	movl	%ebx, -364(%rbp)        # 4-byte Spill
	callq	gimp_prop_number_pair_entry_new
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r11d
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r11d, %edx
	movl	%r11d, %ecx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	232(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_rectangle_options_setup_ratio_completion
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movabsq	$.L.str.41, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gimp_prop_enum_stock_box_new
	movq	-32(%rbp), %rdx
	movq	%rax, 224(%rdx)
	movq	-32(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdx
	movq	224(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_widget_hide
	movq	-112(%rbp), %rdi
	callq	g_list_free
	movabsq	$.L.str.44, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.11, %rcx
	movq	-32(%rbp), %rdi
	addq	$240, %rdi
	movq	-32(%rbp), %r9
	addq	$248, %r9
	movq	-424(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%r9, -440(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-440(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	callq	gimp_rectangle_options_prop_dimension_frame_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r11d, %r11d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r11d, %edx
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.45, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.12, %rcx
	movq	-32(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	movq	-32(%rbp), %r9
	addq	$264, %r9               # imm = 0x108
	movq	-456(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%r9, -472(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-472(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	callq	gimp_rectangle_options_prop_dimension_frame_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r11d, %r11d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r11d, %edx
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.46, %rsi
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rsi
	xorl	%edx, %edx
	movl	$5, %ecx
	movq	-40(%rbp), %rdi
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	movl	-516(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movq	-32(%rbp), %rsi
	movq	%rax, 168(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	movl	-532(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$168, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.49, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rsi
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	movl	-556(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-32(%rbp), %rsi
	callq	gimp_rectangle_options_fixed_rule_changed
	movq	-48(%rbp), %rax
	addq	$576, %rsp              # imm = 0x240
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_rectangle_options_gui, .Lfunc_end9-gimp_rectangle_options_gui
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_options_fixed_rule_changed,@function
gimp_rectangle_options_fixed_rule_changed: # @gimp_rectangle_options_fixed_rule_changed
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	256(%rsi), %rdi
	movq	-16(%rbp), %rsi
	cmpl	$0, 56(%rsi)
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB10_4
# BB#1:                                 # %land.rhs
	movb	$1, %al
	movq	-16(%rbp), %rcx
	cmpl	$1, 60(%rcx)
	movb	%al, -26(%rbp)          # 1-byte Spill
	je	.LBB10_3
# BB#2:                                 # %lor.rhs
	movq	-16(%rbp), %rax
	cmpl	$3, 60(%rax)
	sete	%cl
	movb	%cl, -26(%rbp)          # 1-byte Spill
.LBB10_3:                               # %lor.end
	movb	-26(%rbp), %al          # 1-byte Reload
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB10_4:                               # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movb	%sil, %al
	movq	-16(%rbp), %rdi
	movq	264(%rdi), %rdi
	movq	-16(%rbp), %rcx
	cmpl	$0, 56(%rcx)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movb	%al, -41(%rbp)          # 1-byte Spill
	je	.LBB10_8
# BB#5:                                 # %land.rhs.5
	movb	$1, %al
	movq	-16(%rbp), %rcx
	cmpl	$2, 60(%rcx)
	movb	%al, -42(%rbp)          # 1-byte Spill
	je	.LBB10_7
# BB#6:                                 # %lor.rhs.8
	movq	-16(%rbp), %rax
	cmpl	$3, 60(%rax)
	sete	%cl
	movb	%cl, -42(%rbp)          # 1-byte Spill
.LBB10_7:                               # %lor.end.11
	movb	-42(%rbp), %al          # 1-byte Reload
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB10_8:                               # %land.end.12
	movb	-41(%rbp), %al          # 1-byte Reload
	notb	%al
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rdi
	movq	176(%rdi), %rdi
	callq	gtk_widget_hide
	movq	-16(%rbp), %rdi
	movq	184(%rdi), %rdi
	callq	gtk_widget_hide
	movq	-16(%rbp), %rdi
	movq	192(%rdi), %rdi
	callq	gtk_widget_hide
	movq	-16(%rbp), %rdi
	movq	216(%rdi), %rdi
	callq	gtk_widget_hide
	movq	-16(%rbp), %rdi
	movl	60(%rdi), %ecx
	movl	%ecx, %edi
	movq	%rdi, %rdx
	subq	$3, %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	ja	.LBB10_13
# BB#14:                                # %land.end.12
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_9:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_show
	jmp	.LBB10_13
.LBB10_10:                              # %sw.bb.17
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_widget_show
	jmp	.LBB10_13
.LBB10_11:                              # %sw.bb.19
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_show
	jmp	.LBB10_13
.LBB10_12:                              # %sw.bb.21
	movq	-16(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show
.LBB10_13:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_rectangle_options_fixed_rule_changed, .Lfunc_end10-gimp_rectangle_options_fixed_rule_changed
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_9
	.quad	.LBB10_10
	.quad	.LBB10_11
	.quad	.LBB10_12

	.text
	.align	16, 0x90
	.type	gimp_rectangle_options_string_current_updates,@function
gimp_rectangle_options_string_current_updates: # @gimp_rectangle_options_string_current_updates
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_number_pair_entry_get_user_override
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	cmpl	$0, 160(%rdx)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	je	.LBB11_2
# BB#1:                                 # %cond.true
	movabsq	$.L.str.66, %rdi
	callq	gettext
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB11_3
.LBB11_3:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_number_pair_entry_set_default_text
	movb	$1, %cl
	movq	-32(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-32(%rbp), %rax
	cmpl	$0, 160(%rax)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB11_5
# BB#4:                                 # %lor.rhs
	cmpl	$0, -36(%rbp)
	setne	%al
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB11_5:                               # %lor.end
	movb	-73(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	gtk_widget_set_sensitive
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_rectangle_options_string_current_updates, .Lfunc_end11-gimp_rectangle_options_string_current_updates
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_options_setup_ratio_completion,@function
gimp_rectangle_options_setup_ratio_completion: # @gimp_rectangle_options_setup_ratio_completion
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	gtk_entry_completion_get_type
	movabsq	$.L.str.67, %rsi
	movabsq	$.L.str.68, %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$2, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_entry_completion_set_text_column
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_completion
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_number_pair_entry_history_add, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.70, %rsi
	movabsq	$gimp_number_pair_entry_history_select, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_rectangle_options_setup_ratio_completion, .Lfunc_end12-gimp_rectangle_options_setup_ratio_completion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4643985272004935680     # double 300
	.text
	.align	16, 0x90
	.type	gimp_rectangle_options_prop_dimension_frame_new,@function
gimp_rectangle_options_prop_dimension_frame_new: # @gimp_rectangle_options_prop_dimension_frame_new
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
	subq	$208, %rsp
	movq	16(%rbp), %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	%r11, %rdi
	callq	gimp_frame_new
	xorl	%edi, %edi
	movl	$4, %esi
	movq	%rax, -64(%rbp)
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r10d, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r10d, %edx
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_prop_unit_combo_box_new
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %ecx
	movabsq	$.L.str.42, %r8
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-140(%rbp), %r9d        # 4-byte Reload
	callq	gimp_prop_size_entry_new
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_show_unit_menu
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %ecx
	movabsq	$.L.str.42, %r8
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%ecx, %edx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-176(%rbp), %r9d        # 4-byte Reload
	callq	gimp_prop_size_entry_new
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_show_unit_menu
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_rectangle_options_prop_dimension_frame_new, .Lfunc_end13-gimp_rectangle_options_prop_dimension_frame_new
	.cfi_endproc

	.globl	gimp_rectangle_options_fixed_rule_active
	.align	16, 0x90
	.type	gimp_rectangle_options_fixed_rule_active,@function
gimp_rectangle_options_fixed_rule_active: # @gimp_rectangle_options_fixed_rule_active
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_rectangle_options_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_rectangle_options_fixed_rule_active, %rsi
	movabsq	$.L.str.50, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_15
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 56(%rax)
	movb	%dl, -65(%rbp)          # 1-byte Spill
	je	.LBB14_14
# BB#13:                                # %land.rhs
	movq	-32(%rbp), %rax
	movl	60(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	sete	%dl
	movb	%dl, -65(%rbp)          # 1-byte Spill
.LBB14_14:                              # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB14_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_rectangle_options_fixed_rule_active, .Lfunc_end14-gimp_rectangle_options_fixed_rule_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_history_add,@function
gimp_number_pair_entry_history_add:     # @gimp_number_pair_entry_history_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %edx
	leaq	-40(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset
	movq	-8(%rbp), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_number_pair_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_number_pair_entry_get_values
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -76(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB15_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-72(%rbp), %rsi
	movl	$2, %edx
	leaq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	gtk_tree_model_get_value
	leaq	-40(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	g_value_get_string
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_4
# BB#3:                                 # %if.then
	leaq	-40(%rbp), %rdi
	callq	g_value_unset
	jmp	.LBB15_6
.LBB15_4:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-40(%rbp), %rdi
	callq	g_value_unset
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -76(%rbp)
	jmp	.LBB15_1
.LBB15_6:                               # %for.end
	cmpl	$0, -76(%rbp)
	je	.LBB15_8
# BB#7:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gtk_list_store_move_after
	jmp	.LBB15_9
.LBB15_8:                               # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_append
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	%r9d, -164(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$2, %al
	callq	gtk_list_store_set
.LBB15_9:                               # %if.end.18
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_number_pair_entry_history_add, .Lfunc_end15-gimp_number_pair_entry_history_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_number_pair_entry_history_select,@function
gimp_number_pair_entry_history_select:  # @gimp_number_pair_entry_history_select
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
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	-40(%rbp), %r8
	movl	$1, %r9d
	leaq	-48(%rbp), %r10
	movl	$4294967295, %r11d      # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	callq	gtk_tree_model_get
	movq	-32(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_number_pair_entry_set_values
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_number_pair_entry_history_select, .Lfunc_end16-gimp_number_pair_entry_history_select
	.cfi_endproc

	.type	gimp_rectangle_options_interface_get_type.iface_type,@object # @gimp_rectangle_options_interface_get_type.iface_type
	.local	gimp_rectangle_options_interface_get_type.iface_type
	.comm	gimp_rectangle_options_interface_get_type.iface_type,8,8
	.type	gimp_rectangle_options_interface_get_type.iface_info,@object # @gimp_rectangle_options_interface_get_type.iface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_rectangle_options_interface_get_type.iface_info:
	.short	16                      # 0x10
	.zero	6
	.quad	gimp_rectangle_options_iface_base_init
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_rectangle_options_interface_get_type.iface_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpRectangleOptionsInterface"
	.size	.L.str, 30

	.type	gimp_rectangle_options_get_private.private_key,@object # @gimp_rectangle_options_get_private.private_key
	.local	gimp_rectangle_options_get_private.private_key
	.comm	gimp_rectangle_options_get_private.private_key,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_rectangle_options_get_private,@object # @__func__.gimp_rectangle_options_get_private
.L__func__.gimp_rectangle_options_get_private:
	.asciz	"gimp_rectangle_options_get_private"
	.size	.L__func__.gimp_rectangle_options_get_private, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_RECTANGLE_OPTIONS (options)"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-rectangle-options-private"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"auto-shrink"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"shrink-merged"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"guide"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"x"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"y"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"width"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"height"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"position-unit"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"size-unit"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"fixed-rule-active"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"fixed-rule"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"desired-fixed-width"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"desired-fixed-height"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"desired-fixed-size-width"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"desired-fixed-size-height"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"default-fixed-size-width"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"default-fixed-size-height"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"overridden-fixed-size"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"aspect-numerator"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"aspect-denominator"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"default-aspect-numerator"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"default-aspect-denominator"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"overridden-fixed-aspect"
	.size	.L.str.26, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"use-string-current"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"fixed-unit"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"fixed-center"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.30, 54

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimprectangleoptions.c"
	.size	.L.str.31, 23

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"property"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Expand from center"
	.size	.L.str.33, 19

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Fixed:"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"toggled"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"changed"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	":/xX*"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"notify::user-override"
	.size	.L.str.38, 22

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"notify::use-string-current"
	.size	.L.str.39, 27

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"aspect"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%a"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"xX*:/"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Position:"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Size:"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"highlight"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Highlight"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Auto Shrink"
	.size	.L.str.48, 12

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Shrink merged"
	.size	.L.str.49, 14

	.type	.L__func__.gimp_rectangle_options_fixed_rule_active,@object # @__func__.gimp_rectangle_options_fixed_rule_active
.L__func__.gimp_rectangle_options_fixed_rule_active:
	.asciz	"gimp_rectangle_options_fixed_rule_active"
	.size	.L__func__.gimp_rectangle_options_fixed_rule_active, 41

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"GIMP_IS_RECTANGLE_OPTIONS (rectangle_options)"
	.size	.L.str.50, 46

	.type	gimp_rectangle_options_iface_base_init.initialized,@object # @gimp_rectangle_options_iface_base_init.initialized
	.local	gimp_rectangle_options_iface_base_init.initialized
	.comm	gimp_rectangle_options_iface_base_init.initialized,4,4
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Automatically shrink to the nearest rectangular shape in a layer"
	.size	.L.str.51, 65

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Use all visible layers when shrinking the selection"
	.size	.L.str.52, 52

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Composition guides such as rule of thirds"
	.size	.L.str.53, 42

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"X coordinate of top left corner"
	.size	.L.str.54, 32

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Y coordinate of top left corner"
	.size	.L.str.55, 32

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Width of selection"
	.size	.L.str.56, 19

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Height of selection"
	.size	.L.str.57, 20

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Unit of top left corner coordinate"
	.size	.L.str.58, 35

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Unit of selection size"
	.size	.L.str.59, 23

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Enable lock of aspect ratio, width, height or size"
	.size	.L.str.60, 51

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Choose what has to be locked"
	.size	.L.str.61, 29

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Custom fixed width"
	.size	.L.str.62, 19

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Custom fixed height"
	.size	.L.str.63, 20

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Unit of fixed width, height or size"
	.size	.L.str.64, 36

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Expand selection from center outwards"
	.size	.L.str.65, 38

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Current"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"model"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"inline-completion"
	.size	.L.str.68, 18

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"ratio-changed"
	.size	.L.str.69, 14

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"match-selected"
	.size	.L.str.70, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
