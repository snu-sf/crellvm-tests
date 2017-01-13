	.text
	.file	"convert-cmds.bc"
	.globl	register_convert_procs
	.align	16, 0x90
	.type	register_convert_procs,@function
register_convert_procs:                 # @register_convert_procs
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
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$image_convert_rgb_invoker, %rax
	movq	%rdi, -16(%rbp)
	movq	%rax, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
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
	movq	-24(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_convert_grayscale_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_convert_indexed_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -112(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_convert_dither_type_get_type
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_convert_palette_type_get_type
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -192(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_convert_set_dither_matrix_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.34, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -216(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -228(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rax
	movabsq	$.L.str.38, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -244(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$.L.str.41, %rdx
	movl	$1, %ecx
	movl	$1024, %r8d             # imm = 0x400
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	movl	-248(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -252(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rax
	movabsq	$.L.str.43, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_int8_array
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_convert_procs, .Lfunc_end0-register_convert_procs
	.cfi_endproc

	.align	16, 0x90
	.type	image_convert_rgb_invoker,@function
image_convert_rgb_invoker:              # @image_convert_rgb_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_5
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_not_base_type
	cmpl	$0, %eax
	je	.LBB1_3
# BB#2:                                 # %if.then.3
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, 24(%rsp)
	callq	gimp_image_convert
	movl	%eax, -52(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB1_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	image_convert_rgb_invoker, .Lfunc_end1-image_convert_rgb_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_convert_grayscale_invoker,@function
image_convert_grayscale_invoker:        # @image_convert_grayscale_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_5
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_not_base_type
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then.3
	movl	$1, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r10, 24(%rsp)
	callq	gimp_image_convert
	movl	%eax, -52(%rbp)
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB2_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_8:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_convert_grayscale_invoker, .Lfunc_end2-image_convert_grayscale_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_convert_indexed_invoker,@function
image_convert_indexed_invoker:          # @image_convert_indexed_invoker
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp13:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -80(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -88(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -92(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_string
	movq	%rax, -104(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB3_20
# BB#1:                                 # %if.then
	movl	$2, %esi
	movq	$0, -112(%rbp)
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	gimp_pdb_image_is_not_base_type
	cmpl	$0, %eax
	je	.LBB3_16
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_is_flat
	cmpl	$0, %eax
	je	.LBB3_16
# BB#3:                                 # %if.then.26
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB3_4
	jmp	.LBB3_24
.LBB3_24:                               # %if.then.26
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB3_8
	jmp	.LBB3_14
.LBB3_4:                                # %sw.bb
	cmpl	$1, -84(%rbp)
	jl	.LBB3_6
# BB#5:                                 # %lor.lhs.false
	cmpl	$256, -84(%rbp)         # imm = 0x100
	jle	.LBB3_7
.LBB3_6:                                # %if.then.28
	movl	$0, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_15
.LBB3_8:                                # %sw.bb.29
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-56(%rbp), %rcx
	callq	gimp_pdb_get_palette
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_10
# BB#9:                                 # %if.then.32
	movl	$0, -60(%rbp)
	jmp	.LBB3_13
.LBB3_10:                               # %if.else
	movq	-112(%rbp), %rax
	cmpl	$256, 40(%rax)          # imm = 0x100
	jle	.LBB3_12
# BB#11:                                # %if.then.34
	movq	-56(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.44, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -60(%rbp)
.LBB3_12:                               # %if.end.37
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.38
	jmp	.LBB3_15
.LBB3_14:                               # %sw.default
	jmp	.LBB3_15
.LBB3_15:                               # %sw.epilog
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.39
	movl	$0, -60(%rbp)
.LBB3_17:                               # %if.end.40
	cmpl	$0, -60(%rbp)
	je	.LBB3_19
# BB#18:                                # %if.then.42
	movl	$2, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdi
	movl	-84(%rbp), %edx
	movl	-76(%rbp), %eax
	movl	-88(%rbp), %r8d
	movl	-92(%rbp), %r9d
	movl	-80(%rbp), %r10d
	movq	-112(%rbp), %r11
	movq	-56(%rbp), %rbx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movl	%r10d, (%rsp)
	movq	%r11, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	gimp_image_convert
	movl	%eax, -60(%rbp)
.LBB3_19:                               # %if.end.44
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.45
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB3_22
# BB#21:                                # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_23
.LBB3_22:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_23
.LBB3_23:                               # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_convert_indexed_invoker, .Lfunc_end3-image_convert_indexed_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_convert_set_dither_matrix_invoker,@function
image_convert_set_dither_matrix_invoker: # @image_convert_set_dither_matrix_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_int
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_int8array
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_7
# BB#1:                                 # %if.then
	cmpl	$0, -56(%rbp)
	je	.LBB4_4
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, -60(%rbp)
	je	.LBB4_4
# BB#3:                                 # %lor.lhs.false.11
	movl	-64(%rbp), %eax
	movl	-56(%rbp), %ecx
	imull	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_5
.LBB4_4:                                # %if.then.13
	movq	-72(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edx
	callq	gimp_image_convert_set_dither_matrix
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	movq	-48(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movl	$3, %edx
	movabsq	$.L.str.45, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_set_error_literal
	movl	$0, -52(%rbp)
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.15
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB4_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_10
.LBB4_10:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	image_convert_set_dither_matrix_invoker, .Lfunc_end4-image_convert_set_dither_matrix_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-image-convert-rgb"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Convert specified image to RGB color"
	.size	.L.str.1, 37

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure converts the specified image to RGB color. This process requires an image in Grayscale or Indexed color mode. No image content is lost in this process aside from the colormap for an indexed image."
	.size	.L.str.2, 212

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1995-1996"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The image"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-image-convert-grayscale"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Convert specified image to grayscale (256 intensity levels)"
	.size	.L.str.8, 60

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"This procedure converts the specified image to grayscale with 8 bits per pixel (256 intensity levels). This process requires an image in RGB or Indexed color mode."
	.size	.L.str.9, 164

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-image-convert-indexed"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Convert specified image to and Indexed image"
	.size	.L.str.11, 45

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"This procedure converts the specified image to 'indexed' color. This process requires an image in RGB or Grayscale mode. The 'palette_type' specifies what kind of palette to use, A type of '0' means to use an optimal palette of 'num_cols' generated from the colors in the image. A type of '1' means to re-use the previous palette (not currently implemented). A type of '2' means to use the so-called WWW-optimized palette. Type '3' means to use only black and white colors. A type of '4' means to use a palette from the gimp palettes directories. The 'dither type' specifies what kind of dithering to use. '0' means no dithering, '1' means standard Floyd-Steinberg error diffusion, '2' means Floyd-Steinberg error diffusion with reduced bleeding, '3' means dithering based on pixel location ('Fixed' dithering)."
	.size	.L.str.12, 812

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dither-type"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"dither type"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The dither type to use"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"palette-type"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"palette type"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The type of palette to use"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"num-cols"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"num cols"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The number of colors to quantize to, ignored unless (palette_type == GIMP_MAKE_PALETTE)"
	.size	.L.str.21, 88

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"alpha-dither"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"alpha dither"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Dither transparency to fake partial opacity"
	.size	.L.str.24, 44

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"remove-unused"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"remove unused"
	.size	.L.str.26, 14

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Remove unused or duplicate color entries from final palette, ignored if (palette_type == GIMP_MAKE_PALETTE)"
	.size	.L.str.27, 108

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"palette"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"The name of the custom palette to use, ignored unless (palette_type == GIMP_CUSTOM_PALETTE)"
	.size	.L.str.29, 92

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-image-convert-set-dither-matrix"
	.size	.L.str.30, 37

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Set dither matrix for conversion to indexed"
	.size	.L.str.31, 44

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"This procedure sets the dither matrix used when converting images to INDEXED mode with positional dithering."
	.size	.L.str.32, 109

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"David Gowers"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"2006"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"width"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Width of the matrix (0 to reset to default matrix)"
	.size	.L.str.36, 51

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"height"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Height of the matrix (0 to reset to default matrix)"
	.size	.L.str.38, 52

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"matrix-length"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"matrix length"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"The length of 'matrix'"
	.size	.L.str.41, 23

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"matrix"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"The matrix -- all values must be >= 1"
	.size	.L.str.43, 38

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Cannot convert to a palette with more than 256 colors."
	.size	.L.str.44, 55

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Dither matrix length must be width * height"
	.size	.L.str.45, 44


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
