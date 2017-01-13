	.text
	.file	"gimpstrokeoptions.bc"
	.globl	gimp_stroke_options_get_type
	.align	16, 0x90
	.type	gimp_stroke_options_get_type,@function
gimp_stroke_options_get_type:           # @gimp_stroke_options_get_type
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
	movq	gimp_stroke_options_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_stroke_options_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_fill_options_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$432, %edx              # imm = 0x1B0
	movabsq	$gimp_stroke_options_class_intern_init, %rdi
	movl	$344, %r8d              # imm = 0x158
	movabsq	$gimp_stroke_options_init, %rcx
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
	movabsq	$gimp_stroke_options_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_stroke_options_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_stroke_options_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_stroke_options_get_type, .Lfunc_end0-gimp_stroke_options_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_options_class_intern_init,@function
gimp_stroke_options_class_intern_init:  # @gimp_stroke_options_class_intern_init
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
	movq	%rax, gimp_stroke_options_parent_class
	cmpl	$0, GimpStrokeOptions_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpStrokeOptions_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_stroke_options_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_stroke_options_class_intern_init, .Lfunc_end1-gimp_stroke_options_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_options_init,@function
gimp_stroke_options_init:               # @gimp_stroke_options_init
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
	.size	gimp_stroke_options_init, .Lfunc_end2-gimp_stroke_options_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_options_config_iface_init,@function
gimp_stroke_options_config_iface_init:  # @gimp_stroke_options_config_iface_init
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_type_interface_peek_parent
	movq	%rax, parent_config_iface
	cmpq	$0, parent_config_iface
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	gimp_config_interface_get_type
	movq	%rax, %rdi
	callq	g_type_default_interface_peek
	movq	%rax, parent_config_iface
.LBB3_2:                                # %if.end
	movabsq	$gimp_stroke_options_duplicate, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_stroke_options_config_iface_init, .Lfunc_end3-gimp_stroke_options_config_iface_init
	.cfi_endproc

	.globl	gimp_stroke_options_new
	.align	16, 0x90
	.type	gimp_stroke_options_new,@function
gimp_stroke_options_new:                # @gimp_stroke_options_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_options_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_38
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_options_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_38
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	jmp	.LBB4_26
.LBB4_26:                               # %do.body.40
	cmpl	$0, -28(%rbp)
	je	.LBB4_28
# BB#27:                                # %lor.lhs.false.42
	cmpq	$0, -24(%rbp)
	je	.LBB4_29
.LBB4_28:                               # %if.then.44
	jmp	.LBB4_30
.LBB4_29:                               # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_options_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_38
.LBB4_30:                               # %if.end.46
	jmp	.LBB4_31
.LBB4_31:                               # %do.end.47
	cmpq	$0, -24(%rbp)
	je	.LBB4_33
# BB#32:                                # %if.then.49
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_paint_info
	movq	%rax, -40(%rbp)
.LBB4_33:                               # %if.end.51
	cmpq	$0, -40(%rbp)
	jne	.LBB4_35
# BB#34:                                # %if.then.53
	movq	-16(%rbp), %rdi
	callq	gimp_paint_info_get_standard
	movq	%rax, -40(%rbp)
.LBB4_35:                               # %if.end.55
	callq	gimp_stroke_options_get_type
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB4_37
# BB#36:                                # %if.then.59
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4160, %esi             # imm = 0x1040
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_context_define_properties
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_parent
.LBB4_37:                               # %if.end.64
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_38:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_stroke_options_new, .Lfunc_end4-gimp_stroke_options_new
	.cfi_endproc

	.globl	gimp_stroke_options_get_method
	.align	16, 0x90
	.type	gimp_stroke_options_get_method,@function
gimp_stroke_options_get_method:         # @gimp_stroke_options_get_method
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
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_get_method, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_stroke_options_get_method, .Lfunc_end5-gimp_stroke_options_get_method
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_stroke_options_get_width
	.align	16, 0x90
	.type	gimp_stroke_options_get_width,@function
gimp_stroke_options_get_width:          # @gimp_stroke_options_get_width
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
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_get_width, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB6_13:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_stroke_options_get_width, .Lfunc_end6-gimp_stroke_options_get_width
	.cfi_endproc

	.globl	gimp_stroke_options_get_unit
	.align	16, 0x90
	.type	gimp_stroke_options_get_unit,@function
gimp_stroke_options_get_unit:           # @gimp_stroke_options_get_unit
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_get_unit, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	16(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_stroke_options_get_unit, .Lfunc_end7-gimp_stroke_options_get_unit
	.cfi_endproc

	.globl	gimp_stroke_options_get_cap_style
	.align	16, 0x90
	.type	gimp_stroke_options_get_cap_style,@function
gimp_stroke_options_get_cap_style:      # @gimp_stroke_options_get_cap_style
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
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_get_cap_style, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	20(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_stroke_options_get_cap_style, .Lfunc_end8-gimp_stroke_options_get_cap_style
	.cfi_endproc

	.globl	gimp_stroke_options_get_join_style
	.align	16, 0x90
	.type	gimp_stroke_options_get_join_style,@function
gimp_stroke_options_get_join_style:     # @gimp_stroke_options_get_join_style
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
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_get_join_style, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	24(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_stroke_options_get_join_style, .Lfunc_end9-gimp_stroke_options_get_join_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_stroke_options_get_miter_limit
	.align	16, 0x90
	.type	gimp_stroke_options_get_miter_limit,@function
gimp_stroke_options_get_miter_limit:    # @gimp_stroke_options_get_miter_limit
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
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_get_miter_limit, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB10_13:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_stroke_options_get_miter_limit, .Lfunc_end10-gimp_stroke_options_get_miter_limit
	.cfi_endproc

	.globl	gimp_stroke_options_get_dash_offset
	.align	16, 0x90
	.type	gimp_stroke_options_get_dash_offset,@function
gimp_stroke_options_get_dash_offset:    # @gimp_stroke_options_get_dash_offset
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_get_dash_offset, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB11_13:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_stroke_options_get_dash_offset, .Lfunc_end11-gimp_stroke_options_get_dash_offset
	.cfi_endproc

	.globl	gimp_stroke_options_get_dash_info
	.align	16, 0x90
	.type	gimp_stroke_options_get_dash_info,@function
gimp_stroke_options_get_dash_info:      # @gimp_stroke_options_get_dash_info
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_options_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_options_get_dash_info, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_stroke_options_get_dash_info, .Lfunc_end12-gimp_stroke_options_get_dash_info
	.cfi_endproc

	.globl	gimp_stroke_options_get_paint_options
	.align	16, 0x90
	.type	gimp_stroke_options_get_paint_options,@function
gimp_stroke_options_get_paint_options:  # @gimp_stroke_options_get_paint_options
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_options_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_options_get_paint_options, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB13_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_stroke_options_get_paint_options, .Lfunc_end13-gimp_stroke_options_get_paint_options
	.cfi_endproc

	.globl	gimp_stroke_options_get_emulate_dynamics
	.align	16, 0x90
	.type	gimp_stroke_options_get_emulate_dynamics,@function
gimp_stroke_options_get_emulate_dynamics: # @gimp_stroke_options_get_emulate_dynamics
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_get_emulate_dynamics, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	64(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB14_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_stroke_options_get_emulate_dynamics, .Lfunc_end14-gimp_stroke_options_get_emulate_dynamics
	.cfi_endproc

	.globl	gimp_stroke_options_take_dash_pattern
	.align	16, 0x90
	.type	gimp_stroke_options_take_dash_pattern,@function
gimp_stroke_options_take_dash_pattern:  # @gimp_stroke_options_take_dash_pattern
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_take_dash_pattern, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_23
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	je	.LBB15_15
# BB#14:                                # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	jne	.LBB15_16
.LBB15_15:                              # %if.then.14
	jmp	.LBB15_17
.LBB15_16:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_options_take_dash_pattern, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_23
.LBB15_17:                              # %if.end.16
	jmp	.LBB15_18
.LBB15_18:                              # %do.end.17
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB15_20
# BB#19:                                # %if.then.21
	movl	-12(%rbp), %edi
	callq	gimp_dash_pattern_new_from_preset
	movq	%rax, -24(%rbp)
.LBB15_20:                              # %if.end.23
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB15_22
# BB#21:                                # %if.then.25
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_dash_pattern_free
.LBB15_22:                              # %if.end.27
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 48(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	stroke_options_signals, %esi
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB15_23:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_stroke_options_take_dash_pattern, .Lfunc_end15-gimp_stroke_options_take_dash_pattern
	.cfi_endproc

	.globl	gimp_stroke_options_prepare
	.align	16, 0x90
	.type	gimp_stroke_options_prepare,@function
gimp_stroke_options_prepare:            # @gimp_stroke_options_prepare
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_prepare, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_62
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_context_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_prepare, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_62
.LBB16_23:                              # %if.end.37
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.38
	jmp	.LBB16_25
.LBB16_25:                              # %do.body.39
	cmpq	$0, -24(%rbp)
	je	.LBB16_34
# BB#26:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB16_28
# BB#27:                                # %if.then.49
	movl	$0, -100(%rbp)
	jmp	.LBB16_33
.LBB16_28:                              # %if.else.50
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_31
# BB#29:                                # %land.lhs.true.53
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB16_31
# BB#30:                                # %if.then.57
	movl	$1, -100(%rbp)
	jmp	.LBB16_32
.LBB16_31:                              # %if.else.58
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB16_32:                              # %if.end.60
	jmp	.LBB16_33
.LBB16_33:                              # %if.end.61
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB16_35
.LBB16_34:                              # %if.then.64
	jmp	.LBB16_36
.LBB16_35:                              # %if.else.65
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_options_prepare, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_62
.LBB16_36:                              # %if.end.66
	jmp	.LBB16_37
.LBB16_37:                              # %do.end.67
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	je	.LBB16_38
	jmp	.LBB16_63
.LBB16_63:                              # %do.end.67
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB16_39
	jmp	.LBB16_60
.LBB16_38:                              # %sw.bb
	jmp	.LBB16_62
.LBB16_39:                              # %sw.bb.70
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	88(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB16_46
# BB#40:                                # %if.then.76
	jmp	.LBB16_41
.LBB16_41:                              # %do.body.77
	movq	-112(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	352(%rcx), %rax
	jne	.LBB16_43
# BB#42:                                # %if.then.80
	jmp	.LBB16_44
.LBB16_43:                              # %if.else.81
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_options_prepare, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_62
.LBB16_44:                              # %if.end.82
	jmp	.LBB16_45
.LBB16_45:                              # %do.end.83
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$16320, %esi            # imm = 0x3FC0
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_context_define_properties
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_parent
	jmp	.LBB16_59
.LBB16_46:                              # %if.else.88
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -124(%rbp)
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -24(%rbp)
	movl	-124(%rbp), %ecx
	orl	$64, %ecx
	movl	%ecx, -124(%rbp)
	movl	-124(%rbp), %ecx
	orl	$128, %ecx
	movl	%ecx, -124(%rbp)
	movq	-120(%rbp), %rax
	cmpl	$0, 272(%rax)
	je	.LBB16_48
# BB#47:                                # %if.then.98
	movl	-124(%rbp), %eax
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, -124(%rbp)
.LBB16_48:                              # %if.end.100
	movq	-120(%rbp), %rax
	cmpl	$0, 276(%rax)
	je	.LBB16_50
# BB#49:                                # %if.then.102
	movl	-124(%rbp), %eax
	orl	$2048, %eax             # imm = 0x800
	movl	%eax, -124(%rbp)
.LBB16_50:                              # %if.end.104
	movq	-120(%rbp), %rax
	cmpl	$0, 280(%rax)
	je	.LBB16_52
# BB#51:                                # %if.then.106
	movl	-124(%rbp), %eax
	orl	$4096, %eax             # imm = 0x1000
	movl	%eax, -124(%rbp)
.LBB16_52:                              # %if.end.108
	movq	-120(%rbp), %rax
	cmpl	$0, 284(%rax)
	je	.LBB16_54
# BB#53:                                # %if.then.110
	movl	-124(%rbp), %eax
	orl	$16384, %eax            # imm = 0x4000
	movl	%eax, -124(%rbp)
.LBB16_54:                              # %if.end.112
	movq	-120(%rbp), %rax
	cmpl	$0, 288(%rax)
	je	.LBB16_56
# BB#55:                                # %if.then.114
	movl	-124(%rbp), %eax
	orl	$8192, %eax             # imm = 0x2000
	movl	%eax, -124(%rbp)
.LBB16_56:                              # %if.end.116
	movq	-120(%rbp), %rax
	cmpl	$0, 292(%rax)
	je	.LBB16_58
# BB#57:                                # %if.then.118
	movl	-124(%rbp), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, -124(%rbp)
.LBB16_58:                              # %if.end.120
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-124(%rbp), %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_copy_properties
.LBB16_59:                              # %if.end.123
	movabsq	$.L.str.13, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB16_62
.LBB16_60:                              # %sw.default
	jmp	.LBB16_61
.LBB16_61:                              # %do.body.124
	movabsq	$.L.str.1, %rdi
	movl	$8, %esi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movl	$614, %r8d              # imm = 0x266
	movabsq	$.L__func__.gimp_stroke_options_prepare, %r9
	movb	$0, %al
	callq	g_log
.LBB16_62:                              # %sw.epilog
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_stroke_options_prepare, .Lfunc_end16-gimp_stroke_options_prepare
	.cfi_endproc

	.globl	gimp_stroke_options_finish
	.align	16, 0x90
	.type	gimp_stroke_options_finish,@function
gimp_stroke_options_finish:             # @gimp_stroke_options_finish
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_options_finish, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movabsq	$.L.str.13, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	g_object_set
.LBB17_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_stroke_options_finish, .Lfunc_end17-gimp_stroke_options_finish
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4656510908468559872     # double 2000
.LCPI18_1:
	.quad	4607182418800017408     # double 1
.LCPI18_2:
	.quad	4636737291354636288     # double 100
.LCPI18_3:
	.quad	4621819117588971520     # double 10
.LCPI18_4:
	.quad	4618441417868443648     # double 6
	.text
	.align	16, 0x90
	.type	gimp_stroke_options_class_init,@function
gimp_stroke_options_class_init:         # @gimp_stroke_options_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp57:
	.cfi_offset %rbx, -32
.Ltmp58:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_stroke_options_get_property, %rsi
	movabsq	$gimp_stroke_options_set_property, %rdi
	movabsq	$gimp_stroke_options_finalize, %rcx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 424(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_dash_preset_get_type
	movabsq	$.L.str.16, %rdi
	movl	$1, %edx
	movl	$424, %ecx              # imm = 0x1A8
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__ENUM, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, stroke_options_signals
	movq	-32(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_stroke_method_get_type
	movabsq	$.L.str.17, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.18, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI18_4, %xmm2        # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	$487, %r8d              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	-100(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	gimp_param_spec_unit
	movl	$4, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_cap_style_get_type
	movabsq	$.L.str.20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$5, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_join_style_get_type
	movabsq	$.L.str.21, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$6, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.23, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.22, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	xorps	%xmm0, %xmm0
	movsd	.LCPI18_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI18_3, %xmm2        # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$7, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.24, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movsd	-160(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$10, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.25, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI18_1, %xmm2        # xmm2 = mem[0],zero
	movl	$227, %ecx
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	g_param_spec_double
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_param_spec_value_array
	movl	$11, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movabsq	$.L.str.13, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$12, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.26, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$13, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$72, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_stroke_options_class_init, .Lfunc_end18-gimp_stroke_options_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_options_finalize,@function
gimp_stroke_options_finalize:           # @gimp_stroke_options_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_dash_pattern_free
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB19_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB19_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB19_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_stroke_options_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_stroke_options_finalize, .Lfunc_end19-gimp_stroke_options_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_options_set_property,@function
gimp_stroke_options_set_property:       # @gimp_stroke_options_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$12, %r8d
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	ja	.LBB20_13
# BB#17:                                # %entry
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI20_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB20_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-48(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB20_16
.LBB20_2:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	jmp	.LBB20_16
.LBB20_3:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-48(%rbp), %rdi
	movl	%eax, 16(%rdi)
	jmp	.LBB20_16
.LBB20_4:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-48(%rbp), %rdi
	movl	%eax, 20(%rdi)
	jmp	.LBB20_16
.LBB20_5:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-48(%rbp), %rdi
	movl	%eax, 24(%rdi)
	jmp	.LBB20_16
.LBB20_6:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	jmp	.LBB20_16
.LBB20_7:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	jmp	.LBB20_16
.LBB20_8:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_dash_pattern_from_value_array
	xorl	%esi, %esi
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rdx
	callq	gimp_stroke_options_take_dash_pattern
	jmp	.LBB20_16
.LBB20_9:                               # %sw.bb.20
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB20_11
# BB#10:                                # %if.then
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB20_11:                              # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-48(%rbp), %rdi
	movq	%rax, 56(%rdi)
	jmp	.LBB20_16
.LBB20_12:                              # %sw.bb.24
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, 64(%rdi)
	jmp	.LBB20_16
.LBB20_13:                              # %sw.default
	jmp	.LBB20_14
.LBB20_14:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-84(%rbp), %r8d
	movq	-80(%rbp), %rax
	movq	8(%rax), %r9
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$307, %edx              # imm = 0x133
	movabsq	$.L.str.28, %rcx
	movl	-120(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#15:                                # %do.end
	jmp	.LBB20_16
.LBB20_16:                              # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_stroke_options_set_property, .Lfunc_end20-gimp_stroke_options_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI20_0:
	.quad	.LBB20_1
	.quad	.LBB20_13
	.quad	.LBB20_2
	.quad	.LBB20_3
	.quad	.LBB20_4
	.quad	.LBB20_5
	.quad	.LBB20_6
	.quad	.LBB20_13
	.quad	.LBB20_13
	.quad	.LBB20_7
	.quad	.LBB20_8
	.quad	.LBB20_9
	.quad	.LBB20_12

	.text
	.align	16, 0x90
	.type	gimp_stroke_options_get_property,@function
gimp_stroke_options_get_property:       # @gimp_stroke_options_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$12, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB21_11
# BB#15:                                # %entry
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI21_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB21_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB21_14
.LBB21_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB21_14
.LBB21_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	16(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB21_14
.LBB21_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	20(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB21_14
.LBB21_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB21_14
.LBB21_6:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB21_14
.LBB21_7:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB21_14
.LBB21_8:                               # %sw.bb.8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_dash_pattern_to_value_array
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
	jmp	.LBB21_14
.LBB21_9:                               # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB21_14
.LBB21_10:                              # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	64(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB21_14
.LBB21_11:                              # %sw.default
	jmp	.LBB21_12
.LBB21_12:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$361, %edx              # imm = 0x169
	movabsq	$.L.str.28, %rcx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#13:                                # %do.end
	jmp	.LBB21_14
.LBB21_14:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_stroke_options_get_property, .Lfunc_end21-gimp_stroke_options_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_1
	.quad	.LBB21_11
	.quad	.LBB21_2
	.quad	.LBB21_3
	.quad	.LBB21_4
	.quad	.LBB21_5
	.quad	.LBB21_6
	.quad	.LBB21_11
	.quad	.LBB21_11
	.quad	.LBB21_7
	.quad	.LBB21_8
	.quad	.LBB21_9
	.quad	.LBB21_10

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB22_2
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
.LBB22_2:                               # %entry
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
.Lfunc_end22:
	.size	g_warning, .Lfunc_end22-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_options_duplicate,@function
gimp_stroke_options_duplicate:          # @gimp_stroke_options_duplicate
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	parent_config_iface, %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.13, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
.LBB23_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_stroke_options_duplicate, .Lfunc_end23-gimp_stroke_options_duplicate
	.cfi_endproc

	.type	gimp_stroke_options_get_type.g_define_type_id__volatile,@object # @gimp_stroke_options_get_type.g_define_type_id__volatile
	.local	gimp_stroke_options_get_type.g_define_type_id__volatile
	.comm	gimp_stroke_options_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpStrokeOptions"
	.size	.L.str, 18

	.type	gimp_stroke_options_get_type.g_implement_interface_info,@object # @gimp_stroke_options_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_stroke_options_get_type.g_implement_interface_info:
	.quad	gimp_stroke_options_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_stroke_options_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_stroke_options_new,@object # @__func__.gimp_stroke_options_new
.L__func__.gimp_stroke_options_new:
	.asciz	"gimp_stroke_options_new"
	.size	.L__func__.gimp_stroke_options_new, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"use_context_color == FALSE || context != NULL"
	.size	.L.str.4, 46

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"paint-info"
	.size	.L.str.6, 11

	.type	.L__func__.gimp_stroke_options_get_method,@object # @__func__.gimp_stroke_options_get_method
.L__func__.gimp_stroke_options_get_method:
	.asciz	"gimp_stroke_options_get_method"
	.size	.L__func__.gimp_stroke_options_get_method, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_STROKE_OPTIONS (options)"
	.size	.L.str.7, 33

	.type	.L__func__.gimp_stroke_options_get_width,@object # @__func__.gimp_stroke_options_get_width
.L__func__.gimp_stroke_options_get_width:
	.asciz	"gimp_stroke_options_get_width"
	.size	.L__func__.gimp_stroke_options_get_width, 30

	.type	.L__func__.gimp_stroke_options_get_unit,@object # @__func__.gimp_stroke_options_get_unit
.L__func__.gimp_stroke_options_get_unit:
	.asciz	"gimp_stroke_options_get_unit"
	.size	.L__func__.gimp_stroke_options_get_unit, 29

	.type	.L__func__.gimp_stroke_options_get_cap_style,@object # @__func__.gimp_stroke_options_get_cap_style
.L__func__.gimp_stroke_options_get_cap_style:
	.asciz	"gimp_stroke_options_get_cap_style"
	.size	.L__func__.gimp_stroke_options_get_cap_style, 34

	.type	.L__func__.gimp_stroke_options_get_join_style,@object # @__func__.gimp_stroke_options_get_join_style
.L__func__.gimp_stroke_options_get_join_style:
	.asciz	"gimp_stroke_options_get_join_style"
	.size	.L__func__.gimp_stroke_options_get_join_style, 35

	.type	.L__func__.gimp_stroke_options_get_miter_limit,@object # @__func__.gimp_stroke_options_get_miter_limit
.L__func__.gimp_stroke_options_get_miter_limit:
	.asciz	"gimp_stroke_options_get_miter_limit"
	.size	.L__func__.gimp_stroke_options_get_miter_limit, 36

	.type	.L__func__.gimp_stroke_options_get_dash_offset,@object # @__func__.gimp_stroke_options_get_dash_offset
.L__func__.gimp_stroke_options_get_dash_offset:
	.asciz	"gimp_stroke_options_get_dash_offset"
	.size	.L__func__.gimp_stroke_options_get_dash_offset, 36

	.type	.L__func__.gimp_stroke_options_get_dash_info,@object # @__func__.gimp_stroke_options_get_dash_info
.L__func__.gimp_stroke_options_get_dash_info:
	.asciz	"gimp_stroke_options_get_dash_info"
	.size	.L__func__.gimp_stroke_options_get_dash_info, 34

	.type	.L__func__.gimp_stroke_options_get_paint_options,@object # @__func__.gimp_stroke_options_get_paint_options
.L__func__.gimp_stroke_options_get_paint_options:
	.asciz	"gimp_stroke_options_get_paint_options"
	.size	.L__func__.gimp_stroke_options_get_paint_options, 38

	.type	.L__func__.gimp_stroke_options_get_emulate_dynamics,@object # @__func__.gimp_stroke_options_get_emulate_dynamics
.L__func__.gimp_stroke_options_get_emulate_dynamics:
	.asciz	"gimp_stroke_options_get_emulate_dynamics"
	.size	.L__func__.gimp_stroke_options_get_emulate_dynamics, 41

	.type	.L__func__.gimp_stroke_options_take_dash_pattern,@object # @__func__.gimp_stroke_options_take_dash_pattern
.L__func__.gimp_stroke_options_take_dash_pattern:
	.asciz	"gimp_stroke_options_take_dash_pattern"
	.size	.L__func__.gimp_stroke_options_take_dash_pattern, 38

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"preset == GIMP_DASH_CUSTOM || pattern == NULL"
	.size	.L.str.8, 46

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dash-info"
	.size	.L.str.9, 10

	.type	stroke_options_signals,@object # @stroke_options_signals
	.local	stroke_options_signals
	.comm	stroke_options_signals,4,4
	.type	.L__func__.gimp_stroke_options_prepare,@object # @__func__.gimp_stroke_options_prepare
.L__func__.gimp_stroke_options_prepare:
	.asciz	"gimp_stroke_options_prepare"
	.size	.L__func__.gimp_stroke_options_prepare, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"paint_options == NULL || GIMP_IS_PAINT_OPTIONS (paint_options)"
	.size	.L.str.11, 63

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"paint_info == paint_options->paint_info"
	.size	.L.str.12, 40

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"paint-options"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.14, 45

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimpstrokeoptions.c"
	.size	.L.str.15, 20

	.type	.L__func__.gimp_stroke_options_finish,@object # @__func__.gimp_stroke_options_finish
.L__func__.gimp_stroke_options_finish:
	.asciz	"gimp_stroke_options_finish"
	.size	.L__func__.gimp_stroke_options_finish, 27

	.type	gimp_stroke_options_parent_class,@object # @gimp_stroke_options_parent_class
	.local	gimp_stroke_options_parent_class
	.comm	gimp_stroke_options_parent_class,8,8
	.type	GimpStrokeOptions_private_offset,@object # @GimpStrokeOptions_private_offset
	.local	GimpStrokeOptions_private_offset
	.comm	GimpStrokeOptions_private_offset,4,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"dash-info-changed"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"method"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"width"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"unit"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"cap-style"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"join-style"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"miter-limit"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Convert a mitered join to a bevelled join if the miter would extend to a distance of more than miter-limit * line-width from the actual join point."
	.size	.L.str.23, 148

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"dash-offset"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"dash-length"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"emulate-brush-dynamics"
	.size	.L.str.26, 23

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.27, 54

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"property"
	.size	.L.str.28, 9

	.type	parent_config_iface,@object # @parent_config_iface
	.local	parent_config_iface
	.comm	parent_config_iface,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
