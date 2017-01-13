	.text
	.file	"gimpcanvasprogress.bc"
	.globl	gimp_canvas_progress_get_type
	.align	16, 0x90
	.type	gimp_canvas_progress_get_type,@function
gimp_canvas_progress_get_type:          # @gimp_canvas_progress_get_type
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
	movq	gimp_canvas_progress_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_progress_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_canvas_item_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$208, %edx
	movabsq	$gimp_canvas_progress_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_progress_init, %rcx
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
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_canvas_progress_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_canvas_progress_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_progress_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_progress_get_type, .Lfunc_end0-gimp_canvas_progress_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_class_intern_init,@function
gimp_canvas_progress_class_intern_init: # @gimp_canvas_progress_class_intern_init
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
	movq	%rax, gimp_canvas_progress_parent_class
	cmpl	$0, GimpCanvasProgress_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasProgress_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_progress_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_progress_class_intern_init, .Lfunc_end1-gimp_canvas_progress_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_init,@function
gimp_canvas_progress_init:              # @gimp_canvas_progress_init
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
	.size	gimp_canvas_progress_init, .Lfunc_end2-gimp_canvas_progress_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_iface_init,@function
gimp_canvas_progress_iface_init:        # @gimp_canvas_progress_iface_init
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
	movabsq	$gimp_canvas_progress_message, %rax
	movabsq	$gimp_canvas_progress_pulse, %rcx
	movabsq	$gimp_canvas_progress_get_value, %rdx
	movabsq	$gimp_canvas_progress_set_value, %rsi
	movabsq	$gimp_canvas_progress_set_text, %r8
	movabsq	$gimp_canvas_progress_is_active, %r9
	movabsq	$gimp_canvas_progress_end, %r10
	movabsq	$gimp_canvas_progress_start, %r11
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r11, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r10, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_progress_iface_init, .Lfunc_end3-gimp_canvas_progress_iface_init
	.cfi_endproc

	.globl	gimp_canvas_progress_new
	.align	16, 0x90
	.type	gimp_canvas_progress_new,@function
gimp_canvas_progress_new:               # @gimp_canvas_progress_new
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
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_progress_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_canvas_progress_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %rdx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-16(%rbp), %r10
	movl	-20(%rbp), %edi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movl	-68(%rbp), %r11d        # 4-byte Reload
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movl	%r11d, %r8d
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$2, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_progress_new, .Lfunc_end4-gimp_canvas_progress_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4535124824762089472    # double -262144
.LCPI5_1:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	gimp_canvas_progress_class_init,@function
gimp_canvas_progress_class_init:        # @gimp_canvas_progress_class_init
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_canvas_progress_get_extents, %rsi
	movabsq	$gimp_canvas_progress_draw, %rdi
	movabsq	$gimp_canvas_progress_get_property, %rcx
	movabsq	$gimp_canvas_progress_set_property, %rdx
	movabsq	$gimp_canvas_progress_finalize, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 168(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 176(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_handle_anchor_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$40, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_progress_class_init, .Lfunc_end5-gimp_canvas_progress_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_finalize,@function
gimp_canvas_progress_finalize:          # @gimp_canvas_progress_finalize
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
	callq	gimp_canvas_progress_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_canvas_progress_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_progress_finalize, .Lfunc_end6-gimp_canvas_progress_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_set_property,@function
gimp_canvas_progress_set_property:      # @gimp_canvas_progress_set_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_progress_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_8
.LBB7_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_9
.LBB7_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_4
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB7_7
.LBB7_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	jmp	.LBB7_7
.LBB7_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	jmp	.LBB7_7
.LBB7_4:                                # %sw.default
	jmp	.LBB7_5
.LBB7_5:                                # %do.body
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
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$204, %edx
	movabsq	$.L.str.9, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB7_7
.LBB7_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_progress_set_property, .Lfunc_end7-gimp_canvas_progress_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_get_property,@function
gimp_canvas_progress_get_property:      # @gimp_canvas_progress_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_progress_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
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
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB8_7
.LBB8_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB8_7
.LBB8_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$230, %edx
	movabsq	$.L.str.9, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB8_7
.LBB8_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_progress_get_property, .Lfunc_end8-gimp_canvas_progress_get_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4626322717216342016     # double 20
.LCPI9_1:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI9_2:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI9_3:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI9_4:
	.quad	4617315517961601024     # double 5
.LCPI9_5:
	.quad	4607182418800017408     # double 1
.LCPI9_6:
	.quad	4616991696741409234     # double 4.7123889803846897
.LCPI9_7:
	.quad	4627730092099895296     # double 25
.LCPI9_8:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI9_9:
	.quad	4630826316843712512     # double 40
.LCPI9_10:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_canvas_progress_draw,@function
gimp_canvas_progress_draw:              # @gimp_canvas_progress_draw
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_progress_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-52(%rbp), %r8
	leaq	-56(%rbp), %r9
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_canvas_progress_transform
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	cairo_move_to
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movsd	.LCPI9_9, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_4, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm4
	addsd	%xmm4, %xmm3
	subsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	callq	cairo_line_to
	movsd	.LCPI9_9, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_10, %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rdi
	addsd	-40(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm4
	addsd	%xmm4, %xmm3
	subsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	callq	cairo_line_to
	movsd	.LCPI9_7, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI9_8, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_4, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movaps	%xmm1, %xmm5
	addsd	-40(%rbp), %xmm5
	addsd	%xmm0, %xmm5
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm7
	addsd	%xmm7, %xmm6
	subsd	%xmm1, %xmm6
	subsd	%xmm0, %xmm6
	movaps	%xmm5, %xmm0
	movaps	%xmm6, %xmm1
	callq	cairo_arc
	movq	-24(%rbp), %rdi
	callq	cairo_close_path
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_fill
	movsd	.LCPI9_4, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-40(%rbp), %xmm1
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_5, %xmm3         # xmm3 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_canvas_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_canvas_get_layout
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pango_cairo_show_layout
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_set_tool_bg_style
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_6, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI9_4, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movaps	%xmm1, %xmm2
	addsd	-40(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm6
	addsd	%xmm6, %xmm5
	subsd	%xmm1, %xmm5
	subsd	%xmm0, %xmm5
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movaps	%xmm5, %xmm1
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_arc
	movq	-24(%rbp), %rdi
	callq	cairo_fill
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_5, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	cairo_set_source_rgba
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_4, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movaps	%xmm1, %xmm2
	addsd	-40(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm4
	addsd	%xmm4, %xmm3
	subsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	callq	cairo_move_to
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_4, %xmm4         # xmm4 = mem[0],zero
	movq	-24(%rbp), %rdi
	movaps	%xmm4, %xmm5
	addsd	-40(%rbp), %xmm5
	addsd	%xmm0, %xmm5
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm7
	addsd	%xmm7, %xmm6
	subsd	%xmm4, %xmm6
	subsd	%xmm0, %xmm6
	movq	-32(%rbp), %rax
	mulsd	32(%rax), %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movaps	%xmm6, %xmm1
	movsd	-136(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, -144(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm2
	movsd	-144(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	cairo_arc
	movq	-24(%rbp), %rdi
	callq	cairo_fill
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_progress_draw, .Lfunc_end9-gimp_canvas_progress_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_get_extents,@function
gimp_canvas_progress_get_extents:       # @gimp_canvas_progress_get_extents
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
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-52(%rbp), %r8
	leaq	-56(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_canvas_progress_transform
	leaq	-32(%rbp), %rdi
	cvttsd2si	-40(%rbp), %r10d
	subl	$1, %r10d
	movl	%r10d, -32(%rbp)
	cvttsd2si	-48(%rbp), %r10d
	subl	$1, %r10d
	movl	%r10d, -28(%rbp)
	movl	-52(%rbp), %r10d
	addl	$2, %r10d
	movl	%r10d, -24(%rbp)
	movl	-56(%rbp), %r10d
	addl	$2, %r10d
	movl	%r10d, -20(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	cairo_region_create_rectangle
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_canvas_progress_get_extents, .Lfunc_end10-gimp_canvas_progress_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_transform,@function
gimp_canvas_progress_transform:         # @gimp_canvas_progress_transform
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_progress_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_canvas_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	-56(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_canvas_get_layout
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	pango_layout_get_pixel_size
	movq	-40(%rbp), %rax
	movl	(%rax), %r10d
	addl	$10, %r10d
	movl	%r10d, (%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %r10d
	addl	$55, %r10d
	movl	%r10d, (%rax)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_display_shell_transform_xy_f
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	gimp_canvas_item_shift_to_north_west
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-64(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_canvas_progress_transform, .Lfunc_end12-gimp_canvas_progress_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_start,@function
gimp_canvas_progress_start:             # @gimp_canvas_progress_start
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_canvas_progress_set_text
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_canvas_progress_start, .Lfunc_end13-gimp_canvas_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_end,@function
gimp_canvas_progress_end:               # @gimp_canvas_progress_end
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_canvas_progress_end, .Lfunc_end14-gimp_canvas_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_is_active,@function
gimp_canvas_progress_is_active:         # @gimp_canvas_progress_is_active
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_canvas_progress_is_active, .Lfunc_end15-gimp_canvas_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_set_text,@function
gimp_canvas_progress_set_text:          # @gimp_canvas_progress_set_text
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_progress_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_canvas_item_get_extents
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_canvas_item_get_extents
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	cairo_region_union
	movq	-32(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	cairo_region_destroy
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	_gimp_canvas_item_update
	movq	-40(%rbp), %rdi
	callq	cairo_region_destroy
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_canvas_progress_set_text, .Lfunc_end16-gimp_canvas_progress_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_set_value,@function
gimp_canvas_progress_set_value:         # @gimp_canvas_progress_set_value
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_progress_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	32(%rax), %xmm0
	jne	.LBB17_1
	jp	.LBB17_1
	jmp	.LBB17_2
.LBB17_1:                               # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_canvas_item_get_extents
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	_gimp_canvas_item_update
	movq	-32(%rbp), %rdi
	callq	cairo_region_destroy
.LBB17_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_canvas_progress_set_value, .Lfunc_end17-gimp_canvas_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_get_value,@function
gimp_canvas_progress_get_value:         # @gimp_canvas_progress_get_value
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_canvas_progress_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_canvas_progress_get_value, .Lfunc_end18-gimp_canvas_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_pulse,@function
gimp_canvas_progress_pulse:             # @gimp_canvas_progress_pulse
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_canvas_progress_pulse, .Lfunc_end19-gimp_canvas_progress_pulse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_progress_message,@function
gimp_canvas_progress_message:           # @gimp_canvas_progress_message
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_canvas_progress_message, .Lfunc_end20-gimp_canvas_progress_message
	.cfi_endproc

	.type	gimp_canvas_progress_get_type.g_define_type_id__volatile,@object # @gimp_canvas_progress_get_type.g_define_type_id__volatile
	.local	gimp_canvas_progress_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_progress_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasProgress"
	.size	.L.str, 19

	.type	gimp_canvas_progress_get_type.g_implement_interface_info,@object # @gimp_canvas_progress_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_canvas_progress_get_type.g_implement_interface_info:
	.quad	gimp_canvas_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_canvas_progress_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_progress_new,@object # @__func__.gimp_canvas_progress_new
.L__func__.gimp_canvas_progress_new:
	.asciz	"gimp_canvas_progress_new"
	.size	.L__func__.gimp_canvas_progress_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"shell"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"anchor"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"x"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"y"
	.size	.L.str.6, 2

	.type	gimp_canvas_progress_parent_class,@object # @gimp_canvas_progress_parent_class
	.local	gimp_canvas_progress_parent_class
	.comm	gimp_canvas_progress_parent_class,8,8
	.type	GimpCanvasProgress_private_offset,@object # @GimpCanvasProgress_private_offset
	.local	GimpCanvasProgress_private_offset
	.comm	GimpCanvasProgress_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpcanvasprogress.c"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s"
	.size	.L.str.10, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
