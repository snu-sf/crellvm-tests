	.text
	.file	"gimpbaseconfig.bc"
	.globl	gimp_base_config_get_type
	.align	16, 0x90
	.type	gimp_base_config_get_type,@function
gimp_base_config_get_type:              # @gimp_base_config_get_type
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
	cmpq	$0, gimp_base_config_get_type.config_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_base_config_get_type.config_info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_base_config_get_type.config_type
.LBB0_2:                                # %if.end
	movq	gimp_base_config_get_type.config_type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_base_config_get_type, .Lfunc_end0-gimp_base_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_base_config_class_init,@function
gimp_base_config_class_init:            # @gimp_base_config_class_init
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.2, %rdx
	movl	$2, %ecx
	movabsq	$.L.str.3, %r8
	movl	$1511, %r9d             # imm = 0x5E7
	movabsq	$gimp_base_config_get_property, %r10
	movabsq	$gimp_base_config_set_property, %r11
	movabsq	$gimp_base_config_finalize, %rbx
	movq	%rax, parent_class
	movq	-24(%rbp), %rax
	movq	%rbx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r11, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.5, %rdx
	movl	$2, %ecx
	movabsq	$.L.str.6, %r8
	movl	$1511, %r9d             # imm = 0x5E7
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	callq	get_number_of_processors
	movl	%eax, -28(%rbp)
	cmpl	$16, -28(%rbp)
	jge	.LBB1_2
# BB#1:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movl	$16, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB1_3
.LBB1_3:                                # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.8, %rdx
	movl	$1, %ecx
	movl	$16, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %r10
	movl	-28(%rbp), %eax
	movl	%r9d, -64(%rbp)         # 4-byte Spill
	movl	%eax, %r9d
	movl	$487, (%rsp)            # imm = 0x1E7
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	g_param_spec_uint
	movl	$3, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	callq	get_physical_memory_size
	movabsq	$4398046511104, %rdx    # imm = 0x40000000000
	movq	%rax, -40(%rbp)
	cmpq	-40(%rbp), %rdx
	jae	.LBB1_5
# BB#4:                                 # %cond.true.8
	movabsq	$4398046511104, %rax    # imm = 0x40000000000
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false.9
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB1_6:                                # %cond.end.10
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jbe	.LBB1_8
# BB#7:                                 # %if.then
	movq	-40(%rbp), %rax
	shrq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movq	$1073741824, -40(%rbp)  # imm = 0x40000000
.LBB1_9:                                # %if.end
	movabsq	$.L.str.9, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.10, %rdx
	movabsq	$4398046511104, %r8     # imm = 0x40000000000
	movl	$2535, %eax             # imm = 0x9E7
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %r9
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	$2535, (%rsp)           # imm = 0x9E7
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_memsize
	movl	$4, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$8455, %r8d             # imm = 0x2107
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_base_config_class_init, .Lfunc_end1-gimp_base_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_base_config_init,@function
gimp_base_config_init:                  # @gimp_base_config_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	g_type_check_class_cast
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_debug_add_instance
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_base_config_init, .Lfunc_end2-gimp_base_config_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_base_config_finalize,@function
gimp_base_config_finalize:              # @gimp_base_config_finalize
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
	callq	gimp_base_config_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	gimp_debug_remove_instance
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_base_config_finalize, .Lfunc_end3-gimp_base_config_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_base_config_set_property,@function
gimp_base_config_set_property:          # @gimp_base_config_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_base_config_get_type
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
	ja	.LBB4_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	.LBB4_9
.LBB4_2:                                # %sw.bb.4
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB4_9
.LBB4_3:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_uint
	movq	-40(%rbp), %rdi
	movl	%eax, 40(%rdi)
	jmp	.LBB4_9
.LBB4_4:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_uint64
	movq	-40(%rbp), %rdi
	movq	%rax, 48(%rdi)
	jmp	.LBB4_9
.LBB4_5:                                # %sw.bb.11
	jmp	.LBB4_9
.LBB4_6:                                # %sw.default
	jmp	.LBB4_7
.LBB4_7:                                # %do.body
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
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$219, %edx
	movabsq	$.L.str.14, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB4_9
.LBB4_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_base_config_set_property, .Lfunc_end4-gimp_base_config_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_1
	.quad	.LBB4_2
	.quad	.LBB4_3
	.quad	.LBB4_4
	.quad	.LBB4_5

	.text
	.align	16, 0x90
	.type	gimp_base_config_get_property,@function
gimp_base_config_get_property:          # @gimp_base_config_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_base_config_get_type
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
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB5_9
.LBB5_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB5_9
.LBB5_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %esi
	callq	g_value_set_uint
	jmp	.LBB5_9
.LBB5_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_uint64
	jmp	.LBB5_9
.LBB5_5:                                # %sw.bb.5
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
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$252, %edx
	movabsq	$.L.str.14, %rcx
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
	.size	gimp_base_config_get_property, .Lfunc_end5-gimp_base_config_get_property
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
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.15, %r9d
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

	.type	gimp_base_config_get_type.config_type,@object # @gimp_base_config_get_type.config_type
	.local	gimp_base_config_get_type.config_type
	.comm	gimp_base_config_get_type.config_type,8,8
	.type	gimp_base_config_get_type.config_info,@object # @gimp_base_config_get_type.config_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_base_config_get_type.config_info:
	.short	136                     # 0x88
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_base_config_class_init
	.quad	0
	.quad	0
	.short	56                      # 0x38
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_base_config_init
	.quad	0
	.size	gimp_base_config_get_type.config_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBaseConfig"
	.size	.L.str, 15

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"temp-path"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Sets the folder for temporary storage. Files will appear here during the course of running GIMP.  Most files will disappear when GIMP exits, but some files are likely to remain, so it is best if this folder not be one that is shared by other users."
	.size	.L.str.2, 249

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"${gimp_dir}/tmp"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"swap-path"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Sets the swap file location. GIMP uses a tile based memory allocation scheme. The swap file is used to quickly and easily swap tiles out to disk and back in. Be aware that the swap file can easily get very large if GIMP is used with large images. Also, things can get horribly slow if the swap file is created on a folder that is mounted over NFS.  For these reasons, it may be desirable to put your swap file in \"/tmp\"."
	.size	.L.str.5, 421

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"${gimp_dir}"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"num-processors"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Sets how many processors GIMP should try to use simultaneously."
	.size	.L.str.8, 64

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"tile-cache-size"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"When the amount of pixel data exceeds this limit, GIMP will start to swap tiles to disk.  This is a lot slower but it makes it possible to work on images that wouldn't fit into memory otherwise.  If you have a lot of RAM, you may want to set this to a higher value."
	.size	.L.str.10, 266

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stingy-memory-use"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.12, 54

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimpbaseconfig.c"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"property"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Gimp-Config"
	.size	.L.str.15, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
