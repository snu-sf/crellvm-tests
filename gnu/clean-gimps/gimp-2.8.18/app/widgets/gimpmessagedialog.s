	.text
	.file	"gimpmessagedialog.bc"
	.globl	gimp_message_dialog_get_type
	.align	16, 0x90
	.type	gimp_message_dialog_get_type,@function
gimp_message_dialog_get_type:           # @gimp_message_dialog_get_type
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
	movq	gimp_message_dialog_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_message_dialog_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$984, %edx              # imm = 0x3D8
	movabsq	$gimp_message_dialog_class_intern_init, %rdi
	movl	$272, %r8d              # imm = 0x110
	movabsq	$gimp_message_dialog_init, %rcx
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
	movabsq	$gimp_message_dialog_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_message_dialog_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_message_dialog_get_type, .Lfunc_end0-gimp_message_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_dialog_class_intern_init,@function
gimp_message_dialog_class_intern_init:  # @gimp_message_dialog_class_intern_init
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
	movq	%rax, gimp_message_dialog_parent_class
	cmpl	$0, GimpMessageDialog_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpMessageDialog_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_message_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_message_dialog_class_intern_init, .Lfunc_end1-gimp_message_dialog_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_dialog_init,@function
gimp_message_dialog_init:               # @gimp_message_dialog_init
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
	.size	gimp_message_dialog_init, .Lfunc_end2-gimp_message_dialog_init
	.cfi_endproc

	.globl	gimp_message_dialog_new
	.align	16, 0x90
	.type	gimp_message_dialog_new,@function
gimp_message_dialog_new:                # @gimp_message_dialog_new
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
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	testb	%al, %al
	movaps	%xmm7, -384(%rbp)       # 16-byte Spill
	movaps	%xmm6, -400(%rbp)       # 16-byte Spill
	movaps	%xmm5, -416(%rbp)       # 16-byte Spill
	movaps	%xmm4, -432(%rbp)       # 16-byte Spill
	movaps	%xmm3, -448(%rbp)       # 16-byte Spill
	movaps	%xmm2, -464(%rbp)       # 16-byte Spill
	movaps	%xmm1, -480(%rbp)       # 16-byte Spill
	movaps	%xmm0, -496(%rbp)       # 16-byte Spill
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r9, -512(%rbp)         # 8-byte Spill
	movq	%r8, -520(%rbp)         # 8-byte Spill
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	movq	%rsi, -544(%rbp)        # 8-byte Spill
	je	.LBB3_44
# BB#43:                                # %entry
	movaps	-496(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -320(%rbp)
	movaps	-480(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -304(%rbp)
	movaps	-464(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -288(%rbp)
	movaps	-448(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -272(%rbp)
	movaps	-432(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -256(%rbp)
	movaps	-416(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -240(%rbp)
	movaps	-400(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -224(%rbp)
	movaps	-384(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -208(%rbp)
.LBB3_44:                               # %entry
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	-520(%rbp), %rcx        # 8-byte Reload
	movl	-524(%rbp), %edx        # 4-byte Reload
	movq	-536(%rbp), %rsi        # 8-byte Reload
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	-504(%rbp), %r8         # 8-byte Reload
	movq	%r8, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_message_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB3_42
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -56(%rbp)
	je	.LBB3_15
# BB#7:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_9
# BB#8:                                 # %if.then.3
	movl	$0, -132(%rbp)
	jmp	.LBB3_14
.LBB3_9:                                # %if.else.4
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_12
# BB#10:                                # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB3_12
# BB#11:                                # %if.then.8
	movl	$1, -132(%rbp)
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.9
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB3_13:                               # %if.end.11
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.12
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB3_16
.LBB3_15:                               # %if.then.14
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_message_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB3_42
.LBB3_17:                               # %if.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.17
	callq	gimp_message_dialog_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	movabsq	$.L.str.7, %r9
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-40(%rbp), %rbx
	movl	-60(%rbp), %r10d
	andl	$1, %r10d
	movq	-72(%rbp), %r14
	movq	-80(%rbp), %r15
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	%r10d, (%rsp)
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	-552(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -568(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -88(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB3_41
# BB#19:                                # %if.then.21
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB3_21
# BB#20:                                # %if.then.30
	movl	$0, -156(%rbp)
	jmp	.LBB3_26
.LBB3_21:                               # %if.else.31
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_24
# BB#22:                                # %land.lhs.true.34
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB3_24
# BB#23:                                # %if.then.38
	movl	$1, -156(%rbp)
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.39
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB3_25:                               # %if.end.41
	jmp	.LBB3_26
.LBB3_26:                               # %if.end.42
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	jne	.LBB3_28
# BB#27:                                # %if.then.45
	movq	-56(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -56(%rbp)
.LBB3_28:                               # %if.end.47
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB3_30
# BB#29:                                # %if.then.56
	movl	$0, -180(%rbp)
	jmp	.LBB3_35
.LBB3_30:                               # %if.else.57
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_33
# BB#31:                                # %land.lhs.true.60
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB3_33
# BB#32:                                # %if.then.64
	movl	$1, -180(%rbp)
	jmp	.LBB3_34
.LBB3_33:                               # %if.else.65
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB3_34:                               # %if.end.67
	jmp	.LBB3_35
.LBB3_35:                               # %if.end.68
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB3_39
# BB#36:                                # %if.then.71
	movq	-88(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movl	-60(%rbp), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB3_38
# BB#37:                                # %if.then.78
	movq	-88(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_destroy_with_parent
.LBB3_38:                               # %if.end.81
	jmp	.LBB3_40
.LBB3_39:                               # %if.else.82
	movq	-88(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen
.LBB3_40:                               # %if.end.86
	jmp	.LBB3_41
.LBB3_41:                               # %if.end.87
	leaq	-112(%rbp), %rax
	leaq	-368(%rbp), %rcx
	movq	%rcx, 16(%rax)
	leaq	16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$48, (%rax)
	movq	-88(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_add_buttons_valist
	leaq	-112(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_message_box_get_type
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-88(%rbp), %rcx
	movq	%rax, 264(%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rcx
	movq	264(%rcx), %rcx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
.LBB3_42:                               # %return
	movq	-32(%rbp), %rax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_message_dialog_new, .Lfunc_end3-gimp_message_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_dialog_class_init,@function
gimp_message_dialog_class_init:         # @gimp_message_dialog_class_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_message_dialog_class_init, .Lfunc_end4-gimp_message_dialog_class_init
	.cfi_endproc

	.type	gimp_message_dialog_get_type.g_define_type_id__volatile,@object # @gimp_message_dialog_get_type.g_define_type_id__volatile
	.local	gimp_message_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_message_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMessageDialog"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_message_dialog_new,@object # @__func__.gimp_message_dialog_new
.L__func__.gimp_message_dialog_new:
	.asciz	"gimp_message_dialog_new"
	.size	.L__func__.gimp_message_dialog_new, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"title != NULL"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"parent == NULL || GTK_IS_WIDGET (parent)"
	.size	.L.str.3, 41

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"title"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"role"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-message-dialog"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"modal"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"help-func"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"help-id"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"stock-id"
	.size	.L.str.10, 9

	.type	gimp_message_dialog_parent_class,@object # @gimp_message_dialog_parent_class
	.local	gimp_message_dialog_parent_class
	.comm	gimp_message_dialog_parent_class,8,8
	.type	GimpMessageDialog_private_offset,@object # @GimpMessageDialog_private_offset
	.local	GimpMessageDialog_private_offset
	.comm	GimpMessageDialog_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
