	.text
	.file	"gimppaletteview.bc"
	.globl	gimp_palette_view_get_type
	.align	16, 0x90
	.type	gimp_palette_view_get_type,@function
gimp_palette_view_get_type:             # @gimp_palette_view_get_type
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
	movq	gimp_palette_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_palette_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$792, %edx              # imm = 0x318
	movabsq	$gimp_palette_view_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_palette_view_init, %rcx
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
	movabsq	$gimp_palette_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_palette_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palette_view_get_type, .Lfunc_end0-gimp_palette_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_view_class_intern_init,@function
gimp_palette_view_class_intern_init:    # @gimp_palette_view_class_intern_init
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
	movq	%rax, gimp_palette_view_parent_class
	cmpl	$0, GimpPaletteView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPaletteView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_palette_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_palette_view_class_intern_init, .Lfunc_end1-gimp_palette_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_view_init,@function
gimp_palette_view_init:                 # @gimp_palette_view_init
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
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_can_focus
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_palette_view_init, .Lfunc_end2-gimp_palette_view_init
	.cfi_endproc

	.globl	gimp_palette_view_select_entry
	.align	16, 0x90
	.type	gimp_palette_view_select_entry,@function
gimp_palette_view_select_entry:         # @gimp_palette_view_select_entry
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_palette_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.9
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_view_select_entry, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_19
.LBB3_11:                               # %if.end.11
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	128(%rcx), %rax
	jne	.LBB3_14
# BB#13:                                # %if.then.13
	jmp	.LBB3_19
.LBB3_14:                               # %if.end.14
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB3_16
# BB#15:                                # %if.then.17
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rsi
	callq	gimp_palette_view_expose_entry
.LBB3_16:                               # %if.end.19
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB3_18
# BB#17:                                # %if.then.23
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rsi
	callq	gimp_palette_view_expose_entry
.LBB3_18:                               # %if.end.25
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	view_signals+4, %esi
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB3_19:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_palette_view_select_entry, .Lfunc_end3-gimp_palette_view_select_entry
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_view_expose_entry,@function
gimp_palette_view_expose_entry:         # @gimp_palette_view_expose_entry
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_palette_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	movq	-24(%rbp), %rsi
	cltd
	idivl	168(%rsi)
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %eax
	movq	-24(%rbp), %rsi
	cltd
	idivl	168(%rsi)
	movl	%edx, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-56(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rsi
	imull	160(%rsi), %ecx
	addl	%ecx, %edx
	movl	-52(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-24(%rbp), %rsi
	imull	164(%rsi), %r8d
	addl	%r8d, %ecx
	movq	-24(%rbp), %rsi
	movl	160(%rsi), %r8d
	addl	$1, %r8d
	movq	-24(%rbp), %rsi
	movl	164(%rsi), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	callq	gtk_widget_queue_draw_area
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_palette_view_expose_entry, .Lfunc_end4-gimp_palette_view_expose_entry
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_view_class_init,@function
gimp_palette_view_class_init:           # @gimp_palette_view_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gdk_modifier_type_get_type
	movabsq	$.L.str.3, %rdi
	movl	$1, %edx
	movl	$752, %ecx              # imm = 0x2F0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__POINTER_ENUM, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$2, %r8d
	movl	$68, %r11d
	movl	%r11d, %ebx
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	-96(%rbp), %r15         # 8-byte Reload
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r15, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	-112(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$68, 24(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, %al
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	%r10, -128(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.4, %rdi
	movl	$1, %edx
	movl	$760, %ecx              # imm = 0x2F8
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movl	$68, %r11d
	movl	%r11d, %r10d
	movl	%eax, view_signals
	movq	-48(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -152(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r10, -160(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.5, %rdi
	movl	$1, %edx
	movl	$768, %ecx              # imm = 0x300
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movl	$68, %r11d
	movl	%r11d, %r10d
	movl	%eax, view_signals+4
	movq	-48(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -184(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-176(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r10, -192(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.6, %rdi
	movl	$1, %edx
	movl	$776, %ecx              # imm = 0x308
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movl	$68, %r11d
	movl	%r11d, %r10d
	movl	%eax, view_signals+8
	movq	-48(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-200(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -208(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -216(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-208(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r10, -224(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, view_signals+12
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gimp_rgb_get_type
	movabsq	$.L.str.7, %rdi
	movl	$1, %edx
	movl	$784, %ecx              # imm = 0x310
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$gimp_marshal_VOID__POINTER_BOXED, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movl	$2, %r11d
	movl	$68, %r13d
	movl	%r13d, %r10d
	movq	-232(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-240(%rbp), %r14        # 8-byte Reload
	movq	%r8, -248(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	%r9, -256(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movq	-248(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$68, 24(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, %al
	movq	%r10, -264(%rbp)        # 8-byte Spill
	movl	%r11d, -268(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_palette_view_set_viewable, %rsi
	movabsq	$gimp_palette_view_focus, %rdi
	movabsq	$gimp_palette_view_key_press, %r8
	movabsq	$gimp_palette_view_button_press, %r9
	movabsq	$gimp_palette_view_expose, %r10
	movl	%eax, view_signals+16
	movq	-56(%rbp), %rbx
	movq	%r10, 392(%rbx)
	movq	-56(%rbp), %r10
	movq	%r9, 344(%r10)
	movq	-56(%rbp), %r9
	movq	%r8, 400(%r9)
	movq	-56(%rbp), %r8
	movq	%rdi, 328(%r8)
	movq	-64(%rbp), %rdi
	movq	%rsi, 720(%rdi)
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_palette_view_class_init, .Lfunc_end5-gimp_palette_view_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_palette_view_expose,@function
gimp_palette_view_expose:               # @gimp_palette_view_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_8
.LBB6_2:                                # %if.end
	movq	gimp_palette_view_parent_class, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	392(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	-40(%rbp), %rsi
	movq	112(%rsi), %rsi
	cmpq	$0, 40(%rsi)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB6_7
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB6_7
# BB#4:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_palette_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movl	40(%rax), %eax
	movq	-48(%rbp), %rsi
	cltd
	idivl	168(%rsi)
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rsi
	movq	128(%rsi), %rsi
	movl	40(%rsi), %eax
	movq	-48(%rbp), %rsi
	cltd
	idivl	168(%rsi)
	movl	%edx, -88(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-80(%rbp), %rdi
	callq	cairo_clip
	movq	-80(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	callq	cairo_translate
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	movl	-88(%rbp), %edx
	movq	-48(%rbp), %rax
	imull	160(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	addsd	%xmm0, %xmm1
	movl	-84(%rbp), %edx
	movq	-48(%rbp), %rax
	imull	164(%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	addsd	%xmm0, %xmm2
	movq	-48(%rbp), %rax
	cvtsi2sdl	160(%rax), %xmm0
	movq	-48(%rbp), %rax
	cvtsi2sdl	164(%rax), %xmm3
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-136(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_rectangle
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	$24, %rax
	addq	$36, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-80(%rbp), %rdi
	callq	cairo_stroke_preserve
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_cairo_set_focus_line_pattern
	cmpl	$0, %eax
	je	.LBB6_6
# BB#5:                                 # %if.then.33
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-80(%rbp), %rdi
	callq	cairo_stroke
.LBB6_6:                                # %if.end.36
	movq	-80(%rbp), %rdi
	callq	cairo_destroy
.LBB6_7:                                # %if.end.37
	movl	$0, -4(%rbp)
.LBB6_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_palette_view_expose, .Lfunc_end6-gimp_palette_view_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_view_button_press,@function
gimp_palette_view_button_press:         # @gimp_palette_view_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_can_focus
	cmpl	$0, %eax
	je	.LBB7_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus
.LBB7_3:                                # %if.end
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	movq	-24(%rbp), %rax
	cvttsd2si	32(%rax), %edx
	callq	gimp_palette_view_find_entry
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 136(%rdi)
	cmpq	$0, -40(%rbp)
	je	.LBB7_5
# BB#4:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB7_6
.LBB7_5:                                # %if.then.10
	movl	$1, -4(%rbp)
	jmp	.LBB7_22
.LBB7_6:                                # %if.end.11
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB7_8
# BB#7:                                 # %if.then.14
	xorl	%edx, %edx
	movq	-32(%rbp), %rax
	movl	view_signals, %esi
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	48(%rdi), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB7_8:                                # %if.end.15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB7_12
# BB#9:                                 # %if.then.18
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	128(%rcx), %rax
	je	.LBB7_11
# BB#10:                                # %if.then.21
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_palette_view_select_entry
.LBB7_11:                               # %if.end.22
	xorl	%edx, %edx
	movq	-32(%rbp), %rax
	movl	view_signals+12, %esi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	jmp	.LBB7_21
.LBB7_12:                               # %if.else
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB7_20
# BB#13:                                # %if.then.26
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB7_15
# BB#14:                                # %if.then.30
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_palette_view_select_entry
	jmp	.LBB7_19
.LBB7_15:                               # %if.else.31
	movq	-24(%rbp), %rax
	cmpl	$5, (%rax)
	jne	.LBB7_18
# BB#16:                                # %land.lhs.true.35
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	128(%rcx), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.39
	xorl	%edx, %edx
	movq	-32(%rbp), %rax
	movl	view_signals+8, %esi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB7_18:                               # %if.end.40
	jmp	.LBB7_19
.LBB7_19:                               # %if.end.41
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.42
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.43
	movl	$1, -4(%rbp)
.LBB7_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_palette_view_button_press, .Lfunc_end7-gimp_palette_view_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_view_key_press,@function
gimp_palette_view_key_press:            # @gimp_palette_view_key_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB8_7
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$32, 28(%rax)
	je	.LBB8_6
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$65408, 28(%rax)        # imm = 0xFF80
	je	.LBB8_6
# BB#3:                                 # %lor.lhs.false.4
	movq	-16(%rbp), %rax
	cmpl	$65293, 28(%rax)        # imm = 0xFF0D
	je	.LBB8_6
# BB#4:                                 # %lor.lhs.false.7
	movq	-16(%rbp), %rax
	cmpl	$65421, 28(%rax)        # imm = 0xFF8D
	je	.LBB8_6
# BB#5:                                 # %lor.lhs.false.10
	movq	-16(%rbp), %rax
	cmpl	$65076, 28(%rax)        # imm = 0xFE34
	jne	.LBB8_7
.LBB8_6:                                # %if.then
	xorl	%edx, %edx
	movq	-24(%rbp), %rax
	movl	view_signals, %esi
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movl	24(%rdi), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB8_7:                                # %if.end
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_palette_view_key_press, .Lfunc_end8-gimp_palette_view_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_view_focus,@function
gimp_palette_view_focus:                # @gimp_palette_view_focus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_can_focus
	cmpl	$0, %eax
	je	.LBB9_7
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	jne	.LBB9_7
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus
	movq	-32(%rbp), %rdi
	cmpq	$0, 128(%rdi)
	jne	.LBB9_6
# BB#3:                                 # %land.lhs.true.10
	cmpq	$0, -40(%rbp)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true.12
	movq	-40(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$0, %eax
	jle	.LBB9_6
# BB#5:                                 # %if.then.14
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_palette_get_entry
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_palette_view_select_entry
.LBB9_6:                                # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB9_20
.LBB9_7:                                # %if.end.17
	movq	-32(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB9_19
# BB#8:                                 # %if.then.20
	movl	$0, -60(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_palette_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$5, %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	ja	.LBB9_14
# BB#21:                                # %if.then.20
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_9:                                # %sw.bb
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	subl	168(%rcx), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB9_14
.LBB9_10:                               # %sw.bb.27
	movq	-56(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB9_14
.LBB9_11:                               # %sw.bb.29
	movl	$-1, -60(%rbp)
	jmp	.LBB9_14
.LBB9_12:                               # %sw.bb.30
	movl	$1, -60(%rbp)
	jmp	.LBB9_14
.LBB9_13:                               # %sw.bb.31
	movl	$0, -4(%rbp)
	jmp	.LBB9_20
.LBB9_14:                               # %sw.epilog
	cmpl	$0, -60(%rbp)
	je	.LBB9_18
# BB#15:                                # %if.then.33
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movl	40(%rax), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movq	-40(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_palette_get_entry
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB9_17
# BB#16:                                # %if.then.39
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_palette_view_select_entry
.LBB9_17:                               # %if.end.40
	jmp	.LBB9_18
.LBB9_18:                               # %if.end.41
	movl	$1, -4(%rbp)
	jmp	.LBB9_20
.LBB9_19:                               # %if.end.42
	movl	$0, -4(%rbp)
.LBB9_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_palette_view_focus, .Lfunc_end9-gimp_palette_view_focus
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_13
	.quad	.LBB9_13
	.quad	.LBB9_9
	.quad	.LBB9_10
	.quad	.LBB9_11
	.quad	.LBB9_12

	.text
	.align	16, 0x90
	.type	gimp_palette_view_set_viewable,@function
gimp_palette_view_set_viewable:         # @gimp_palette_view_set_viewable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-32(%rbp), %rdi
	callq	gimp_palette_view_select_entry
	cmpq	$0, -16(%rbp)
	je	.LBB10_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_palette_view_invalidate, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	cmpq	$0, -24(%rbp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB10_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dnd_color_source_remove
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dnd_color_dest_remove
.LBB10_3:                               # %if.end
	jmp	.LBB10_4
.LBB10_4:                               # %if.end.9
	movq	gimp_palette_view_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	720(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	cmpq	$0, -24(%rbp)
	je	.LBB10_8
# BB#5:                                 # %if.then.13
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_palette_view_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_source_remove
	cmpq	$0, -16(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jne	.LBB10_7
# BB#6:                                 # %if.then.20
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_palette_view_drag_color, %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	gimp_dnd_color_source_add
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_palette_view_drop_color, %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_dnd_color_dest_add
.LBB10_7:                               # %if.end.25
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.26
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_palette_view_set_viewable, .Lfunc_end10-gimp_palette_view_set_viewable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_view_find_entry,@function
gimp_palette_view_find_entry:           # @gimp_palette_view_find_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_palette_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$0, %eax
	jne	.LBB11_3
.LBB11_2:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB11_9
.LBB11_3:                               # %if.end
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	cltd
	idivl	160(%rcx)
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rcx
	cltd
	idivl	164(%rcx)
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	jl	.LBB11_8
# BB#4:                                 # %land.lhs.true
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	168(%rcx), %eax
	jge	.LBB11_8
# BB#5:                                 # %land.lhs.true.15
	cmpl	$0, -56(%rbp)
	jl	.LBB11_8
# BB#6:                                 # %land.lhs.true.17
	movl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	172(%rcx), %eax
	jge	.LBB11_8
# BB#7:                                 # %if.then.19
	movq	-32(%rbp), %rdi
	movl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	imull	168(%rcx), %eax
	addl	-52(%rbp), %eax
	movl	%eax, %esi
	callq	gimp_palette_get_entry
	movq	%rax, -48(%rbp)
.LBB11_8:                               # %if.end.22
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_palette_view_find_entry, .Lfunc_end11-gimp_palette_view_find_entry
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_view_invalidate,@function
gimp_palette_view_invalidate:           # @gimp_palette_view_invalidate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	$0, 136(%rsi)
	movq	-16(%rbp), %rsi
	cmpq	$0, 128(%rsi)
	je	.LBB12_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	gimp_palette_get_colors
	movq	-16(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_list_find
	cmpq	$0, %rax
	jne	.LBB12_3
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_palette_view_select_entry
.LBB12_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_palette_view_invalidate, .Lfunc_end12-gimp_palette_view_invalidate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_palette_view_drag_color,@function
gimp_palette_view_drag_color:           # @gimp_palette_view_drag_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_0, %xmm3        # xmm3 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
.LBB13_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_palette_view_drag_color, .Lfunc_end13-gimp_palette_view_drag_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_view_drop_color,@function
gimp_palette_view_drop_color:           # @gimp_palette_view_drop_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gimp_palette_view_find_entry
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	view_signals+16, %esi
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_palette_view_drop_color, .Lfunc_end14-gimp_palette_view_drop_color
	.cfi_endproc

	.type	gimp_palette_view_get_type.g_define_type_id__volatile,@object # @gimp_palette_view_get_type.g_define_type_id__volatile
	.local	gimp_palette_view_get_type.g_define_type_id__volatile
	.comm	gimp_palette_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPaletteView"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_palette_view_select_entry,@object # @__func__.gimp_palette_view_select_entry
.L__func__.gimp_palette_view_select_entry:
	.asciz	"gimp_palette_view_select_entry"
	.size	.L__func__.gimp_palette_view_select_entry, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PALETTE_VIEW (view)"
	.size	.L.str.2, 28

	.type	view_signals,@object    # @view_signals
	.local	view_signals
	.comm	view_signals,20,16
	.type	gimp_palette_view_parent_class,@object # @gimp_palette_view_parent_class
	.local	gimp_palette_view_parent_class
	.comm	gimp_palette_view_parent_class,8,8
	.type	GimpPaletteView_private_offset,@object # @GimpPaletteView_private_offset
	.local	GimpPaletteView_private_offset
	.comm	GimpPaletteView_private_offset,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"entry-clicked"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"entry-selected"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"entry-activated"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"entry-context"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"color-dropped"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"invalidate-preview"
	.size	.L.str.8, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
