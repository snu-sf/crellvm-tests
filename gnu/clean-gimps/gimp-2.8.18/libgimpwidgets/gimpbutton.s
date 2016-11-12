	.text
	.file	"gimpbutton.bc"
	.globl	gimp_button_get_type
	.align	16, 0x90
	.type	gimp_button_get_type,@function
gimp_button_get_type:                   # @gimp_button_get_type
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
	movq	gimp_button_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_button_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_button_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$944, %edx              # imm = 0x3B0
	leaq	gimp_button_class_intern_init(%rip), %rdi
	movl	$152, %r8d
	leaq	gimp_button_init(%rip), %rcx
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
	leaq	gimp_button_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_button_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_button_get_type, .Lfunc_end0-gimp_button_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_button_class_intern_init,@function
gimp_button_class_intern_init:          # @gimp_button_class_intern_init
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
	movq	%rax, gimp_button_parent_class(%rip)
	cmpl	$0, GimpButton_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpButton_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_button_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_button_class_intern_init, .Lfunc_end1-gimp_button_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_button_init,@function
gimp_button_init:                       # @gimp_button_init
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
	movl	$0, 144(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_button_init, .Lfunc_end2-gimp_button_init
	.cfi_endproc

	.globl	gimp_button_new
	.align	16, 0x90
	.type	gimp_button_new,@function
gimp_button_new:                        # @gimp_button_new
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
	callq	gimp_button_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_button_new, .Lfunc_end3-gimp_button_new
	.cfi_endproc

	.globl	gimp_button_extended_clicked
	.align	16, 0x90
	.type	gimp_button_extended_clicked,@function
gimp_button_extended_clicked:           # @gimp_button_extended_clicked
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_button_get_type@PLT
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
	leaq	.L__func__.gimp_button_extended_clicked(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	button_signals(%rip), %esi
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_button_extended_clicked, .Lfunc_end4-gimp_button_extended_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_button_class_init,@function
gimp_button_class_init:                 # @gimp_button_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gdk_modifier_type_get_type@PLT
	leaq	.L.str.3(%rip), %rdi
	movl	$1, %edx
	movl	$904, %ecx              # imm = 0x388
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__FLAGS@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	gimp_button_clicked(%rip), %rsi
	leaq	gimp_button_button_press(%rip), %rdi
	movl	%eax, button_signals(%rip)
	movq	-32(%rbp), %r8
	movq	%rdi, 344(%r8)
	movq	-40(%rbp), %rdi
	movq	%rsi, 840(%rdi)
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_button_class_init, .Lfunc_end5-gimp_button_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_button_button_press,@function
gimp_button_button_press:               # @gimp_button_button_press
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_button_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 144(%rax)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	-24(%rbp), %rax
	movl	$0, 144(%rax)
.LBB6_3:                                # %if.end
	movq	gimp_button_parent_class(%rip), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	344(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_button_button_press, .Lfunc_end6-gimp_button_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_button_clicked,@function
gimp_button_clicked:                    # @gimp_button_clicked
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_button_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	144(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_modifier_mask@PLT
	orl	$13, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_modifier_mask@PLT
	movl	-36(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_modifier_mask@PLT
	movl	-52(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movl	-20(%rbp), %eax         # 4-byte Reload
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	leaq	.L.str.4(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_stop_emission_by_name@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	144(%rax), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	gimp_button_extended_clicked@PLT
	jmp	.LBB7_5
.LBB7_2:                                # %if.else
	movq	gimp_button_parent_class(%rip), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 840(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.21
	movq	gimp_button_parent_class(%rip), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	840(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end.25
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_button_clicked, .Lfunc_end7-gimp_button_clicked
	.cfi_endproc

	.type	gimp_button_get_type.g_define_type_id__volatile,@object # @gimp_button_get_type.g_define_type_id__volatile
	.local	gimp_button_get_type.g_define_type_id__volatile
	.comm	gimp_button_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpButton"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_button_extended_clicked,@object # @__func__.gimp_button_extended_clicked
.L__func__.gimp_button_extended_clicked:
	.asciz	"gimp_button_extended_clicked"
	.size	.L__func__.gimp_button_extended_clicked, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_BUTTON (button)"
	.size	.L.str.2, 24

	.type	button_signals,@object  # @button_signals
	.local	button_signals
	.comm	button_signals,4,4
	.type	gimp_button_parent_class,@object # @gimp_button_parent_class
	.local	gimp_button_parent_class
	.comm	gimp_button_parent_class,8,8
	.type	GimpButton_private_offset,@object # @GimpButton_private_offset
	.local	GimpButton_private_offset
	.comm	GimpButton_private_offset,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"extended-clicked"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"clicked"
	.size	.L.str.4, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
