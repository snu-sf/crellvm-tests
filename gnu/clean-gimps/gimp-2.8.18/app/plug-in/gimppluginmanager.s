	.text
	.file	"gimppluginmanager.bc"
	.globl	gimp_plug_in_manager_get_type
	.align	16, 0x90
	.type	gimp_plug_in_manager_get_type,@function
gimp_plug_in_manager_get_type:          # @gimp_plug_in_manager_get_type
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
	movq	gimp_plug_in_manager_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_plug_in_manager_get_type.g_define_type_id__volatile, %rax
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
	movl	$192, %edx
	movabsq	$gimp_plug_in_manager_class_intern_init, %rdi
	movl	$184, %r8d
	movabsq	$gimp_plug_in_manager_init, %rcx
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
	movabsq	$gimp_plug_in_manager_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_plug_in_manager_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_manager_get_type, .Lfunc_end0-gimp_plug_in_manager_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_class_intern_init,@function
gimp_plug_in_manager_class_intern_init: # @gimp_plug_in_manager_class_intern_init
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
	movq	%rax, gimp_plug_in_manager_parent_class
	cmpl	$0, GimpPlugInManager_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPlugInManager_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_plug_in_manager_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_manager_class_intern_init, .Lfunc_end1-gimp_plug_in_manager_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_init,@function
gimp_plug_in_manager_init:              # @gimp_plug_in_manager_init
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
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 72(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 80(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 144(%rdi)
	callq	gimp_interpreter_db_new
	movq	-8(%rbp), %rdi
	movq	%rax, 152(%rdi)
	callq	gimp_environ_table_new
	movq	-8(%rbp), %rdi
	movq	%rax, 160(%rdi)
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_manager_init, .Lfunc_end2-gimp_plug_in_manager_init
	.cfi_endproc

	.globl	gimp_plug_in_manager_new
	.align	16, 0x90
	.type	gimp_plug_in_manager_new,@function
gimp_plug_in_manager_new:               # @gimp_plug_in_manager_new
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
	callq	gimp_plug_in_manager_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_manager_new, .Lfunc_end3-gimp_plug_in_manager_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI4_1:
	.quad	4605380978949069210     # double 0.80000000000000004
	.text
	.globl	gimp_plug_in_manager_initialize
	.align	16, 0x90
	.type	gimp_plug_in_manager_initialize,@function
gimp_plug_in_manager_initialize:        # @gimp_plug_in_manager_initialize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_manager_get_type
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
	movabsq	$.L__func__.gimp_plug_in_manager_initialize, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_20
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_initialize, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_20
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movabsq	$.L.str.4, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	88(%rax), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_interpreter_db_load
	movq	-24(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.5, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	96(%rax), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_environ_table_load
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 76(%rax)
	je	.LBB4_19
# BB#18:                                # %if.then.25
	callq	gimp_plug_in_shm_new
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
.LBB4_19:                               # %if.end.27
	callq	gimp_plug_in_debug_new
	movq	-8(%rbp), %rcx
	movq	%rax, 168(%rcx)
.LBB4_20:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plug_in_manager_initialize, .Lfunc_end4-gimp_plug_in_manager_initialize
	.cfi_endproc

	.globl	gimp_plug_in_manager_exit
	.align	16, 0x90
	.type	gimp_plug_in_manager_exit,@function
gimp_plug_in_manager_exit:              # @gimp_plug_in_manager_exit
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_exit, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_17
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB5_15
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_plug_in_close
	jmp	.LBB5_13
.LBB5_15:                               # %while.end
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB5_17
# BB#16:                                # %if.then.14
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_plug_in_shm_free
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
.LBB5_17:                               # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_plug_in_manager_exit, .Lfunc_end5-gimp_plug_in_manager_exit
	.cfi_endproc

	.globl	gimp_plug_in_manager_add_procedure
	.align	16, 0x90
	.type	gimp_plug_in_manager_add_procedure,@function
gimp_plug_in_manager_add_procedure:     # @gimp_plug_in_manager_add_procedure
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_manager_get_type
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
	movabsq	$.L__func__.gimp_plug_in_manager_add_procedure, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_37
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_plug_in_procedure_get_type
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
	movabsq	$.L__func__.gimp_plug_in_manager_add_procedure, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_37
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB6_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB6_36
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-80(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_34
# BB#27:                                # %if.then.45
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-80(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.7, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, -88(%rbp)
.LBB6_28:                               # %for.cond.51
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB6_33
# BB#29:                                # %for.body.53
                                        #   in Loop: Header=BB6_28 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB6_31
# BB#30:                                # %if.then.58
                                        #   in Loop: Header=BB6_28 Depth=1
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_plug_in_def_remove_procedure
.LBB6_31:                               # %if.end.59
                                        #   in Loop: Header=BB6_28 Depth=1
	jmp	.LBB6_32
.LBB6_32:                               # %for.inc
                                        #   in Loop: Header=BB6_28 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB6_28
.LBB6_33:                               # %for.end
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 72(%rsi)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 80(%rsi)
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_plug_in_manager_history_remove
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB6_37
.LBB6_34:                               # %if.end.66
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_35
.LBB6_35:                               # %for.inc.67
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_25
.LBB6_36:                               # %for.end.69
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
.LBB6_37:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_plug_in_manager_add_procedure, .Lfunc_end6-gimp_plug_in_manager_add_procedure
	.cfi_endproc

	.globl	gimp_plug_in_manager_add_temp_proc
	.align	16, 0x90
	.type	gimp_plug_in_manager_add_temp_proc,@function
gimp_plug_in_manager_add_temp_proc:     # @gimp_plug_in_manager_add_temp_proc
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_temp_proc, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_25
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_temporary_procedure_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_temp_proc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_25
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_pdb_register_procedure
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
.LBB7_25:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_plug_in_manager_add_temp_proc, .Lfunc_end7-gimp_plug_in_manager_add_temp_proc
	.cfi_endproc

	.globl	gimp_plug_in_manager_remove_temp_proc
	.align	16, 0x90
	.type	gimp_plug_in_manager_remove_temp_proc,@function
gimp_plug_in_manager_remove_temp_proc:  # @gimp_plug_in_manager_remove_temp_proc
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_remove_temp_proc, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_25
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_temporary_procedure_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_remove_temp_proc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_25
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_plug_in_manager_history_remove
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_pdb_unregister_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_25:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_plug_in_manager_remove_temp_proc, .Lfunc_end8-gimp_plug_in_manager_remove_temp_proc
	.cfi_endproc

	.globl	gimp_plug_in_manager_add_open_plug_in
	.align	16, 0x90
	.type	gimp_plug_in_manager_add_open_plug_in,@function
gimp_plug_in_manager_add_open_plug_in:  # @gimp_plug_in_manager_add_open_plug_in
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_open_plug_in, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_open_plug_in, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_slist_prepend
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, 120(%rsi)
	movq	-8(%rbp), %rax
	movl	manager_signals, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB9_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_plug_in_manager_add_open_plug_in, .Lfunc_end9-gimp_plug_in_manager_add_open_plug_in
	.cfi_endproc

	.globl	gimp_plug_in_manager_remove_open_plug_in
	.align	16, 0x90
	.type	gimp_plug_in_manager_remove_open_plug_in,@function
gimp_plug_in_manager_remove_open_plug_in: # @gimp_plug_in_manager_remove_open_plug_in
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_remove_open_plug_in, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_25
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_remove_open_plug_in, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_25
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, 120(%rsi)
	movq	-8(%rbp), %rax
	movl	manager_signals+4, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
.LBB10_25:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_plug_in_manager_remove_open_plug_in, .Lfunc_end10-gimp_plug_in_manager_remove_open_plug_in
	.cfi_endproc

	.globl	gimp_plug_in_manager_plug_in_push
	.align	16, 0x90
	.type	gimp_plug_in_manager_plug_in_push,@function
gimp_plug_in_manager_plug_in_push:      # @gimp_plug_in_manager_plug_in_push
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_plug_in_push, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_25
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_plug_in_push, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_25
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-8(%rbp), %rcx
	movq	%rax, 128(%rcx)
.LBB11_25:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_plug_in_manager_plug_in_push, .Lfunc_end11-gimp_plug_in_manager_plug_in_push
	.cfi_endproc

	.globl	gimp_plug_in_manager_plug_in_pop
	.align	16, 0x90
	.type	gimp_plug_in_manager_plug_in_pop,@function
gimp_plug_in_manager_plug_in_pop:       # @gimp_plug_in_manager_plug_in_pop
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
	callq	gimp_plug_in_manager_get_type
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
	movabsq	$.L__func__.gimp_plug_in_manager_plug_in_pop, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_17
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB12_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 128(%rsi)
.LBB12_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB12_16
# BB#15:                                # %if.then.19
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 112(%rcx)
	jmp	.LBB12_17
.LBB12_16:                              # %if.else.23
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
.LBB12_17:                              # %if.end.25
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_plug_in_manager_plug_in_pop, .Lfunc_end12-gimp_plug_in_manager_plug_in_pop
	.cfi_endproc

	.globl	gimp_plug_in_manager_history_changed
	.align	16, 0x90
	.type	gimp_plug_in_manager_history_changed,@function
gimp_plug_in_manager_history_changed:   # @gimp_plug_in_manager_history_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_history_changed, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	manager_signals+12, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB13_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_plug_in_manager_history_changed, .Lfunc_end13-gimp_plug_in_manager_history_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_class_init,@function
gimp_plug_in_manager_class_init:        # @gimp_plug_in_manager_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$240, %rsp
.Ltmp45:
	.cfi_offset %rbx, -48
.Ltmp46:
	.cfi_offset %r12, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
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
	callq	gimp_plug_in_get_type
	movabsq	$.L.str.10, %rdi
	movl	$2, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rbx, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, manager_signals
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_get_type
	movabsq	$.L.str.11, %rdi
	movl	$2, %edx
	movl	$168, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movl	$1, %r15d
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movl	%r15d, -140(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.12, %rdi
	movl	$2, %edx
	movl	$176, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$gimp_marshal_VOID__STRING_STRING_STRING, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movl	$1, %r15d
	movl	$64, %r12d
	movl	%r12d, %r10d
	movl	%eax, manager_signals+4
	movq	-40(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-152(%rbp), %r11        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	$64, 32(%rsp)
	movq	$64, 40(%rsp)
	movb	$0, %al
	movq	%r10, -176(%rbp)        # 8-byte Spill
	movl	%r15d, -180(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.13, %rdi
	movl	$2, %edx
	movl	$184, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	xorl	%r15d, %r15d
	movl	%eax, manager_signals+8
	movq	-40(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r15d, -212(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_plug_in_manager_get_memsize, %rsi
	movabsq	$gimp_plug_in_manager_finalize, %rdi
	movabsq	$gimp_plug_in_manager_dispose, %r8
	movl	%eax, manager_signals+12
	movq	-48(%rbp), %r9
	movq	%r8, 40(%r9)
	movq	-48(%rbp), %r8
	movq	%rdi, 48(%r8)
	movq	-56(%rbp), %rdi
	movq	%rsi, 152(%rdi)
	addq	$240, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_plug_in_manager_class_init, .Lfunc_end14-gimp_plug_in_manager_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_dispose,@function
gimp_plug_in_manager_dispose:           # @gimp_plug_in_manager_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_manager_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_manager_history_clear
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_plug_in_manager_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_plug_in_manager_dispose, .Lfunc_end15-gimp_plug_in_manager_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_finalize,@function
gimp_plug_in_manager_finalize:          # @gimp_plug_in_manager_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_manager_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_slist_free
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_slist_free
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
.LBB16_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB16_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_slist_free
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
.LBB16_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB16_8
# BB#7:                                 # %if.then.15
	movabsq	$g_object_unref, %rsi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_slist_free_full
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB16_8:                               # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB16_10
# BB#9:                                 # %if.then.20
	movabsq	$g_object_unref, %rsi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_slist_free_full
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB16_10:                              # %if.end.23
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB16_12
# BB#11:                                # %if.then.25
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 160(%rax)
.LBB16_12:                              # %if.end.28
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB16_14
# BB#13:                                # %if.then.30
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
.LBB16_14:                              # %if.end.33
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB16_16
# BB#15:                                # %if.then.35
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gimp_plug_in_debug_free
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
.LBB16_16:                              # %if.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_manager_menu_branch_exit
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_manager_locale_domain_exit
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_manager_help_domain_exit
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_manager_data_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_plug_in_manager_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_plug_in_manager_finalize, .Lfunc_end16-gimp_plug_in_manager_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_get_memsize,@function
gimp_plug_in_manager_get_memsize:       # @gimp_plug_in_manager_get_memsize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_manager_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_object_get_memsize, %rsi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_g_slist_get_memsize_foreach
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_g_slist_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_g_slist_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_g_slist_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	gimp_g_slist_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	callq	gimp_g_slist_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gimp_g_slist_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	callq	gimp_g_slist_get_memsize
	movabsq	$gimp_object_get_memsize, %rdx
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	gimp_g_slist_get_memsize_foreach
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_g_slist_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_g_slist_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
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
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gimp_g_list_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_plug_in_manager_parent_class, %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_plug_in_manager_get_memsize, .Lfunc_end17-gimp_plug_in_manager_get_memsize
	.cfi_endproc

	.type	gimp_plug_in_manager_get_type.g_define_type_id__volatile,@object # @gimp_plug_in_manager_get_type.g_define_type_id__volatile
	.local	gimp_plug_in_manager_get_type.g_define_type_id__volatile
	.comm	gimp_plug_in_manager_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPlugInManager"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Plug-In"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_plug_in_manager_initialize,@object # @__func__.gimp_plug_in_manager_initialize
.L__func__.gimp_plug_in_manager_initialize:
	.asciz	"gimp_plug_in_manager_initialize"
	.size	.L__func__.gimp_plug_in_manager_initialize, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PLUG_IN_MANAGER (manager)"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"status_callback != NULL"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Plug-In Interpreters"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Plug-In Environment"
	.size	.L.str.5, 20

	.type	.L__func__.gimp_plug_in_manager_exit,@object # @__func__.gimp_plug_in_manager_exit
.L__func__.gimp_plug_in_manager_exit:
	.asciz	"gimp_plug_in_manager_exit"
	.size	.L__func__.gimp_plug_in_manager_exit, 26

	.type	.L__func__.gimp_plug_in_manager_add_procedure,@object # @__func__.gimp_plug_in_manager_add_procedure
.L__func__.gimp_plug_in_manager_add_procedure:
	.asciz	"gimp_plug_in_manager_add_procedure"
	.size	.L__func__.gimp_plug_in_manager_add_procedure, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_PLUG_IN_PROCEDURE (procedure)"
	.size	.L.str.6, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Removing duplicate PDB procedure '%s' registered by '%s'\n"
	.size	.L.str.7, 58

	.type	.L__func__.gimp_plug_in_manager_add_temp_proc,@object # @__func__.gimp_plug_in_manager_add_temp_proc
.L__func__.gimp_plug_in_manager_add_temp_proc:
	.asciz	"gimp_plug_in_manager_add_temp_proc"
	.size	.L__func__.gimp_plug_in_manager_add_temp_proc, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_TEMPORARY_PROCEDURE (procedure)"
	.size	.L.str.8, 40

	.type	.L__func__.gimp_plug_in_manager_remove_temp_proc,@object # @__func__.gimp_plug_in_manager_remove_temp_proc
.L__func__.gimp_plug_in_manager_remove_temp_proc:
	.asciz	"gimp_plug_in_manager_remove_temp_proc"
	.size	.L__func__.gimp_plug_in_manager_remove_temp_proc, 38

	.type	.L__func__.gimp_plug_in_manager_add_open_plug_in,@object # @__func__.gimp_plug_in_manager_add_open_plug_in
.L__func__.gimp_plug_in_manager_add_open_plug_in:
	.asciz	"gimp_plug_in_manager_add_open_plug_in"
	.size	.L__func__.gimp_plug_in_manager_add_open_plug_in, 38

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_PLUG_IN (plug_in)"
	.size	.L.str.9, 26

	.type	manager_signals,@object # @manager_signals
	.local	manager_signals
	.comm	manager_signals,16,16
	.type	.L__func__.gimp_plug_in_manager_remove_open_plug_in,@object # @__func__.gimp_plug_in_manager_remove_open_plug_in
.L__func__.gimp_plug_in_manager_remove_open_plug_in:
	.asciz	"gimp_plug_in_manager_remove_open_plug_in"
	.size	.L__func__.gimp_plug_in_manager_remove_open_plug_in, 41

	.type	.L__func__.gimp_plug_in_manager_plug_in_push,@object # @__func__.gimp_plug_in_manager_plug_in_push
.L__func__.gimp_plug_in_manager_plug_in_push:
	.asciz	"gimp_plug_in_manager_plug_in_push"
	.size	.L__func__.gimp_plug_in_manager_plug_in_push, 34

	.type	.L__func__.gimp_plug_in_manager_plug_in_pop,@object # @__func__.gimp_plug_in_manager_plug_in_pop
.L__func__.gimp_plug_in_manager_plug_in_pop:
	.asciz	"gimp_plug_in_manager_plug_in_pop"
	.size	.L__func__.gimp_plug_in_manager_plug_in_pop, 33

	.type	.L__func__.gimp_plug_in_manager_history_changed,@object # @__func__.gimp_plug_in_manager_history_changed
.L__func__.gimp_plug_in_manager_history_changed:
	.asciz	"gimp_plug_in_manager_history_changed"
	.size	.L__func__.gimp_plug_in_manager_history_changed, 37

	.type	gimp_plug_in_manager_parent_class,@object # @gimp_plug_in_manager_parent_class
	.local	gimp_plug_in_manager_parent_class
	.comm	gimp_plug_in_manager_parent_class,8,8
	.type	GimpPlugInManager_private_offset,@object # @GimpPlugInManager_private_offset
	.local	GimpPlugInManager_private_offset
	.comm	GimpPlugInManager_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-opened"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"plug-in-closed"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"menu-branch-added"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"history-changed"
	.size	.L.str.13, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
