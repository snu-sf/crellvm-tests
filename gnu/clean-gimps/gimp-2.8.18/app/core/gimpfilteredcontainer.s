	.text
	.file	"gimpfilteredcontainer.bc"
	.globl	gimp_filtered_container_get_type
	.align	16, 0x90
	.type	gimp_filtered_container_get_type,@function
gimp_filtered_container_get_type:       # @gimp_filtered_container_get_type
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
	movq	gimp_filtered_container_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_filtered_container_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_list_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_filtered_container_class_intern_init, %rdi
	movl	$96, %r8d
	movabsq	$gimp_filtered_container_init, %rcx
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
	movabsq	$gimp_filtered_container_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_filtered_container_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_filtered_container_get_type, .Lfunc_end0-gimp_filtered_container_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_class_intern_init,@function
gimp_filtered_container_class_intern_init: # @gimp_filtered_container_class_intern_init
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
	movq	%rax, gimp_filtered_container_parent_class
	cmpl	$0, GimpFilteredContainer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFilteredContainer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_filtered_container_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_filtered_container_class_intern_init, .Lfunc_end1-gimp_filtered_container_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_init,@function
gimp_filtered_container_init:           # @gimp_filtered_container_init
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
	.size	gimp_filtered_container_init, .Lfunc_end2-gimp_filtered_container_init
	.cfi_endproc

	.globl	gimp_filtered_container_new
	.align	16, 0x90
	.type	gimp_filtered_container_new,@function
gimp_filtered_container_new:            # @gimp_filtered_container_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_list_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_filtered_container_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-56(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_filtered_container_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	movl	$1, %edx
	movabsq	$.L.str.6, %rdi
	xorl	%r8d, %r8d
	movabsq	$.L.str.7, %r10
	movabsq	$.L.str.8, %r11
	movabsq	$.L.str.9, %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	movq	-88(%rbp), %r12
	movq	-80(%rbp), %r13
	movq	-56(%rbp), %r14
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movq	%r12, %rdx
	movl	%r8d, -160(%rbp)        # 4-byte Spill
	movq	%r13, %r8
	movl	$1, (%rsp)
	movq	-152(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	$0, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, 48(%rsp)
	movq	%rbx, 56(%rsp)
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, %al
	movq	%r15, -168(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
.LBB3_13:                               # %return
	movq	-48(%rbp), %rax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_filtered_container_new, .Lfunc_end3-gimp_filtered_container_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_class_init,@function
gimp_filtered_container_class_init:     # @gimp_filtered_container_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_filtered_container_real_src_thaw, %rsi
	movabsq	$gimp_filtered_container_real_src_freeze, %rdi
	movabsq	$gimp_filtered_container_real_src_remove, %rcx
	movabsq	$gimp_filtered_container_real_src_add, %rdx
	movabsq	$gimp_filtered_container_get_property, %r8
	movabsq	$gimp_filtered_container_set_property, %r9
	movabsq	$gimp_filtered_container_finalize, %r10
	movabsq	$gimp_filtered_container_dispose, %r11
	movabsq	$gimp_filtered_container_constructed, %rbx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rbx, 72(%rax)
	movq	-32(%rbp), %rax
	movq	%r11, 40(%rax)
	movq	-32(%rbp), %rax
	movq	%r10, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%r8, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-40(%rbp), %rax
	movq	%rcx, 256(%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, 264(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, 272(%rax)
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %ecx
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_pointer
	movl	$2, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$235, %ecx
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_pointer
	movl	$3, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_filtered_container_class_init, .Lfunc_end4-gimp_filtered_container_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_constructed,@function
gimp_filtered_container_constructed:    # @gimp_filtered_container_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_filtered_container_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_filtered_container_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_9:                                # %if.end.13
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.16
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$128, %edx
	movabsq	$.L__func__.gimp_filtered_container_constructed, %rcx
	movabsq	$.L.str.11, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.18
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB5_16
# BB#15:                                # %if.then.22
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_filtered_container_src_freeze
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_filtered_container_src_thaw
.LBB5_16:                               # %if.end.25
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_filtered_container_constructed, .Lfunc_end5-gimp_filtered_container_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_dispose,@function
gimp_filtered_container_dispose:        # @gimp_filtered_container_dispose
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_filtered_container_src_add, %rdx
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_filtered_container_src_remove, %rdi
	movq	-16(%rbp), %r9
	movq	72(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_filtered_container_src_freeze, %rdi
	movq	-16(%rbp), %r9
	movq	72(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_filtered_container_src_thaw, %rdi
	movq	-16(%rbp), %r9
	movq	72(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_filtered_container_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_filtered_container_dispose, .Lfunc_end6-gimp_filtered_container_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_finalize,@function
gimp_filtered_container_finalize:       # @gimp_filtered_container_finalize
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
	callq	gimp_filtered_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_filtered_container_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_filtered_container_finalize, .Lfunc_end7-gimp_filtered_container_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_set_property,@function
gimp_filtered_container_set_property:   # @gimp_filtered_container_set_property
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_8
.LBB8_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_9
.LBB8_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_4
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_filtered_container_src_add, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_filtered_container_src_remove, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_filtered_container_src_freeze, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_filtered_container_src_thaw, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB8_7
.LBB8_2:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_pointer
	movq	-40(%rbp), %rdi
	movq	%rax, 80(%rdi)
	jmp	.LBB8_7
.LBB8_3:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_pointer
	movq	-40(%rbp), %rdi
	movq	%rax, 88(%rdi)
	jmp	.LBB8_7
.LBB8_4:                                # %sw.default
	jmp	.LBB8_5
.LBB8_5:                                # %do.body
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
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movq	%r9, -176(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$217, %edx
	movabsq	$.L.str.17, %rcx
	movl	-164(%rbp), %r8d        # 4-byte Reload
	movq	-176(%rbp), %r9         # 8-byte Reload
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB8_7
.LBB8_7:                                # %sw.epilog
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_filtered_container_set_property, .Lfunc_end8-gimp_filtered_container_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_get_property,@function
gimp_filtered_container_get_property:   # @gimp_filtered_container_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_8
.LBB9_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_9
.LBB9_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_4
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_7
.LBB9_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_pointer
	jmp	.LBB9_7
.LBB9_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	88(%rax), %rsi
	callq	g_value_set_pointer
	jmp	.LBB9_7
.LBB9_4:                                # %sw.default
	jmp	.LBB9_5
.LBB9_5:                                # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$245, %edx
	movabsq	$.L.str.17, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB9_7
.LBB9_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_filtered_container_get_property, .Lfunc_end9-gimp_filtered_container_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_real_src_add,@function
gimp_filtered_container_real_src_add:   # @gimp_filtered_container_real_src_add
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_filtered_container_object_matches
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_add
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB10_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_filtered_container_real_src_add, .Lfunc_end10-gimp_filtered_container_real_src_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_real_src_remove,@function
gimp_filtered_container_real_src_remove: # @gimp_filtered_container_real_src_remove
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_filtered_container_object_matches
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_remove
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB11_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_filtered_container_real_src_remove, .Lfunc_end11-gimp_filtered_container_real_src_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_real_src_freeze,@function
gimp_filtered_container_real_src_freeze: # @gimp_filtered_container_real_src_freeze
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_clear
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_filtered_container_real_src_freeze, .Lfunc_end12-gimp_filtered_container_real_src_freeze
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_real_src_thaw,@function
gimp_filtered_container_real_src_thaw:  # @gimp_filtered_container_real_src_thaw
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB13_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_filtered_container_object_matches
	cmpl	$0, %eax
	je	.LBB13_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_add
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_5
.LBB13_5:                               # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB13_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_8
.LBB13_8:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB13_1
.LBB13_9:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_filtered_container_real_src_thaw, .Lfunc_end13-gimp_filtered_container_real_src_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_src_freeze,@function
gimp_filtered_container_src_freeze:     # @gimp_filtered_container_src_freeze
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_freeze
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	264(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_filtered_container_src_freeze, .Lfunc_end14-gimp_filtered_container_src_freeze
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_src_thaw,@function
gimp_filtered_container_src_thaw:       # @gimp_filtered_container_src_thaw
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	272(%rsi), %rsi
	movq	-16(%rbp), %rdi
	callq	*%rsi
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_thaw
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_filtered_container_src_thaw, .Lfunc_end15-gimp_filtered_container_src_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_src_add,@function
gimp_filtered_container_src_add:        # @gimp_filtered_container_src_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB16_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_filtered_container_src_add, .Lfunc_end16-gimp_filtered_container_src_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_src_remove,@function
gimp_filtered_container_src_remove:     # @gimp_filtered_container_src_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB17_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_filtered_container_src_remove, .Lfunc_end17-gimp_filtered_container_src_remove
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_filtered_container_object_matches,@function
gimp_filtered_container_object_matches: # @gimp_filtered_container_object_matches
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 80(%rsi)
	movb	%al, -17(%rbp)          # 1-byte Spill
	je	.LBB19_2
# BB#1:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	88(%rcx), %rsi
	callq	*%rax
	cmpl	$0, %eax
	setne	%dl
	movb	%dl, -17(%rbp)          # 1-byte Spill
.LBB19_2:                               # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_filtered_container_object_matches, .Lfunc_end19-gimp_filtered_container_object_matches
	.cfi_endproc

	.type	gimp_filtered_container_get_type.g_define_type_id__volatile,@object # @gimp_filtered_container_get_type.g_define_type_id__volatile
	.local	gimp_filtered_container_get_type.g_define_type_id__volatile
	.comm	gimp_filtered_container_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFilteredContainer"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_filtered_container_new,@object # @__func__.gimp_filtered_container_new
.L__func__.gimp_filtered_container_new:
	.asciz	"gimp_filtered_container_new"
	.size	.L__func__.gimp_filtered_container_new, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_LIST (src_container)"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"sort-func"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"children-type"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"policy"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"unique-names"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"src-container"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"filter-func"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"filter-data"
	.size	.L.str.9, 12

	.type	gimp_filtered_container_parent_class,@object # @gimp_filtered_container_parent_class
	.local	gimp_filtered_container_parent_class
	.comm	gimp_filtered_container_parent_class,8,8
	.type	GimpFilteredContainer_private_offset,@object # @GimpFilteredContainer_private_offset
	.local	GimpFilteredContainer_private_offset
	.comm	GimpFilteredContainer_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpfilteredcontainer.c"
	.size	.L.str.10, 24

	.type	.L__func__.gimp_filtered_container_constructed,@object # @__func__.gimp_filtered_container_constructed
.L__func__.gimp_filtered_container_constructed:
	.asciz	"gimp_filtered_container_constructed"
	.size	.L__func__.gimp_filtered_container_constructed, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_CONTAINER (filtered_container->src_container)"
	.size	.L.str.11, 54

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"add"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"remove"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"freeze"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"thaw"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
