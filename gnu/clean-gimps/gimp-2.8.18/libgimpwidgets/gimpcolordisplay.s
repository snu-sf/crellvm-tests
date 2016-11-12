	.text
	.file	"gimpcolordisplay.bc"
	.globl	gimp_color_display_get_type
	.align	16, 0x90
	.type	gimp_color_display_get_type,@function
gimp_color_display_get_type:            # @gimp_color_display_get_type
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_color_display_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_display_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	leaq	.L.str(%rip), %rdi
	callq	g_intern_static_string@PLT
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$240, %edx
	leaq	gimp_color_display_class_intern_init(%rip), %rsi
	movl	$32, %r8d
	leaq	gimp_color_display_init(%rip), %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	leaq	gimp_color_display_get_type.g_implement_interface_info(%rip), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static@PLT
	leaq	gimp_color_display_get_type.g_define_type_id__volatile(%rip), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_display_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_display_get_type, .Lfunc_end0-gimp_color_display_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_class_intern_init,@function
gimp_color_display_class_intern_init:   # @gimp_color_display_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_color_display_parent_class(%rip)
	cmpl	$0, GimpColorDisplay_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorDisplay_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_display_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_display_class_intern_init, .Lfunc_end1-gimp_color_display_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_init,@function
gimp_color_display_init:                # @gimp_color_display_init
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
	movl	$0, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_display_init, .Lfunc_end2-gimp_color_display_init
	.cfi_endproc

	.globl	gimp_color_display_new
	.align	16, 0x90
	.type	gimp_color_display_new,@function
gimp_color_display_new:                 # @gimp_color_display_new
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_display_new, .Lfunc_end3-gimp_color_display_new
	.cfi_endproc

	.globl	gimp_color_display_clone
	.align	16, 0x90
	.type	gimp_color_display_clone,@function
gimp_color_display_clone:               # @gimp_color_display_clone
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_display_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_clone(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_17
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 152(%rax)
	je	.LBB4_16
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	152(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	.L.str.5(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	24(%rdi), %edx
	movq	-56(%rbp), %rdi
	movq	8(%rdi), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
.LBB4_15:                               # %if.end.24
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_17
.LBB4_16:                               # %if.end.25
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_config_duplicate@PLT
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -8(%rbp)
.LBB4_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_display_clone, .Lfunc_end4-gimp_color_display_clone
	.cfi_endproc

	.globl	gimp_color_display_convert_surface
	.align	16, 0x90
	.type	gimp_color_display_convert_surface,@function
gimp_color_display_convert_surface:     # @gimp_color_display_convert_surface
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_display_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_convert_surface(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_25
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_convert_surface(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_25
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.17
	movq	-16(%rbp), %rdi
	callq	cairo_surface_get_type@PLT
	cmpl	$0, %eax
	jne	.LBB5_20
# BB#19:                                # %if.then.20
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.21
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_convert_surface(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_25
.LBB5_21:                               # %if.end.22
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.23
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB5_25
# BB#23:                                # %land.lhs.true.25
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 216(%rax)
	je	.LBB5_25
# BB#24:                                # %if.then.28
	movq	-16(%rbp), %rdi
	callq	cairo_surface_flush@PLT
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	216(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-16(%rbp), %rdi
	callq	cairo_surface_mark_dirty@PLT
.LBB5_25:                               # %if.end.31
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_display_convert_surface, .Lfunc_end5-gimp_color_display_convert_surface
	.cfi_endproc

	.globl	gimp_color_display_convert
	.align	16, 0x90
	.type	gimp_color_display_convert,@function
gimp_color_display_convert:             # @gimp_color_display_convert
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_color_display_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_convert(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_15
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB6_15
# BB#13:                                # %land.lhs.true.12
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 160(%rax)
	je	.LBB6_15
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	*%rax
.LBB6_15:                               # %if.end.18
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_display_convert, .Lfunc_end6-gimp_color_display_convert
	.cfi_endproc

	.globl	gimp_color_display_load_state
	.align	16, 0x90
	.type	gimp_color_display_load_state,@function
gimp_color_display_load_state:          # @gimp_color_display_load_state
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_display_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_load_state(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_20
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_load_state(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_20
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 168(%rax)
	je	.LBB7_19
# BB#18:                                # %if.then.19
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.22
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_parasite_data@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_parasite_data_size@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%eax, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	gimp_config_deserialize_string@PLT
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB7_20:                               # %if.end.28
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_display_load_state, .Lfunc_end7-gimp_color_display_load_state
	.cfi_endproc

	.globl	gimp_color_display_save_state
	.align	16, 0x90
	.type	gimp_color_display_save_state,@function
gimp_color_display_save_state:          # @gimp_color_display_save_state
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_color_display_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_save_state(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB8_15
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 176(%rax)
	je	.LBB8_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.end.17
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_string@PLT
	leaq	.L.str.9(%rip), %rdi
	movl	$1, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	callq	strlen@PLT
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	gimp_parasite_new@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_display_save_state, .Lfunc_end8-gimp_color_display_save_state
	.cfi_endproc

	.globl	gimp_color_display_configure
	.align	16, 0x90
	.type	gimp_color_display_configure,@function
gimp_color_display_configure:           # @gimp_color_display_configure
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
	callq	gimp_color_display_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_configure(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB9_15
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 184(%rax)
	je	.LBB9_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_15
.LBB9_14:                               # %if.end.17
	movq	$0, -8(%rbp)
.LBB9_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_display_configure, .Lfunc_end9-gimp_color_display_configure
	.cfi_endproc

	.globl	gimp_color_display_configure_reset
	.align	16, 0x90
	.type	gimp_color_display_configure_reset,@function
gimp_color_display_configure_reset:     # @gimp_color_display_configure_reset
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_color_display_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_configure_reset(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 192(%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	jmp	.LBB10_15
.LBB10_14:                              # %if.else.16
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_config_reset@PLT
.LBB10_15:                              # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_display_configure_reset, .Lfunc_end10-gimp_color_display_configure_reset
	.cfi_endproc

	.globl	gimp_color_display_changed
	.align	16, 0x90
	.type	gimp_color_display_changed,@function
gimp_color_display_changed:             # @gimp_color_display_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_color_display_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_changed(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	display_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB11_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_display_changed, .Lfunc_end11-gimp_color_display_changed
	.cfi_endproc

	.globl	gimp_color_display_set_enabled
	.align	16, 0x90
	.type	gimp_color_display_set_enabled,@function
gimp_color_display_set_enabled:         # @gimp_color_display_set_enabled
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_display_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_set_enabled(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_14
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	je	.LBB12_14
# BB#13:                                # %if.then.13
	leaq	.L.str.4(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB12_14:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_display_set_enabled, .Lfunc_end12-gimp_color_display_set_enabled
	.cfi_endproc

	.globl	gimp_color_display_get_enabled
	.align	16, 0x90
	.type	gimp_color_display_get_enabled,@function
gimp_color_display_get_enabled:         # @gimp_color_display_get_enabled
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
	callq	gimp_color_display_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_get_enabled(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB13_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_display_get_enabled, .Lfunc_end13-gimp_color_display_get_enabled
	.cfi_endproc

	.globl	gimp_color_display_get_config
	.align	16, 0x90
	.type	gimp_color_display_get_config,@function
gimp_color_display_get_config:          # @gimp_color_display_get_config
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
	callq	gimp_color_display_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_get_config(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB14_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_display_get_config, .Lfunc_end14-gimp_color_display_get_config
	.cfi_endproc

	.globl	gimp_color_display_get_managed
	.align	16, 0x90
	.type	gimp_color_display_get_managed,@function
gimp_color_display_get_managed:         # @gimp_color_display_get_managed
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_display_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_get_managed(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB15_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_display_get_managed, .Lfunc_end15-gimp_color_display_get_managed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_class_init,@function
gimp_color_display_class_init:          # @gimp_color_display_class_init
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
	subq	$96, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movl	$16, %ecx
	movl	%ecx, %esi
	leaq	gimp_color_display_get_property(%rip), %rdi
	leaq	gimp_color_display_set_property(%rip), %rdx
	leaq	gimp_color_display_dispose(%rip), %r8
	leaq	gimp_color_display_constructed(%rip), %r9
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	leaq	.L.str.4(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$231, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean@PLT
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_config_get_type@PLT
	leaq	.L.str.10(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$235, %r8d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_object@PLT
	movl	$2, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_managed_interface_get_type@PLT
	leaq	.L.str.5(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object@PLT
	movl	$3, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.11(%rip), %rdi
	movl	$1, %edx
	movl	$200, %ecx
	xorl	%esi, %esi
	movl	%esi, %eax
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %esi
	movl	%esi, %r10d
	xorl	%esi, %esi
	movq	-8(%rbp), %r11
	movq	(%r11), %r11
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%r11, %rsi
	movq	%rax, %r8
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.13(%rip), %rsi
	leaq	.L.str.12(%rip), %rdi
	movl	%eax, display_signals(%rip)
	movq	-8(%rbp), %r8
	movq	%rdi, 136(%r8)
	movq	-8(%rbp), %rdi
	movq	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 208(%rdi)
	movq	-8(%rbp), %rsi
	movq	$0, 152(%rsi)
	movq	-8(%rbp), %rsi
	movq	$0, 216(%rsi)
	movq	-8(%rbp), %rsi
	movq	$0, 160(%rsi)
	movq	-8(%rbp), %rsi
	movq	$0, 168(%rsi)
	movq	-8(%rbp), %rsi
	movq	$0, 176(%rsi)
	movq	-8(%rbp), %rsi
	movq	$0, 184(%rsi)
	movq	-8(%rbp), %rsi
	movq	$0, 192(%rsi)
	movq	-8(%rbp), %rsi
	movq	$0, 200(%rsi)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_display_class_init, .Lfunc_end16-gimp_color_display_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_constructed,@function
gimp_color_display_constructed:         # @gimp_color_display_constructed
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_color_display_parent_class(%rip), %rdi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 72(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_display_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB17_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_color_display_changed@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_color_display_constructed, .Lfunc_end17-gimp_color_display_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_dispose,@function
gimp_color_display_dispose:             # @gimp_color_display_dispose
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	gimp_color_display_changed@GOTPCREL(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched@PLT
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref@PLT
	movq	-16(%rbp), %rdi
	movq	$0, (%rdi)
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB18_4
# BB#3:                                 # %if.then.7
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	gimp_color_display_changed@GOTPCREL(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched@PLT
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_object_unref@PLT
	movq	-16(%rbp), %rdi
	movq	$0, 8(%rdi)
.LBB18_4:                               # %if.end.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_display_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_color_display_dispose, .Lfunc_end18-gimp_color_display_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_set_property,@function
gimp_color_display_set_property:        # @gimp_color_display_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB19_1
	jmp	.LBB19_8
.LBB19_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB19_2
	jmp	.LBB19_9
.LBB19_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB19_3
	jmp	.LBB19_4
.LBB19_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 24(%rdi)
	jmp	.LBB19_7
.LBB19_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_display_set_color_config
	jmp	.LBB19_7
.LBB19_3:                               # %sw.bb.5
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_display_set_color_managed
	jmp	.LBB19_7
.LBB19_4:                               # %sw.default
	jmp	.LBB19_5
.LBB19_5:                               # %do.body
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
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.14(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	movl	$219, %edx
	leaq	.L.str.16(%rip), %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB19_7
.LBB19_7:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_color_display_set_property, .Lfunc_end19-gimp_color_display_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_get_property,@function
gimp_color_display_get_property:        # @gimp_color_display_get_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB20_1
	jmp	.LBB20_8
.LBB20_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB20_2
	jmp	.LBB20_9
.LBB20_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB20_3
	jmp	.LBB20_4
.LBB20_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB20_7
.LBB20_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	(%rax), %rax
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object@PLT
	jmp	.LBB20_7
.LBB20_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	8(%rax), %rax
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object@PLT
	jmp	.LBB20_7
.LBB20_4:                               # %sw.default
	jmp	.LBB20_5
.LBB20_5:                               # %do.body
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
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%r9, -136(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.14(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	movl	$249, %edx
	leaq	.L.str.16(%rip), %rcx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB20_7
.LBB20_7:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_color_display_get_property, .Lfunc_end20-gimp_color_display_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_set_color_config,@function
gimp_color_display_set_color_config:    # @gimp_color_display_set_color_config
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_set_color_config(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB21_7
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB21_7
# BB#6:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref@PLT
	leaq	.L.str.18(%rip), %rsi
	movq	gimp_color_display_changed@GOTPCREL(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB21_7:                               # %if.end.8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_color_display_set_color_config, .Lfunc_end21-gimp_color_display_set_color_config
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_set_color_managed,@function
gimp_color_display_set_color_managed:   # @gimp_color_display_set_color_managed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_set_color_managed(%rip), %rsi
	leaq	.L.str.19(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB22_7
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB22_7
# BB#6:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref@PLT
	leaq	.L.str.20(%rip), %rsi
	movq	gimp_color_display_changed@GOTPCREL(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB22_7:                               # %if.end.8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_color_display_set_color_managed, .Lfunc_end22-gimp_color_display_set_color_managed
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB23_2
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
.LBB23_2:                               # %entry
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
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end23:
	.size	g_warning, .Lfunc_end23-g_warning
	.cfi_endproc

	.type	gimp_color_display_get_type.g_define_type_id__volatile,@object # @gimp_color_display_get_type.g_define_type_id__volatile
	.local	gimp_color_display_get_type.g_define_type_id__volatile
	.comm	gimp_color_display_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorDisplay"
	.size	.L.str, 17

	.type	gimp_color_display_get_type.g_implement_interface_info,@object # @gimp_color_display_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_color_display_get_type.g_implement_interface_info:
	.zero	24
	.size	gimp_color_display_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_color_display_new,@object # @__func__.gimp_color_display_new
.L__func__.gimp_color_display_new:
	.asciz	"gimp_color_display_new"
	.size	.L__func__.gimp_color_display_new, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_type_is_a (display_type, GIMP_TYPE_COLOR_DISPLAY)"
	.size	.L.str.2, 52

	.type	.L__func__.gimp_color_display_clone,@object # @__func__.gimp_color_display_clone
.L__func__.gimp_color_display_clone:
	.asciz	"gimp_color_display_clone"
	.size	.L__func__.gimp_color_display_clone, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_COLOR_DISPLAY (display)"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"enabled"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"color-managed"
	.size	.L.str.5, 14

	.type	.L__func__.gimp_color_display_convert_surface,@object # @__func__.gimp_color_display_convert_surface
.L__func__.gimp_color_display_convert_surface:
	.asciz	"gimp_color_display_convert_surface"
	.size	.L__func__.gimp_color_display_convert_surface, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"surface != NULL"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"cairo_surface_get_type (surface) == CAIRO_SURFACE_TYPE_IMAGE"
	.size	.L.str.7, 61

	.type	.L__func__.gimp_color_display_convert,@object # @__func__.gimp_color_display_convert
.L__func__.gimp_color_display_convert:
	.asciz	"gimp_color_display_convert"
	.size	.L__func__.gimp_color_display_convert, 27

	.type	.L__func__.gimp_color_display_load_state,@object # @__func__.gimp_color_display_load_state
.L__func__.gimp_color_display_load_state:
	.asciz	"gimp_color_display_load_state"
	.size	.L__func__.gimp_color_display_load_state, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"state != NULL"
	.size	.L.str.8, 14

	.type	.L__func__.gimp_color_display_save_state,@object # @__func__.gimp_color_display_save_state
.L__func__.gimp_color_display_save_state:
	.asciz	"gimp_color_display_save_state"
	.size	.L__func__.gimp_color_display_save_state, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Display/Proof"
	.size	.L.str.9, 14

	.type	.L__func__.gimp_color_display_configure,@object # @__func__.gimp_color_display_configure
.L__func__.gimp_color_display_configure:
	.asciz	"gimp_color_display_configure"
	.size	.L__func__.gimp_color_display_configure, 29

	.type	.L__func__.gimp_color_display_configure_reset,@object # @__func__.gimp_color_display_configure_reset
.L__func__.gimp_color_display_configure_reset:
	.asciz	"gimp_color_display_configure_reset"
	.size	.L__func__.gimp_color_display_configure_reset, 35

	.type	.L__func__.gimp_color_display_changed,@object # @__func__.gimp_color_display_changed
.L__func__.gimp_color_display_changed:
	.asciz	"gimp_color_display_changed"
	.size	.L__func__.gimp_color_display_changed, 27

	.type	display_signals,@object # @display_signals
	.local	display_signals
	.comm	display_signals,4,4
	.type	.L__func__.gimp_color_display_set_enabled,@object # @__func__.gimp_color_display_set_enabled
.L__func__.gimp_color_display_set_enabled:
	.asciz	"gimp_color_display_set_enabled"
	.size	.L__func__.gimp_color_display_set_enabled, 31

	.type	.L__func__.gimp_color_display_get_enabled,@object # @__func__.gimp_color_display_get_enabled
.L__func__.gimp_color_display_get_enabled:
	.asciz	"gimp_color_display_get_enabled"
	.size	.L__func__.gimp_color_display_get_enabled, 31

	.type	.L__func__.gimp_color_display_get_config,@object # @__func__.gimp_color_display_get_config
.L__func__.gimp_color_display_get_config:
	.asciz	"gimp_color_display_get_config"
	.size	.L__func__.gimp_color_display_get_config, 30

	.type	.L__func__.gimp_color_display_get_managed,@object # @__func__.gimp_color_display_get_managed
.L__func__.gimp_color_display_get_managed:
	.asciz	"gimp_color_display_get_managed"
	.size	.L__func__.gimp_color_display_get_managed, 31

	.type	gimp_color_display_parent_class,@object # @gimp_color_display_parent_class
	.local	gimp_color_display_parent_class
	.comm	gimp_color_display_parent_class,8,8
	.type	GimpColorDisplay_private_offset,@object # @GimpColorDisplay_private_offset
	.local	GimpColorDisplay_private_offset
	.comm	GimpColorDisplay_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"color-config"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"changed"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Unnamed"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-display-filter"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.14, 54

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimpcolordisplay.c"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"property"
	.size	.L.str.16, 9

	.type	.L__func__.gimp_color_display_set_color_config,@object # @__func__.gimp_color_display_set_color_config
.L__func__.gimp_color_display_set_color_config:
	.asciz	"gimp_color_display_set_color_config"
	.size	.L__func__.gimp_color_display_set_color_config, 36

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"private->config == NULL"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"notify"
	.size	.L.str.18, 7

	.type	.L__func__.gimp_color_display_set_color_managed,@object # @__func__.gimp_color_display_set_color_managed
.L__func__.gimp_color_display_set_color_managed:
	.asciz	"gimp_color_display_set_color_managed"
	.size	.L__func__.gimp_color_display_set_color_managed, 37

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"private->managed == NULL"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"profile-changed"
	.size	.L.str.20, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
