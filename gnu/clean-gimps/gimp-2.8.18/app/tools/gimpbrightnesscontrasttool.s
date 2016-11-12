	.text
	.file	"gimpbrightnesscontrasttool.bc"
	.globl	gimp_brightness_contrast_tool_get_type
	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_get_type,@function
gimp_brightness_contrast_tool_get_type: # @gimp_brightness_contrast_tool_get_type
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
	movq	gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_map_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$392, %edx              # imm = 0x188
	movabsq	$gimp_brightness_contrast_tool_class_intern_init, %rdi
	movl	$456, %r8d              # imm = 0x1C8
	movabsq	$gimp_brightness_contrast_tool_init, %rcx
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
	movabsq	$gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brightness_contrast_tool_get_type, .Lfunc_end0-gimp_brightness_contrast_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_class_intern_init,@function
gimp_brightness_contrast_tool_class_intern_init: # @gimp_brightness_contrast_tool_class_intern_init
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
	movq	%rax, gimp_brightness_contrast_tool_parent_class
	cmpl	$0, GimpBrightnessContrastTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrightnessContrastTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brightness_contrast_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brightness_contrast_tool_class_intern_init, .Lfunc_end1-gimp_brightness_contrast_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_init,@function
gimp_brightness_contrast_tool_init:     # @gimp_brightness_contrast_tool_init
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
	callq	gimp_image_map_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_lut_new
	movabsq	$gimp_lut_process, %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, 400(%rdi)
	movq	-16(%rbp), %rax
	movq	%rsi, 328(%rax)
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 336(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brightness_contrast_tool_init, .Lfunc_end2-gimp_brightness_contrast_tool_init
	.cfi_endproc

	.globl	gimp_brightness_contrast_tool_register
	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_register,@function
gimp_brightness_contrast_tool_register: # @gimp_brightness_contrast_tool_register
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_tool_get_type
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_map_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	movq	-40(%rbp), %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%r15, 48(%rsp)
	movq	-48(%rbp), %r15         # 8-byte Reload
	callq	*%r15
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brightness_contrast_tool_register, .Lfunc_end3-gimp_brightness_contrast_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_class_init,@function
gimp_brightness_contrast_tool_class_init: # @gimp_brightness_contrast_tool_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_brightness_contrast_tool_motion, %rsi
	movabsq	$gimp_brightness_contrast_tool_button_release, %rcx
	movabsq	$gimp_brightness_contrast_tool_button_press, %rdx
	movabsq	$gimp_brightness_contrast_tool_initialize, %r8
	movabsq	$gimp_brightness_contrast_tool_finalize, %r9
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 176(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 200(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 208(%rax)
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.7, %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-32(%rbp), %rax
	movq	%rcx, 312(%rax)
	callq	gettext
	movabsq	$.L.str.9, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, 320(%rcx)
	callq	gettext
	movabsq	$gimp_brightness_contrast_tool_dialog, %rcx
	movabsq	$gimp_brightness_contrast_tool_map, %rdx
	movabsq	$gimp_brightness_contrast_tool_get_operation, %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, 328(%rdi)
	movq	-32(%rbp), %rax
	movq	%rsi, 344(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 352(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 360(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brightness_contrast_tool_class_init, .Lfunc_end4-gimp_brightness_contrast_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_finalize,@function
gimp_brightness_contrast_tool_finalize: # @gimp_brightness_contrast_tool_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 400(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	400(%rax), %rdi
	callq	gimp_lut_free
	movq	-16(%rbp), %rax
	movq	$0, 400(%rax)
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_brightness_contrast_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brightness_contrast_tool_finalize, .Lfunc_end5-gimp_brightness_contrast_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_initialize,@function
gimp_brightness_contrast_tool_initialize: # @gimp_brightness_contrast_tool_initialize
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.end.9
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
	movq	gimp_brightness_contrast_tool_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB6_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brightness_contrast_tool_initialize, .Lfunc_end6-gimp_brightness_contrast_tool_initialize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4638637247447433216     # double 127
	.text
	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_button_press,@function
gimp_brightness_contrast_tool_button_press: # @gimp_brightness_contrast_tool_button_press
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movq	392(%rax), %rax
	movaps	%xmm0, %xmm2
	mulsd	48(%rax), %xmm2
	subsd	%xmm2, %xmm1
	movq	-48(%rbp), %rax
	movsd	%xmm1, 408(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movq	392(%rax), %rax
	movaps	%xmm0, %xmm2
	mulsd	40(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movq	-48(%rbp), %rax
	movsd	%xmm1, 416(%rax)
	movq	-48(%rbp), %rax
	movq	392(%rax), %rax
	movaps	%xmm0, %xmm1
	mulsd	48(%rax), %xmm1
	movq	-48(%rbp), %rax
	movsd	%xmm1, 424(%rax)
	movq	-48(%rbp), %rax
	movq	392(%rax), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rax
	movd	%rax, %xmm1
	mulsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	%xmm1, 432(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brightness_contrast_tool_button_press, .Lfunc_end7-gimp_brightness_contrast_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_button_release,@function
gimp_brightness_contrast_tool_button_release: # @gimp_brightness_contrast_tool_button_release
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
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movsd	424(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_3
	jp	.LBB8_3
# BB#1:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movsd	432(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_3
	jp	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_6
.LBB8_3:                                # %if.end
	cmpl	$1, -28(%rbp)
	jne	.LBB8_5
# BB#4:                                 # %if.then.6
	movq	-48(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
.LBB8_5:                                # %if.end.9
	movq	-56(%rbp), %rdi
	callq	gimp_image_map_tool_preview
.LBB8_6:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brightness_contrast_tool_button_release, .Lfunc_end8-gimp_brightness_contrast_tool_button_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4638637247447433216     # double 127
.LCPI9_1:
	.quad	-4584734789407342592    # double -127
	.text
	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_motion,@function
gimp_brightness_contrast_tool_motion:   # @gimp_brightness_contrast_tool_motion
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	408(%rax), %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, 424(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	416(%rax), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rax
	movd	%rax, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, 432(%rax)
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movq	-40(%rbp), %rsi
	movsd	432(%rsi), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jbe	.LBB9_2
# BB#1:                                 # %cond.true
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB9_6
.LBB9_2:                                # %cond.false
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	ucomisd	432(%rax), %xmm0
	jbe	.LBB9_4
# BB#3:                                 # %cond.true.9
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false.10
	movq	-40(%rbp), %rax
	movsd	432(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB9_5:                                # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB9_6:                                # %cond.end.12
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	424(%rax), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jbe	.LBB9_8
# BB#7:                                 # %cond.true.16
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB9_12
.LBB9_8:                                # %cond.false.17
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	ucomisd	424(%rax), %xmm0
	jbe	.LBB9_10
# BB#9:                                 # %cond.true.20
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB9_11
.LBB9_10:                               # %cond.false.21
	movq	-40(%rbp), %rax
	movsd	424(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB9_11:                               # %cond.end.23
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB9_12:                               # %cond.end.25
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brightness_contrast_tool_motion, .Lfunc_end9-gimp_brightness_contrast_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_get_operation,@function
gimp_brightness_contrast_tool_get_operation: # @gimp_brightness_contrast_tool_get_operation
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	callq	gegl_node_get_type
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	callq	gimp_brightness_contrast_config_get_type
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 392(%rcx)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movabsq	$brightness_contrast_config_notify, %rcx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.16, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	gegl_node_set
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brightness_contrast_tool_get_operation, .Lfunc_end10-gimp_brightness_contrast_tool_get_operation
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_map,@function
gimp_brightness_contrast_tool_map:      # @gimp_brightness_contrast_tool_map
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	400(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	gimp_drawable_bytes
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, %esi
	callq	brightness_contrast_lut_setup
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_brightness_contrast_tool_map, .Lfunc_end11-gimp_brightness_contrast_tool_map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	-4584734789407342592    # double -127
.LCPI12_1:
	.quad	4638637247447433216     # double 127
.LCPI12_2:
	.quad	4607182418800017408     # double 1
.LCPI12_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_brightness_contrast_tool_dialog,@function
gimp_brightness_contrast_tool_dialog:   # @gimp_brightness_contrast_tool_dialog
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_get_vbox
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI12_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm2, %xmm2
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-24(%rbp), %rdi
	movaps	%xmm0, %xmm5
	mulsd	40(%rdi), %xmm5
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-136(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm2, -144(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-144(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-144(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movabsq	$brightness_contrast_brightness_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 440(%rdi)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$200, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI12_3, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm2, %xmm2
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-24(%rbp), %rdi
	movaps	%xmm0, %xmm5
	mulsd	48(%rdi), %xmm5
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-200(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm2, -208(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-208(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-208(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movabsq	$brightness_contrast_contrast_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 448(%rdi)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.21, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.20, %rdi
	movq	%rax, %rsi
	callq	gimp_stock_button_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rsi
	movabsq	$brightness_contrast_to_levels_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	%rax, -248(%rbp)        # 8-byte Spill
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_brightness_contrast_tool_dialog, .Lfunc_end12-gimp_brightness_contrast_tool_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4638637247447433216     # double 127
	.text
	.align	16, 0x90
	.type	brightness_contrast_config_notify,@function
brightness_contrast_config_notify:      # @brightness_contrast_config_notify
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 440(%rax)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_8
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.11, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then.4
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	440(%rax), %rdi
	movq	-32(%rbp), %rax
	mulsd	40(%rax), %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB13_7
.LBB13_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.12, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_6
# BB#5:                                 # %if.then.9
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	448(%rax), %rdi
	movq	-32(%rbp), %rax
	mulsd	48(%rax), %xmm0
	callq	gtk_adjustment_set_value
.LBB13_6:                               # %if.end.11
	jmp	.LBB13_7
.LBB13_7:                               # %if.end.12
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
.LBB13_8:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	brightness_contrast_config_notify, .Lfunc_end13-brightness_contrast_config_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4638637247447433216     # double 127
	.text
	.align	16, 0x90
	.type	brightness_contrast_brightness_changed,@function
brightness_contrast_brightness_changed: # @brightness_contrast_brightness_changed
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rsi
	movsd	40(%rsi), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB14_1
	jp	.LBB14_1
	jmp	.LBB14_2
.LBB14_1:                               # %if.then
	movabsq	$.L.str.11, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB14_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	brightness_contrast_brightness_changed, .Lfunc_end14-brightness_contrast_brightness_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4638637247447433216     # double 127
	.text
	.align	16, 0x90
	.type	brightness_contrast_contrast_changed,@function
brightness_contrast_contrast_changed:   # @brightness_contrast_contrast_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rsi
	movsd	48(%rsi), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB15_1
	jp	.LBB15_1
	jmp	.LBB15_2
.LBB15_1:                               # %if.then
	movabsq	$.L.str.12, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB15_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	brightness_contrast_contrast_changed, .Lfunc_end15-brightness_contrast_contrast_changed
	.cfi_endproc

	.align	16, 0x90
	.type	brightness_contrast_to_levels_callback,@function
brightness_contrast_to_levels_callback: # @brightness_contrast_to_levels_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rdi
	callq	gimp_brightness_contrast_config_to_levels_config
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_map_tool_edit_as
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	brightness_contrast_to_levels_callback, .Lfunc_end16-brightness_contrast_to_levels_callback
	.cfi_endproc

	.type	gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile,@object # @gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile
	.local	gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile
	.comm	gimp_brightness_contrast_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrightnessContrastTool"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-brightness-contrast-tool"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Brightness-Contrast"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Brightness/Contrast Tool: Adjust brightness and contrast"
	.size	.L.str.3, 57

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"B_rightness-Contrast..."
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-brightness-contrast"
	.size	.L.str.5, 30

	.type	gimp_brightness_contrast_tool_parent_class,@object # @gimp_brightness_contrast_tool_parent_class
	.local	gimp_brightness_contrast_tool_parent_class
	.comm	gimp_brightness_contrast_tool_parent_class,8,8
	.type	GimpBrightnessContrastTool_private_offset,@object # @GimpBrightnessContrastTool_private_offset
	.local	GimpBrightnessContrastTool_private_offset
	.comm	GimpBrightnessContrastTool_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Adjust Brightness and Contrast"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"brightness-contrast"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Import Brightness-Contrast settings"
	.size	.L.str.8, 36

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Export Brightness-Contrast settings"
	.size	.L.str.9, 36

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Brightness-Contrast does not operate on indexed layers."
	.size	.L.str.10, 56

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"brightness"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"contrast"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"operation"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp:brightness-contrast"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"notify"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"config"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Brightness:"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"value-changed"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Con_trast:"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-tool-levels"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Edit these Settings as Levels"
	.size	.L.str.21, 30

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"clicked"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-levels-tool"
	.size	.L.str.23, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
