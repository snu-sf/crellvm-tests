	.text
	.file	"gimpcurve.bc"
	.globl	gimp_curve_get_type
	.align	16, 0x90
	.type	gimp_curve_get_type,@function
gimp_curve_get_type:                    # @gimp_curve_get_type
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
	movq	gimp_curve_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_curve_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_curve_class_intern_init, %rdi
	movl	$72, %r8d
	movabsq	$gimp_curve_init, %rcx
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
	movabsq	$gimp_curve_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_curve_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_curve_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_curve_get_type, .Lfunc_end0-gimp_curve_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_class_intern_init,@function
gimp_curve_class_intern_init:           # @gimp_curve_class_intern_init
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
	movq	%rax, gimp_curve_parent_class
	cmpl	$0, GimpCurve_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCurve_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_curve_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_curve_class_intern_init, .Lfunc_end1-gimp_curve_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_init,@function
gimp_curve_init:                        # @gimp_curve_init
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
	movq	-8(%rbp), %rdi
	movl	$0, 36(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_curve_init, .Lfunc_end2-gimp_curve_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_config_iface_init,@function
gimp_curve_config_iface_init:           # @gimp_curve_config_iface_init
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
	movabsq	$gimp_curve_copy, %rax
	movabsq	$_gimp_curve_reset, %rcx
	movabsq	$gimp_curve_equal, %rdx
	movabsq	$gimp_curve_deserialize, %rsi
	movabsq	$gimp_curve_serialize, %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r8, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_curve_config_iface_init, .Lfunc_end3-gimp_curve_config_iface_init
	.cfi_endproc

	.globl	gimp_curve_new
	.align	16, 0x90
	.type	gimp_curve_new,@function
gimp_curve_new:                         # @gimp_curve_new
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_11
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_8
# BB#7:                                 # %if.then.4
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.5
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_11
.LBB4_9:                                # %if.end.6
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.7
	callq	gimp_curve_get_type
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB4_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_curve_new, .Lfunc_end4-gimp_curve_new
	.cfi_endproc

	.globl	gimp_curve_get_standard
	.align	16, 0x90
	.type	gimp_curve_get_standard,@function
gimp_curve_get_standard:                # @gimp_curve_get_standard
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
	subq	$16, %rsp
	cmpq	$0, gimp_curve_get_standard.standard_curve
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	callq	gimp_curve_new
	movq	%rax, gimp_curve_get_standard.standard_curve
	movq	gimp_curve_get_standard.standard_curve, %rdi
	callq	gimp_data_clean
	movabsq	$.L.str.6, %rsi
	movq	gimp_curve_get_standard.standard_curve, %rdi
	callq	gimp_data_make_internal
	movq	gimp_curve_get_standard.standard_curve, %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB5_2:                                # %if.end
	movq	gimp_curve_get_standard.standard_curve, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_curve_get_standard, .Lfunc_end5-gimp_curve_get_standard
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_curve_reset
	.align	16, 0x90
	.type	gimp_curve_reset,@function
gimp_curve_reset:                       # @gimp_curve_reset
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_get_type
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
	movabsq	$.L__func__.gimp_curve_reset, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_23
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$0, -16(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB6_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	cvtsi2sdl	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	56(%rdx), %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_13
.LBB6_16:                               # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movsd	%xmm0, 8(%rax)
	movl	$1, -16(%rbp)
.LBB6_17:                               # %for.cond.19
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB6_20
# BB#18:                                # %for.body.23
                                        #   in Loop: Header=BB6_17 Depth=1
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, (%rax)
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, 8(%rax)
# BB#19:                                # %for.inc.32
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_17
.LBB6_20:                               # %for.end.34
	movl	$80, %eax
	movl	%eax, %esi
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	40(%rdx), %rcx
	movsd	%xmm0, (%rcx)
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	40(%rdx), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	cmpl	$0, -12(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.49
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	$0, 32(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB6_22:                               # %if.end.51
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	$1, 64(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB6_23:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_curve_reset, .Lfunc_end6-gimp_curve_reset
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_curve_set_curve_type
	.align	16, 0x90
	.type	gimp_curve_set_curve_type,@function
gimp_curve_set_curve_type:              # @gimp_curve_set_curve_type
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_get_type
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
	movabsq	$.L__func__.gimp_curve_set_curve_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_30
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB7_30
# BB#13:                                # %if.then.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	cmpl	$0, -12(%rbp)
	jne	.LBB7_29
# BB#14:                                # %if.then.17
	movl	$0, -48(%rbp)
.LBB7_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB7_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB7_15 Depth=1
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, (%rax)
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, 8(%rax)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_15
.LBB7_18:                               # %for.end
	movl	$9, %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB7_20
# BB#19:                                # %cond.true
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB7_24
.LBB7_20:                               # %cond.false
	movl	$9, %eax
	movl	$2, %ecx
	movq	-8(%rbp), %rdx
	movl	36(%rdx), %esi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-64(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB7_22
# BB#21:                                # %cond.true.30
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-68(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB7_23
.LBB7_22:                               # %cond.false.33
	movl	$9, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB7_23
.LBB7_23:                               # %cond.end
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB7_24:                               # %cond.end.34
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB7_25:                               # %for.cond.36
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_28
# BB#26:                                # %for.body.38
                                        #   in Loop: Header=BB7_25 Depth=1
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edx
	subl	$1, %edx
	imull	%edx, %eax
	movl	-44(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -76(%rbp)         # 4-byte Spill
	cltd
	movl	-76(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edi
	subl	$1, %edi
	imull	%edi, %eax
	movl	-44(%rbp), %edi
	subl	$1, %edi
	cltd
	idivl	%edi
	movl	%eax, -56(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movslq	-56(%rbp), %rcx
	movq	-8(%rbp), %r8
	shlq	$4, %rcx
	addq	40(%r8), %rcx
	movsd	%xmm0, (%rcx)
	movslq	-52(%rbp), %rcx
	movq	-8(%rbp), %r8
	movq	56(%r8), %r8
	movsd	(%r8,%rcx,8), %xmm0     # xmm0 = mem[0],zero
	movslq	-56(%rbp), %rcx
	movq	-8(%rbp), %r8
	shlq	$4, %rcx
	addq	40(%r8), %rcx
	movsd	%xmm0, 8(%rcx)
# BB#27:                                # %for.inc.62
                                        #   in Loop: Header=BB7_25 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_25
.LBB7_28:                               # %for.end.64
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB7_29:                               # %if.end.66
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB7_30:                               # %if.end.71
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_curve_set_curve_type, .Lfunc_end7-gimp_curve_set_curve_type
	.cfi_endproc

	.globl	gimp_curve_get_curve_type
	.align	16, 0x90
	.type	gimp_curve_get_curve_type,@function
gimp_curve_get_curve_type:              # @gimp_curve_get_curve_type
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_get_type
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
	movabsq	$.L__func__.gimp_curve_get_curve_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_curve_get_curve_type, .Lfunc_end8-gimp_curve_get_curve_type
	.cfi_endproc

	.globl	gimp_curve_get_n_points
	.align	16, 0x90
	.type	gimp_curve_get_n_points,@function
gimp_curve_get_n_points:                # @gimp_curve_get_n_points
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_get_type
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
	movabsq	$.L__func__.gimp_curve_get_n_points, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_curve_get_n_points, .Lfunc_end9-gimp_curve_get_n_points
	.cfi_endproc

	.globl	gimp_curve_get_n_samples
	.align	16, 0x90
	.type	gimp_curve_get_n_samples,@function
gimp_curve_get_n_samples:               # @gimp_curve_get_n_samples
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_get_type
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
	movabsq	$.L__func__.gimp_curve_get_n_samples, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB10_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_curve_get_n_samples, .Lfunc_end10-gimp_curve_get_n_samples
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI11_1:
	.quad	4607182418800017408     # double 1
.LCPI11_2:
	.quad	4611686018427387904     # double 2
.LCPI11_3:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_4:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_curve_get_closest_point
	.align	16, 0x90
	.type	gimp_curve_get_closest_point,@function
gimp_curve_get_closest_point:           # @gimp_curve_get_closest_point
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
	subq	$80, %rsp
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
	movsd	%xmm1, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_get_closest_point, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_22
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movl	$0, -44(%rbp)
.LBB11_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB11_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB11_13 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB11_17
# BB#15:                                # %land.lhs.true.14
                                        #   in Loop: Header=BB11_13 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	subsd	(%rax), %xmm0
	movapd	.LCPI11_4(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_17
# BB#16:                                # %if.then.21
                                        #   in Loop: Header=BB11_13 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	subsd	(%rax), %xmm0
	movapd	.LCPI11_4(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-44(%rbp), %edx
	movl	%edx, -28(%rbp)
.LBB11_17:                              # %if.end.28
                                        #   in Loop: Header=BB11_13 Depth=1
	jmp	.LBB11_18
.LBB11_18:                              # %for.inc
                                        #   in Loop: Header=BB11_13 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB11_13
.LBB11_19:                              # %for.end
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_2, %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm3
	mulsd	%xmm1, %xmm3
	divsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB11_21
# BB#20:                                # %if.then.32
	movsd	.LCPI11_3, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -28(%rbp)
.LBB11_21:                              # %if.end.38
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB11_22:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_curve_get_closest_point, .Lfunc_end11-gimp_curve_get_closest_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	-4616189618054758400    # double -1
.LCPI12_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_curve_set_point
	.align	16, 0x90
	.type	gimp_curve_set_point,@function
gimp_curve_set_point:                   # @gimp_curve_set_point
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_curve_get_type
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
	movabsq	$.L__func__.gimp_curve_set_point, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_35
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB12_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB12_16
# BB#15:                                # %if.then.15
	jmp	.LBB12_17
.LBB12_16:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_set_point, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_35
.LBB12_17:                              # %if.end.17
	jmp	.LBB12_18
.LBB12_18:                              # %do.end.18
	jmp	.LBB12_19
.LBB12_19:                              # %do.body.19
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_20
	jp	.LBB12_20
	jmp	.LBB12_22
.LBB12_20:                              # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB12_23
# BB#21:                                # %land.lhs.true.22
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB12_23
.LBB12_22:                              # %if.then.24
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.25
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_set_point, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_35
.LBB12_24:                              # %if.end.26
	jmp	.LBB12_25
.LBB12_25:                              # %do.end.27
	jmp	.LBB12_26
.LBB12_26:                              # %do.body.28
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_27
	jp	.LBB12_27
	jmp	.LBB12_29
.LBB12_27:                              # %lor.lhs.false.30
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB12_30
# BB#28:                                # %land.lhs.true.32
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jb	.LBB12_30
.LBB12_29:                              # %if.then.34
	jmp	.LBB12_31
.LBB12_30:                              # %if.else.35
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_set_point, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_35
.LBB12_31:                              # %if.end.36
	jmp	.LBB12_32
.LBB12_32:                              # %do.end.37
	movq	-8(%rbp), %rax
	cmpl	$1, 32(%rax)
	jne	.LBB12_34
# BB#33:                                # %if.then.39
	jmp	.LBB12_35
.LBB12_34:                              # %if.end.40
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$80, %edx
	movl	%edx, %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, (%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB12_35:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_curve_set_point, .Lfunc_end12-gimp_curve_set_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_curve_move_point
	.align	16, 0x90
	.type	gimp_curve_move_point,@function
gimp_curve_move_point:                  # @gimp_curve_move_point
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_move_point, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_27
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB13_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB13_16
# BB#15:                                # %if.then.15
	jmp	.LBB13_17
.LBB13_16:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_move_point, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_27
.LBB13_17:                              # %if.end.17
	jmp	.LBB13_18
.LBB13_18:                              # %do.end.18
	jmp	.LBB13_19
.LBB13_19:                              # %do.body.19
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB13_22
# BB#20:                                # %land.lhs.true.21
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB13_22
# BB#21:                                # %if.then.23
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_move_point, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_27
.LBB13_23:                              # %if.end.25
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.26
	movq	-8(%rbp), %rax
	cmpl	$1, 32(%rax)
	jne	.LBB13_26
# BB#25:                                # %if.then.28
	jmp	.LBB13_27
.LBB13_26:                              # %if.end.29
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$80, %edx
	movl	%edx, %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB13_27:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_curve_move_point, .Lfunc_end13-gimp_curve_move_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	-4616189618054758400    # double -1
.LCPI14_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_curve_delete_point
	.align	16, 0x90
	.type	gimp_curve_delete_point,@function
gimp_curve_delete_point:                # @gimp_curve_delete_point
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_delete_point, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_25
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB14_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB14_16
# BB#15:                                # %if.then.15
	jmp	.LBB14_17
.LBB14_16:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_delete_point, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_25
.LBB14_17:                              # %if.end.17
	jmp	.LBB14_18
.LBB14_18:                              # %do.end.18
	cmpl	$0, -12(%rbp)
	jne	.LBB14_20
# BB#19:                                # %if.then.20
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB14_24
.LBB14_20:                              # %if.else.23
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB14_22
# BB#21:                                # %if.then.26
	movsd	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	shlq	$4, %rax
	addq	40(%rdx), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	shlq	$4, %rax
	addq	40(%rdx), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.38
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, (%rax)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, 8(%rax)
.LBB14_23:                              # %if.end.47
	jmp	.LBB14_24
.LBB14_24:                              # %if.end.48
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB14_25:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_curve_delete_point, .Lfunc_end14-gimp_curve_delete_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_curve_get_point
	.align	16, 0x90
	.type	gimp_curve_get_point,@function
gimp_curve_get_point:                   # @gimp_curve_get_point
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_get_point, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_28
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB15_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB15_16
# BB#15:                                # %if.then.15
	jmp	.LBB15_17
.LBB15_16:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_get_point, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_28
.LBB15_17:                              # %if.end.17
	jmp	.LBB15_18
.LBB15_18:                              # %do.end.18
	movq	-8(%rbp), %rax
	cmpl	$1, 32(%rax)
	jne	.LBB15_24
# BB#19:                                # %if.then.20
	cmpq	$0, -24(%rbp)
	je	.LBB15_21
# BB#20:                                # %if.then.22
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_21:                              # %if.end.23
	cmpq	$0, -32(%rbp)
	je	.LBB15_23
# BB#22:                                # %if.then.25
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_23:                              # %if.end.26
	jmp	.LBB15_28
.LBB15_24:                              # %if.end.27
	cmpq	$0, -24(%rbp)
	je	.LBB15_26
# BB#25:                                # %if.then.29
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_26:                              # %if.end.31
	cmpq	$0, -32(%rbp)
	je	.LBB15_28
# BB#27:                                # %if.then.33
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_28:                              # %if.end.38
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_curve_get_point, .Lfunc_end15-gimp_curve_get_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
.LCPI16_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_curve_set_curve
	.align	16, 0x90
	.type	gimp_curve_set_curve,@function
gimp_curve_set_curve:                   # @gimp_curve_set_curve
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_set_curve, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_27
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB16_16
# BB#14:                                # %land.lhs.true.13
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jb	.LBB16_16
# BB#15:                                # %if.then.15
	jmp	.LBB16_17
.LBB16_16:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_set_curve, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_27
.LBB16_17:                              # %if.end.17
	jmp	.LBB16_18
.LBB16_18:                              # %do.end.18
	jmp	.LBB16_19
.LBB16_19:                              # %do.body.19
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB16_22
# BB#20:                                # %land.lhs.true.21
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB16_22
# BB#21:                                # %if.then.23
	jmp	.LBB16_23
.LBB16_22:                              # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_set_curve, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_27
.LBB16_23:                              # %if.end.25
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.26
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB16_26
# BB#25:                                # %if.then.28
	jmp	.LBB16_27
.LBB16_26:                              # %if.end.29
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$80, %edx
	movl	%edx, %esi
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	subl	$1, %edx
	cvtsi2sdl	%edx, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB16_27:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_curve_set_curve, .Lfunc_end16-gimp_curve_set_curve
	.cfi_endproc

	.globl	gimp_curve_is_identity
	.align	16, 0x90
	.type	gimp_curve_is_identity,@function
gimp_curve_is_identity:                 # @gimp_curve_is_identity
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_is_identity, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB17_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_curve_is_identity, .Lfunc_end17-gimp_curve_is_identity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.globl	gimp_curve_get_uchar
	.align	16, 0x90
	.type	gimp_curve_get_uchar,@function
gimp_curve_get_uchar:                   # @gimp_curve_get_uchar
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_get_uchar, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_26
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jne	.LBB18_15
# BB#14:                                # %if.then.14
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_get_uchar, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_26
.LBB18_16:                              # %if.end.16
	jmp	.LBB18_17
.LBB18_17:                              # %do.end.17
	jmp	.LBB18_18
.LBB18_18:                              # %do.body.18
	cmpq	$0, -24(%rbp)
	je	.LBB18_20
# BB#19:                                # %if.then.20
	jmp	.LBB18_21
.LBB18_20:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_get_uchar, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_26
.LBB18_21:                              # %if.end.22
	jmp	.LBB18_22
.LBB18_22:                              # %do.end.23
	movl	$0, -28(%rbp)
.LBB18_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB18_26
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB18_23 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB18_23 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB18_23
.LBB18_26:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_curve_get_uchar, .Lfunc_end18-gimp_curve_get_uchar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
.LCPI19_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_curve_class_init,@function
gimp_curve_class_init:                  # @gimp_curve_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_curve_duplicate, %rsi
	movabsq	$gimp_curve_get_extension, %rdi
	movabsq	$gimp_curve_save, %rcx
	movabsq	$gimp_curve_dirty, %rdx
	movabsq	$gimp_curve_get_description, %r8
	movabsq	$gimp_curve_get_new_preview, %r9
	movabsq	$gimp_curve_get_popup_size, %r10
	movabsq	$gimp_curve_get_preview_size, %r11
	movabsq	$.L.str.18, %rbx
	movabsq	$gimp_curve_get_memsize, %r14
	movabsq	$gimp_curve_get_property, %r15
	movabsq	$gimp_curve_set_property, %r12
	movabsq	$gimp_curve_finalize, %r13
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%r13, 48(%rax)
	movq	-56(%rbp), %rax
	movq	%r12, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%r15, 32(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 152(%rax)
	movq	-72(%rbp), %rax
	movq	%rbx, 160(%rax)
	movq	-72(%rbp), %rax
	movq	%r11, 200(%rax)
	movq	-72(%rbp), %rax
	movq	%r10, 208(%rax)
	movq	-72(%rbp), %rax
	movq	%r9, 224(%rax)
	movq	-72(%rbp), %rax
	movq	%r8, 248(%rax)
	movq	-80(%rbp), %rax
	movq	%rdx, 280(%rax)
	movq	-80(%rbp), %rax
	movq	%rcx, 288(%rax)
	movq	-80(%rbp), %rax
	movq	%rdi, 296(%rax)
	movq	-80(%rbp), %rax
	movq	%rsi, 304(%rax)
	movq	-56(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_curve_type_get_type
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.19, %rdx
	xorl	%r8d, %r8d
	movl	$263, %r9d              # imm = 0x107
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.20, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.21, %rdx
	movl	$17, %r8d
	movl	$263, %r9d              # imm = 0x107
	movq	-56(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -128(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$263, (%rsp)            # imm = 0x107
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.22, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI19_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	g_param_spec_double
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_param_spec_value_array
	movl	$3, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.23, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.24, %rdx
	movl	$256, %r8d              # imm = 0x100
	movl	$263, %r9d              # imm = 0x107
	movq	-56(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -152(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$263, (%rsp)            # imm = 0x107
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_param_spec_int
	movl	$4, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.25, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_param_spec_value_array
	movl	$5, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_curve_class_init, .Lfunc_end19-gimp_curve_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_finalize,@function
gimp_curve_finalize:                    # @gimp_curve_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB20_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB20_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_curve_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_curve_finalize, .Lfunc_end20-gimp_curve_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_set_property,@function
gimp_curve_set_property:                # @gimp_curve_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	ja	.LBB21_22
# BB#26:                                # %entry
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	.LJTI21_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB21_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_curve_set_curve_type
	jmp	.LBB21_25
.LBB21_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_int
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_curve_set_n_points
	jmp	.LBB21_25
.LBB21_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB21_5
# BB#4:                                 # %if.then
	jmp	.LBB21_25
.LBB21_5:                               # %if.end
	movl	$0, -52(%rbp)
.LBB21_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rdx
	cmpl	36(%rdx), %eax
	movb	%cl, -161(%rbp)         # 1-byte Spill
	jge	.LBB21_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB21_6 Depth=1
	movl	-52(%rbp), %eax
	shll	$1, %eax
	movq	-48(%rbp), %rcx
	cmpl	(%rcx), %eax
	setb	%dl
	movb	%dl, -161(%rbp)         # 1-byte Spill
.LBB21_8:                               # %land.end
                                        #   in Loop: Header=BB21_6 Depth=1
	movb	-161(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_9
	jmp	.LBB21_11
.LBB21_9:                               # %for.body
                                        #   in Loop: Header=BB21_6 Depth=1
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %eax
	shll	$1, %eax
	movl	%eax, %esi
	callq	g_value_array_get_nth
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	shll	$1, %esi
	addl	$1, %esi
	callq	g_value_array_get_nth
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_value_get_double
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rdi
	shlq	$4, %rax
	addq	40(%rdi), %rax
	movsd	%xmm0, (%rax)
	movq	-72(%rbp), %rdi
	callq	g_value_get_double
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rdi
	shlq	$4, %rax
	addq	40(%rdi), %rax
	movsd	%xmm0, 8(%rax)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB21_6 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB21_6
.LBB21_11:                              # %for.end
	jmp	.LBB21_25
.LBB21_12:                              # %sw.bb.19
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_int
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_curve_set_n_samples
	jmp	.LBB21_25
.LBB21_13:                              # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB21_15
# BB#14:                                # %if.then.26
	jmp	.LBB21_25
.LBB21_15:                              # %if.end.27
	movl	$0, -84(%rbp)
.LBB21_16:                              # %for.cond.28
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-84(%rbp), %eax
	movq	-40(%rbp), %rdx
	cmpl	48(%rdx), %eax
	movb	%cl, -177(%rbp)         # 1-byte Spill
	jge	.LBB21_18
# BB#17:                                # %land.rhs.30
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	(%rcx), %eax
	setb	%dl
	movb	%dl, -177(%rbp)         # 1-byte Spill
.LBB21_18:                              # %land.end.33
                                        #   in Loop: Header=BB21_16 Depth=1
	movb	-177(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_19
	jmp	.LBB21_21
.LBB21_19:                              # %for.body.34
                                        #   in Loop: Header=BB21_16 Depth=1
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	g_value_array_get_nth
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_value_get_double
	movslq	-84(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	56(%rdi), %rdi
	movsd	%xmm0, (%rdi,%rax,8)
# BB#20:                                # %for.inc.39
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB21_16
.LBB21_21:                              # %for.end.41
	jmp	.LBB21_25
.LBB21_22:                              # %sw.default
	jmp	.LBB21_23
.LBB21_23:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	movl	-116(%rbp), %r8d
	movq	-112(%rbp), %rax
	movq	8(%rax), %r9
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -184(%rbp)        # 4-byte Spill
	movq	%r9, -192(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-104(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movl	$282, %edx              # imm = 0x11A
	movabsq	$.L.str.28, %rcx
	movl	-184(%rbp), %r8d        # 4-byte Reload
	movq	-192(%rbp), %r9         # 8-byte Reload
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#24:                                # %do.end
	jmp	.LBB21_25
.LBB21_25:                              # %sw.epilog
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_curve_set_property, .Lfunc_end21-gimp_curve_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_1
	.quad	.LBB21_2
	.quad	.LBB21_3
	.quad	.LBB21_12
	.quad	.LBB21_13

	.text
	.align	16, 0x90
	.type	gimp_curve_get_property,@function
gimp_curve_get_property:                # @gimp_curve_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	ja	.LBB22_14
# BB#18:                                # %entry
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI22_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB22_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB22_17
.LBB22_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	36(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB22_17
.LBB22_3:                               # %sw.bb.3
	movq	-40(%rbp), %rax
	movl	36(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, %edi
	callq	g_value_array_new
	leaq	-72(%rbp), %rdx
	movl	$60, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$24, %edi
	movl	%edi, %r8d
	movq	%rax, -48(%rbp)
	movq	%rdx, %rax
	movq	%rax, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	memset
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	callq	g_value_init
	movl	$0, -76(%rbp)
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB22_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB22_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB22_4 Depth=1
	leaq	-72(%rbp), %rdi
	movslq	-76(%rbp), %rax
	movq	-40(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_value_set_double
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	g_value_array_append
	leaq	-72(%rbp), %rdi
	movslq	-76(%rbp), %rcx
	movq	-40(%rbp), %rsi
	shlq	$4, %rcx
	addq	40(%rsi), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_value_set_double
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	g_value_array_append
	movq	%rax, -208(%rbp)        # 8-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB22_4 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB22_4
.LBB22_7:                               # %for.end
	leaq	-72(%rbp), %rdi
	callq	g_value_unset
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
	jmp	.LBB22_17
.LBB22_8:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	48(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB22_17
.LBB22_9:                               # %sw.bb.14
	movq	-40(%rbp), %rax
	movl	48(%rax), %edi
	callq	g_value_array_new
	leaq	-112(%rbp), %rcx
	movl	$60, %edi
	movl	%edi, %esi
	xorl	%edi, %edi
	movl	$24, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -88(%rbp)
	movq	%rcx, %rax
	movl	%edi, -212(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-212(%rbp), %r8d        # 4-byte Reload
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	memset
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	callq	g_value_init
	movl	$0, -116(%rbp)
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB22_10:                              # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB22_13
# BB#11:                                # %for.body.24
                                        #   in Loop: Header=BB22_10 Depth=1
	leaq	-112(%rbp), %rdi
	movslq	-116(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	callq	g_value_set_double
	leaq	-112(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	g_value_array_append
	movq	%rax, -248(%rbp)        # 8-byte Spill
# BB#12:                                # %for.inc.28
                                        #   in Loop: Header=BB22_10 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB22_10
.LBB22_13:                              # %for.end.30
	leaq	-112(%rbp), %rdi
	callq	g_value_unset
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
	jmp	.LBB22_17
.LBB22_14:                              # %sw.default
	jmp	.LBB22_15
.LBB22_15:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %r8d
	movq	-136(%rbp), %rax
	movq	8(%rax), %r9
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -252(%rbp)        # 4-byte Spill
	movq	%r9, -264(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-128(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movl	$353, %edx              # imm = 0x161
	movabsq	$.L.str.28, %rcx
	movl	-252(%rbp), %r8d        # 4-byte Reload
	movq	-264(%rbp), %r9         # 8-byte Reload
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#16:                                # %do.end
	jmp	.LBB22_17
.LBB22_17:                              # %sw.epilog
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_curve_get_property, .Lfunc_end22-gimp_curve_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_1
	.quad	.LBB22_2
	.quad	.LBB22_3
	.quad	.LBB22_8
	.quad	.LBB22_9

	.text
	.align	16, 0x90
	.type	gimp_curve_get_memsize,@function
gimp_curve_get_memsize:                 # @gimp_curve_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movslq	36(%rax), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movslq	48(%rax), %rax
	shlq	$3, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_curve_parent_class, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_curve_get_memsize, .Lfunc_end23-gimp_curve_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_get_preview_size,@function
gimp_curve_get_preview_size:            # @gimp_curve_get_preview_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, (%rdi)
	movl	-12(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movl	%ecx, (%rdi)
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_curve_get_preview_size, .Lfunc_end24-gimp_curve_get_preview_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_get_popup_size,@function
gimp_curve_get_popup_size:              # @gimp_curve_get_popup_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, (%rdi)
	movl	-16(%rbp), %ecx
	shll	$1, %ecx
	movq	-40(%rbp), %rdi
	movl	%ecx, (%rdi)
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_curve_get_popup_size, .Lfunc_end25-gimp_curve_get_popup_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_get_new_preview,@function
gimp_curve_get_new_preview:             # @gimp_curve_get_new_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_curve_get_new_preview, .Lfunc_end26-gimp_curve_get_new_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_get_description,@function
gimp_curve_get_description:             # @gimp_curve_get_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.29, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_curve_get_description, .Lfunc_end27-gimp_curve_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_dirty,@function
gimp_curve_dirty:                       # @gimp_curve_dirty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_curve_calculate
	movq	gimp_curve_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_curve_dirty, .Lfunc_end28-gimp_curve_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_get_extension,@function
gimp_curve_get_extension:               # @gimp_curve_get_extension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.31, %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_curve_get_extension, .Lfunc_end29-gimp_curve_get_extension
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_duplicate,@function
gimp_curve_duplicate:                   # @gimp_curve_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_curve_get_type
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
.Lfunc_end30:
	.size	gimp_curve_duplicate, .Lfunc_end30-gimp_curve_duplicate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4607182418800017408     # double 1
.LCPI31_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_curve_set_n_points,@function
gimp_curve_set_n_points:                # @gimp_curve_set_n_points
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_set_n_points, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_20
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	je	.LBB31_20
# BB#13:                                # %if.then.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$80, %edx
	movl	%edx, %esi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$16, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	36(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_realloc_n
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movsd	%xmm0, 8(%rax)
	movl	$1, -44(%rbp)
.LBB31_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB31_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB31_14 Depth=1
	movsd	.LCPI31_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, (%rax)
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, 8(%rax)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB31_14 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB31_14
.LBB31_17:                              # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movsd	.LCPI31_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	40(%rdx), %rcx
	movsd	%xmm0, (%rcx)
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	40(%rdx), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB31_19
# BB#18:                                # %if.then.49
	movq	-8(%rbp), %rax
	movl	$1, 64(%rax)
.LBB31_19:                              # %if.end.50
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB31_20:                              # %if.end.52
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_curve_set_n_points, .Lfunc_end31-gimp_curve_set_n_points
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_set_n_samples,@function
gimp_curve_set_n_samples:               # @gimp_curve_set_n_samples
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_set_n_samples, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_20
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	je	.LBB32_20
# BB#13:                                # %if.then.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$80, %edx
	movl	%edx, %esi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$8, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	48(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_realloc_n
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movl	$0, -44(%rbp)
.LBB32_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB32_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB32_14 Depth=1
	cvtsi2sdl	-44(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	56(%rdx), %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB32_14 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB32_14
.LBB32_17:                              # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rax
	cmpl	$1, 32(%rax)
	jne	.LBB32_19
# BB#18:                                # %if.then.31
	movq	-8(%rbp), %rax
	movl	$1, 64(%rax)
.LBB32_19:                              # %if.end.32
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB32_20:                              # %if.end.34
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_curve_set_n_samples, .Lfunc_end32-gimp_curve_set_n_samples
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
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
	je	.LBB33_2
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
.LBB33_2:                               # %entry
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
.Lfunc_end33:
	.size	g_warning, .Lfunc_end33-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_curve_calculate,@function
gimp_curve_calculate:                   # @gimp_curve_calculate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_frozen
	cmpl	$0, %eax
	je	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_35
.LBB34_2:                               # %if.end
	movq	-8(%rbp), %rax
	movslq	36(%rax), %rax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
	je	.LBB34_3
	jmp	.LBB34_36
.LBB34_36:                              # %if.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB34_34
	jmp	.LBB34_35
.LBB34_3:                               # %sw.bb
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB34_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB34_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB34_4 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB34_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB34_4 Depth=1
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
.LBB34_7:                               # %if.end.11
                                        #   in Loop: Header=BB34_4 Depth=1
	jmp	.LBB34_8
.LBB34_8:                               # %for.inc
                                        #   in Loop: Header=BB34_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB34_4
.LBB34_9:                               # %for.end
	cmpl	$0, -24(%rbp)
	je	.LBB34_19
# BB#10:                                # %if.then.15
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	subl	$1, %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -60(%rbp)
	movl	$0, -20(%rbp)
.LBB34_11:                              # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB34_14
# BB#12:                                # %for.body.27
                                        #   in Loop: Header=BB34_11 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#13:                                # %for.inc.30
                                        #   in Loop: Header=BB34_11 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB34_11
.LBB34_14:                              # %for.end.32
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movslq	(%rdx,%rcx,4), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	40(%rdx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -56(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB34_15:                              # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB34_18
# BB#16:                                # %for.body.50
                                        #   in Loop: Header=BB34_15 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#17:                                # %for.inc.55
                                        #   in Loop: Header=BB34_15 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB34_15
.LBB34_18:                              # %for.end.57
	jmp	.LBB34_19
.LBB34_19:                              # %if.end.58
	movl	$0, -20(%rbp)
.LBB34_20:                              # %for.cond.59
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB34_29
# BB#21:                                # %for.body.63
                                        #   in Loop: Header=BB34_20 Depth=1
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jle	.LBB34_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB34_20 Depth=1
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB34_24
.LBB34_23:                              # %cond.false
                                        #   in Loop: Header=BB34_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB34_24
.LBB34_24:                              # %cond.end
                                        #   in Loop: Header=BB34_20 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -28(%rbp)
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	-24(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %eax
	jge	.LBB34_26
# BB#25:                                # %cond.true.79
                                        #   in Loop: Header=BB34_20 Depth=1
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB34_27
.LBB34_26:                              # %cond.false.81
                                        #   in Loop: Header=BB34_20 Depth=1
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB34_27:                              # %cond.end.83
                                        #   in Loop: Header=BB34_20 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	callq	gimp_curve_plot
# BB#28:                                # %for.inc.87
                                        #   in Loop: Header=BB34_20 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB34_20
.LBB34_29:                              # %for.end.89
	movl	$0, -20(%rbp)
.LBB34_30:                              # %for.cond.90
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB34_33
# BB#31:                                # %for.body.93
                                        #   in Loop: Header=BB34_30 Depth=1
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	subl	$1, %edx
	cvtsi2sdl	%edx, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
# BB#32:                                # %for.inc.117
                                        #   in Loop: Header=BB34_30 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB34_30
.LBB34_33:                              # %for.end.119
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	jmp	.LBB34_35
.LBB34_34:                              # %sw.bb.121
	jmp	.LBB34_35
.LBB34_35:                              # %sw.epilog
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_curve_calculate, .Lfunc_end34-gimp_curve_calculate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4613937818241073152     # double 3
.LCPI35_1:
	.quad	4611686018427387904     # double 2
.LCPI35_2:
	.quad	4602678819172646912     # double 0.5
.LCPI35_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_curve_plot,@function
gimp_curve_plot:                        # @gimp_curve_plot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movslq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	shlq	$4, %rdi
	addq	40(%rax), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	shlq	$4, %rax
	addq	40(%rdi), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rdi
	shlq	$4, %rax
	addq	40(%rdi), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rdi
	shlq	$4, %rax
	addq	40(%rdi), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
# BB#1:                                 # %do.body
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_3
# BB#2:                                 # %if.then
	jmp	.LBB35_4
.LBB35_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_plot, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_29
.LBB35_4:                               # %if.end
	jmp	.LBB35_5
.LBB35_5:                               # %do.end
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB35_8
# BB#6:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB35_8
# BB#7:                                 # %if.then.15
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI35_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, -64(%rbp)
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -72(%rbp)
	jmp	.LBB35_17
.LBB35_8:                               # %if.else.18
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB35_11
# BB#9:                                 # %land.lhs.true.20
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.LBB35_11
# BB#10:                                # %if.then.22
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI35_0, %xmm1        # xmm1 = mem[0],zero
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	subsd	-56(%rbp), %xmm2
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	(%rax), %xmm3           # xmm3 = mem[0],zero
	subsd	-40(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -104(%rbp)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-88(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -72(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-56(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	jmp	.LBB35_16
.LBB35_11:                              # %if.else.40
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.LBB35_14
# BB#12:                                # %land.lhs.true.42
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB35_14
# BB#13:                                # %if.then.44
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI35_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	subsd	8(%rax), %xmm2
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	subsd	(%rax), %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -104(%rbp)
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-88(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, -64(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-80(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
	jmp	.LBB35_15
.LBB35_14:                              # %if.else.62
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	subsd	8(%rax), %xmm1
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	subsd	(%rax), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	subsd	-40(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
.LBB35_15:                              # %if.end.91
	jmp	.LBB35_16
.LBB35_16:                              # %if.end.92
	jmp	.LBB35_17
.LBB35_17:                              # %if.end.93
	movl	$0, -28(%rbp)
.LBB35_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	.LCPI35_2, %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edx
	subl	$1, %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	cmpl	%edx, %eax
	jg	.LBB35_29
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB35_18 Depth=1
	movsd	.LCPI35_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI35_3, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI35_0, %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm3
	divsd	-88(%rbp), %xmm3
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm4
	divsd	%xmm4, %xmm3
	movsd	%xmm3, -120(%rbp)
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	movaps	%xmm1, %xmm4
	subsd	-120(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	movaps	%xmm1, %xmm4
	subsd	-120(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	movaps	%xmm1, %xmm4
	subsd	-120(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	movaps	%xmm2, %xmm4
	mulsd	-64(%rbp), %xmm4
	movaps	%xmm1, %xmm5
	subsd	-120(%rbp), %xmm5
	mulsd	%xmm5, %xmm4
	movaps	%xmm1, %xmm5
	subsd	-120(%rbp), %xmm5
	mulsd	%xmm5, %xmm4
	mulsd	-120(%rbp), %xmm4
	addsd	%xmm4, %xmm3
	mulsd	-72(%rbp), %xmm2
	subsd	-120(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	mulsd	-120(%rbp), %xmm2
	mulsd	-120(%rbp), %xmm2
	addsd	%xmm2, %xmm3
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-120(%rbp), %xmm1
	mulsd	-120(%rbp), %xmm1
	mulsd	-120(%rbp), %xmm1
	addsd	%xmm1, %xmm3
	movsd	%xmm3, -112(%rbp)
	movl	-28(%rbp), %ecx
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	subl	$1, %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	addl	%edx, %ecx
	movl	%ecx, -124(%rbp)
	movl	-124(%rbp), %ecx
	movq	-8(%rbp), %rax
	cmpl	48(%rax), %ecx
	jge	.LBB35_27
# BB#20:                                # %if.then.140
                                        #   in Loop: Header=BB35_18 Depth=1
	movsd	.LCPI35_3, %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB35_18 Depth=1
	movsd	.LCPI35_3, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB35_26
.LBB35_22:                              # %cond.false
                                        #   in Loop: Header=BB35_18 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB35_24
# BB#23:                                # %cond.true.145
                                        #   in Loop: Header=BB35_18 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB35_25
.LBB35_24:                              # %cond.false.146
                                        #   in Loop: Header=BB35_18 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB35_25:                              # %cond.end
                                        #   in Loop: Header=BB35_18 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB35_26:                              # %cond.end.147
                                        #   in Loop: Header=BB35_18 Depth=1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movslq	-124(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
.LBB35_27:                              # %if.end.151
                                        #   in Loop: Header=BB35_18 Depth=1
	jmp	.LBB35_28
.LBB35_28:                              # %for.inc
                                        #   in Loop: Header=BB35_18 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB35_18
.LBB35_29:                              # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_curve_plot, .Lfunc_end35-gimp_curve_plot
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_serialize,@function
gimp_curve_serialize:                   # @gimp_curve_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_config_serialize_properties
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_curve_serialize, .Lfunc_end36-gimp_curve_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_deserialize,@function
gimp_curve_deserialize:                 # @gimp_curve_deserialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_config_deserialize_properties
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$0, 64(%rax)
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_curve_deserialize, .Lfunc_end37-gimp_curve_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_equal,@function
gimp_curve_equal:                       # @gimp_curve_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	32(%rax), %ecx
	je	.LBB38_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB38_6
.LBB38_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movslq	36(%rdx), %rdx
	shlq	$4, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB38_4
# BB#3:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movslq	48(%rdx), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB38_5
.LBB38_4:                               # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB38_6
.LBB38_5:                               # %if.end.13
	movl	$1, -4(%rbp)
.LBB38_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_curve_equal, .Lfunc_end38-gimp_curve_equal
	.cfi_endproc

	.align	16, 0x90
	.type	_gimp_curve_reset,@function
_gimp_curve_reset:                      # @_gimp_curve_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_curve_reset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	_gimp_curve_reset, .Lfunc_end39-_gimp_curve_reset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_copy,@function
gimp_curve_copy:                        # @gimp_curve_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movq	-32(%rbp), %rsi
	movl	64(%rsi), %edx
	movq	-40(%rbp), %rsi
	movl	%edx, 64(%rsi)
	movq	-16(%rbp), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_curve_copy, .Lfunc_end40-gimp_curve_copy
	.cfi_endproc

	.type	gimp_curve_get_type.g_define_type_id__volatile,@object # @gimp_curve_get_type.g_define_type_id__volatile
	.local	gimp_curve_get_type.g_define_type_id__volatile
	.comm	gimp_curve_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCurve"
	.size	.L.str, 10

	.type	gimp_curve_get_type.g_implement_interface_info,@object # @gimp_curve_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_curve_get_type.g_implement_interface_info:
	.quad	gimp_curve_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_curve_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_curve_new,@object # @__func__.gimp_curve_new
.L__func__.gimp_curve_new:
	.asciz	"gimp_curve_new"
	.size	.L__func__.gimp_curve_new, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"*name != '\\0'"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	gimp_curve_get_standard.standard_curve,@object # @gimp_curve_get_standard.standard_curve
	.local	gimp_curve_get_standard.standard_curve
	.comm	gimp_curve_get_standard.standard_curve,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Standard"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-curve-standard"
	.size	.L.str.6, 20

	.type	.L__func__.gimp_curve_reset,@object # @__func__.gimp_curve_reset
.L__func__.gimp_curve_reset:
	.asciz	"gimp_curve_reset"
	.size	.L__func__.gimp_curve_reset, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_CURVE (curve)"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"samples"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"points"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"curve-type"
	.size	.L.str.10, 11

	.type	.L__func__.gimp_curve_set_curve_type,@object # @__func__.gimp_curve_set_curve_type
.L__func__.gimp_curve_set_curve_type:
	.asciz	"gimp_curve_set_curve_type"
	.size	.L__func__.gimp_curve_set_curve_type, 26

	.type	.L__func__.gimp_curve_get_curve_type,@object # @__func__.gimp_curve_get_curve_type
.L__func__.gimp_curve_get_curve_type:
	.asciz	"gimp_curve_get_curve_type"
	.size	.L__func__.gimp_curve_get_curve_type, 26

	.type	.L__func__.gimp_curve_get_n_points,@object # @__func__.gimp_curve_get_n_points
.L__func__.gimp_curve_get_n_points:
	.asciz	"gimp_curve_get_n_points"
	.size	.L__func__.gimp_curve_get_n_points, 24

	.type	.L__func__.gimp_curve_get_n_samples,@object # @__func__.gimp_curve_get_n_samples
.L__func__.gimp_curve_get_n_samples:
	.asciz	"gimp_curve_get_n_samples"
	.size	.L__func__.gimp_curve_get_n_samples, 25

	.type	.L__func__.gimp_curve_get_closest_point,@object # @__func__.gimp_curve_get_closest_point
.L__func__.gimp_curve_get_closest_point:
	.asciz	"gimp_curve_get_closest_point"
	.size	.L__func__.gimp_curve_get_closest_point, 29

	.type	.L__func__.gimp_curve_set_point,@object # @__func__.gimp_curve_set_point
.L__func__.gimp_curve_set_point:
	.asciz	"gimp_curve_set_point"
	.size	.L__func__.gimp_curve_set_point, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"point >= 0 && point < curve->n_points"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"x == -1.0 || (x >= 0 && x <= 1.0)"
	.size	.L.str.12, 34

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"y == -1.0 || (y >= 0 && y <= 1.0)"
	.size	.L.str.13, 34

	.type	.L__func__.gimp_curve_move_point,@object # @__func__.gimp_curve_move_point
.L__func__.gimp_curve_move_point:
	.asciz	"gimp_curve_move_point"
	.size	.L__func__.gimp_curve_move_point, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"y >= 0 && y <= 1.0"
	.size	.L.str.14, 19

	.type	.L__func__.gimp_curve_delete_point,@object # @__func__.gimp_curve_delete_point
.L__func__.gimp_curve_delete_point:
	.asciz	"gimp_curve_delete_point"
	.size	.L__func__.gimp_curve_delete_point, 24

	.type	.L__func__.gimp_curve_get_point,@object # @__func__.gimp_curve_get_point
.L__func__.gimp_curve_get_point:
	.asciz	"gimp_curve_get_point"
	.size	.L__func__.gimp_curve_get_point, 21

	.type	.L__func__.gimp_curve_set_curve,@object # @__func__.gimp_curve_set_curve
.L__func__.gimp_curve_set_curve:
	.asciz	"gimp_curve_set_curve"
	.size	.L__func__.gimp_curve_set_curve, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"x >= 0 && x <= 1.0"
	.size	.L.str.15, 19

	.type	.L__func__.gimp_curve_is_identity,@object # @__func__.gimp_curve_is_identity
.L__func__.gimp_curve_is_identity:
	.asciz	"gimp_curve_is_identity"
	.size	.L__func__.gimp_curve_is_identity, 23

	.type	.L__func__.gimp_curve_get_uchar,@object # @__func__.gimp_curve_get_uchar
.L__func__.gimp_curve_get_uchar:
	.asciz	"gimp_curve_get_uchar"
	.size	.L__func__.gimp_curve_get_uchar, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"n_samples == curve->n_samples"
	.size	.L.str.16, 30

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"samples != NULL"
	.size	.L.str.17, 16

	.type	gimp_curve_parent_class,@object # @gimp_curve_parent_class
	.local	gimp_curve_parent_class
	.comm	gimp_curve_parent_class,8,8
	.type	GimpCurve_private_offset,@object # @GimpCurve_private_offset
	.local	GimpCurve_private_offset
	.comm	GimpCurve_private_offset,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"FIXME"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"The curve type"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"n-points"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The number of points"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"point"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"n-samples"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"The number of samples"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"sample"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.26, 54

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimpcurve.c"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"property"
	.size	.L.str.28, 9

	.type	.L__func__.gimp_curve_set_n_points,@object # @__func__.gimp_curve_set_n_points
.L__func__.gimp_curve_set_n_points:
	.asciz	"gimp_curve_set_n_points"
	.size	.L__func__.gimp_curve_set_n_points, 24

	.type	.L__func__.gimp_curve_set_n_samples,@object # @__func__.gimp_curve_set_n_samples
.L__func__.gimp_curve_set_n_samples:
	.asciz	"gimp_curve_set_n_samples"
	.size	.L__func__.gimp_curve_set_n_samples, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s"
	.size	.L.str.29, 3

	.type	.L__func__.gimp_curve_plot,@object # @__func__.gimp_curve_plot
.L__func__.gimp_curve_plot:
	.asciz	"gimp_curve_plot"
	.size	.L__func__.gimp_curve_plot, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"dx > 0"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	".curve"
	.size	.L.str.31, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
