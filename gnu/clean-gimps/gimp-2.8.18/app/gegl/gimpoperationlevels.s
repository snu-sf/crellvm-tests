	.text
	.file	"gimpoperationlevels.bc"
	.globl	gimp_operation_levels_get_type
	.align	16, 0x90
	.type	gimp_operation_levels_get_type,@function
gimp_operation_levels_get_type:         # @gimp_operation_levels_get_type
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
	movq	gimp_operation_levels_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_operation_levels_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_operation_point_filter_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$400, %edx              # imm = 0x190
	movabsq	$gimp_operation_levels_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_operation_levels_init, %rcx
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
	movabsq	$gimp_operation_levels_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_operation_levels_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_operation_levels_get_type, .Lfunc_end0-gimp_operation_levels_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_levels_class_intern_init,@function
gimp_operation_levels_class_intern_init: # @gimp_operation_levels_class_intern_init
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
	movq	%rax, gimp_operation_levels_parent_class
	cmpl	$0, GimpOperationLevels_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOperationLevels_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_operation_levels_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_operation_levels_class_intern_init, .Lfunc_end1-gimp_operation_levels_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_levels_init,@function
gimp_operation_levels_init:             # @gimp_operation_levels_init
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
	.size	gimp_operation_levels_init, .Lfunc_end2-gimp_operation_levels_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_operation_levels_map_input
	.align	16, 0x90
	.type	gimp_operation_levels_map_input,@function
gimp_operation_levels_map_input:        # @gimp_operation_levels_map_input
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_levels_config_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_operation_levels_map_input, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB3_24
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	128(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	ucomisd	88(%rdx,%rcx,8), %xmm0
	jne	.LBB3_13
	jp	.LBB3_13
	jmp	.LBB3_14
.LBB3_13:                               # %if.then.14
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	subsd	88(%rdx,%rcx,8), %xmm0
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	128(%rdx,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	subsd	88(%rdx,%rcx,8), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB3_15
.LBB3_14:                               # %if.else.25
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	subsd	88(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB3_15:                               # %if.end.30
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_17
# BB#16:                                # %cond.true
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB3_21
.LBB3_17:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB3_19
# BB#18:                                # %cond.true.33
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %cond.false.34
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB3_20:                               # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB3_21:                               # %cond.end.35
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	48(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB3_22
	jp	.LBB3_22
	jmp	.LBB3_23
.LBB3_22:                               # %if.then.40
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	divsd	48(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -32(%rbp)
.LBB3_23:                               # %if.end.46
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB3_24:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_operation_levels_map_input, .Lfunc_end3-gimp_operation_levels_map_input
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_levels_class_init,@function
gimp_operation_levels_class_init:       # @gimp_operation_levels_class_init
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
	subq	$96, %rsp
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
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gegl_operation_point_filter_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	movabsq	$.L.str.7, %r9
	movabsq	$.L.str.8, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movabsq	$gimp_operation_point_filter_get_property, %rbx
	movabsq	$gimp_operation_point_filter_set_property, %r14
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%r14, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r11, -80(%rbp)         # 8-byte Spill
	callq	gegl_operation_class_set_keys
	movabsq	$gimp_operation_levels_process, %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, 352(%rdx)
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$7, %r8d
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_operation_levels_class_init, .Lfunc_end4-gimp_operation_levels_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_operation_levels_process,@function
gimp_operation_levels_process:          # @gimp_operation_levels_process
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_operation_point_filter_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_levels_config_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_21
.LBB5_2:                                # %if.end
	movl	$0, -116(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -116(%rbp)
	jge	.LBB5_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_5
.LBB5_5:                                # %do.body
                                        #   in Loop: Header=BB5_3 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsd	48(%rcx,%rax,8), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_6
	jp	.LBB5_6
	jmp	.LBB5_7
.LBB5_6:                                # %if.then.6
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_8
.LBB5_7:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_operation_levels_process, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_21
.LBB5_8:                                # %if.end.7
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_9
.LBB5_9:                                # %do.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	divsd	48(%rcx,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	-116(%rbp), %rax
	movss	%xmm0, -112(%rbp,%rax,4)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB5_3
.LBB5_11:                               # %for.end
	jmp	.LBB5_12
.LBB5_12:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB5_20
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$0, -116(%rbp)
.LBB5_14:                               # %for.cond.14
                                        #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -116(%rbp)
	jge	.LBB5_19
# BB#15:                                # %for.body.17
                                        #   in Loop: Header=BB5_14 Depth=2
	movslq	-116(%rbp), %rax
	movq	-80(%rbp), %rcx
	cvtss2sd	(%rcx,%rax,4), %xmm0
	movl	-116(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	cvtss2sd	-112(%rbp,%rax,4), %xmm1
	movl	-116(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-72(%rbp), %rcx
	movsd	88(%rcx,%rax,8), %xmm2  # xmm2 = mem[0],zero
	movl	-116(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-72(%rbp), %rcx
	movsd	128(%rcx,%rax,8), %xmm3 # xmm3 = mem[0],zero
	movl	-116(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-72(%rbp), %rcx
	movsd	168(%rcx,%rax,8), %xmm4 # xmm4 = mem[0],zero
	movl	-116(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-72(%rbp), %rcx
	movsd	208(%rcx,%rax,8), %xmm5 # xmm5 = mem[0],zero
	callq	gimp_operation_levels_map
	movsd	%xmm0, -128(%rbp)
	cmpl	$3, -116(%rbp)
	je	.LBB5_17
# BB#16:                                # %if.then.39
                                        #   in Loop: Header=BB5_14 Depth=2
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtss2sd	-112(%rbp), %xmm1
	movq	-72(%rbp), %rax
	movsd	88(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	128(%rax), %xmm3        # xmm3 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	168(%rax), %xmm4        # xmm4 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	208(%rax), %xmm5        # xmm5 = mem[0],zero
	callq	gimp_operation_levels_map
	movsd	%xmm0, -128(%rbp)
.LBB5_17:                               # %if.end.51
                                        #   in Loop: Header=BB5_14 Depth=2
	cvtsd2ss	-128(%rbp), %xmm0
	movslq	-116(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#18:                                # %for.inc.55
                                        #   in Loop: Header=BB5_14 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB5_14
.LBB5_19:                               # %for.end.57
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB5_12
.LBB5_20:                               # %while.end
	movl	$1, -4(%rbp)
.LBB5_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_operation_levels_process, .Lfunc_end5-gimp_operation_levels_process
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_operation_levels_map,@function
gimp_operation_levels_map:              # @gimp_operation_levels_map
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
	subq	$64, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	%xmm5, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB6_1
	jp	.LBB6_1
	jmp	.LBB6_2
.LBB6_1:                                # %if.then
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB6_3:                                # %if.end
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_5
# BB#4:                                 # %cond.true
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB6_9
.LBB6_5:                                # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB6_7
# BB#6:                                 # %cond.true.5
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false.6
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB6_8:                                # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB6_9:                                # %cond.end.7
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_10
	jp	.LBB6_10
	jmp	.LBB6_11
.LBB6_10:                               # %if.then.10
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -8(%rbp)
.LBB6_11:                               # %if.end.11
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jb	.LBB6_13
# BB#12:                                # %if.then.13
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB6_16
.LBB6_13:                               # %if.else.15
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_15
# BB#14:                                # %if.then.17
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB6_15:                               # %if.end.21
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.22
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_operation_levels_map, .Lfunc_end6-gimp_operation_levels_map
	.cfi_endproc

	.type	gimp_operation_levels_get_type.g_define_type_id__volatile,@object # @gimp_operation_levels_get_type.g_define_type_id__volatile
	.local	gimp_operation_levels_get_type.g_define_type_id__volatile
	.comm	gimp_operation_levels_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOperationLevels"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-GEGL"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_operation_levels_map_input,@object # @__func__.gimp_operation_levels_map_input
.L__func__.gimp_operation_levels_map_input:
	.asciz	"gimp_operation_levels_map_input"
	.size	.L__func__.gimp_operation_levels_map_input, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_LEVELS_CONFIG (config)"
	.size	.L.str.2, 31

	.type	gimp_operation_levels_parent_class,@object # @gimp_operation_levels_parent_class
	.local	gimp_operation_levels_parent_class
	.comm	gimp_operation_levels_parent_class,8,8
	.type	GimpOperationLevels_private_offset,@object # @GimpOperationLevels_private_offset
	.local	GimpOperationLevels_private_offset
	.comm	GimpOperationLevels_private_offset,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp:levels"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"categories"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"color"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"description"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP Levels operation"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"config"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Config"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The config object"
	.size	.L.str.11, 18

	.type	.L__func__.gimp_operation_levels_process,@object # @__func__.gimp_operation_levels_process
.L__func__.gimp_operation_levels_process:
	.asciz	"gimp_operation_levels_process"
	.size	.L__func__.gimp_operation_levels_process, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"config->gamma[channel] != 0.0"
	.size	.L.str.12, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
