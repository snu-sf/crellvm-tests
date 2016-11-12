	.text
	.file	"gimpscaletool.bc"
	.globl	gimp_scale_tool_get_type
	.align	16, 0x90
	.type	gimp_scale_tool_get_type,@function
gimp_scale_tool_get_type:               # @gimp_scale_tool_get_type
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
	movq	gimp_scale_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_scale_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_transform_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$344, %edx              # imm = 0x158
	movabsq	$gimp_scale_tool_class_intern_init, %rdi
	movl	$800, %r8d              # imm = 0x320
	movabsq	$gimp_scale_tool_init, %rcx
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
	movabsq	$gimp_scale_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_scale_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_scale_tool_get_type, .Lfunc_end0-gimp_scale_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_tool_class_intern_init,@function
gimp_scale_tool_class_intern_init:      # @gimp_scale_tool_class_intern_init
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
	movq	%rax, gimp_scale_tool_parent_class
	cmpl	$0, GimpScaleTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpScaleTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_scale_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_scale_tool_class_intern_init, .Lfunc_end1-gimp_scale_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_tool_init,@function
gimp_scale_tool_init:                   # @gimp_scale_tool_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$14, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, 776(%rdi)
	movq	-24(%rbp), %rax
	movl	$1, 668(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 672(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 676(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 680(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_scale_tool_init, .Lfunc_end2-gimp_scale_tool_init
	.cfi_endproc

	.globl	gimp_scale_tool_register
	.align	16, 0x90
	.type	gimp_scale_tool_register,@function
gimp_scale_tool_register:               # @gimp_scale_tool_register
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
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_scale_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_transform_options_gui, %rdx
	movl	$128, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movabsq	$.L.str.6, %r11
	movq	-48(%rbp), %rbx
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	*%r11
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_scale_tool_register, .Lfunc_end3-gimp_scale_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_tool_class_init,@function
gimp_scale_tool_class_init:             # @gimp_scale_tool_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_scale_tool_get_undo_desc, %rsi
	movabsq	$gimp_scale_tool_recalc_matrix, %rdi
	movabsq	$gimp_scale_tool_motion, %rcx
	movabsq	$gimp_scale_tool_prepare, %rdx
	movabsq	$gimp_scale_tool_dialog_update, %r8
	movabsq	$gimp_scale_tool_dialog, %r9
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 288(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 296(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 312(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 320(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 328(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_scale_tool_class_init, .Lfunc_end4-gimp_scale_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_tool_dialog,@function
gimp_scale_tool_dialog:                 # @gimp_scale_tool_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_scale_tool_dialog, .Lfunc_end5-gimp_scale_tool_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_scale_tool_dialog_update,@function
gimp_scale_tool_dialog_update:          # @gimp_scale_tool_dialog_update
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	488(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	472(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movsd	496(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	480(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_scale_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	792(%rax), %rax
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movq	-16(%rbp), %r10
	movl	392(%r10), %r11d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%r11d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_set
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_scale_tool_dialog_update, .Lfunc_end6-gimp_scale_tool_dialog_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_tool_prepare,@function
gimp_scale_tool_prepare:                # @gimp_scale_tool_prepare
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_scale_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	cvtsi2sdl	280(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 472(%rax)
	movq	-48(%rbp), %rax
	cvtsi2sdl	284(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 480(%rax)
	movq	-48(%rbp), %rax
	cvtsi2sdl	288(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 488(%rax)
	movq	-48(%rbp), %rax
	cvtsi2sdl	292(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 496(%rax)
	movq	-72(%rbp), %rdi
	callq	gimp_display_get_image
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_get_resolution
	movq	-56(%rbp), %rax
	cmpq	$0, 792(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_scale_tool_size_notify, %rdx
	movq	-56(%rbp), %rdi
	movq	792(%rdi), %rdi
	movq	-48(%rbp), %r9
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-56(%rbp), %rdi
	movq	792(%rdi), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gtk_widget_destroy
.LBB7_2:                                # %if.end
	callq	gimp_size_box_get_type
	movq	-48(%rbp), %rcx
	movl	288(%rcx), %edx
	movq	-48(%rbp), %rcx
	subl	280(%rcx), %edx
	movq	-48(%rbp), %rcx
	movl	292(%rcx), %esi
	movq	-48(%rbp), %rcx
	subl	284(%rcx), %esi
	movq	-64(%rbp), %rcx
	movl	392(%rcx), %edi
	movq	-72(%rbp), %rcx
	movl	%edi, -144(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%esi, -160(%rbp)        # 4-byte Spill
	callq	gimp_display_get_shell
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %r8
	movabsq	$.L.str.12, %r10
	xorl	%edx, %edx
	movl	%edx, %r11d
	movl	184(%rax), %edx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	-156(%rbp), %ebx        # 4-byte Reload
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%ebx, %edx
	movl	-160(%rbp), %r14d       # 4-byte Reload
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movl	%r14d, %r8d
	movl	-144(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movq	-168(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	-172(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 16(%rsp)
	movq	-184(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$2, %al
	movq	%r11, -192(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	-56(%rbp), %rcx
	movq	%rax, 792(%rcx)
	movq	-56(%rbp), %rax
	movq	792(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rcx
	movq	792(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	792(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_scale_tool_size_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	792(%rdi), %rdi
	movq	-48(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -232(%rbp)        # 8-byte Spill
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_scale_tool_prepare, .Lfunc_end7-gimp_scale_tool_prepare
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_scale_tool_motion,@function
gimp_scale_tool_motion:                 # @gimp_scale_tool_motion
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	264(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rax
	movsd	256(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	272(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rax
	movl	664(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$8, %ecx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	ja	.LBB8_10
# BB#32:                                # %entry
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB8_2:                                # %sw.bb.6
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$16, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$24, %rax
	movq	%rax, -48(%rbp)
	movl	$1, -56(%rbp)
	movl	$1, -52(%rbp)
	jmp	.LBB8_11
.LBB8_3:                                # %sw.bb.13
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB8_4:                                # %sw.bb.14
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$24, %rax
	movq	%rax, -48(%rbp)
	movl	$-1, -52(%rbp)
	movl	$1, -56(%rbp)
	jmp	.LBB8_11
.LBB8_5:                                # %sw.bb.23
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB8_6:                                # %sw.bb.24
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$16, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$-1, -56(%rbp)
	jmp	.LBB8_11
.LBB8_7:                                # %sw.bb.33
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB8_8:                                # %sw.bb.34
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	$472, %rax              # imm = 0x1D8
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movl	$-1, -56(%rbp)
	movl	$-1, -52(%rbp)
	jmp	.LBB8_11
.LBB8_9:                                # %sw.bb.43
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	472(%rax), %xmm0
	movsd	%xmm0, 472(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	480(%rax), %xmm0
	movsd	%xmm0, 480(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	488(%rax), %xmm0
	movsd	%xmm0, 488(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	496(%rax), %xmm0
	movsd	%xmm0, 496(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	504(%rax), %xmm0
	movsd	%xmm0, 504(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	512(%rax), %xmm0
	movsd	%xmm0, 512(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	520(%rax), %xmm0
	movsd	%xmm0, 520(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	528(%rax), %xmm0
	movsd	%xmm0, 528(%rax)
	jmp	.LBB8_31
.LBB8_10:                               # %sw.default
	jmp	.LBB8_31
.LBB8_11:                               # %sw.epilog
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 392(%rax)
	je	.LBB8_17
# BB#12:                                # %if.then
	movq	-8(%rbp), %rax
	movsd	480(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	496(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-8(%rbp), %rax
	movl	664(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	ja	.LBB8_15
# BB#33:                                # %if.then
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_13:                               # %sw.bb.75
	movq	-8(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	312(%rax), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 472(%rax)
	jmp	.LBB8_16
.LBB8_14:                               # %sw.bb.81
	movq	-8(%rbp), %rax
	movsd	472(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	312(%rax), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 488(%rax)
	jmp	.LBB8_16
.LBB8_15:                               # %sw.default.89
	jmp	.LBB8_16
.LBB8_16:                               # %sw.epilog.90
	jmp	.LBB8_17
.LBB8_17:                               # %if.end
	cmpl	$0, -52(%rbp)
	jle	.LBB8_21
# BB#18:                                # %if.then.91
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jb	.LBB8_20
# BB#19:                                # %if.then.93
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, (%rax)
.LBB8_20:                               # %if.end.95
	jmp	.LBB8_24
.LBB8_21:                               # %if.else
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_23
# BB#22:                                # %if.then.97
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB8_23:                               # %if.end.99
	jmp	.LBB8_24
.LBB8_24:                               # %if.end.100
	cmpl	$0, -56(%rbp)
	jle	.LBB8_28
# BB#25:                                # %if.then.102
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jb	.LBB8_27
# BB#26:                                # %if.then.104
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, (%rax)
.LBB8_27:                               # %if.end.106
	jmp	.LBB8_31
.LBB8_28:                               # %if.else.107
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_30
# BB#29:                                # %if.then.109
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB8_30:                               # %if.end.111
	jmp	.LBB8_31
.LBB8_31:                               # %if.end.112
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_scale_tool_motion, .Lfunc_end8-gimp_scale_tool_motion
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_2
	.quad	.LBB8_4
	.quad	.LBB8_6
	.quad	.LBB8_8
	.quad	.LBB8_1
	.quad	.LBB8_7
	.quad	.LBB8_3
	.quad	.LBB8_5
	.quad	.LBB8_9
.LJTI8_1:
	.quad	.LBB8_13
	.quad	.LBB8_14
	.quad	.LBB8_13
	.quad	.LBB8_14

	.text
	.align	16, 0x90
	.type	gimp_scale_tool_recalc_matrix,@function
gimp_scale_tool_recalc_matrix:          # @gimp_scale_tool_recalc_matrix
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$400, %rdi              # imm = 0x190
	callq	gimp_matrix3_identity
	movq	-8(%rbp), %rdi
	addq	$400, %rdi              # imm = 0x190
	movq	-8(%rbp), %rax
	movl	280(%rax), %esi
	movq	-8(%rbp), %rax
	movl	284(%rax), %edx
	movq	-8(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	280(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	292(%rax), %r8d
	movq	-8(%rbp), %rax
	subl	284(%rax), %r8d
	movq	-8(%rbp), %rax
	movsd	472(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	480(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	488(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	472(%rax), %xmm2
	movq	-8(%rbp), %rax
	movsd	496(%rax), %xmm3        # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	480(%rax), %xmm3
	callq	gimp_transform_matrix_scale
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_scale_tool_recalc_matrix, .Lfunc_end9-gimp_scale_tool_recalc_matrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_scale_tool_get_undo_desc,@function
gimp_scale_tool_get_undo_desc:          # @gimp_scale_tool_get_undo_desc
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.15, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	488(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	subsd	472(%rdi), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movsd	496(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	subsd	480(%rdi), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_dpgettext
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_scale_tool_get_undo_desc, .Lfunc_end10-gimp_scale_tool_get_undo_desc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_scale_tool_size_notify,@function
gimp_scale_tool_size_notify:            # @gimp_scale_tool_size_notify
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.7, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.8, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_6
.LBB11_2:                               # %if.then
	movabsq	$.L.str.7, %rsi
	leaq	-36(%rbp), %rdx
	movabsq	$.L.str.8, %rcx
	leaq	-40(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	488(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rcx
	subsd	472(%rcx), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r10d
	movl	%r10d, -44(%rbp)
	movq	-24(%rbp), %rcx
	movsd	496(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rcx
	subsd	480(%rcx), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r10d
	movl	%r10d, -48(%rbp)
	movl	-36(%rbp), %r10d
	cmpl	-44(%rbp), %r10d
	jne	.LBB11_4
# BB#3:                                 # %lor.lhs.false.19
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	.LBB11_5
.LBB11_4:                               # %if.then.22
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-24(%rbp), %rax
	movsd	472(%rax), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 488(%rax)
	movq	-24(%rbp), %rax
	movsd	480(%rax), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 496(%rax)
	movq	-24(%rbp), %rdi
	callq	gimp_transform_tool_recalc_matrix
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB11_5:                               # %if.end
	jmp	.LBB11_11
.LBB11_6:                               # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_10
# BB#7:                                 # %if.then.42
	movabsq	$.L.str.9, %rsi
	leaq	-52(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movl	-52(%rbp), %r8d
	movq	-32(%rbp), %rcx
	cmpl	392(%rcx), %r8d
	je	.LBB11_9
# BB#8:                                 # %if.then.46
	movabsq	$.L.str.7, %rsi
	leaq	-56(%rbp), %rdx
	movabsq	$.L.str.8, %rcx
	leaq	-60(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.14, %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	-56(%rbp), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 312(%rdx)
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %r10d
	movq	%rdx, %rdi
	movl	%r10d, %edx
	movb	$0, %al
	callq	g_object_set
.LBB11_9:                               # %if.end.51
	jmp	.LBB11_10
.LBB11_10:                              # %if.end.52
	jmp	.LBB11_11
.LBB11_11:                              # %if.end.53
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_scale_tool_size_notify, .Lfunc_end11-gimp_scale_tool_size_notify
	.cfi_endproc

	.type	gimp_scale_tool_get_type.g_define_type_id__volatile,@object # @gimp_scale_tool_get_type.g_define_type_id__volatile
	.local	gimp_scale_tool_get_type.g_define_type_id__volatile
	.comm	gimp_scale_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpScaleTool"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-scale-tool"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Scale"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Scale Tool: Scale the layer, selection or path"
	.size	.L.str.3, 47

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Scale"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<shift>T"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-scale"
	.size	.L.str.6, 16

	.type	gimp_scale_tool_parent_class,@object # @gimp_scale_tool_parent_class
	.local	gimp_scale_tool_parent_class
	.comm	gimp_scale_tool_parent_class,8,8
	.type	GimpScaleTool_private_offset,@object # @GimpScaleTool_private_offset
	.local	GimpScaleTool_private_offset
	.comm	GimpScaleTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"width"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"height"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"keep-aspect"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"unit"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"xresolution"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"yresolution"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"notify"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"constrain"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"undo-type\004Scale to %d x %d"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Scaling"
	.size	.L.str.16, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
