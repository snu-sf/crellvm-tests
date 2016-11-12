	.text
	.file	"gimpdynamics.bc"
	.globl	gimp_dynamics_get_type
	.align	16, 0x90
	.type	gimp_dynamics_get_type,@function
gimp_dynamics_get_type:                 # @gimp_dynamics_get_type
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
	movq	gimp_dynamics_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dynamics_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_dynamics_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_dynamics_init, %rcx
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
	movabsq	$gimp_dynamics_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dynamics_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dynamics_get_type, .Lfunc_end0-gimp_dynamics_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_class_intern_init,@function
gimp_dynamics_class_intern_init:        # @gimp_dynamics_class_intern_init
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
	movq	%rax, gimp_dynamics_parent_class
	cmpl	$0, GimpDynamics_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDynamics_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dynamics_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dynamics_class_intern_init, .Lfunc_end1-gimp_dynamics_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_init,@function
gimp_dynamics_init:                     # @gimp_dynamics_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movabsq	$.L.str.11, %rsi
	movl	$5, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movabsq	$.L.str.12, %rsi
	movl	$4, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movabsq	$.L.str.13, %rsi
	movl	$8, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movabsq	$.L.str.14, %rsi
	movl	$8, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movabsq	$.L.str.15, %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movabsq	$.L.str.16, %rsi
	movl	$6, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movabsq	$.L.str.17, %rsi
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movabsq	$.L.str.18, %rsi
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movabsq	$.L.str.19, %rsi
	movl	$10, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movabsq	$.L.str.20, %rsi
	movl	$7, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_create_output
	movq	-16(%rbp), %rsi
	movq	%rax, 80(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dynamics_init, .Lfunc_end2-gimp_dynamics_init
	.cfi_endproc

	.globl	gimp_dynamics_new
	.align	16, 0x90
	.type	gimp_dynamics_new,@function
gimp_dynamics_new:                      # @gimp_dynamics_new
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dynamics_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB3_8
# BB#7:                                 # %if.then.4
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.5
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dynamics_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.LBB3_9:                                # %if.end.6
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.7
	callq	gimp_dynamics_get_type
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dynamics_new, .Lfunc_end3-gimp_dynamics_new
	.cfi_endproc

	.globl	gimp_dynamics_get_standard
	.align	16, 0x90
	.type	gimp_dynamics_get_standard,@function
gimp_dynamics_get_standard:             # @gimp_dynamics_get_standard
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, gimp_dynamics_get_standard.standard_dynamics
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_new
	movq	%rax, gimp_dynamics_get_standard.standard_dynamics
	movq	gimp_dynamics_get_standard.standard_dynamics, %rdi
	callq	gimp_data_clean
	movabsq	$.L.str.6, %rsi
	movq	gimp_dynamics_get_standard.standard_dynamics, %rdi
	callq	gimp_data_make_internal
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_dynamics_get_standard.standard_dynamics, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_dynamics_get_standard.standard_dynamics, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
.LBB4_2:                                # %if.end
	movq	gimp_dynamics_get_standard.standard_dynamics, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dynamics_get_standard, .Lfunc_end4-gimp_dynamics_get_standard
	.cfi_endproc

	.globl	gimp_dynamics_get_output
	.align	16, 0x90
	.type	gimp_dynamics_get_output,@function
gimp_dynamics_get_output:               # @gimp_dynamics_get_output
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dynamics_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dynamics_get_output, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_25
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$10, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	ja	.LBB5_24
# BB#26:                                # %do.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_13:                               # %sw.bb
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_14:                               # %sw.bb.13
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_15:                               # %sw.bb.14
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_16:                               # %sw.bb.15
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_17:                               # %sw.bb.16
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_18:                               # %sw.bb.17
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_19:                               # %sw.bb.18
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_20:                               # %sw.bb.19
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_21:                               # %sw.bb.20
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_22:                               # %sw.bb.21
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_23:                               # %sw.bb.22
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_24:                               # %sw.default
	movq	$0, -8(%rbp)
.LBB5_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dynamics_get_output, .Lfunc_end5-gimp_dynamics_get_output
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_13
	.quad	.LBB5_18
	.quad	.LBB5_21
	.quad	.LBB5_20
	.quad	.LBB5_15
	.quad	.LBB5_14
	.quad	.LBB5_19
	.quad	.LBB5_23
	.quad	.LBB5_16
	.quad	.LBB5_17
	.quad	.LBB5_22

	.text
	.align	16, 0x90
	.type	gimp_dynamics_class_init,@function
gimp_dynamics_class_init:               # @gimp_dynamics_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp21:
	.cfi_offset %rbx, -48
.Ltmp22:
	.cfi_offset %r12, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.9, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movabsq	$gimp_dynamics_duplicate, %rdx
	movabsq	$gimp_dynamics_get_extension, %r9
	movabsq	$gimp_dynamics_save, %r10
	movabsq	$.L.str.8, %r11
	movabsq	$gimp_dynamics_dispatch_properties_changed, %rbx
	movabsq	$gimp_dynamics_get_property, %r14
	movabsq	$gimp_dynamics_set_property, %r15
	movabsq	$gimp_dynamics_finalize, %r12
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%r12, 48(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 24(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 32(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 56(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 160(%rax)
	movq	-56(%rbp), %rax
	movq	%r10, 288(%rax)
	movq	-56(%rbp), %rax
	movq	%r9, 296(%rax)
	movq	-56(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$6, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.12, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$7, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.13, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$10, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.14, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$11, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.15, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.16, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$8, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.17, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$5, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.18, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$4, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.19, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$12, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.20, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$9, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$88, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dynamics_class_init, .Lfunc_end6-gimp_dynamics_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_finalize,@function
gimp_dynamics_finalize:                 # @gimp_dynamics_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_dynamics_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dynamics_finalize, .Lfunc_end7-gimp_dynamics_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_set_property,@function
gimp_dynamics_set_property:             # @gimp_dynamics_set_property
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$11, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB8_13
# BB#20:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_value_get_string
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
	jmp	.LBB8_16
.LBB8_2:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_3:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_4:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_5:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_6:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_7:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_8:                                # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_9:                                # %sw.bb.19
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_10:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_11:                               # %sw.bb.23
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_12:                               # %sw.bb.25
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_13:                               # %sw.default
	jmp	.LBB8_14
.LBB8_14:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %r8d
	movq	-72(%rbp), %rax
	movq	8(%rax), %r9
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%r9, -136(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movl	$347, %edx              # imm = 0x15B
	movabsq	$.L.str.23, %rcx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#15:                                # %do.end
	jmp	.LBB8_16
.LBB8_16:                               # %sw.epilog
	cmpq	$0, -48(%rbp)
	je	.LBB8_19
# BB#17:                                # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB8_19
# BB#18:                                # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$256, %edx              # imm = 0x100
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB8_19:                               # %if.end
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dynamics_set_property, .Lfunc_end8-gimp_dynamics_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_1
	.quad	.LBB8_2
	.quad	.LBB8_7
	.quad	.LBB8_10
	.quad	.LBB8_9
	.quad	.LBB8_3
	.quad	.LBB8_4
	.quad	.LBB8_8
	.quad	.LBB8_12
	.quad	.LBB8_5
	.quad	.LBB8_6
	.quad	.LBB8_11

	.text
	.align	16, 0x90
	.type	gimp_dynamics_get_property,@function
gimp_dynamics_get_property:             # @gimp_dynamics_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$11, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB9_13
# BB#17:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_string
	jmp	.LBB9_16
.LBB9_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_3:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_4:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_5:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_6:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_7:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_8:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_9:                                # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_10:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_11:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_12:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_16
.LBB9_13:                               # %sw.default
	jmp	.LBB9_14
.LBB9_14:                               # %do.body
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
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movl	$418, %edx              # imm = 0x1A2
	movabsq	$.L.str.23, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#15:                                # %do.end
	jmp	.LBB9_16
.LBB9_16:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dynamics_get_property, .Lfunc_end9-gimp_dynamics_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_1
	.quad	.LBB9_2
	.quad	.LBB9_7
	.quad	.LBB9_10
	.quad	.LBB9_9
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_8
	.quad	.LBB9_12
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_11

	.text
	.align	16, 0x90
	.type	gimp_dynamics_dispatch_properties_changed,@function
gimp_dynamics_dispatch_properties_changed: # @gimp_dynamics_dispatch_properties_changed
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	gimp_dynamics_parent_class, %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_class_cast
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movl	$0, -28(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB10_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB10_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
	jmp	.LBB10_6
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_5
.LBB10_5:                               # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB10_1
.LBB10_6:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dynamics_dispatch_properties_changed, .Lfunc_end10-gimp_dynamics_dispatch_properties_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_get_extension,@function
gimp_dynamics_get_extension:            # @gimp_dynamics_get_extension
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
	movabsq	$.L.str.24, %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dynamics_get_extension, .Lfunc_end11-gimp_dynamics_get_extension
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_duplicate,@function
gimp_dynamics_duplicate:                # @gimp_dynamics_duplicate
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_dynamics_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movq	-16(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dynamics_duplicate, .Lfunc_end12-gimp_dynamics_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_create_output,@function
gimp_dynamics_create_output:            # @gimp_dynamics_create_output
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_dynamics_output_new
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_dynamics_output_notify, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_dynamics_create_output, .Lfunc_end14-gimp_dynamics_create_output
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_notify,@function
gimp_dynamics_output_notify:            # @gimp_dynamics_output_notify
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
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_notify
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_dynamics_output_notify, .Lfunc_end15-gimp_dynamics_output_notify
	.cfi_endproc

	.type	gimp_dynamics_get_type.g_define_type_id__volatile,@object # @gimp_dynamics_get_type.g_define_type_id__volatile
	.local	gimp_dynamics_get_type.g_define_type_id__volatile
	.comm	gimp_dynamics_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDynamics"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_dynamics_new,@object # @__func__.gimp_dynamics_new
.L__func__.gimp_dynamics_new:
	.asciz	"gimp_dynamics_new"
	.size	.L__func__.gimp_dynamics_new, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name[0] != '\\0'"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	gimp_dynamics_get_standard.standard_dynamics,@object # @gimp_dynamics_get_standard.standard_dynamics
	.local	gimp_dynamics_get_standard.standard_dynamics
	.comm	gimp_dynamics_get_standard.standard_dynamics,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Standard dynamics"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-dynamics-standard"
	.size	.L.str.6, 23

	.type	.L__func__.gimp_dynamics_get_output,@object # @__func__.gimp_dynamics_get_output
.L__func__.gimp_dynamics_get_output:
	.asciz	"gimp_dynamics_get_output"
	.size	.L__func__.gimp_dynamics_get_output, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_DYNAMICS (dynamics)"
	.size	.L.str.7, 28

	.type	gimp_dynamics_parent_class,@object # @gimp_dynamics_parent_class
	.local	gimp_dynamics_parent_class
	.comm	gimp_dynamics_parent_class,8,8
	.type	GimpDynamics_private_offset,@object # @GimpDynamics_private_offset
	.local	GimpDynamics_private_offset
	.comm	GimpDynamics_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-dynamics"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Nameless dynamics"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"opacity-output"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"force-output"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"hardness-output"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"rate-output"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"flow-output"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"size-output"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"aspect-ratio-output"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"color-output"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"angle-output"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"jitter-output"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"spacing-output"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.21, 54

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimpdynamics.c"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"property"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	".gdyn"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"notify"
	.size	.L.str.25, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
