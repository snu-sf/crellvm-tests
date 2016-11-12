	.text
	.file	"gimpcontainer.bc"
	.globl	gimp_container_get_type
	.align	16, 0x90
	.type	gimp_container_get_type,@function
gimp_container_get_type:                # @gimp_container_get_type
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
	movq	gimp_container_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_container_get_type.g_define_type_id__volatile, %rax
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
	movl	$248, %edx
	movabsq	$gimp_container_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_container_init, %rcx
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
	movabsq	$gimp_container_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_container_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_container_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_get_type, .Lfunc_end0-gimp_container_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_class_intern_init,@function
gimp_container_class_intern_init:       # @gimp_container_class_intern_init
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
	movq	%rax, gimp_container_parent_class
	cmpl	$0, GimpContainer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpContainer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_class_intern_init, .Lfunc_end1-gimp_container_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_init,@function
gimp_container_init:                    # @gimp_container_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$4, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 12(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_container_init, .Lfunc_end2-gimp_container_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_config_iface_init,@function
gimp_container_config_iface_init:       # @gimp_container_config_iface_init
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
	movabsq	$gimp_container_deserialize, %rax
	movabsq	$gimp_container_serialize, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, 16(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_container_config_iface_init, .Lfunc_end3-gimp_container_config_iface_init
	.cfi_endproc

	.globl	gimp_container_get_children_type
	.align	16, 0x90
	.type	gimp_container_get_children_type,@function
gimp_container_get_children_type:       # @gimp_container_get_children_type
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_children_type, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$4, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_container_get_children_type, .Lfunc_end4-gimp_container_get_children_type
	.cfi_endproc

	.globl	gimp_container_get_policy
	.align	16, 0x90
	.type	gimp_container_get_policy,@function
gimp_container_get_policy:              # @gimp_container_get_policy
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_policy, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_get_policy, .Lfunc_end5-gimp_container_get_policy
	.cfi_endproc

	.globl	gimp_container_get_n_children
	.align	16, 0x90
	.type	gimp_container_get_n_children,@function
gimp_container_get_n_children:          # @gimp_container_get_n_children
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_n_children, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_get_n_children, .Lfunc_end6-gimp_container_get_n_children
	.cfi_endproc

	.globl	gimp_container_add
	.align	16, 0x90
	.type	gimp_container_add,@function
gimp_container_add:                     # @gimp_container_add
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_add, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_44
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_44
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_20
# BB#19:                                # %if.then.25
	movl	$0, -84(%rbp)
	jmp	.LBB7_25
.LBB7_20:                               # %if.else.26
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_23
# BB#21:                                # %land.lhs.true.29
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_23
# BB#22:                                # %if.then.33
	movl	$1, -84(%rbp)
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.34
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_24:                               # %if.end.36
	jmp	.LBB7_25
.LBB7_25:                               # %if.end.37
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.40
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.41
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_add, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_44
.LBB7_28:                               # %if.end.42
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.43
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB7_31
# BB#30:                                # %if.then.46
	movabsq	$.L.str.5, %rdi
	movabsq	$.L__func__.gimp_container_add, %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_44
.LBB7_31:                               # %if.end.47
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB7_32:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_38
# BB#33:                                # %for.body
                                        #   in Loop: Header=BB7_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-96(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-96(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rcx
	movl	24(%rcx), %esi
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_qdata
# BB#34:                                # %for.inc
                                        #   in Loop: Header=BB7_32 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_36
# BB#35:                                # %cond.true
                                        #   in Loop: Header=BB7_32 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB7_37
.LBB7_36:                               # %cond.false
                                        #   in Loop: Header=BB7_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB7_37
.LBB7_37:                               # %cond.end
                                        #   in Loop: Header=BB7_32 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB7_32
.LBB7_38:                               # %for.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	je	.LBB7_39
	jmp	.LBB7_45
.LBB7_45:                               # %for.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB7_40
	jmp	.LBB7_41
.LBB7_39:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_41
.LBB7_40:                               # %sw.bb.57
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_container_disconnect_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB7_41:                               # %sw.epilog
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	container_signals, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	12(%rcx), %edx
	jne	.LBB7_43
# BB#42:                                # %if.then.64
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_add, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	12(%rsi), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rsi)
.LBB7_43:                               # %if.end.67
	movl	$1, -4(%rbp)
.LBB7_44:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_add, .Lfunc_end7-gimp_container_add
	.cfi_endproc

	.globl	gimp_container_have
	.align	16, 0x90
	.type	gimp_container_have,@function
gimp_container_have:                    # @gimp_container_have
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_have, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$1, 12(%rax)
	jge	.LBB8_14
# BB#13:                                # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB8_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_have, .Lfunc_end8-gimp_container_have
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_disconnect_callback,@function
gimp_container_disconnect_callback:     # @gimp_container_disconnect_callback
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_container_remove
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_container_disconnect_callback, .Lfunc_end10-gimp_container_disconnect_callback
	.cfi_endproc

	.globl	gimp_container_remove
	.align	16, 0x90
	.type	gimp_container_remove,@function
gimp_container_remove:                  # @gimp_container_remove
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_remove, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_46
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_46
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB11_20
# BB#19:                                # %if.then.25
	movl	$0, -84(%rbp)
	jmp	.LBB11_25
.LBB11_20:                              # %if.else.26
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_23
# BB#21:                                # %land.lhs.true.29
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB11_23
# BB#22:                                # %if.then.33
	movl	$1, -84(%rbp)
	jmp	.LBB11_24
.LBB11_23:                              # %if.else.34
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB11_24:                              # %if.end.36
	jmp	.LBB11_25
.LBB11_25:                              # %if.end.37
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB11_27
# BB#26:                                # %if.then.40
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.41
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_remove, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_46
.LBB11_28:                              # %if.end.42
	jmp	.LBB11_29
.LBB11_29:                              # %do.end.43
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	jne	.LBB11_31
# BB#30:                                # %if.then.46
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_container_remove, %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_46
.LBB11_31:                              # %if.end.47
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB11_32:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB11_40
# BB#33:                                # %for.body
                                        #   in Loop: Header=BB11_32 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rcx
	movl	24(%rcx), %esi
	movq	%rax, %rdi
	callq	g_object_get_qdata
	movl	%eax, %esi
	movl	%esi, %esi
	movl	%esi, %eax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB11_35
# BB#34:                                # %if.then.56
                                        #   in Loop: Header=BB11_32 Depth=1
	movq	-24(%rbp), %rax
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-96(%rbp), %rsi
	movl	24(%rsi), %esi
	movq	%rax, %rdi
	callq	g_object_set_qdata
.LBB11_35:                              # %if.end.59
                                        #   in Loop: Header=BB11_32 Depth=1
	jmp	.LBB11_36
.LBB11_36:                              # %for.inc
                                        #   in Loop: Header=BB11_32 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB11_38
# BB#37:                                # %cond.true
                                        #   in Loop: Header=BB11_32 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB11_39
.LBB11_38:                              # %cond.false
                                        #   in Loop: Header=BB11_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB11_39
.LBB11_39:                              # %cond.end
                                        #   in Loop: Header=BB11_32 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB11_32
.LBB11_40:                              # %for.end
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	container_signals+4, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	12(%rcx), %edx
	jne	.LBB11_42
# BB#41:                                # %if.then.67
	movabsq	$.L.str.9, %rdi
	movabsq	$.L__func__.gimp_container_remove, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	12(%rsi), %ecx
	addl	$-1, %ecx
	movl	%ecx, 12(%rsi)
.LBB11_42:                              # %if.end.70
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	je	.LBB11_43
	jmp	.LBB11_47
.LBB11_47:                              # %if.end.70
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB11_44
	jmp	.LBB11_45
.LBB11_43:                              # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB11_45
.LBB11_44:                              # %sw.bb.72
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_disconnect_callback, %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB11_45:                              # %sw.epilog
	movl	$1, -4(%rbp)
.LBB11_46:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_container_remove, .Lfunc_end11-gimp_container_remove
	.cfi_endproc

	.globl	gimp_container_insert
	.align	16, 0x90
	.type	gimp_container_insert,@function
gimp_container_insert:                  # @gimp_container_insert
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_insert, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_40
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_insert, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_40
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	jmp	.LBB12_18
.LBB12_18:                              # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_20
# BB#19:                                # %if.then.25
	movl	$0, -76(%rbp)
	jmp	.LBB12_25
.LBB12_20:                              # %if.else.26
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_23
# BB#21:                                # %land.lhs.true.29
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_23
# BB#22:                                # %if.then.33
	movl	$1, -76(%rbp)
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.34
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB12_24:                              # %if.end.36
	jmp	.LBB12_25
.LBB12_25:                              # %if.end.37
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_27
# BB#26:                                # %if.then.40
	jmp	.LBB12_28
.LBB12_27:                              # %if.else.41
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_insert, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_40
.LBB12_28:                              # %if.end.42
	jmp	.LBB12_29
.LBB12_29:                              # %do.end.43
	jmp	.LBB12_30
.LBB12_30:                              # %do.body.44
	cmpl	$-1, -28(%rbp)
	jl	.LBB12_33
# BB#31:                                # %land.lhs.true.46
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jg	.LBB12_33
# BB#32:                                # %if.then.49
	jmp	.LBB12_34
.LBB12_33:                              # %if.else.50
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_insert, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_40
.LBB12_34:                              # %if.end.51
	jmp	.LBB12_35
.LBB12_35:                              # %do.end.52
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB12_37
# BB#36:                                # %if.then.55
	movabsq	$.L.str.5, %rdi
	movabsq	$.L__func__.gimp_container_insert, %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_40
.LBB12_37:                              # %if.end.56
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_add
	cmpl	$0, %eax
	je	.LBB12_39
# BB#38:                                # %if.then.59
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_container_reorder
	movl	%eax, -4(%rbp)
	jmp	.LBB12_40
.LBB12_39:                              # %if.end.61
	movl	$0, -4(%rbp)
.LBB12_40:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_container_insert, .Lfunc_end12-gimp_container_insert
	.cfi_endproc

	.globl	gimp_container_reorder
	.align	16, 0x90
	.type	gimp_container_reorder,@function
gimp_container_reorder:                 # @gimp_container_reorder
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_container_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_reorder, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_40
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_reorder, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_40
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	jmp	.LBB13_18
.LBB13_18:                              # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB13_20
# BB#19:                                # %if.then.25
	movl	$0, -76(%rbp)
	jmp	.LBB13_25
.LBB13_20:                              # %if.else.26
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_23
# BB#21:                                # %land.lhs.true.29
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB13_23
# BB#22:                                # %if.then.33
	movl	$1, -76(%rbp)
	jmp	.LBB13_24
.LBB13_23:                              # %if.else.34
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB13_24:                              # %if.end.36
	jmp	.LBB13_25
.LBB13_25:                              # %if.end.37
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB13_27
# BB#26:                                # %if.then.40
	jmp	.LBB13_28
.LBB13_27:                              # %if.else.41
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_reorder, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_40
.LBB13_28:                              # %if.end.42
	jmp	.LBB13_29
.LBB13_29:                              # %do.end.43
	jmp	.LBB13_30
.LBB13_30:                              # %do.body.44
	cmpl	$-1, -28(%rbp)
	jl	.LBB13_33
# BB#31:                                # %land.lhs.true.46
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB13_33
# BB#32:                                # %if.then.49
	jmp	.LBB13_34
.LBB13_33:                              # %if.else.50
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_reorder, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_40
.LBB13_34:                              # %if.end.51
	jmp	.LBB13_35
.LBB13_35:                              # %do.end.52
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	jne	.LBB13_37
# BB#36:                                # %if.then.55
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_container_reorder, %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_40
.LBB13_37:                              # %if.end.56
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$1, 12(%rax)
	jne	.LBB13_39
# BB#38:                                # %if.then.60
	movl	$1, -4(%rbp)
	jmp	.LBB13_40
.LBB13_39:                              # %if.end.61
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	container_signals+8, %esi
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$1, -4(%rbp)
.LBB13_40:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_container_reorder, .Lfunc_end13-gimp_container_reorder
	.cfi_endproc

	.globl	gimp_container_freeze
	.align	16, 0x90
	.type	gimp_container_freeze,@function
gimp_container_freeze:                  # @gimp_container_freeze
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_freeze, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_14
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$1, 24(%rax)
	jne	.LBB14_14
# BB#13:                                # %if.then.14
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	container_signals+12, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB14_14:                              # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_container_freeze, .Lfunc_end14-gimp_container_freeze
	.cfi_endproc

	.globl	gimp_container_thaw
	.align	16, 0x90
	.type	gimp_container_thaw,@function
gimp_container_thaw:                    # @gimp_container_thaw
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_thaw, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_16
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 24(%rax)
	jle	.LBB15_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	24(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 24(%rax)
.LBB15_14:                              # %if.end.15
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB15_16
# BB#15:                                # %if.then.19
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	container_signals+16, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB15_16:                              # %if.end.20
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_container_thaw, .Lfunc_end15-gimp_container_thaw
	.cfi_endproc

	.globl	gimp_container_frozen
	.align	16, 0x90
	.type	gimp_container_frozen,@function
gimp_container_frozen:                  # @gimp_container_frozen
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_frozen, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpl	$0, 24(%rdx)
	cmovgl	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB16_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_container_frozen, .Lfunc_end16-gimp_container_frozen
	.cfi_endproc

	.globl	gimp_container_clear
	.align	16, 0x90
	.type	gimp_container_clear,@function
gimp_container_clear:                   # @gimp_container_clear
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_clear, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_14
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB17_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rdi
	callq	gimp_container_freeze
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	200(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_container_thaw
.LBB17_14:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_container_clear, .Lfunc_end17-gimp_container_clear
	.cfi_endproc

	.globl	gimp_container_is_empty
	.align	16, 0x90
	.type	gimp_container_is_empty,@function
gimp_container_is_empty:                # @gimp_container_is_empty
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_is_empty, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 12(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB18_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_container_is_empty, .Lfunc_end18-gimp_container_is_empty
	.cfi_endproc

	.globl	gimp_container_foreach
	.align	16, 0x90
	.type	gimp_container_foreach,@function
gimp_container_foreach:                 # @gimp_container_foreach
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_foreach, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_19
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB19_15
# BB#14:                                # %if.then.13
	jmp	.LBB19_16
.LBB19_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_foreach, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_19
.LBB19_16:                              # %if.end.15
	jmp	.LBB19_17
.LBB19_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB19_19
# BB#18:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB19_19:                              # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_container_foreach, .Lfunc_end19-gimp_container_foreach
	.cfi_endproc

	.globl	gimp_container_get_child_by_name
	.align	16, 0x90
	.type	gimp_container_get_child_by_name,@function
gimp_container_get_child_by_name:       # @gimp_container_get_child_by_name
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_child_by_name, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB20_15
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	cmpq	$0, -24(%rbp)
	jne	.LBB20_14
# BB#13:                                # %if.then.12
	movq	$0, -8(%rbp)
	jmp	.LBB20_15
.LBB20_14:                              # %if.end.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	224(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB20_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_container_get_child_by_name, .Lfunc_end20-gimp_container_get_child_by_name
	.cfi_endproc

	.globl	gimp_container_get_child_by_index
	.align	16, 0x90
	.type	gimp_container_get_child_by_index,@function
gimp_container_get_child_by_index:      # @gimp_container_get_child_by_index
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_child_by_index, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_16
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	cmpl	$0, -20(%rbp)
	jl	.LBB21_14
# BB#13:                                # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jl	.LBB21_15
.LBB21_14:                              # %if.then.13
	movq	$0, -8(%rbp)
	jmp	.LBB21_16
.LBB21_15:                              # %if.end.14
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	232(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB21_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_container_get_child_by_index, .Lfunc_end21-gimp_container_get_child_by_index
	.cfi_endproc

	.globl	gimp_container_get_first_child
	.align	16, 0x90
	.type	gimp_container_get_first_child,@function
gimp_container_get_first_child:         # @gimp_container_get_first_child
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_first_child, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_15
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB22_14
# BB#13:                                # %if.then.12
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	232(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_15
.LBB22_14:                              # %if.end.15
	movq	$0, -8(%rbp)
.LBB22_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_container_get_first_child, .Lfunc_end22-gimp_container_get_first_child
	.cfi_endproc

	.globl	gimp_container_get_last_child
	.align	16, 0x90
	.type	gimp_container_get_last_child,@function
gimp_container_get_last_child:          # @gimp_container_get_last_child
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_last_child, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_15
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB23_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	232(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	movl	%edx, %esi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_15
.LBB23_14:                              # %if.end.17
	movq	$0, -8(%rbp)
.LBB23_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_container_get_last_child, .Lfunc_end23-gimp_container_get_last_child
	.cfi_endproc

	.globl	gimp_container_get_child_index
	.align	16, 0x90
	.type	gimp_container_get_child_index,@function
gimp_container_get_child_index:         # @gimp_container_get_child_index
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_child_index, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB24_30
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.13
	jmp	.LBB24_16
.LBB24_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_child_index, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB24_30
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.16
	jmp	.LBB24_18
.LBB24_18:                              # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB24_20
# BB#19:                                # %if.then.25
	movl	$0, -68(%rbp)
	jmp	.LBB24_25
.LBB24_20:                              # %if.else.26
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_23
# BB#21:                                # %land.lhs.true.29
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB24_23
# BB#22:                                # %if.then.33
	movl	$1, -68(%rbp)
	jmp	.LBB24_24
.LBB24_23:                              # %if.else.34
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB24_24:                              # %if.end.36
	jmp	.LBB24_25
.LBB24_25:                              # %if.end.37
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB24_27
# BB#26:                                # %if.then.40
	jmp	.LBB24_28
.LBB24_27:                              # %if.else.41
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_child_index, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB24_30
.LBB24_28:                              # %if.end.42
	jmp	.LBB24_29
.LBB24_29:                              # %do.end.43
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	240(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB24_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_container_get_child_index, .Lfunc_end24-gimp_container_get_child_index
	.cfi_endproc

	.globl	gimp_container_get_neighbor_of
	.align	16, 0x90
	.type	gimp_container_get_neighbor_of,@function
gimp_container_get_neighbor_of:         # @gimp_container_get_neighbor_of
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_neighbor_of, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_30
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB25_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB25_20
.LBB25_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB25_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB25_19
.LBB25_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB25_19:                              # %if.end.31
	jmp	.LBB25_20
.LBB25_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB25_22
# BB#21:                                # %if.then.35
	jmp	.LBB25_23
.LBB25_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_neighbor_of, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_30
.LBB25_23:                              # %if.end.37
	jmp	.LBB25_24
.LBB25_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	je	.LBB25_29
# BB#25:                                # %if.then.41
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB25_28
# BB#26:                                # %land.lhs.true.45
	cmpl	$0, -28(%rbp)
	jle	.LBB25_28
# BB#27:                                # %if.then.47
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -88(%rbp)
.LBB25_28:                              # %if.end.49
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_30
.LBB25_29:                              # %if.end.50
	movq	$0, -8(%rbp)
.LBB25_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_container_get_neighbor_of, .Lfunc_end25-gimp_container_get_neighbor_of
	.cfi_endproc

	.globl	gimp_container_get_name_array
	.align	16, 0x90
	.type	gimp_container_get_name_array,@function
gimp_container_get_name_array:          # @gimp_container_get_name_array
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_name_array, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_20
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB26_15
# BB#14:                                # %if.then.13
	jmp	.LBB26_16
.LBB26_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_get_name_array, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_20
.LBB26_16:                              # %if.end.15
	jmp	.LBB26_17
.LBB26_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	callq	gimp_container_get_n_children
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-24(%rbp), %rdi
	cmpl	$0, (%rdi)
	jne	.LBB26_19
# BB#18:                                # %if.then.19
	movq	$0, -8(%rbp)
	jmp	.LBB26_20
.LBB26_19:                              # %if.end.20
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n
	movabsq	$gimp_container_get_name_array_foreach_func, %rcx
	leaq	-40(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	gimp_container_foreach
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB26_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_container_get_name_array, .Lfunc_end26-gimp_container_get_name_array
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_get_name_array_foreach_func,@function
gimp_container_get_name_array_foreach_func: # @gimp_container_get_name_array_foreach_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	addq	$8, %rsi
	movq	%rsi, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_container_get_name_array_foreach_func, .Lfunc_end27-gimp_container_get_name_array_foreach_func
	.cfi_endproc

	.globl	gimp_container_add_handler
	.align	16, 0x90
	.type	gimp_container_add_handler,@function
gimp_container_add_handler:             # @gimp_container_add_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_add_handler, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB28_30
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB28_15
# BB#14:                                # %if.then.13
	jmp	.LBB28_16
.LBB28_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_add_handler, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB28_30
.LBB28_16:                              # %if.end.15
	jmp	.LBB28_17
.LBB28_17:                              # %do.end.16
	jmp	.LBB28_18
.LBB28_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB28_20
# BB#19:                                # %if.then.19
	jmp	.LBB28_21
.LBB28_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_add_handler, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB28_30
.LBB28_21:                              # %if.end.21
	jmp	.LBB28_22
.LBB28_22:                              # %do.end.22
	movabsq	$.L.str.17, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB28_29
# BB#23:                                # %if.then.25
	jmp	.LBB28_24
.LBB28_24:                              # %do.body.26
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rsi
	callq	g_signal_lookup
	cmpl	$0, %eax
	je	.LBB28_26
# BB#25:                                # %if.then.29
	jmp	.LBB28_27
.LBB28_26:                              # %if.else.30
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_add_handler, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB28_30
.LBB28_27:                              # %if.end.31
	jmp	.LBB28_28
.LBB28_28:                              # %do.end.32
	jmp	.LBB28_29
.LBB28_29:                              # %if.end.33
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movabsq	$.L.str.19, %rdi
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rsi
	movl	gimp_container_add_handler.handler_id, %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, gimp_container_add_handler.handler_id
	movl	%ecx, %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-56(%rbp), %rdi
	callq	g_quark_from_string
	movq	-48(%rbp), %rsi
	movl	%eax, 24(%rsi)
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-48(%rbp), %rsi
	callq	g_list_prepend
	movabsq	$gimp_container_add_handler_foreach_func, %rsi
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_container_foreach
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB28_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_container_add_handler, .Lfunc_end28-gimp_container_add_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_add_handler_foreach_func,@function
gimp_container_add_handler_foreach_func: # @gimp_container_add_handler_foreach_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %esi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_qdata
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_container_add_handler_foreach_func, .Lfunc_end29-gimp_container_add_handler_foreach_func
	.cfi_endproc

	.globl	gimp_container_remove_handler
	.align	16, 0x90
	.type	gimp_container_remove_handler,@function
gimp_container_remove_handler:          # @gimp_container_remove_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_remove_handler, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_30
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	jmp	.LBB30_13
.LBB30_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	je	.LBB30_15
# BB#14:                                # %if.then.13
	jmp	.LBB30_16
.LBB30_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_remove_handler, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_30
.LBB30_16:                              # %if.end.15
	jmp	.LBB30_17
.LBB30_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB30_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB30_26
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB30_18 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB30_21
# BB#20:                                # %if.then.19
	jmp	.LBB30_26
.LBB30_21:                              # %if.end.20
                                        #   in Loop: Header=BB30_18 Depth=1
	jmp	.LBB30_22
.LBB30_22:                              # %for.inc
                                        #   in Loop: Header=BB30_18 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB30_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB30_18 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB30_25
.LBB30_24:                              # %cond.false
                                        #   in Loop: Header=BB30_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB30_25
.LBB30_25:                              # %cond.end
                                        #   in Loop: Header=BB30_18 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB30_18
.LBB30_26:                              # %for.end
	cmpq	$0, -32(%rbp)
	jne	.LBB30_28
# BB#27:                                # %if.then.23
	movabsq	$.L.str.21, %rdi
	movabsq	$.L__func__.gimp_container_remove_handler, %rsi
	movl	-12(%rbp), %edx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB30_30
.LBB30_28:                              # %if.end.24
	movabsq	$gimp_container_remove_handler_foreach_func, %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_container_foreach
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
# BB#29:                                # %do.body.30
	movl	$32, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB30_30:                              # %do.end.31
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_container_remove_handler, .Lfunc_end30-gimp_container_remove_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_remove_handler_foreach_func,@function
gimp_container_remove_handler_foreach_func: # @gimp_container_remove_handler_foreach_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
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
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %esi
	movq	%rax, %rdi
	callq	g_object_get_qdata
	movl	%eax, %esi
	movl	%esi, %esi
	movl	%esi, %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %esi
	movq	%rax, %rdi
	callq	g_object_set_qdata
.LBB31_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_container_remove_handler_foreach_func, .Lfunc_end31-gimp_container_remove_handler_foreach_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_class_init,@function
gimp_container_class_init:              # @gimp_container_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
.Ltmp99:
	.cfi_offset %rbx, -48
.Ltmp100:
	.cfi_offset %r12, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.22, %rdi
	movl	$1, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, container_signals
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.23, %rdi
	movl	$1, %edx
	movl	$168, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, container_signals+4
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.24, %rdi
	movl	$1, %edx
	movl	$176, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$gimp_marshal_VOID__OBJECT_INT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movl	$2, %r15d
	movl	$24, %r12d
	movl	%r12d, %r10d
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-152(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$24, 32(%rsp)
	movb	$0, %al
	movq	%r10, -168(%rbp)        # 8-byte Spill
	movl	%r15d, -172(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.25, %rdi
	movl	$2, %edx
	movl	$184, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	xorl	%r15d, %r15d
	movl	%eax, container_signals+8
	movq	-40(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -200(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-192(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r15d, -204(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.26, %rdi
	movl	$2, %edx
	movl	$192, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	xorl	%r15d, %r15d
	movl	%eax, container_signals+12
	movq	-40(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-216(%rbp), %r10        # 8-byte Reload
	movq	%r8, -224(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-224(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r15d, -236(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_container_real_remove, %rsi
	movabsq	$gimp_container_real_add, %rdi
	movabsq	$gimp_container_get_memsize, %r8
	movabsq	$gimp_container_get_property, %r9
	movabsq	$gimp_container_set_property, %r10
	movabsq	$gimp_container_dispose, %r11
	movl	%eax, container_signals+16
	movq	-48(%rbp), %rbx
	movq	%r11, 40(%rbx)
	movq	-48(%rbp), %r11
	movq	%r10, 24(%r11)
	movq	-48(%rbp), %r10
	movq	%r9, 32(%r10)
	movq	-56(%rbp), %r9
	movq	%r8, 152(%r9)
	movq	-40(%rbp), %r8
	movq	%rdi, 160(%r8)
	movq	-40(%rbp), %rdi
	movq	%rsi, 168(%rdi)
	movq	-40(%rbp), %rsi
	movq	$0, 176(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 184(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 192(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 200(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 208(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 216(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 224(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 232(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 240(%rsi)
	movq	-48(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.27, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_gtype
	movl	$1, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gimp_container_policy_get_type
	movabsq	$.L.str.28, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$235, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$32, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_container_class_init, .Lfunc_end32-gimp_container_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_dispose,@function
gimp_container_dispose:                 # @gimp_container_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_container_clear
.LBB33_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB33_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	24(%rax), %esi
	callq	gimp_container_remove_handler
	jmp	.LBB33_1
.LBB33_3:                               # %while.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$4, (%rax)
	je	.LBB33_5
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_class_peek
	movq	%rax, %rdi
	callq	g_type_class_unref
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$4, (%rax)
.LBB33_5:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_container_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_container_dispose, .Lfunc_end33-gimp_container_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_set_property,@function
gimp_container_set_property:            # @gimp_container_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB34_1
	jmp	.LBB34_7
.LBB34_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB34_2
	jmp	.LBB34_3
.LBB34_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_gtype
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, (%rdi)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_class_ref
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB34_6
.LBB34_2:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB34_6
.LBB34_3:                               # %sw.default
	jmp	.LBB34_4
.LBB34_4:                               # %do.body
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
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movl	$278, %edx              # imm = 0x116
	movabsq	$.L.str.31, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB34_6
.LBB34_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_container_set_property, .Lfunc_end34-gimp_container_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_get_property,@function
gimp_container_get_property:            # @gimp_container_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB35_1
	jmp	.LBB35_7
.LBB35_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB35_2
	jmp	.LBB35_3
.LBB35_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rsi
	callq	g_value_set_gtype
	jmp	.LBB35_6
.LBB35_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB35_6
.LBB35_3:                               # %sw.default
	jmp	.LBB35_4
.LBB35_4:                               # %do.body
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
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movl	$300, %edx              # imm = 0x12C
	movabsq	$.L.str.31, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB35_6
.LBB35_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_container_get_property, .Lfunc_end35-gimp_container_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_get_memsize,@function
gimp_container_get_memsize:             # @gimp_container_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB36_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	$56, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB36_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB36_6
.LBB36_5:                               # %cond.false
                                        #   in Loop: Header=BB36_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB36_6
.LBB36_6:                               # %cond.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB36_1
.LBB36_7:                               # %for.end
	movq	-32(%rbp), %rax
	movq	gimp_container_parent_class, %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_container_get_memsize, .Lfunc_end36-gimp_container_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_real_add,@function
gimp_container_real_add:                # @gimp_container_real_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	12(%rsi), %eax
	addl	$1, %eax
	movl	%eax, 12(%rsi)
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_container_real_add, .Lfunc_end37-gimp_container_real_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_real_remove,@function
gimp_container_real_remove:             # @gimp_container_real_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	12(%rsi), %eax
	addl	$-1, %eax
	movl	%eax, 12(%rsi)
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_container_real_remove, .Lfunc_end38-gimp_container_real_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_serialize,@function
gimp_container_serialize:               # @gimp_container_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_container_serialize_foreach, %rdx
	leaq	-56(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	gimp_container_foreach
	movl	-40(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_container_serialize, .Lfunc_end39-gimp_container_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_deserialize,@function
gimp_container_deserialize:             # @gimp_container_deserialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	$40, -52(%rbp)
.LBB40_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-52(%rbp), %eax
	jne	.LBB40_38
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -52(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB40_3
	jmp	.LBB40_40
.LBB40_40:                              # %while.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB40_35
	jmp	.LBB40_41
.LBB40_41:                              # %while.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$266, %eax              # imm = 0x10A
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB40_4
	jmp	.LBB40_36
.LBB40_3:                               # %sw.bb
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	$266, -52(%rbp)         # imm = 0x10A
	jmp	.LBB40_37
.LBB40_4:                               # %sw.bb.4
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_type_from_name
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB40_6
# BB#5:                                 # %if.then
	movabsq	$.L.str.33, %rsi
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movb	$0, %al
	callq	g_scanner_error
	movl	$0, -4(%rbp)
	jmp	.LBB40_39
.LBB40_6:                               # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	jne	.LBB40_8
# BB#7:                                 # %if.then.10
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.34, %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_scanner_error
	movl	$0, -4(%rbp)
	jmp	.LBB40_39
.LBB40_8:                               # %if.end.16
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-72(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	jne	.LBB40_10
# BB#9:                                 # %if.then.20
	movabsq	$.L.str.35, %rsi
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movb	$0, %al
	callq	g_scanner_error
	movl	$0, -4(%rbp)
	jmp	.LBB40_39
.LBB40_10:                              # %if.end.23
                                        #   in Loop: Header=BB40_1 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB40_12
# BB#11:                                # %if.then.26
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	$264, -52(%rbp)         # imm = 0x108
	jmp	.LBB40_37
.LBB40_12:                              # %if.end.27
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpq	$0, -80(%rbp)
	jne	.LBB40_14
# BB#13:                                # %if.then.29
                                        #   in Loop: Header=BB40_1 Depth=1
	movabsq	$.L.str.36, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
.LBB40_14:                              # %if.end.31
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB40_26
# BB#15:                                # %if.then.34
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB40_17
# BB#16:                                # %if.then.37
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	$0, -108(%rbp)
	jmp	.LBB40_22
.LBB40_17:                              # %if.else
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB40_20
# BB#19:                                # %if.then.41
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	$1, -108(%rbp)
	jmp	.LBB40_21
.LBB40_20:                              # %if.else.42
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB40_21:                              # %if.end.44
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_22
.LBB40_22:                              # %if.end.45
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB40_24
# BB#23:                                # %if.then.47
                                        #   in Loop: Header=BB40_1 Depth=1
	movabsq	$.L.str.37, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -64(%rbp)
	jmp	.LBB40_25
.LBB40_24:                              # %if.else.49
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -64(%rbp)
.LBB40_25:                              # %if.end.51
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	$1, -84(%rbp)
.LBB40_26:                              # %if.end.52
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_object_take_name
	movq	-64(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	24(%rax), %rax
	movq	-64(%rbp), %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movq	%rax, %rdi
	movq	-176(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB40_30
# BB#27:                                # %if.then.60
	cmpl	$0, -84(%rbp)
	je	.LBB40_29
# BB#28:                                # %if.then.62
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB40_29:                              # %if.end.63
	movl	$0, -4(%rbp)
	jmp	.LBB40_39
.LBB40_30:                              # %if.end.64
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpl	$0, -84(%rbp)
	je	.LBB40_34
# BB#31:                                # %if.then.66
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_container_add
	movq	-48(%rbp), %rsi
	movq	32(%rsi), %rsi
	cmpl	$0, 8(%rsi)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jne	.LBB40_33
# BB#32:                                # %if.then.70
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB40_33:                              # %if.end.71
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_34
.LBB40_34:                              # %if.end.72
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	$41, -52(%rbp)
	jmp	.LBB40_37
.LBB40_35:                              # %sw.bb.73
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	$40, -52(%rbp)
	jmp	.LBB40_37
.LBB40_36:                              # %sw.default
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_37
.LBB40_37:                              # %sw.epilog
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_1
.LBB40_38:                              # %while.end
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	gimp_config_deserialize_return
	movl	%eax, -4(%rbp)
.LBB40_39:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_container_deserialize, .Lfunc_end40-gimp_container_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_serialize_foreach,@function
gimp_container_serialize_foreach:       # @gimp_container_serialize_foreach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
.LBB41_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB41_4
# BB#3:                                 # %if.then.4
	jmp	.LBB41_8
.LBB41_4:                               # %if.end.5
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_name
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_open
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB41_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_config_writer_string
	jmp	.LBB41_7
.LBB41_6:                               # %if.else
	movabsq	$.L.str.32, %rsi
	movl	$4, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_config_writer_print
.LBB41_7:                               # %if.end.13
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	gimp_config_writer_close
.LBB41_8:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_container_serialize_foreach, .Lfunc_end41-gimp_container_serialize_foreach
	.cfi_endproc

	.type	gimp_container_get_type.g_define_type_id__volatile,@object # @gimp_container_get_type.g_define_type_id__volatile
	.local	gimp_container_get_type.g_define_type_id__volatile
	.comm	gimp_container_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContainer"
	.size	.L.str, 14

	.type	gimp_container_get_type.g_implement_interface_info,@object # @gimp_container_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_container_get_type.g_implement_interface_info:
	.quad	gimp_container_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_container_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_container_get_children_type,@object # @__func__.gimp_container_get_children_type
.L__func__.gimp_container_get_children_type:
	.asciz	"gimp_container_get_children_type"
	.size	.L__func__.gimp_container_get_children_type, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTAINER (container)"
	.size	.L.str.2, 30

	.type	.L__func__.gimp_container_get_policy,@object # @__func__.gimp_container_get_policy
.L__func__.gimp_container_get_policy:
	.asciz	"gimp_container_get_policy"
	.size	.L__func__.gimp_container_get_policy, 26

	.type	.L__func__.gimp_container_get_n_children,@object # @__func__.gimp_container_get_n_children
.L__func__.gimp_container_get_n_children:
	.asciz	"gimp_container_get_n_children"
	.size	.L__func__.gimp_container_get_n_children, 30

	.type	.L__func__.gimp_container_add,@object # @__func__.gimp_container_add
.L__func__.gimp_container_add:
	.asciz	"gimp_container_add"
	.size	.L__func__.gimp_container_add, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"object != NULL"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"G_TYPE_CHECK_INSTANCE_TYPE (object, container->priv->children_type)"
	.size	.L.str.4, 68

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s: container %p already contains object %p"
	.size	.L.str.5, 44

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"disconnect"
	.size	.L.str.6, 11

	.type	container_signals,@object # @container_signals
	.local	container_signals
	.comm	container_signals,20,16
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s: GimpContainer::add() implementation did not chain up. Please report this at http://www.gimp.org/bugs/"
	.size	.L.str.7, 106

	.type	.L__func__.gimp_container_remove,@object # @__func__.gimp_container_remove
.L__func__.gimp_container_remove:
	.asciz	"gimp_container_remove"
	.size	.L__func__.gimp_container_remove, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s: container %p does not contain object %p"
	.size	.L.str.8, 44

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s: GimpContainer::remove() implementation did not chain up. Please report this at http://www.gimp.org/bugs/"
	.size	.L.str.9, 109

	.type	.L__func__.gimp_container_insert,@object # @__func__.gimp_container_insert
.L__func__.gimp_container_insert:
	.asciz	"gimp_container_insert"
	.size	.L__func__.gimp_container_insert, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"index >= -1 && index <= container->priv->n_children"
	.size	.L.str.10, 52

	.type	.L__func__.gimp_container_reorder,@object # @__func__.gimp_container_reorder
.L__func__.gimp_container_reorder:
	.asciz	"gimp_container_reorder"
	.size	.L__func__.gimp_container_reorder, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"new_index >= -1 && new_index < container->priv->n_children"
	.size	.L.str.11, 59

	.type	.L__func__.gimp_container_freeze,@object # @__func__.gimp_container_freeze
.L__func__.gimp_container_freeze:
	.asciz	"gimp_container_freeze"
	.size	.L__func__.gimp_container_freeze, 22

	.type	.L__func__.gimp_container_thaw,@object # @__func__.gimp_container_thaw
.L__func__.gimp_container_thaw:
	.asciz	"gimp_container_thaw"
	.size	.L__func__.gimp_container_thaw, 20

	.type	.L__func__.gimp_container_frozen,@object # @__func__.gimp_container_frozen
.L__func__.gimp_container_frozen:
	.asciz	"gimp_container_frozen"
	.size	.L__func__.gimp_container_frozen, 22

	.type	.L__func__.gimp_container_clear,@object # @__func__.gimp_container_clear
.L__func__.gimp_container_clear:
	.asciz	"gimp_container_clear"
	.size	.L__func__.gimp_container_clear, 21

	.type	.L__func__.gimp_container_is_empty,@object # @__func__.gimp_container_is_empty
.L__func__.gimp_container_is_empty:
	.asciz	"gimp_container_is_empty"
	.size	.L__func__.gimp_container_is_empty, 24

	.type	.L__func__.gimp_container_have,@object # @__func__.gimp_container_have
.L__func__.gimp_container_have:
	.asciz	"gimp_container_have"
	.size	.L__func__.gimp_container_have, 20

	.type	.L__func__.gimp_container_foreach,@object # @__func__.gimp_container_foreach
.L__func__.gimp_container_foreach:
	.asciz	"gimp_container_foreach"
	.size	.L__func__.gimp_container_foreach, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"func != NULL"
	.size	.L.str.12, 13

	.type	.L__func__.gimp_container_get_child_by_name,@object # @__func__.gimp_container_get_child_by_name
.L__func__.gimp_container_get_child_by_name:
	.asciz	"gimp_container_get_child_by_name"
	.size	.L__func__.gimp_container_get_child_by_name, 33

	.type	.L__func__.gimp_container_get_child_by_index,@object # @__func__.gimp_container_get_child_by_index
.L__func__.gimp_container_get_child_by_index:
	.asciz	"gimp_container_get_child_by_index"
	.size	.L__func__.gimp_container_get_child_by_index, 34

	.type	.L__func__.gimp_container_get_first_child,@object # @__func__.gimp_container_get_first_child
.L__func__.gimp_container_get_first_child:
	.asciz	"gimp_container_get_first_child"
	.size	.L__func__.gimp_container_get_first_child, 31

	.type	.L__func__.gimp_container_get_last_child,@object # @__func__.gimp_container_get_last_child
.L__func__.gimp_container_get_last_child:
	.asciz	"gimp_container_get_last_child"
	.size	.L__func__.gimp_container_get_last_child, 30

	.type	.L__func__.gimp_container_get_child_index,@object # @__func__.gimp_container_get_child_index
.L__func__.gimp_container_get_child_index:
	.asciz	"gimp_container_get_child_index"
	.size	.L__func__.gimp_container_get_child_index, 31

	.type	.L__func__.gimp_container_get_neighbor_of,@object # @__func__.gimp_container_get_neighbor_of
.L__func__.gimp_container_get_neighbor_of:
	.asciz	"gimp_container_get_neighbor_of"
	.size	.L__func__.gimp_container_get_neighbor_of, 31

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_OBJECT (object)"
	.size	.L.str.13, 24

	.type	.L__func__.gimp_container_get_name_array,@object # @__func__.gimp_container_get_name_array
.L__func__.gimp_container_get_name_array:
	.asciz	"gimp_container_get_name_array"
	.size	.L__func__.gimp_container_get_name_array, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"length != NULL"
	.size	.L.str.14, 15

	.type	gimp_container_add_handler.handler_id,@object # @gimp_container_add_handler.handler_id
	.local	gimp_container_add_handler.handler_id
	.comm	gimp_container_add_handler.handler_id,4,4
	.type	.L__func__.gimp_container_add_handler,@object # @__func__.gimp_container_add_handler
.L__func__.gimp_container_add_handler:
	.asciz	"gimp_container_add_handler"
	.size	.L__func__.gimp_container_add_handler, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"signame != NULL"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"callback != NULL"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"notify::"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"g_signal_lookup (signame, container->priv->children_type)"
	.size	.L.str.18, 58

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s-%d"
	.size	.L.str.19, 6

	.type	.L__func__.gimp_container_remove_handler,@object # @__func__.gimp_container_remove_handler
.L__func__.gimp_container_remove_handler:
	.asciz	"gimp_container_remove_handler"
	.size	.L__func__.gimp_container_remove_handler, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"id != 0"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s: tried to remove handler which unknown id %d"
	.size	.L.str.21, 48

	.type	gimp_container_parent_class,@object # @gimp_container_parent_class
	.local	gimp_container_parent_class
	.comm	gimp_container_parent_class,8,8
	.type	GimpContainer_private_offset,@object # @GimpContainer_private_offset
	.local	GimpContainer_private_offset
	.comm	GimpContainer_private_offset,4,4
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"add"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"remove"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"reorder"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"freeze"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"thaw"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"children-type"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"policy"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.29, 54

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimpcontainer.c"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"property"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"NULL"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"unable to determine type of '%s'"
	.size	.L.str.33, 33

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"'%s' is not a subclass of '%s'"
	.size	.L.str.34, 31

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"'%s' does not implement GimpConfigInterface"
	.size	.L.str.35, 44

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.zero	1
	.size	.L.str.36, 1

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp"
	.size	.L.str.37, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
