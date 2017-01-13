	.text
	.file	"gimpcellrenderertoggle.bc"
	.globl	gimp_cell_renderer_toggle_get_type
	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_get_type,@function
gimp_cell_renderer_toggle_get_type:     # @gimp_cell_renderer_toggle_get_type
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
	movq	gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_cell_renderer_toggle_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$304, %edx              # imm = 0x130
	leaq	gimp_cell_renderer_toggle_class_intern_init(%rip), %rdi
	movl	$88, %r8d
	leaq	gimp_cell_renderer_toggle_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cell_renderer_toggle_get_type, .Lfunc_end0-gimp_cell_renderer_toggle_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_class_intern_init,@function
gimp_cell_renderer_toggle_class_intern_init: # @gimp_cell_renderer_toggle_class_intern_init
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
	movq	%rax, gimp_cell_renderer_toggle_parent_class(%rip)
	cmpl	$0, GimpCellRendererToggle_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpCellRendererToggle_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_cell_renderer_toggle_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cell_renderer_toggle_class_intern_init, .Lfunc_end1-gimp_cell_renderer_toggle_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_init,@function
gimp_cell_renderer_toggle_init:         # @gimp_cell_renderer_toggle_init
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
	.size	gimp_cell_renderer_toggle_init, .Lfunc_end2-gimp_cell_renderer_toggle_init
	.cfi_endproc

	.globl	gimp_cell_renderer_toggle_new
	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_new,@function
gimp_cell_renderer_toggle_new:          # @gimp_cell_renderer_toggle_new
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
	callq	gimp_cell_renderer_toggle_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_cell_renderer_toggle_new, .Lfunc_end3-gimp_cell_renderer_toggle_new
	.cfi_endproc

	.globl	gimp_cell_renderer_toggle_clicked
	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_clicked,@function
gimp_cell_renderer_toggle_clicked:      # @gimp_cell_renderer_toggle_clicked
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_cell_renderer_toggle_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_cell_renderer_toggle_clicked(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_18
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
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_cell_renderer_toggle_clicked(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	toggle_cell_signals(%rip), %esi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB4_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_cell_renderer_toggle_clicked, .Lfunc_end4-gimp_cell_renderer_toggle_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_class_init,@function
gimp_cell_renderer_toggle_class_init:   # @gimp_cell_renderer_toggle_class_init
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
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_cell_renderer_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gdk_modifier_type_get_type@PLT
	leaq	.L.str.5(%rip), %rdi
	movl	$2, %edx
	movl	$264, %ecx              # imm = 0x108
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	_gimp_widgets_marshal_VOID__STRING_FLAGS@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$64, %r8d
	movl	%r8d, %r11d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r14, %r9
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, %al
	movq	%r11, -96(%rbp)         # 8-byte Spill
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.6(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$231, %r8d
	leaq	gimp_cell_renderer_toggle_activate(%rip), %r9
	leaq	gimp_cell_renderer_toggle_render(%rip), %r10
	leaq	gimp_cell_renderer_toggle_get_size(%rip), %r11
	leaq	gimp_cell_renderer_toggle_set_property(%rip), %rbx
	leaq	gimp_cell_renderer_toggle_get_property(%rip), %r14
	leaq	gimp_cell_renderer_toggle_finalize(%rip), %r15
	movl	%eax, toggle_cell_signals(%rip)
	movq	-48(%rbp), %r12
	movq	%r15, 48(%r12)
	movq	-48(%rbp), %r15
	movq	%r14, 32(%r15)
	movq	-48(%rbp), %r14
	movq	%rbx, 24(%r14)
	movq	-56(%rbp), %rbx
	movq	%r11, 160(%rbx)
	movq	-56(%rbp), %r11
	movq	%r10, 168(%r11)
	movq	-56(%rbp), %r10
	movq	%r9, 176(%r10)
	movq	-48(%rbp), %r9
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$1, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.7(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$4, %r9d
	movl	$231, %esi
	movq	-48(%rbp), %rdx
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	callq	g_param_spec_int@PLT
	movl	$2, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_cell_renderer_toggle_class_init, .Lfunc_end5-gimp_cell_renderer_toggle_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_finalize,@function
gimp_cell_renderer_toggle_finalize:     # @gimp_cell_renderer_toggle_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_toggle_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
.LBB6_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_cell_renderer_toggle_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_cell_renderer_toggle_finalize, .Lfunc_end6-gimp_cell_renderer_toggle_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_get_property,@function
gimp_cell_renderer_toggle_get_property: # @gimp_cell_renderer_toggle_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_toggle_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_7
.LBB7_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	72(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB7_6
.LBB7_3:                                # %sw.default
	jmp	.LBB7_4
.LBB7_4:                                # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$186, %edx
	leaq	.L.str.10(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_cell_renderer_toggle_get_property, .Lfunc_end7-gimp_cell_renderer_toggle_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_set_property,@function
gimp_cell_renderer_toggle_set_property: # @gimp_cell_renderer_toggle_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_toggle_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_11
.LBB8_11:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_5
.LBB8_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB8_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_free@PLT
.LBB8_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 64(%rdi)
	jmp	.LBB8_8
.LBB8_4:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 72(%rdi)
	jmp	.LBB8_8
.LBB8_5:                                # %sw.default
	jmp	.LBB8_6
.LBB8_6:                                # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$211, %edx
	leaq	.L.str.10(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB8_8
.LBB8_8:                                # %sw.epilog
	movq	-40(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB8_10
# BB#9:                                 # %if.then.12
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-40(%rbp), %rax
	movq	$0, 80(%rax)
.LBB8_10:                               # %if.end.15
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_cell_renderer_toggle_set_property, .Lfunc_end8-gimp_cell_renderer_toggle_set_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_get_size,@function
gimp_cell_renderer_toggle_get_size:     # @gimp_cell_renderer_toggle_get_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_cell_renderer_toggle_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	gimp_cell_renderer_toggle_parent_class(%rip), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	160(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %r10
	movq	%r10, (%rsp)
	callq	*%rax
	jmp	.LBB9_23
.LBB9_2:                                # %if.end
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_cell_renderer_get_alignment@PLT
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_cell_renderer_get_padding@PLT
	movq	-64(%rbp), %rdx
	cmpq	$0, 80(%rdx)
	jne	.LBB9_4
# BB#3:                                 # %if.then.6
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_cell_renderer_toggle_create_pixbuf
.LBB9_4:                                # %if.end.7
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdi
	callq	gdk_pixbuf_get_width@PLT
	movl	%eax, -84(%rbp)
	movq	-64(%rbp), %rdi
	movq	80(%rdi), %rdi
	callq	gdk_pixbuf_get_height@PLT
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-72(%rbp), %rdi
	movl	536(%rdi), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	-88(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-72(%rbp), %rdi
	movl	540(%rdi), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -80(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB9_6
# BB#5:                                 # %if.then.19
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB9_6:                                # %if.end.20
	cmpq	$0, -56(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.22
	movl	-80(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB9_8:                                # %if.end.23
	cmpq	$0, -24(%rbp)
	je	.LBB9_23
# BB#9:                                 # %if.then.25
	cmpq	$0, -32(%rbp)
	je	.LBB9_17
# BB#10:                                # %if.then.27
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_direction@PLT
	cmpl	$2, %eax
	jne	.LBB9_12
# BB#11:                                # %cond.true
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtss2sd	-92(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB9_13
.LBB9_12:                               # %cond.false
	cvtss2sd	-92(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB9_13:                               # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-76(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB9_15
# BB#14:                                # %cond.true.37
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB9_16
.LBB9_15:                               # %cond.false.38
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB9_16
.LBB9_16:                               # %cond.end.39
	movl	-132(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB9_17:                               # %if.end.41
	cmpq	$0, -40(%rbp)
	je	.LBB9_22
# BB#18:                                # %if.then.43
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	subl	-80(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB9_20
# BB#19:                                # %cond.true.51
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	jmp	.LBB9_21
.LBB9_20:                               # %cond.false.52
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB9_21
.LBB9_21:                               # %cond.end.53
	movl	-136(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB9_22:                               # %if.end.55
	jmp	.LBB9_23
.LBB9_23:                               # %if.end.56
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_cell_renderer_toggle_get_size, .Lfunc_end9-gimp_cell_renderer_toggle_get_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_render,@function
gimp_cell_renderer_toggle_render:       # @gimp_cell_renderer_toggle_render
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
	movl	16(%rbp), %eax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_cell_renderer_toggle_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	gimp_cell_renderer_toggle_parent_class(%rip), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	168(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movl	-68(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
	jmp	.LBB10_23
.LBB10_2:                               # %if.end
	leaq	-104(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rax, %r8
	addq	$8, %r8
	movq	%rax, %r9
	addq	$12, %r9
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-192(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	gimp_cell_renderer_toggle_get_size
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_cell_renderer_get_padding@PLT
	movq	-56(%rbp), %rax
	movl	(%rax), %ebx
	addl	-132(%rbp), %ebx
	addl	-104(%rbp), %ebx
	movl	%ebx, -104(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %ebx
	addl	-136(%rbp), %ebx
	addl	-100(%rbp), %ebx
	movl	%ebx, -100(%rbp)
	movl	-132(%rbp), %ebx
	shll	$1, %ebx
	movl	-96(%rbp), %r14d
	subl	%ebx, %r14d
	movl	%r14d, -96(%rbp)
	movl	-136(%rbp), %ebx
	shll	$1, %ebx
	movl	-92(%rbp), %r14d
	subl	%ebx, %r14d
	movl	%r14d, -92(%rbp)
	cmpl	$0, -96(%rbp)
	jle	.LBB10_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, -92(%rbp)
	jg	.LBB10_5
.LBB10_4:                               # %if.then.19
	jmp	.LBB10_23
.LBB10_5:                               # %if.end.20
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_toggle_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_cell_renderer_toggle_get_active@PLT
	movl	%eax, -128(%rbp)
	movl	-68(%rbp), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB10_10
# BB#6:                                 # %if.then.25
	movq	-40(%rbp), %rdi
	callq	gtk_widget_has_focus@PLT
	cmpl	$0, %eax
	je	.LBB10_8
# BB#7:                                 # %if.then.28
	movl	$3, -124(%rbp)
	jmp	.LBB10_9
.LBB10_8:                               # %if.else
	movl	$1, -124(%rbp)
.LBB10_9:                               # %if.end.29
	jmp	.LBB10_14
.LBB10_10:                              # %if.else.30
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_toggle_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_cell_renderer_toggle_get_activatable@PLT
	cmpl	$0, %eax
	je	.LBB10_12
# BB#11:                                # %if.then.35
	movl	$0, -124(%rbp)
	jmp	.LBB10_13
.LBB10_12:                              # %if.else.36
	movl	$4, -124(%rbp)
.LBB10_13:                              # %if.end.37
	jmp	.LBB10_14
.LBB10_14:                              # %if.end.38
	leaq	-120(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gdk_rectangle_intersect@PLT
	cmpl	$0, %eax
	je	.LBB10_17
# BB#15:                                # %land.lhs.true
	movl	-68(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB10_17
# BB#16:                                # %if.then.43
	leaq	-120(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$2, %eax
	movl	$1, %edx
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-124(%rbp), %r9d
	cmpl	$0, -128(%rbp)
	cmovnel	%edx, %eax
	movq	-40(%rbp), %r10
	movl	-104(%rbp), %edx
	movl	-100(%rbp), %r11d
	movl	-96(%rbp), %ebx
	movl	-92(%rbp), %r14d
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	%r10, %r9
	movq	$0, (%rsp)
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	callq	gtk_paint_shadow@PLT
.LBB10_17:                              # %if.end.49
	cmpl	$0, -128(%rbp)
	je	.LBB10_23
# BB#18:                                # %if.then.51
	leaq	-120(%rbp), %rax
	leaq	-104(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movl	536(%rcx), %edx
	addl	-104(%rbp), %edx
	movl	%edx, -104(%rbp)
	movq	-88(%rbp), %rcx
	movl	540(%rcx), %edx
	addl	-100(%rbp), %edx
	movl	%edx, -100(%rbp)
	movq	-88(%rbp), %rcx
	movl	536(%rcx), %edx
	shll	$1, %edx
	movl	-96(%rbp), %edi
	subl	%edx, %edi
	movl	%edi, -96(%rbp)
	movq	-88(%rbp), %rcx
	movl	540(%rcx), %edx
	shll	$1, %edx
	movl	-92(%rbp), %edi
	subl	%edx, %edi
	movl	%edi, -92(%rbp)
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	gdk_rectangle_intersect@PLT
	cmpl	$0, %eax
	je	.LBB10_22
# BB#19:                                # %if.then.66
	movq	-32(%rbp), %rdi
	callq	gdk_cairo_create@PLT
	leaq	-120(%rbp), %rsi
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	gdk_cairo_rectangle@PLT
	movq	-144(%rbp), %rdi
	callq	cairo_clip@PLT
	movq	-144(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	80(%rax), %rsi
	cvtsi2sdl	-104(%rbp), %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	callq	gdk_cairo_set_source_pixbuf@PLT
	movq	-144(%rbp), %rdi
	callq	cairo_paint@PLT
	leaq	.L.str.11(%rip), %rsi
	leaq	-148(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get@PLT
	cmpl	$0, -148(%rbp)
	je	.LBB10_21
# BB#20:                                # %if.then.72
	movq	-144(%rbp), %rdi
	movl	-124(%rbp), %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx
	addq	$24, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	callq	gdk_cairo_set_source_color@PLT
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-144(%rbp), %rdi
	callq	cairo_set_line_width@PLT
	movq	-144(%rbp), %rdi
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	callq	cairo_move_to@PLT
	movq	-144(%rbp), %rdi
	cvtsi2sdl	-104(%rbp), %xmm0
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to@PLT
	movq	-144(%rbp), %rdi
	callq	cairo_stroke@PLT
.LBB10_21:                              # %if.end.85
	movq	-144(%rbp), %rdi
	callq	cairo_destroy@PLT
.LBB10_22:                              # %if.end.86
	jmp	.LBB10_23
.LBB10_23:                              # %if.end.87
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_cell_renderer_toggle_render, .Lfunc_end10-gimp_cell_renderer_toggle_render
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_activate,@function
gimp_cell_renderer_toggle_activate:     # @gimp_cell_renderer_toggle_activate
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
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_cell_renderer_toggle_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_cell_renderer_toggle_get_activatable@PLT
	cmpl	$0, %eax
	je	.LBB11_5
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB11_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB11_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB11_4:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_toggle_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movl	-76(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_cell_renderer_toggle_clicked@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %if.end.8
	movl	$0, -4(%rbp)
.LBB11_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_cell_renderer_toggle_activate, .Lfunc_end11-gimp_cell_renderer_toggle_activate
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
	leaq	.L.str.2(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_toggle_create_pixbuf,@function
gimp_cell_renderer_toggle_create_pixbuf: # @gimp_cell_renderer_toggle_create_pixbuf
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 80(%rsi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
.LBB13_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	64(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movl	72(%rdx), %edx
	callq	gtk_widget_render_icon@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_cell_renderer_toggle_create_pixbuf, .Lfunc_end13-gimp_cell_renderer_toggle_create_pixbuf
	.cfi_endproc

	.type	gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile,@object # @gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile
	.local	gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile
	.comm	gimp_cell_renderer_toggle_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCellRendererToggle"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"stock_id"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LibGimpWidgets"
	.size	.L.str.2, 15

	.type	.L__func__.gimp_cell_renderer_toggle_clicked,@object # @__func__.gimp_cell_renderer_toggle_clicked
.L__func__.gimp_cell_renderer_toggle_clicked:
	.asciz	"gimp_cell_renderer_toggle_clicked"
	.size	.L__func__.gimp_cell_renderer_toggle_clicked, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CELL_RENDERER_TOGGLE (cell)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"path != NULL"
	.size	.L.str.4, 13

	.type	toggle_cell_signals,@object # @toggle_cell_signals
	.local	toggle_cell_signals
	.comm	toggle_cell_signals,4,4
	.type	gimp_cell_renderer_toggle_parent_class,@object # @gimp_cell_renderer_toggle_parent_class
	.local	gimp_cell_renderer_toggle_parent_class
	.comm	gimp_cell_renderer_toggle_parent_class,8,8
	.type	GimpCellRendererToggle_private_offset,@object # @GimpCellRendererToggle_private_offset
	.local	GimpCellRendererToggle_private_offset
	.comm	GimpCellRendererToggle_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"clicked"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"stock-id"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"stock-size"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpcellrenderertoggle.c"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"inconsistent"
	.size	.L.str.11, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
