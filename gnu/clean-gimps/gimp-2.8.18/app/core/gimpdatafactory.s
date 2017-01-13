	.text
	.file	"gimpdatafactory.bc"
	.globl	gimp_data_factory_get_type
	.align	16, 0x90
	.type	gimp_data_factory_get_type,@function
gimp_data_factory_get_type:             # @gimp_data_factory_get_type
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
	movq	gimp_data_factory_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_data_factory_get_type.g_define_type_id__volatile, %rax
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
	movl	$160, %edx
	movabsq	$gimp_data_factory_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_data_factory_init, %rcx
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
	movabsq	$gimp_data_factory_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_data_factory_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_data_factory_get_type, .Lfunc_end0-gimp_data_factory_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_class_intern_init,@function
gimp_data_factory_class_intern_init:    # @gimp_data_factory_class_intern_init
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
	movq	%rax, gimp_data_factory_parent_class
	cmpl	$0, GimpDataFactory_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDataFactory_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_data_factory_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_data_factory_class_intern_init, .Lfunc_end1-gimp_data_factory_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_init,@function
gimp_data_factory_init:                 # @gimp_data_factory_init
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
	callq	gimp_data_factory_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 64(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_data_factory_init, .Lfunc_end2-gimp_data_factory_init
	.cfi_endproc

	.globl	gimp_data_factory_new
	.align	16, 0x90
	.type	gimp_data_factory_new,@function
gimp_data_factory_new:                  # @gimp_data_factory_new
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
	subq	$128, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_38
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.15
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_38
.LBB3_16:                               # %if.end.17
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.18
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.19
	cmpq	$0, -32(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.21
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.22
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_38
.LBB3_21:                               # %if.end.23
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.24
	jmp	.LBB3_23
.LBB3_23:                               # %do.body.25
	cmpq	$0, -40(%rbp)
	je	.LBB3_25
# BB#24:                                # %if.then.27
	jmp	.LBB3_26
.LBB3_25:                               # %if.else.28
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_38
.LBB3_26:                               # %if.end.29
	jmp	.LBB3_27
.LBB3_27:                               # %do.end.30
	jmp	.LBB3_28
.LBB3_28:                               # %do.body.31
	cmpq	$0, -48(%rbp)
	je	.LBB3_30
# BB#29:                                # %if.then.33
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.34
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_38
.LBB3_31:                               # %if.end.35
	jmp	.LBB3_32
.LBB3_32:                               # %do.end.36
	jmp	.LBB3_33
.LBB3_33:                               # %do.body.37
	cmpl	$0, -52(%rbp)
	jle	.LBB3_35
# BB#34:                                # %if.then.39
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.40
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_38
.LBB3_36:                               # %if.end.41
	jmp	.LBB3_37
.LBB3_37:                               # %do.end.42
	callq	gimp_data_factory_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$1, %esi
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rdi
	callq	gimp_list_new
	movq	-80(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, 8(%rdi)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_data_compare, %rsi
	movq	%rax, %rdi
	callq	gimp_list_set_sort_func
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_list_new
	movq	-80(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, 16(%rdi)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_data_compare, %rsi
	movq	%rax, %rdi
	callq	gimp_list_set_sort_func
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-80(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 24(%rsi)
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movq	-80(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 32(%rsi)
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 40(%rsi)
	movl	-52(%rbp), %ecx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movl	%ecx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 56(%rsi)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 64(%rsi)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_38:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_data_factory_new, .Lfunc_end3-gimp_data_factory_new
	.cfi_endproc

	.globl	gimp_data_factory_data_init
	.align	16, 0x90
	.type	gimp_data_factory_data_init,@function
gimp_data_factory_data_init:            # @gimp_data_factory_data_init
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_init, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_init, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_container_freeze
	cmpl	$0, -20(%rbp)
	jne	.LBB4_31
# BB#25:                                # %if.then.40
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_30
# BB#26:                                # %if.then.43
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB4_28
# BB#27:                                # %cond.true
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB4_29
.LBB4_28:                               # %cond.false
	movabsq	$.L.str.11, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB4_29
.LBB4_29:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB4_30:                               # %if.end.47
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_data_factory_data_load
.LBB4_31:                               # %if.end.48
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_container_thaw
.LBB4_32:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_data_factory_data_init, .Lfunc_end4-gimp_data_factory_data_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_data_load,@function
gimp_data_factory_data_load:            # @gimp_data_factory_data_load
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
	subq	$112, %rsp
	leaq	-32(%rbp), %rax
	leaq	-40(%rbp), %r8
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	24(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rcx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get
	cmpq	$0, -32(%rbp)
	je	.LBB5_7
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB5_7
# BB#2:                                 # %if.then
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	movl	$32, %ecx
	movl	%ecx, %edi
	leaq	-88(%rbp), %r8
	movq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	memset
	movq	-8(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	-32(%rbp), %rdi
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	gimp_config_path_expand
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then.10
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	$256, %esi              # imm = 0x100
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_path_parse
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
.LBB5_4:                                # %if.end
	movl	$1, %esi
	movabsq	$gimp_data_factory_load_data, %rdx
	leaq	-88(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, %rcx
	callq	gimp_datafiles_read_directories
	movl	$4, %esi
	movabsq	$gimp_data_factory_load_data_recursive, %rdx
	leaq	-88(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, %rcx
	callq	gimp_datafiles_read_directories
	cmpq	$0, -40(%rbp)
	je	.LBB5_6
# BB#5:                                 # %if.then.15
	movq	-48(%rbp), %rdi
	callq	gimp_path_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB5_6:                                # %if.end.17
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.18
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_data_factory_data_load, .Lfunc_end5-gimp_data_factory_data_load
	.cfi_endproc

	.globl	gimp_data_factory_data_refresh
	.align	16, 0x90
	.type	gimp_data_factory_data_refresh,@function
gimp_data_factory_data_refresh:         # @gimp_data_factory_data_refresh
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_refresh, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_refresh, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_container_freeze
	movq	-8(%rbp), %rdi
	callq	gimp_data_factory_data_save
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	callq	g_hash_table_new
	movl	$1, %esi
	movabsq	$gimp_data_factory_refresh_cache_add, %rdx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_data_factory_data_foreach
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_data_factory_data_load
	movabsq	$gimp_data_factory_refresh_cache_remove, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-24(%rbp), %rdi
	callq	g_hash_table_foreach_remove
	movq	-24(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_hash_table_destroy
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	8(%rcx), %rdi
	callq	gimp_container_thaw
.LBB6_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_data_factory_data_refresh, .Lfunc_end6-gimp_data_factory_data_refresh
	.cfi_endproc

	.globl	gimp_data_factory_data_save
	.align	16, 0x90
	.type	gimp_data_factory_data_save,@function
gimp_data_factory_data_save:            # @gimp_data_factory_data_save
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_data_factory_get_type
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
	movabsq	$.L__func__.gimp_data_factory_data_save, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_42
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_container_is_empty
	cmpl	$0, %eax
	je	.LBB7_14
# BB#13:                                # %if.then.13
	jmp	.LBB7_42
.LBB7_14:                               # %if.end.14
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB7_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB7_24
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_data_is_dirty
	cmpl	$0, %eax
	je	.LBB7_19
# BB#17:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-72(%rbp), %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB7_19
# BB#18:                                # %if.then.28
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -16(%rbp)
.LBB7_19:                               # %if.end.30
                                        #   in Loop: Header=BB7_15 Depth=1
	jmp	.LBB7_20
.LBB7_20:                               # %for.inc
                                        #   in Loop: Header=BB7_15 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB7_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_23
.LBB7_22:                               # %cond.false
                                        #   in Loop: Header=BB7_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_23
.LBB7_23:                               # %cond.end
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB7_15
.LBB7_24:                               # %for.end
	cmpq	$0, -16(%rbp)
	jne	.LBB7_26
# BB#25:                                # %if.then.33
	jmp	.LBB7_42
.LBB7_26:                               # %if.end.34
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_data_factory_get_save_dir
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_28
# BB#27:                                # %if.then.37
	movabsq	$.L.str.12, %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	-16(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB7_42
.LBB7_28:                               # %if.end.40
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB7_29:                               # %for.cond.41
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB7_41
# BB#30:                                # %for.body.43
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_data_get_filename
	cmpq	$0, %rax
	jne	.LBB7_32
# BB#31:                                # %if.then.51
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_data_create_filename
.LBB7_32:                               # %if.end.52
                                        #   in Loop: Header=BB7_29 Depth=1
	leaq	-88(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	gimp_data_save
	cmpl	$0, %eax
	jne	.LBB7_36
# BB#33:                                # %if.then.55
                                        #   in Loop: Header=BB7_29 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB7_35
# BB#34:                                # %if.then.57
                                        #   in Loop: Header=BB7_29 Depth=1
	movabsq	$.L.str.12, %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-88(%rbp), %rdi
	movq	8(%rdi), %r8
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-88(%rbp), %rdi
	callq	g_clear_error
.LBB7_35:                               # %if.end.62
                                        #   in Loop: Header=BB7_29 Depth=1
	jmp	.LBB7_36
.LBB7_36:                               # %if.end.63
                                        #   in Loop: Header=BB7_29 Depth=1
	jmp	.LBB7_37
.LBB7_37:                               # %for.inc.64
                                        #   in Loop: Header=BB7_29 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB7_39
# BB#38:                                # %cond.true.66
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB7_40
.LBB7_39:                               # %cond.false.68
                                        #   in Loop: Header=BB7_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB7_40
.LBB7_40:                               # %cond.end.69
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB7_29
.LBB7_41:                               # %for.end.71
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_list_free
.LBB7_42:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_data_factory_data_save, .Lfunc_end7-gimp_data_factory_data_save
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_data_foreach,@function
gimp_data_factory_data_foreach:         # @gimp_data_factory_data_foreach
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB8_10
# BB#1:                                 # %if.then
	jmp	.LBB8_2
.LBB8_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB8_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_internal
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB8_4:                                # %land.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_5
	jmp	.LBB8_9
.LBB8_5:                                # %while.body
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB8_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false
                                        #   in Loop: Header=BB8_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB8_8
.LBB8_8:                                # %cond.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB8_2
.LBB8_9:                                # %while.end
	jmp	.LBB8_10
.LBB8_10:                               # %if.end
	jmp	.LBB8_11
.LBB8_11:                               # %while.cond.9
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB8_16
# BB#12:                                # %while.body.11
                                        #   in Loop: Header=BB8_11 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB8_14
# BB#13:                                # %cond.true.14
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB8_15
.LBB8_14:                               # %cond.false.16
                                        #   in Loop: Header=BB8_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB8_15
.LBB8_15:                               # %cond.end.17
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	callq	*%rax
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_11
.LBB8_16:                               # %while.end.20
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_data_factory_data_foreach, .Lfunc_end8-gimp_data_factory_data_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_refresh_cache_add,@function
gimp_data_factory_refresh_cache_add:    # @gimp_data_factory_refresh_cache_add
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_data_get_filename
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_hash_table_lookup
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_insert
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB9_2:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_data_factory_refresh_cache_add, .Lfunc_end9-gimp_data_factory_refresh_cache_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_refresh_cache_remove,@function
gimp_data_factory_refresh_cache_remove: # @gimp_data_factory_refresh_cache_remove
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_object_unref
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_list_free
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_data_factory_refresh_cache_remove, .Lfunc_end10-gimp_data_factory_refresh_cache_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_get_save_dir,@function
gimp_data_factory_get_save_dir:         # @gimp_data_factory_get_save_dir
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
	subq	$176, %rsp
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -72(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	24(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	-24(%rbp), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_path_parse
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_path_parse
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	je	.LBB11_19
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB11_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB11_15
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB11_2 Depth=1
	movabsq	$strcmp, %rdx
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_find_custom
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB11_10
# BB#4:                                 # %if.then.15
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$4, %esi
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -76(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB11_8
# BB#5:                                 # %if.then.20
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB11_7
# BB#6:                                 # %if.then.22
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	-96(%rbp), %rdi
	callq	g_filename_display_name
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.24, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-104(%rbp), %r8
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movq	-104(%rbp), %rdi
	callq	g_free
.LBB11_7:                               # %if.end
                                        #   in Loop: Header=BB11_2 Depth=1
	jmp	.LBB11_9
.LBB11_8:                               # %if.else
	movq	-96(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	jmp	.LBB11_15
.LBB11_9:                               # %if.end.28
                                        #   in Loop: Header=BB11_2 Depth=1
	jmp	.LBB11_10
.LBB11_10:                              # %if.end.29
                                        #   in Loop: Header=BB11_2 Depth=1
	jmp	.LBB11_11
.LBB11_11:                              # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB11_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB11_14
.LBB11_13:                              # %cond.false
                                        #   in Loop: Header=BB11_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB11_14
.LBB11_14:                              # %cond.end
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB11_2
.LBB11_15:                              # %for.end
	cmpq	$0, -72(%rbp)
	jne	.LBB11_18
# BB#16:                                # %land.lhs.true
	cmpl	$0, -76(%rbp)
	jne	.LBB11_18
# BB#17:                                # %if.then.34
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.25, %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
.LBB11_18:                              # %if.end.37
	jmp	.LBB11_20
.LBB11_19:                              # %if.else.38
	movq	-16(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.26, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
.LBB11_20:                              # %if.end.41
	movq	-48(%rbp), %rdi
	callq	gimp_path_free
	movq	-56(%rbp), %rdi
	callq	gimp_path_free
	movq	-72(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_data_factory_get_save_dir, .Lfunc_end11-gimp_data_factory_get_save_dir
	.cfi_endproc

	.globl	gimp_data_factory_data_free
	.align	16, 0x90
	.type	gimp_data_factory_data_free,@function
gimp_data_factory_data_free:            # @gimp_data_factory_data_free
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_free, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_container_freeze
	movl	$1, %esi
	movabsq	$gimp_data_factory_remove_cb, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	callq	gimp_data_factory_data_foreach
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_container_thaw
.LBB12_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_data_factory_data_free, .Lfunc_end12-gimp_data_factory_data_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_remove_cb,@function
gimp_data_factory_remove_cb:            # @gimp_data_factory_remove_cb
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	8(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_data_factory_remove_cb, .Lfunc_end13-gimp_data_factory_remove_cb
	.cfi_endproc

	.globl	gimp_data_factory_data_new
	.align	16, 0x90
	.type	gimp_data_factory_data_new,@function
gimp_data_factory_data_new:             # @gimp_data_factory_data_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_data_factory_get_type
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
	movabsq	$.L__func__.gimp_data_factory_data_new, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_39
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB14_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB14_20
.LBB14_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB14_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB14_19
.LBB14_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB14_19:                              # %if.end.31
	jmp	.LBB14_20
.LBB14_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB14_22
# BB#21:                                # %if.then.35
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_new, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_39
.LBB14_23:                              # %if.end.37
	jmp	.LBB14_24
.LBB14_24:                              # %do.end.38
	jmp	.LBB14_25
.LBB14_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB14_27
# BB#26:                                # %if.then.41
	jmp	.LBB14_28
.LBB14_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_new, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_39
.LBB14_28:                              # %if.end.43
	jmp	.LBB14_29
.LBB14_29:                              # %do.end.44
	jmp	.LBB14_30
.LBB14_30:                              # %do.body.45
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB14_32
# BB#31:                                # %if.then.48
	jmp	.LBB14_33
.LBB14_32:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_new, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_39
.LBB14_33:                              # %if.end.50
	jmp	.LBB14_34
.LBB14_34:                              # %do.end.51
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB14_38
# BB#35:                                # %if.then.53
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB14_37
# BB#36:                                # %if.then.59
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-88(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-88(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	jmp	.LBB14_39
.LBB14_37:                              # %if.end.64
	movabsq	$.L.str.15, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_new, %rsi
	movb	$0, %al
	callq	g_warning
.LBB14_38:                              # %if.end.65
	movq	$0, -8(%rbp)
.LBB14_39:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_data_factory_data_new, .Lfunc_end14-gimp_data_factory_data_new
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB15_2
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
.LBB15_2:                               # %entry
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
.Lfunc_end15:
	.size	g_warning, .Lfunc_end15-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_data_factory_data_duplicate
	.align	16, 0x90
	.type	gimp_data_factory_data_duplicate,@function
gimp_data_factory_data_duplicate:       # @gimp_data_factory_data_duplicate
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_duplicate, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_34
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB16_20
.LBB16_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB16_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB16_19
.LBB16_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB16_19:                              # %if.end.31
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.35
	jmp	.LBB16_23
.LBB16_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_duplicate, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_34
.LBB16_23:                              # %if.end.37
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.38
	movq	-24(%rbp), %rdi
	callq	gimp_data_duplicate
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB16_33
# BB#25:                                # %if.then.41
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movl	$35, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	strrchr
	movabsq	$.L.str.17, %rdi
	movq	%rax, -96(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, %esi
	movl	%esi, -100(%rbp)
	movq	-88(%rbp), %rdi
	callq	strlen
	movslq	-100(%rbp), %rdi
	cmpq	%rdi, %rax
	jb	.LBB16_27
# BB#26:                                # %land.lhs.true.55
	movabsq	$.L.str.17, %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movslq	-100(%rbp), %rdi
	subq	%rdi, %rax
	addq	-88(%rbp), %rax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB16_30
.LBB16_27:                              # %lor.lhs.false
	cmpq	$0, -96(%rbp)
	je	.LBB16_31
# BB#28:                                # %land.lhs.true.63
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -104(%rbp)
	cmpl	$0, %eax
	jle	.LBB16_31
# BB#29:                                # %land.lhs.true.67
	cvtsi2sdl	-104(%rbp), %xmm0
	callq	log10
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rdi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_31
.LBB16_30:                              # %if.then.76
	movq	-88(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -112(%rbp)
	jmp	.LBB16_32
.LBB16_31:                              # %if.else.78
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -112(%rbp)
.LBB16_32:                              # %if.end.81
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	g_object_unref
.LBB16_33:                              # %if.end.87
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_data_factory_data_duplicate, .Lfunc_end16-gimp_data_factory_data_duplicate
	.cfi_endproc

	.globl	gimp_data_factory_data_delete
	.align	16, 0x90
	.type	gimp_data_factory_data_delete,@function
gimp_data_factory_data_delete:          # @gimp_data_factory_data_delete
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$1, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.9
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_delete, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_36
.LBB17_11:                              # %if.end.11
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB17_15
# BB#14:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB17_20
.LBB17_15:                              # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB17_18
# BB#17:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB17_19:                              # %if.end.32
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB17_22
# BB#21:                                # %if.then.36
	jmp	.LBB17_23
.LBB17_22:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_delete, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_36
.LBB17_23:                              # %if.end.38
	jmp	.LBB17_24
.LBB17_24:                              # %do.end.39
	jmp	.LBB17_25
.LBB17_25:                              # %do.body.40
	cmpq	$0, -40(%rbp)
	je	.LBB17_27
# BB#26:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB17_28
.LBB17_27:                              # %if.then.43
	jmp	.LBB17_29
.LBB17_28:                              # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_delete, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_36
.LBB17_29:                              # %if.end.45
	jmp	.LBB17_30
.LBB17_30:                              # %do.end.46
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB17_35
# BB#31:                                # %if.then.51
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	cmpl	$0, -28(%rbp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB17_34
# BB#32:                                # %land.lhs.true.59
	movq	-24(%rbp), %rdi
	callq	gimp_data_get_filename
	cmpq	$0, %rax
	je	.LBB17_34
# BB#33:                                # %if.then.62
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_data_delete_from_disk
	movl	%eax, -44(%rbp)
.LBB17_34:                              # %if.end.64
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB17_35:                              # %if.end.65
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB17_36:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_data_factory_data_delete, .Lfunc_end17-gimp_data_factory_data_delete
	.cfi_endproc

	.globl	gimp_data_factory_data_get_standard
	.align	16, 0x90
	.type	gimp_data_factory_data_get_standard,@function
gimp_data_factory_data_get_standard:    # @gimp_data_factory_data_get_standard
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_get_standard, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_27
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB18_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB18_20
.LBB18_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB18_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB18_19
.LBB18_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB18_19:                              # %if.end.31
	jmp	.LBB18_20
.LBB18_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB18_22
# BB#21:                                # %if.then.35
	jmp	.LBB18_23
.LBB18_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_get_standard, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_27
.LBB18_23:                              # %if.end.37
	jmp	.LBB18_24
.LBB18_24:                              # %do.end.38
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 64(%rax)
	je	.LBB18_26
# BB#25:                                # %if.then.40
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_27
.LBB18_26:                              # %if.end.44
	movq	$0, -8(%rbp)
.LBB18_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_data_factory_data_get_standard, .Lfunc_end18-gimp_data_factory_data_get_standard
	.cfi_endproc

	.globl	gimp_data_factory_data_save_single
	.align	16, 0x90
	.type	gimp_data_factory_data_save_single,@function
gimp_data_factory_data_save_single:     # @gimp_data_factory_data_save_single
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_save_single, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_43
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB19_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB19_20
.LBB19_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB19_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB19_19
.LBB19_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB19_19:                              # %if.end.31
	jmp	.LBB19_20
.LBB19_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB19_22
# BB#21:                                # %if.then.35
	jmp	.LBB19_23
.LBB19_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_save_single, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_43
.LBB19_23:                              # %if.end.37
	jmp	.LBB19_24
.LBB19_24:                              # %do.end.38
	jmp	.LBB19_25
.LBB19_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB19_27
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB19_28
.LBB19_27:                              # %if.then.42
	jmp	.LBB19_29
.LBB19_28:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_data_save_single, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_43
.LBB19_29:                              # %if.end.44
	jmp	.LBB19_30
.LBB19_30:                              # %do.end.45
	movq	-24(%rbp), %rdi
	callq	gimp_data_is_dirty
	cmpl	$0, %eax
	jne	.LBB19_32
# BB#31:                                # %if.then.48
	movl	$1, -4(%rbp)
	jmp	.LBB19_43
.LBB19_32:                              # %if.end.49
	movq	-24(%rbp), %rdi
	callq	gimp_data_get_filename
	cmpq	$0, %rax
	jne	.LBB19_36
# BB#33:                                # %if.then.52
	leaq	-96(%rbp), %rsi
	movq	$0, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_data_factory_get_save_dir
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB19_35
# BB#34:                                # %if.then.57
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.12, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi
	movq	8(%rdi), %r8
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	leaq	-96(%rbp), %rdi
	callq	g_clear_error
	movl	$0, -4(%rbp)
	jmp	.LBB19_43
.LBB19_35:                              # %if.end.60
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_data_create_filename
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB19_36:                              # %if.end.61
	movq	-24(%rbp), %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	jne	.LBB19_38
# BB#37:                                # %if.then.64
	movl	$0, -4(%rbp)
	jmp	.LBB19_43
.LBB19_38:                              # %if.end.65
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_data_save
	cmpl	$0, %eax
	jne	.LBB19_42
# BB#39:                                # %if.then.68
	cmpq	$0, -32(%rbp)
	jne	.LBB19_41
# BB#40:                                # %if.then.70
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.12, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movabsq	$.L.str.20, %r8
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
.LBB19_41:                              # %if.end.73
	movl	$0, -4(%rbp)
	jmp	.LBB19_43
.LBB19_42:                              # %if.end.74
	movl	$1, -4(%rbp)
.LBB19_43:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_data_factory_data_save_single, .Lfunc_end19-gimp_data_factory_data_save_single
	.cfi_endproc

	.globl	gimp_data_factory_get_container
	.align	16, 0x90
	.type	gimp_data_factory_get_container,@function
gimp_data_factory_get_container:        # @gimp_data_factory_get_container
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_get_container, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB20_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_data_factory_get_container, .Lfunc_end20-gimp_data_factory_get_container
	.cfi_endproc

	.globl	gimp_data_factory_get_container_obsolete
	.align	16, 0x90
	.type	gimp_data_factory_get_container_obsolete,@function
gimp_data_factory_get_container_obsolete: # @gimp_data_factory_get_container_obsolete
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_get_container_obsolete, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB21_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_data_factory_get_container_obsolete, .Lfunc_end21-gimp_data_factory_get_container_obsolete
	.cfi_endproc

	.globl	gimp_data_factory_get_gimp
	.align	16, 0x90
	.type	gimp_data_factory_get_gimp,@function
gimp_data_factory_get_gimp:             # @gimp_data_factory_get_gimp
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
	callq	gimp_data_factory_get_type
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
	movabsq	$.L__func__.gimp_data_factory_get_gimp, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_13
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB22_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_data_factory_get_gimp, .Lfunc_end22-gimp_data_factory_get_gimp
	.cfi_endproc

	.globl	gimp_data_factory_has_data_new_func
	.align	16, 0x90
	.type	gimp_data_factory_has_data_new_func,@function
gimp_data_factory_has_data_new_func:    # @gimp_data_factory_has_data_new_func
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
	callq	gimp_data_factory_get_type
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
	movabsq	$.L__func__.gimp_data_factory_has_data_new_func, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB23_13
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 56(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB23_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_data_factory_has_data_new_func, .Lfunc_end23-gimp_data_factory_has_data_new_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_class_init,@function
gimp_data_factory_class_init:           # @gimp_data_factory_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movl	$72, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_data_factory_get_memsize, %rdi
	movabsq	$gimp_data_factory_finalize, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 152(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_data_factory_class_init, .Lfunc_end24-gimp_data_factory_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_finalize,@function
gimp_data_factory_finalize:             # @gimp_data_factory_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 8(%rax)
.LBB25_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB25_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 16(%rax)
.LBB25_4:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB25_6
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 24(%rax)
.LBB25_6:                               # %if.end.21
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB25_8
# BB#7:                                 # %if.then.24
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 32(%rax)
.LBB25_8:                               # %if.end.29
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_data_factory_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_data_factory_finalize, .Lfunc_end25-gimp_data_factory_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_get_memsize,@function
gimp_data_factory_get_memsize:          # @gimp_data_factory_get_memsize
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_data_factory_parent_class, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_data_factory_get_memsize, .Lfunc_end26-gimp_data_factory_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_load_data,@function
gimp_data_factory_load_data:            # @gimp_data_factory_load_data
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -68(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB27_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movslq	-68(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	imulq	$24, %rax, %rax
	addq	40(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB27_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_datafiles_check_extension
	cmpl	$0, %eax
	je	.LBB27_5
.LBB27_4:                               # %if.then
	jmp	.LBB27_8
.LBB27_5:                               # %if.end
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_6
.LBB27_6:                               # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB27_1
.LBB27_7:                               # %for.end
	jmp	.LBB27_41
.LBB27_8:                               # %insert
	cmpq	$0, -40(%rbp)
	je	.LBB27_21
# BB#9:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB27_20
# BB#10:                                # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_data_get_mtime
	cmpq	$0, %rax
	je	.LBB27_20
# BB#11:                                # %land.lhs.true.14
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_data_get_mtime
	movq	-8(%rbp), %rdi
	cmpq	32(%rdi), %rax
	jne	.LBB27_20
# BB#12:                                # %if.then.18
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB27_13:                              # %for.cond.19
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB27_19
# BB#14:                                # %for.body.21
                                        #   in Loop: Header=BB27_13 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_container_add
	movl	%eax, -132(%rbp)        # 4-byte Spill
# BB#15:                                # %for.inc.25
                                        #   in Loop: Header=BB27_13 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB27_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB27_13 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB27_18
.LBB27_17:                              # %cond.false
                                        #   in Loop: Header=BB27_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB27_18
.LBB27_18:                              # %cond.end
                                        #   in Loop: Header=BB27_13 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB27_13
.LBB27_19:                              # %for.end.27
	jmp	.LBB27_41
.LBB27_20:                              # %if.end.28
	jmp	.LBB27_21
.LBB27_21:                              # %if.end.29
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	*%rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB27_39
# BB#22:                                # %if.then.34
	movabsq	$.L.str.22, %rsi
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	strstr
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jne	.LBB27_28
# BB#23:                                # %if.then.39
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_list_length
	xorl	%edx, %edx
	movb	%dl, %r8b
	cmpl	$1, %eax
	movb	%r8b, -145(%rbp)        # 1-byte Spill
	jne	.LBB27_25
# BB#24:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_data_factory_is_dir_writable
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -145(%rbp)         # 1-byte Spill
.LBB27_25:                              # %land.end
	movb	-145(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -108(%rbp)
	cmpl	$0, -108(%rbp)
	movb	%dl, -146(%rbp)         # 1-byte Spill
	je	.LBB27_27
# BB#26:                                # %land.rhs.49
	movq	-48(%rbp), %rax
	cmpl	$0, 16(%rax)
	setne	%cl
	movb	%cl, -146(%rbp)         # 1-byte Spill
.LBB27_27:                              # %land.end.52
	movb	-146(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -104(%rbp)
.LBB27_28:                              # %if.end.54
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB27_29:                              # %for.cond.55
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB27_38
# BB#30:                                # %for.body.57
                                        #   in Loop: Header=BB27_29 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movl	-104(%rbp), %edx
	movl	-108(%rbp), %ecx
	callq	gimp_data_set_filename
	movq	-128(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	callq	gimp_data_set_mtime
	movq	-128(%rbp), %rdi
	callq	gimp_data_clean
	cmpl	$0, -100(%rbp)
	je	.LBB27_32
# BB#31:                                # %if.then.63
                                        #   in Loop: Header=BB27_29 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	movq	-128(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB27_33
.LBB27_32:                              # %if.else
                                        #   in Loop: Header=BB27_29 Depth=1
	movq	-128(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	callq	gimp_data_set_folder_tags
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movq	-128(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB27_33:                              # %if.end.73
                                        #   in Loop: Header=BB27_29 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#34:                                # %for.inc.74
                                        #   in Loop: Header=BB27_29 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB27_36
# BB#35:                                # %cond.true.76
                                        #   in Loop: Header=BB27_29 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB27_37
.LBB27_36:                              # %cond.false.78
                                        #   in Loop: Header=BB27_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB27_37
.LBB27_37:                              # %cond.end.79
                                        #   in Loop: Header=BB27_29 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB27_29
.LBB27_38:                              # %for.end.81
	movq	-64(%rbp), %rdi
	callq	g_list_free
.LBB27_39:                              # %if.end.82
	cmpq	$0, -56(%rbp)
	je	.LBB27_41
# BB#40:                                # %if.then.84
	movabsq	$.L.str.23, %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-56(%rbp), %rdi
	movq	8(%rdi), %r8
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-56(%rbp), %rdi
	callq	g_clear_error
.LBB27_41:                              # %if.end.87
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_data_factory_load_data, .Lfunc_end27-gimp_data_factory_load_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_load_data_recursive,@function
gimp_data_factory_load_data_recursive:  # @gimp_data_factory_load_data_recursive
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 24(%rsi)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$1, -28(%rbp)
.LBB28_2:                               # %if.end
	movl	$1, %esi
	movabsq	$gimp_data_factory_load_data, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_datafiles_read_directories
	movl	$4, %esi
	movabsq	$gimp_data_factory_load_data_recursive, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_datafiles_read_directories
	cmpl	$0, -28(%rbp)
	je	.LBB28_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
.LBB28_4:                               # %if.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_data_factory_load_data_recursive, .Lfunc_end28-gimp_data_factory_load_data_recursive
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_is_dir_writable,@function
gimp_data_factory_is_dir_writable:      # @gimp_data_factory_is_dir_writable
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB29_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB29_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB29_4
# BB#3:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB29_10
.LBB29_4:                               # %if.end
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_5
.LBB29_5:                               # %for.inc
                                        #   in Loop: Header=BB29_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB29_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB29_8
.LBB29_7:                               # %cond.false
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB29_8
.LBB29_8:                               # %cond.end
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB29_1
.LBB29_9:                               # %for.end
	movl	$0, -4(%rbp)
.LBB29_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_data_factory_is_dir_writable, .Lfunc_end29-gimp_data_factory_is_dir_writable
	.cfi_endproc

	.type	gimp_data_factory_get_type.g_define_type_id__volatile,@object # @gimp_data_factory_get_type.g_define_type_id__volatile
	.local	gimp_data_factory_get_type.g_define_type_id__volatile
	.comm	gimp_data_factory_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDataFactory"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_data_factory_new,@object # @__func__.gimp_data_factory_new
.L__func__.gimp_data_factory_new:
	.asciz	"gimp_data_factory_new"
	.size	.L__func__.gimp_data_factory_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"g_type_is_a (data_type, GIMP_TYPE_DATA)"
	.size	.L.str.3, 40

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"path_property_name != NULL"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"writable_property_name != NULL"
	.size	.L.str.5, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"loader_entries != NULL"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"n_loader_entries > 0"
	.size	.L.str.7, 21

	.type	.L__func__.gimp_data_factory_data_init,@object # @__func__.gimp_data_factory_data_init
.L__func__.gimp_data_factory_data_init:
	.asciz	"gimp_data_factory_data_init"
	.size	.L__func__.gimp_data_factory_data_init, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_DATA_FACTORY (factory)"
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Loading '%s' data\n"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"???"
	.size	.L.str.11, 4

	.type	.L__func__.gimp_data_factory_data_refresh,@object # @__func__.gimp_data_factory_data_refresh
.L__func__.gimp_data_factory_data_refresh:
	.asciz	"gimp_data_factory_data_refresh"
	.size	.L__func__.gimp_data_factory_data_refresh, 31

	.type	.L__func__.gimp_data_factory_data_save,@object # @__func__.gimp_data_factory_data_save
.L__func__.gimp_data_factory_data_save:
	.asciz	"gimp_data_factory_data_save"
	.size	.L__func__.gimp_data_factory_data_save, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Failed to save data:\n\n%s"
	.size	.L.str.12, 25

	.type	.L__func__.gimp_data_factory_data_free,@object # @__func__.gimp_data_factory_data_free
.L__func__.gimp_data_factory_data_free:
	.asciz	"gimp_data_factory_data_free"
	.size	.L__func__.gimp_data_factory_data_free, 28

	.type	.L__func__.gimp_data_factory_data_new,@object # @__func__.gimp_data_factory_data_new
.L__func__.gimp_data_factory_data_new:
	.asciz	"gimp_data_factory_data_new"
	.size	.L__func__.gimp_data_factory_data_new, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"name != NULL"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"*name != '\\0'"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s: factory->priv->data_new_func() returned NULL"
	.size	.L.str.15, 49

	.type	.L__func__.gimp_data_factory_data_duplicate,@object # @__func__.gimp_data_factory_data_duplicate
.L__func__.gimp_data_factory_data_duplicate:
	.asciz	"gimp_data_factory_data_duplicate"
	.size	.L__func__.gimp_data_factory_data_duplicate, 33

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_IS_DATA (data)"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"copy"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s copy"
	.size	.L.str.18, 8

	.type	.L__func__.gimp_data_factory_data_delete,@object # @__func__.gimp_data_factory_data_delete
.L__func__.gimp_data_factory_data_delete:
	.asciz	"gimp_data_factory_data_delete"
	.size	.L__func__.gimp_data_factory_data_delete, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.19, 32

	.type	.L__func__.gimp_data_factory_data_get_standard,@object # @__func__.gimp_data_factory_data_get_standard
.L__func__.gimp_data_factory_data_get_standard:
	.asciz	"gimp_data_factory_data_get_standard"
	.size	.L__func__.gimp_data_factory_data_get_standard, 36

	.type	.L__func__.gimp_data_factory_data_save_single,@object # @__func__.gimp_data_factory_data_save_single
.L__func__.gimp_data_factory_data_save_single:
	.asciz	"gimp_data_factory_data_save_single"
	.size	.L__func__.gimp_data_factory_data_save_single, 35

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Data class does not implement saving"
	.size	.L.str.20, 37

	.type	.L__func__.gimp_data_factory_get_container,@object # @__func__.gimp_data_factory_get_container
.L__func__.gimp_data_factory_get_container:
	.asciz	"gimp_data_factory_get_container"
	.size	.L__func__.gimp_data_factory_get_container, 32

	.type	.L__func__.gimp_data_factory_get_container_obsolete,@object # @__func__.gimp_data_factory_get_container_obsolete
.L__func__.gimp_data_factory_get_container_obsolete:
	.asciz	"gimp_data_factory_get_container_obsolete"
	.size	.L__func__.gimp_data_factory_get_container_obsolete, 41

	.type	.L__func__.gimp_data_factory_get_gimp,@object # @__func__.gimp_data_factory_get_gimp
.L__func__.gimp_data_factory_get_gimp:
	.asciz	"gimp_data_factory_get_gimp"
	.size	.L__func__.gimp_data_factory_get_gimp, 27

	.type	.L__func__.gimp_data_factory_has_data_new_func,@object # @__func__.gimp_data_factory_has_data_new_func
.L__func__.gimp_data_factory_has_data_new_func:
	.asciz	"gimp_data_factory_has_data_new_func"
	.size	.L__func__.gimp_data_factory_has_data_new_func, 36

	.type	gimp_data_factory_parent_class,@object # @gimp_data_factory_parent_class
	.local	gimp_data_factory_parent_class
	.comm	gimp_data_factory_parent_class,8,8
	.type	GimpDataFactory_private_offset,@object # @GimpDataFactory_private_offset
	.local	GimpDataFactory_private_offset
	.comm	GimpDataFactory_private_offset,4,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-data-factory-writable-path"
	.size	.L.str.21, 32

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-obsolete-files"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Failed to load data:\n\n%s"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"You have a writable data folder configured (%s), but this folder does not exist. Please create the folder or fix your configuation in the Preferences dialog's 'Folders' section."
	.size	.L.str.24, 178

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"You have a writable data folder configured, but this folder is not part of your data search path. You probably edited the gimprc file manually, please fix it in the Preferences dialog's 'Folders' section."
	.size	.L.str.25, 205

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"You don't have any writable data folder configured."
	.size	.L.str.26, 52


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
