	.text
	.file	"gimpchainbutton.bc"
	.globl	gimp_chain_button_get_type
	.align	16, 0x90
	.type	gimp_chain_button_get_type,@function
gimp_chain_button_get_type:             # @gimp_chain_button_get_type
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
	movq	gimp_chain_button_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_chain_button_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_table_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_chain_button_class_intern_init(%rip), %rdi
	movl	$192, %r8d
	leaq	gimp_chain_button_init(%rip), %rcx
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
	leaq	gimp_chain_button_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_chain_button_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_chain_button_get_type, .Lfunc_end0-gimp_chain_button_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_button_class_intern_init,@function
gimp_chain_button_class_intern_init:    # @gimp_chain_button_class_intern_init
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
	movq	%rax, gimp_chain_button_parent_class(%rip)
	cmpl	$0, GimpChainButton_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpChainButton_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_chain_button_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_chain_button_class_intern_init, .Lfunc_end1-gimp_chain_button_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_button_init,@function
gimp_chain_button_init:                 # @gimp_chain_button_init
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
	movl	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 156(%rdi)
	callq	gtk_image_new@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 184(%rdi)
	callq	gtk_button_new@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 160(%rdi)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief@PLT
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_chain_button_clicked_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_chain_button_init, .Lfunc_end2-gimp_chain_button_init
	.cfi_endproc

	.globl	gimp_chain_button_new
	.align	16, 0x90
	.type	gimp_chain_button_new,@function
gimp_chain_button_new:                  # @gimp_chain_button_new
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
	movl	%edi, -4(%rbp)
	callq	gimp_chain_button_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	-4(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_chain_button_new, .Lfunc_end3-gimp_chain_button_new
	.cfi_endproc

	.globl	gimp_chain_button_set_active
	.align	16, 0x90
	.type	gimp_chain_button_set_active,@function
gimp_chain_button_set_active:           # @gimp_chain_button_set_active
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
	callq	gimp_chain_button_get_type@PLT
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
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_chain_button_set_active(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	156(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB4_14
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 156(%rdx)
	movq	-8(%rbp), %rdi
	callq	gimp_chain_button_update_image
.LBB4_14:                               # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_chain_button_set_active, .Lfunc_end4-gimp_chain_button_set_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_button_update_image,@function
gimp_chain_button_update_image:         # @gimp_chain_button_update_image
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
	subq	$32, %rsp
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	152(%rdi), %edx
	andl	$1, %edx
	shll	$1, %edx
	movq	-8(%rbp), %rdi
	cmpl	$0, 156(%rdi)
	cmovnel	%ecx, %eax
	addl	%eax, %edx
	movl	%edx, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_image_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4, %edx
	leaq	gimp_chain_stock_items(%rip), %rsi
	movl	-12(%rbp), %ecx
	movl	%ecx, %edi
	movq	(%rsi,%rdi,8), %rsi
	movq	%rax, %rdi
	callq	gtk_image_set_from_stock@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_chain_button_update_image, .Lfunc_end5-gimp_chain_button_update_image
	.cfi_endproc

	.globl	gimp_chain_button_get_active
	.align	16, 0x90
	.type	gimp_chain_button_get_active,@function
gimp_chain_button_get_active:           # @gimp_chain_button_get_active
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
	callq	gimp_chain_button_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_chain_button_get_active(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	156(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_chain_button_get_active, .Lfunc_end6-gimp_chain_button_get_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_button_class_init,@function
gimp_chain_button_class_init:           # @gimp_chain_button_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.4(%rip), %rdi
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	leaq	gimp_chain_button_get_property(%rip), %r11
	leaq	gimp_chain_button_set_property(%rip), %rbx
	leaq	gimp_chain_button_constructed(%rip), %r14
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%r14, 72(%rax)
	movq	-32(%rbp), %rax
	movq	%rbx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%r11, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, gimp_chain_button_signals(%rip)
	movq	-24(%rbp), %rsi
	movq	$0, 824(%rsi)
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_chain_position_get_type@PLT
	leaq	.L.str.1(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%r8d, %r8d
	movl	$235, %r9d
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$1, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_chain_button_class_init, .Lfunc_end7-gimp_chain_button_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_button_constructed,@function
gimp_chain_button_constructed:          # @gimp_chain_button_constructed
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_chain_button_parent_class(%rip), %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 72(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_chain_button_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB8_2:                                # %if.end
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movl	152(%rax), %edi
	callq	gimp_chain_line_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-16(%rbp), %rax
	movl	152(%rax), %edi
	callq	gimp_chain_line_new
	movq	-16(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_chain_button_update_image
	movq	-16(%rbp), %rax
	movl	152(%rax), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	je	.LBB8_4
# BB#3:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_table_resize@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-16(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %r8d         # 4-byte Reload
	movl	$2, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-60(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-64(%rbp), %r8d         # 4-byte Reload
	movl	-60(%rbp), %r9d         # 4-byte Reload
	callq	gtk_table_attach_defaults@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movq	-16(%rbp), %rsi
	movq	176(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults@PLT
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	gtk_table_resize@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r9d         # 4-byte Reload
	movl	$2, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-112(%rbp), %r8d        # 4-byte Reload
	movl	-108(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rsi
	movq	176(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults@PLT
.LBB8_5:                                # %if.end.33
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_widget_show@PLT
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_chain_button_constructed, .Lfunc_end8-gimp_chain_button_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_button_set_property,@function
gimp_chain_button_set_property:         # @gimp_chain_button_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 152(%rdi)
	jmp	.LBB9_5
.LBB9_2:                                # %sw.default
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$205, %edx
	leaq	.L.str.8(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_chain_button_set_property, .Lfunc_end9-gimp_chain_button_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_button_get_property,@function
gimp_chain_button_get_property:         # @gimp_chain_button_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB10_2
	jmp	.LBB10_1
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	152(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB10_5
.LBB10_2:                               # %sw.default
	jmp	.LBB10_3
.LBB10_3:                               # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$225, %edx
	leaq	.L.str.8(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB10_5
.LBB10_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_chain_button_get_property, .Lfunc_end10-gimp_chain_button_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_line_new,@function
gimp_chain_line_new:                    # @gimp_chain_line_new
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	callq	gimp_chain_line_get_type
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 96(%rax)
	movl	-8(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 100(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_chain_line_new, .Lfunc_end11-gimp_chain_line_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_line_get_type,@function
gimp_chain_line_get_type:               # @gimp_chain_line_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_chain_line_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB12_2
# BB#1:                                 # %land.rhs
	leaq	gimp_chain_line_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB12_2:                               # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB12_4
# BB#3:                                 # %if.then
	callq	gtk_widget_get_type@PLT
	leaq	.L.str.5(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$720, %edx              # imm = 0x2D0
	leaq	gimp_chain_line_class_intern_init(%rip), %rdi
	movl	$104, %r8d
	leaq	gimp_chain_line_init(%rip), %rcx
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
	leaq	gimp_chain_line_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB12_4:                               # %if.end
	movq	gimp_chain_line_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_chain_line_get_type, .Lfunc_end12-gimp_chain_line_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_line_class_intern_init,@function
gimp_chain_line_class_intern_init:      # @gimp_chain_line_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_chain_line_parent_class(%rip)
	cmpl	$0, GimpChainLine_private_offset(%rip)
	je	.LBB13_2
# BB#1:                                 # %if.then
	leaq	GimpChainLine_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB13_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_chain_line_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_chain_line_class_intern_init, .Lfunc_end13-gimp_chain_line_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_line_init,@function
gimp_chain_line_init:                   # @gimp_chain_line_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_has_window@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_chain_line_init, .Lfunc_end14-gimp_chain_line_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_line_class_init,@function
gimp_chain_line_class_init:             # @gimp_chain_line_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_chain_line_expose_event(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 392(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_chain_line_class_init, .Lfunc_end15-gimp_chain_line_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_chain_line_expose_event,@function
gimp_chain_line_expose_event:           # @gimp_chain_line_expose_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region@PLT
	movq	-96(%rbp), %rdi
	cvtsi2sdl	-56(%rbp), %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	callq	cairo_translate@PLT
	movq	-96(%rbp), %rdi
	callq	cairo_clip@PLT
	movl	$2, %ecx
	movl	-48(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -80(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rsi
	movl	96(%rsi), %eax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_direction@PLT
	cmpl	$2, %eax
	jne	.LBB16_6
# BB#1:                                 # %if.then
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	ja	.LBB16_5
# BB#26:                                # %if.then
	leaq	.LJTI16_0(%rip), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB16_2:                               # %sw.bb
	jmp	.LBB16_5
.LBB16_3:                               # %sw.bb.11
	movl	$3, -84(%rbp)
	jmp	.LBB16_5
.LBB16_4:                               # %sw.bb.12
	movl	$1, -84(%rbp)
.LBB16_5:                               # %sw.epilog
	jmp	.LBB16_6
.LBB16_6:                               # %if.end
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	ja	.LBB16_23
# BB#27:                                # %if.end
	leaq	.LJTI16_1(%rip), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB16_7:                               # %sw.bb.13
	movl	-80(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -72(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$1, 100(%rcx)
	jne	.LBB16_9
# BB#8:                                 # %cond.true
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB16_10
.LBB16_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB16_10
.LBB16_10:                              # %cond.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	jmp	.LBB16_24
.LBB16_11:                              # %sw.bb.34
	movl	-80(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -72(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$1, 100(%rcx)
	jne	.LBB16_13
# BB#12:                                # %cond.true.54
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB16_14
.LBB16_13:                              # %cond.false.57
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB16_14
.LBB16_14:                              # %cond.end.58
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	jmp	.LBB16_24
.LBB16_15:                              # %sw.bb.62
	movl	-76(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-76(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$1, 100(%rcx)
	jne	.LBB16_17
# BB#16:                                # %cond.true.78
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB16_18
.LBB16_17:                              # %cond.false.81
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB16_18
.LBB16_18:                              # %cond.end.82
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB16_24
.LBB16_19:                              # %sw.bb.90
	movl	-76(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-76(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$1, 100(%rcx)
	jne	.LBB16_21
# BB#20:                                # %cond.true.106
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB16_22
.LBB16_21:                              # %cond.false.109
	xorl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB16_22
.LBB16_22:                              # %cond.end.110
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB16_24
.LBB16_23:                              # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB16_25
.LBB16_24:                              # %sw.epilog.118
	movq	-96(%rbp), %rdi
	cvtsi2sdl	-80(%rbp), %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	callq	cairo_move_to@PLT
	movq	-96(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	callq	cairo_line_to@PLT
	movq	-96(%rbp), %rdi
	cvtsi2sdl	-64(%rbp), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	callq	cairo_line_to@PLT
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-96(%rbp), %rdi
	callq	cairo_set_line_width@PLT
	xorl	%esi, %esi
	movq	-96(%rbp), %rdi
	callq	cairo_set_line_cap@PLT
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color@PLT
	movq	-96(%rbp), %rdi
	callq	cairo_stroke@PLT
	movq	-96(%rbp), %rdi
	callq	cairo_destroy@PLT
	movl	$1, -4(%rbp)
.LBB16_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_chain_line_expose_event, .Lfunc_end16-gimp_chain_line_expose_event
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI16_0:
	.long	.LBB16_2-.LJTI16_0
	.long	.LBB16_3-.LJTI16_0
	.long	.LBB16_2-.LJTI16_0
	.long	.LBB16_4-.LJTI16_0
.LJTI16_1:
	.long	.LBB16_15-.LJTI16_1
	.long	.LBB16_7-.LJTI16_1
	.long	.LBB16_19-.LJTI16_1
	.long	.LBB16_11-.LJTI16_1

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
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
	je	.LBB17_2
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
.LBB17_2:                               # %entry
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
.Lfunc_end17:
	.size	g_warning, .Lfunc_end17-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_chain_button_clicked_callback,@function
gimp_chain_button_clicked_callback:     # @gimp_chain_button_clicked_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_chain_button_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_chain_button_clicked_callback(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	cmpl	$0, 156(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gimp_chain_button_set_active@PLT
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	gimp_chain_button_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB18_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_chain_button_clicked_callback, .Lfunc_end18-gimp_chain_button_clicked_callback
	.cfi_endproc

	.type	gimp_chain_button_get_type.g_define_type_id__volatile,@object # @gimp_chain_button_get_type.g_define_type_id__volatile
	.local	gimp_chain_button_get_type.g_define_type_id__volatile
	.comm	gimp_chain_button_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpChainButton"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"position"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LibGimpWidgets"
	.size	.L.str.2, 15

	.type	.L__func__.gimp_chain_button_set_active,@object # @__func__.gimp_chain_button_set_active
.L__func__.gimp_chain_button_set_active:
	.asciz	"gimp_chain_button_set_active"
	.size	.L__func__.gimp_chain_button_set_active, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CHAIN_BUTTON (button)"
	.size	.L.str.3, 30

	.type	.L__func__.gimp_chain_button_get_active,@object # @__func__.gimp_chain_button_get_active
.L__func__.gimp_chain_button_get_active:
	.asciz	"gimp_chain_button_get_active"
	.size	.L__func__.gimp_chain_button_get_active, 29

	.type	gimp_chain_button_parent_class,@object # @gimp_chain_button_parent_class
	.local	gimp_chain_button_parent_class
	.comm	gimp_chain_button_parent_class,8,8
	.type	GimpChainButton_private_offset,@object # @GimpChainButton_private_offset
	.local	GimpChainButton_private_offset
	.comm	GimpChainButton_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"toggled"
	.size	.L.str.4, 8

	.type	gimp_chain_button_signals,@object # @gimp_chain_button_signals
	.local	gimp_chain_button_signals
	.comm	gimp_chain_button_signals,4,4
	.type	gimp_chain_line_get_type.g_define_type_id__volatile,@object # @gimp_chain_line_get_type.g_define_type_id__volatile
	.local	gimp_chain_line_get_type.g_define_type_id__volatile
	.comm	gimp_chain_line_get_type.g_define_type_id__volatile,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GimpChainLine"
	.size	.L.str.5, 14

	.type	gimp_chain_line_parent_class,@object # @gimp_chain_line_parent_class
	.local	gimp_chain_line_parent_class
	.comm	gimp_chain_line_parent_class,8,8
	.type	GimpChainLine_private_offset,@object # @GimpChainLine_private_offset
	.local	GimpChainLine_private_offset
	.comm	GimpChainLine_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.6, 54

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimpchainbutton.c"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"property"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"clicked"
	.size	.L.str.9, 8

	.type	.L__func__.gimp_chain_button_clicked_callback,@object # @__func__.gimp_chain_button_clicked_callback
.L__func__.gimp_chain_button_clicked_callback:
	.asciz	"gimp_chain_button_clicked_callback"
	.size	.L__func__.gimp_chain_button_clicked_callback, 35

	.type	gimp_chain_stock_items,@object # @gimp_chain_stock_items
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_chain_stock_items:
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.size	gimp_chain_stock_items, 32

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"gimp-hchain"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-hchain-broken"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-vchain"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-vchain-broken"
	.size	.L.str.13, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
