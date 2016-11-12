	.text
	.file	"brush-select-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	register_brush_select_procs
	.align	16, 0x90
	.type	register_brush_select_procs,@function
register_brush_select_procs:            # @register_brush_select_procs
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
	pushq	%r14
	pushq	%rbx
	subq	$336, %rsp              # imm = 0x150
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$brushes_popup_invoker, %rax
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.1, %rdx
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-32(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movl	-80(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-32(%rbp), %r10
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -112(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$1000, %r8d             # imm = 0x3E8
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -156(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brushes_close_popup_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -192(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.24, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movl	%ebx, -212(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brushes_set_popup_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-240(%rbp), %r8         # 8-byte Reload
	movq	-240(%rbp), %r9         # 8-byte Reload
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -248(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.24, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movl	%ebx, -268(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	movl	-272(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -276(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -288(%rbp)        # 8-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movsd	-312(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$1000, %r8d             # imm = 0x3E8
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -324(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_brush_select_procs, .Lfunc_end0-register_brush_select_procs
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	brushes_popup_invoker,@function
brushes_popup_invoker:                  # @brushes_popup_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	$1, -92(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -132(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -136(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB1_4
# BB#2:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	je	.LBB1_4
# BB#3:                                 # %lor.lhs.false.19
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-112(%rbp), %r9
	movq	-104(%rbp), %r10
	movq	-120(%rbp), %r11
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movl	-136(%rbp), %ecx
	movl	-132(%rbp), %ebx
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-160(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-152(%rbp), %r12        # 8-byte Reload
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r9, %r8
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movaps	%xmm1, %xmm0
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movl	-188(%rbp), %r13d       # 4-byte Reload
	movl	%r13d, 24(%rsp)
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, 32(%rsp)
	movl	%ebx, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$1, %al
	callq	gimp_pdb_dialog_new
	cmpl	$0, %eax
	jne	.LBB1_5
.LBB1_4:                                # %if.then.23
	movl	$0, -92(%rbp)
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.24
	movq	-48(%rbp), %rdi
	movl	-92(%rbp), %esi
	cmpq	$0, -88(%rbp)
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movl	%esi, -212(%rbp)        # 4-byte Spill
	je	.LBB1_8
# BB#7:                                 # %cond.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_9:                                # %cond.end
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	-212(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	brushes_popup_invoker, .Lfunc_end1-brushes_popup_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brushes_close_popup_invoker,@function
brushes_close_popup_invoker:            # @brushes_close_popup_invoker
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB2_4
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	je	.LBB2_4
# BB#3:                                 # %lor.lhs.false.4
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_pdb_dialog_close
	cmpl	$0, %eax
	jne	.LBB2_5
.LBB2_4:                                # %if.then.8
	movl	$0, -52(%rbp)
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.9
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB2_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_9
.LBB2_9:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	brushes_close_popup_invoker, .Lfunc_end2-brushes_close_popup_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	brushes_set_popup_invoker,@function
brushes_set_popup_invoker:              # @brushes_set_popup_invoker
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
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp19:
	.cfi_offset %rbx, -32
.Ltmp20:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$1, -68(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -100(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -104(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB3_6
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB3_4
# BB#2:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	je	.LBB3_4
# BB#3:                                 # %lor.lhs.false.16
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movabsq	$.L.str.14, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movl	-104(%rbp), %r10d
	movl	-100(%rbp), %r11d
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movaps	%xmm1, %xmm0
	movl	%r10d, (%rsp)
	movq	-120(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$1, %al
	callq	gimp_pdb_dialog_set
	cmpl	$0, %eax
	jne	.LBB3_5
.LBB3_4:                                # %if.then.20
	movl	$0, -68(%rbp)
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %if.end.21
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	je	.LBB3_8
# BB#7:                                 # %cond.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB3_9
.LBB3_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB3_9
.LBB3_9:                                # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	brushes_set_popup_invoker, .Lfunc_end3-brushes_set_popup_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-brushes-popup"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invokes the Gimp brush selection."
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure opens the brush selection dialog."
	.size	.L.str.2, 49

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Andy Thomas"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1998"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"brush-callback"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"brush callback"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The callback PDB proc to call when brush selection is made"
	.size	.L.str.7, 59

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"popup-title"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"popup title"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Title of the brush selection dialog"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"initial-brush"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"initial brush"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The name of the brush to set as the first selected"
	.size	.L.str.13, 51

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"opacity"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The initial opacity of the brush"
	.size	.L.str.15, 33

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"spacing"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The initial spacing of the brush (if < 0 then use brush default spacing)"
	.size	.L.str.17, 73

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"paint-mode"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"paint mode"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The initial paint mode"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-brushes-close-popup"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Close the brush selection dialog."
	.size	.L.str.22, 34

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"This procedure closes an opened brush selection dialog."
	.size	.L.str.23, 56

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"The name of the callback registered for this pop-up"
	.size	.L.str.24, 52

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-brushes-set-popup"
	.size	.L.str.25, 23

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Sets the current brush in a brush selection dialog."
	.size	.L.str.26, 52

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"brush-name"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"brush name"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"The name of the brush to set as selected"
	.size	.L.str.29, 41


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
