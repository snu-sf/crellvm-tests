	.text
	.file	"gimpscalebutton.bc"
	.globl	gimp_scale_button_get_type
	.align	16, 0x90
	.type	gimp_scale_button_get_type,@function
gimp_scale_button_get_type:             # @gimp_scale_button_get_type
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
	movq	gimp_scale_button_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_scale_button_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_scale_button_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$944, %edx              # imm = 0x3B0
	movabsq	$gimp_scale_button_class_intern_init, %rdi
	movl	$168, %r8d
	movabsq	$gimp_scale_button_init, %rcx
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
	movabsq	$gimp_scale_button_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_scale_button_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_scale_button_get_type, .Lfunc_end0-gimp_scale_button_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_button_class_intern_init,@function
gimp_scale_button_class_intern_init:    # @gimp_scale_button_class_intern_init
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
	movq	%rax, gimp_scale_button_parent_class
	cmpl	$0, GimpScaleButton_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpScaleButton_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_scale_button_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_scale_button_class_intern_init, .Lfunc_end1-gimp_scale_button_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_button_init,@function
gimp_scale_button_init:                 # @gimp_scale_button_init
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_scale_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scale_button_get_plus_button
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_hide
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_no_show_all
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_scale_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scale_button_get_minus_button
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_hide
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_no_show_all
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_scale_button_image_expose, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_scale_button_update_tooltip, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_scale_button_update_tooltip
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_scale_button_init, .Lfunc_end2-gimp_scale_button_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4621819117588971520     # double 10
	.text
	.globl	gimp_scale_button_new
	.align	16, 0x90
	.type	gimp_scale_button_new,@function
gimp_scale_button_new:                  # @gimp_scale_button_new
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
# BB#1:                                 # %do.body
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB3_4
# BB#2:                                 # %land.lhs.true
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB3_4
# BB#3:                                 # %if.then
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_scale_button_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_7
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
	xorps	%xmm5, %xmm5
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -40(%rbp)
	callq	gimp_scale_button_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%edx, %edx
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	movl	$1, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-40(%rbp), %r8
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_scale_button_new, .Lfunc_end3-gimp_scale_button_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_button_class_init,@function
gimp_scale_button_class_init:           # @gimp_scale_button_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_scale_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_scale_button_value_changed, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 904(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_scale_button_class_init, .Lfunc_end4-gimp_scale_button_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_button_value_changed,@function
gimp_scale_button_value_changed:        # @gimp_scale_button_value_changed
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
	movsd	%xmm0, -16(%rbp)
	movq	gimp_scale_button_parent_class, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_scale_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 904(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	gimp_scale_button_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_scale_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	904(%rax), %rax
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_scale_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_scale_button_update_tooltip
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_scale_button_value_changed, .Lfunc_end5-gimp_scale_button_value_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4602678819172646912     # double 0.5
.LCPI6_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_scale_button_update_tooltip,@function
gimp_scale_button_update_tooltip:       # @gimp_scale_button_update_tooltip
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_scale_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scale_button_get_adjustment
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_adjustment_get_lower
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_adjustment_get_upper
	movabsq	$.L.str.6, %rdi
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-40(%rbp), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_set_tooltip_text
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_scale_button_update_tooltip, .Lfunc_end6-gimp_scale_button_update_tooltip
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4602678819172646912     # double 0.5
.LCPI7_1:
	.quad	4611686018427387904     # double 2
.LCPI7_2:
	.quad	-4611686018427387904    # double -2
	.text
	.align	16, 0x90
	.type	gimp_scale_button_image_expose,@function
gimp_scale_button_image_expose:         # @gimp_scale_button_image_expose
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style
	leaq	-56(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	-48(%rbp), %ecx
	cmpl	-44(%rbp), %ecx
	jge	.LBB7_2
# BB#1:                                 # %cond.true
	movl	-48(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB7_3:                                # %cond.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -80(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gtk_scale_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scale_button_get_adjustment
	movq	%rax, -64(%rbp)
	cmpl	$1, -80(%rbp)
	jge	.LBB7_5
# BB#4:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB7_17
.LBB7_5:                                # %if.end
	movq	-64(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvtsi2sdl	-80(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-64(%rbp), %rdi
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_rectangle
	movq	-72(%rbp), %rdi
	callq	cairo_clip
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB7_7
# BB#6:                                 # %if.then.19
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	movl	-56(%rbp), %eax
	addl	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm0, %xmm1
	movl	-52(%rbp), %eax
	addl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_scale
	jmp	.LBB7_8
.LBB7_7:                                # %if.else
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movl	-52(%rbp), %eax
	addl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero
	movq	-72(%rbp), %rdi
	callq	cairo_scale
.LBB7_8:                                # %if.end.34
	movl	$0, -84(%rbp)
.LBB7_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB7_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB7_9 Depth=1
	xorps	%xmm1, %xmm1
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm0
	callq	cairo_move_to
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm1
	cvtsi2sdl	-84(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB7_9 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_9
.LBB7_12:                               # %for.end
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_state
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	addq	$24, %rcx
	imulq	$12, %rdi, %rdi
	addq	%rdi, %rcx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	gdk_cairo_set_source_color
	movq	-72(%rbp), %rdi
	callq	cairo_stroke
.LBB7_13:                               # %for.cond.42
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB7_16
# BB#14:                                # %for.body.45
                                        #   in Loop: Header=BB7_13 Depth=1
	xorps	%xmm1, %xmm1
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm0
	callq	cairo_move_to
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm1
	cvtsi2sdl	-84(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
# BB#15:                                # %for.inc.50
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_13
.LBB7_16:                               # %for.end.52
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$24, %rax
	addq	$48, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-72(%rbp), %rdi
	callq	cairo_stroke
	movq	-72(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, -4(%rbp)
.LBB7_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_scale_button_image_expose, .Lfunc_end7-gimp_scale_button_image_expose
	.cfi_endproc

	.type	gimp_scale_button_get_type.g_define_type_id__volatile,@object # @gimp_scale_button_get_type.g_define_type_id__volatile
	.local	gimp_scale_button_get_type.g_define_type_id__volatile
	.comm	gimp_scale_button_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpScaleButton"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_scale_button_new,@object # @__func__.gimp_scale_button_new
.L__func__.gimp_scale_button_new:
	.asciz	"gimp_scale_button_new"
	.size	.L__func__.gimp_scale_button_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"value >= min && value <= max"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"orientation"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"adjustment"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"size"
	.size	.L.str.5, 5

	.type	gimp_scale_button_parent_class,@object # @gimp_scale_button_parent_class
	.local	gimp_scale_button_parent_class
	.comm	gimp_scale_button_parent_class,8,8
	.type	GimpScaleButton_private_offset,@object # @GimpScaleButton_private_offset
	.local	GimpScaleButton_private_offset
	.comm	GimpScaleButton_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%d\342\200\211%%"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"expose-event"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"notify::adjustment"
	.size	.L.str.8, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
