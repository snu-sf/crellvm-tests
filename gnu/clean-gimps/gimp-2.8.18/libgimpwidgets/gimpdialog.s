	.text
	.file	"gimpdialog.bc"
	.globl	gimp_dialog_get_type
	.align	16, 0x90
	.type	gimp_dialog_get_type,@function
gimp_dialog_get_type:                   # @gimp_dialog_get_type
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
	movq	gimp_dialog_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_dialog_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_dialog_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$984, %edx              # imm = 0x3D8
	leaq	gimp_dialog_class_intern_init(%rip), %rdi
	movl	$264, %r8d              # imm = 0x108
	leaq	gimp_dialog_init(%rip), %rcx
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
	leaq	gimp_dialog_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_dialog_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dialog_get_type, .Lfunc_end0-gimp_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_class_intern_init,@function
gimp_dialog_class_intern_init:          # @gimp_dialog_class_intern_init
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
	movq	%rax, gimp_dialog_parent_class(%rip)
	cmpl	$0, GimpDialog_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpDialog_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dialog_class_intern_init, .Lfunc_end1-gimp_dialog_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_init,@function
gimp_dialog_init:                       # @gimp_dialog_init
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
	leaq	.L.str.13(%rip), %rsi
	leaq	gimp_dialog_response(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dialog_init, .Lfunc_end2-gimp_dialog_init
	.cfi_endproc

	.globl	gimp_dialog_new
	.align	16, 0x90
	.type	gimp_dialog_new,@function
gimp_dialog_new:                        # @gimp_dialog_new
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
	subq	$496, %rsp              # imm = 0x1F0
	testb	%al, %al
	movaps	%xmm7, -320(%rbp)       # 16-byte Spill
	movaps	%xmm6, -336(%rbp)       # 16-byte Spill
	movaps	%xmm5, -352(%rbp)       # 16-byte Spill
	movaps	%xmm4, -368(%rbp)       # 16-byte Spill
	movaps	%xmm3, -384(%rbp)       # 16-byte Spill
	movaps	%xmm2, -400(%rbp)       # 16-byte Spill
	movaps	%xmm1, -416(%rbp)       # 16-byte Spill
	movaps	%xmm0, -432(%rbp)       # 16-byte Spill
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%r9, -448(%rbp)         # 8-byte Spill
	movq	%r8, -456(%rbp)         # 8-byte Spill
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	je	.LBB3_26
# BB#25:                                # %entry
	movaps	-432(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -256(%rbp)
	movaps	-416(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -240(%rbp)
	movaps	-400(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -224(%rbp)
	movaps	-384(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -208(%rbp)
	movaps	-368(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -192(%rbp)
	movaps	-352(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -176(%rbp)
	movaps	-336(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -160(%rbp)
	movaps	-320(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -144(%rbp)
.LBB3_26:                               # %entry
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movl	-460(%rbp), %edx        # 4-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	-440(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB3_10
# BB#2:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.4
	movl	$1, -116(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.5
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -116(%rbp)
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.7
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB3_11
.LBB3_10:                               # %if.then.9
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.10
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_dialog_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_24
.LBB3_12:                               # %if.end.11
	jmp	.LBB3_13
.LBB3_13:                               # %do.end
	jmp	.LBB3_14
.LBB3_14:                               # %do.body.12
	cmpq	$0, -16(%rbp)
	je	.LBB3_16
# BB#15:                                # %if.then.14
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.15
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_dialog_new(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_24
.LBB3_17:                               # %if.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.17
	jmp	.LBB3_19
.LBB3_19:                               # %do.body.18
	cmpq	$0, -24(%rbp)
	je	.LBB3_21
# BB#20:                                # %if.then.20
	jmp	.LBB3_22
.LBB3_21:                               # %if.else.21
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_dialog_new(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_24
.LBB3_22:                               # %if.end.22
	jmp	.LBB3_23
.LBB3_23:                               # %do.end.23
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	leaq	-304(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$48, (%rcx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	%rax, (%rsp)
	callq	gimp_dialog_new_valist@PLT
	leaq	-96(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	%rdx, -488(%rbp)        # 8-byte Spill
.LBB3_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dialog_new, .Lfunc_end3-gimp_dialog_new
	.cfi_endproc

	.globl	gimp_dialog_new_valist
	.align	16, 0x90
	.type	gimp_dialog_new_valist,@function
gimp_dialog_new_valist:                 # @gimp_dialog_new_valist
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%rax, -104(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_dialog_new_valist(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -48(%rbp)
	jmp	.LBB4_28
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpq	$0, -64(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_dialog_new_valist(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -48(%rbp)
	jmp	.LBB4_28
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.7
	cmpq	$0, -72(%rbp)
	je	.LBB4_20
# BB#12:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.9
	movl	$0, -132(%rbp)
	jmp	.LBB4_19
.LBB4_14:                               # %if.else.10
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_17
# BB#15:                                # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB4_17
# BB#16:                                # %if.then.14
	movl	$1, -132(%rbp)
	jmp	.LBB4_18
.LBB4_17:                               # %if.else.15
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -132(%rbp)
.LBB4_18:                               # %if.end.17
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.18
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB4_21
.LBB4_20:                               # %if.then.20
	jmp	.LBB4_22
.LBB4_21:                               # %if.else.21
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_dialog_new_valist(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -48(%rbp)
	jmp	.LBB4_28
.LBB4_22:                               # %if.end.22
	jmp	.LBB4_23
.LBB4_23:                               # %do.end.23
	callq	gimp_dialog_get_type@PLT
	leaq	.L.str.5(%rip), %rsi
	leaq	.L.str.6(%rip), %rcx
	leaq	.L.str.7(%rip), %r9
	leaq	.L.str.8(%rip), %rdx
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.10(%rip), %r8
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %r14
	movl	-76(%rbp), %r10d
	andl	$1, %r10d
	movq	-88(%rbp), %r15
	movq	-96(%rbp), %r12
	movq	-72(%rbp), %r13
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movl	%r10d, (%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%r14, 40(%rsp)
	movq	%r13, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r11, -168(%rbp)        # 8-byte Spill
	callq	g_object_new@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB4_27
# BB#24:                                # %if.then.27
	movl	-76(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB4_26
# BB#25:                                # %if.then.30
	leaq	.L.str.11(%rip), %rsi
	leaq	gimp_dialog_close(%rip), %rax
	movl	$2, %r8d
	movq	-72(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object@PLT
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB4_26:                               # %if.end.32
	jmp	.LBB4_27
.LBB4_27:                               # %if.end.33
	movq	-112(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_add_buttons_valist@PLT
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB4_28:                               # %return
	movq	-48(%rbp), %rax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dialog_new_valist, .Lfunc_end4-gimp_dialog_new_valist
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_close,@function
gimp_dialog_close:                      # @gimp_dialog_close
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	cmpq	$0, %rax
	je	.LBB5_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	gdk_event_new@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, %rdi
	callq	g_object_ref@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movb	$1, 16(%rax)
	movq	-24(%rbp), %rdi
	callq	gtk_main_do_event@PLT
	movq	-24(%rbp), %rdi
	callq	gdk_event_free@PLT
.LBB5_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dialog_close, .Lfunc_end5-gimp_dialog_close
	.cfi_endproc

	.globl	gimp_dialog_add_buttons_valist
	.align	16, 0x90
	.type	gimp_dialog_add_buttons_valist,@function
gimp_dialog_add_buttons_valist:         # @gimp_dialog_add_buttons_valist
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dialog_get_type@PLT
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
	leaq	.L__func__.gimp_dialog_add_buttons_valist(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_21
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	ja	.LBB6_15
# BB#14:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_16
.LBB6_15:                               # %vaarg.in_mem
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -80(%rbp)         # 8-byte Spill
.LBB6_16:                               # %vaarg.end
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB6_21
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	ja	.LBB6_19
# BB#18:                                # %vaarg.in_reg.15
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_20
.LBB6_19:                               # %vaarg.in_mem.17
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -104(%rbp)        # 8-byte Spill
.LBB6_20:                               # %vaarg.end.21
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_dialog_add_button@PLT
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB6_13
.LBB6_21:                               # %while.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dialog_add_buttons_valist, .Lfunc_end6-gimp_dialog_add_buttons_valist
	.cfi_endproc

	.globl	gimp_dialog_add_button
	.align	16, 0x90
	.type	gimp_dialog_add_button,@function
gimp_dialog_add_button:                 # @gimp_dialog_add_button
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$-11, -20(%rbp)
	jne	.LBB7_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB7_3
# BB#2:                                 # %if.then.2
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_hide@PLT
.LBB7_3:                                # %if.end
	jmp	.LBB7_4
.LBB7_4:                                # %if.end.4
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_dialog_add_button@PLT
	movq	%rax, -32(%rbp)
	cmpl	$-5, -20(%rbp)
	jne	.LBB7_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response@PLT
.LBB7_6:                                # %if.end.12
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dialog_add_button, .Lfunc_end7-gimp_dialog_add_button
	.cfi_endproc

	.globl	gimp_dialog_add_buttons
	.align	16, 0x90
	.type	gimp_dialog_add_buttons,@function
gimp_dialog_add_buttons:                # @gimp_dialog_add_buttons
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
	je	.LBB8_2
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
.LBB8_2:                                # %entry
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
	movq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	gimp_dialog_add_buttons_valist@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dialog_add_buttons, .Lfunc_end8-gimp_dialog_add_buttons
	.cfi_endproc

	.globl	gimp_dialog_run
	.align	16, 0x90
	.type	gimp_dialog_run,@function
gimp_dialog_run:                        # @gimp_dialog_run
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	.Lgimp_dialog_run.ri(%rip), %rdi
	movq	%rdi, -48(%rbp)
	movq	.Lgimp_dialog_run.ri+8(%rip), %rdi
	movq	%rdi, -40(%rbp)
	movq	.Lgimp_dialog_run.ri+16(%rip), %rdi
	movq	%rdi, -32(%rbp)
	movq	.Lgimp_dialog_run.ri+24(%rip), %rdi
	movq	%rdi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_dialog_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_dialog_run(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB9_23
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_window_present@PLT
	leaq	.L.str.13(%rip), %rsi
	leaq	run_response_handler(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-48(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.14(%rip), %rsi
	leaq	run_unmap_handler(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	leaq	-48(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.15(%rip), %rsi
	leaq	run_delete_handler(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	leaq	-48(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.11(%rip), %rsi
	leaq	run_destroy_handler(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	leaq	-48(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	xorl	%esi, %esi
	movq	%rax, -72(%rbp)
	callq	g_main_loop_new@PLT
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.19
	movq	gdk_threads_unlock@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.LBB9_15
# BB#14:                                # %if.then.21
	movq	gdk_threads_unlock@GOTPCREL(%rip), %rax
	callq	*(%rax)
.LBB9_15:                               # %if.end.22
	jmp	.LBB9_16
.LBB9_16:                               # %do.end.23
	movq	-32(%rbp), %rdi
	callq	g_main_loop_run@PLT
# BB#17:                                # %do.body.25
	movq	gdk_threads_lock@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.LBB9_19
# BB#18:                                # %if.then.27
	movq	gdk_threads_lock@GOTPCREL(%rip), %rax
	callq	*(%rax)
.LBB9_19:                               # %if.end.28
	jmp	.LBB9_20
.LBB9_20:                               # %do.end.29
	movq	-32(%rbp), %rdi
	callq	g_main_loop_unref@PLT
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB9_22
# BB#21:                                # %if.then.34
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect@PLT
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect@PLT
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect@PLT
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect@PLT
.LBB9_22:                               # %if.end.35
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movl	-40(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dialog_run, .Lfunc_end9-gimp_dialog_run
	.cfi_endproc

	.align	16, 0x90
	.type	run_response_handler,@function
run_response_handler:                   # @run_response_handler
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movl	%esi, 8(%rdx)
	movq	-24(%rbp), %rdi
	callq	run_shutdown_loop
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	run_response_handler, .Lfunc_end10-run_response_handler
	.cfi_endproc

	.align	16, 0x90
	.type	run_unmap_handler,@function
run_unmap_handler:                      # @run_unmap_handler
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	run_shutdown_loop
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	run_unmap_handler, .Lfunc_end11-run_unmap_handler
	.cfi_endproc

	.align	16, 0x90
	.type	run_delete_handler,@function
run_delete_handler:                     # @run_delete_handler
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
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	run_shutdown_loop
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	run_delete_handler, .Lfunc_end12-run_delete_handler
	.cfi_endproc

	.align	16, 0x90
	.type	run_destroy_handler,@function
run_destroy_handler:                    # @run_destroy_handler
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	$1, 24(%rsi)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	run_destroy_handler, .Lfunc_end13-run_destroy_handler
	.cfi_endproc

	.globl	gimp_dialogs_show_help_button
	.align	16, 0x90
	.type	gimp_dialogs_show_help_button,@function
gimp_dialogs_show_help_button:          # @gimp_dialogs_show_help_button
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
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, show_help_button(%rip)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_dialogs_show_help_button, .Lfunc_end14-gimp_dialogs_show_help_button
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_class_init,@function
gimp_dialog_class_init:                 # @gimp_dialog_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
.Ltmp53:
	.cfi_offset %rbx, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.8(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %ecx
	leaq	gimp_dialog_close(%rip), %rdx
	leaq	gimp_dialog_delete_event(%rip), %r8
	leaq	gimp_dialog_hide(%rip), %r9
	leaq	gimp_dialog_get_property(%rip), %r10
	leaq	gimp_dialog_set_property(%rip), %r11
	leaq	gimp_dialog_finalize(%rip), %rbx
	leaq	gimp_dialog_dispose(%rip), %r14
	leaq	gimp_dialog_constructed(%rip), %r15
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%r15, 72(%rax)
	movq	-40(%rbp), %rax
	movq	%r14, 40(%rax)
	movq	-40(%rbp), %rax
	movq	%rbx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%r11, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 192(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 376(%rax)
	movq	-56(%rbp), %rax
	movq	%rdx, 912(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_param_spec_pointer@PLT
	movl	$1, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.9(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$235, %r8d
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_string@PLT
	movl	$2, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	leaq	.L.str.10(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object@PLT
	movl	$3, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movl	$24, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_dialog_class_init, .Lfunc_end15-gimp_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_constructed,@function
gimp_dialog_constructed:                # @gimp_dialog_constructed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_dialog_parent_class(%rip), %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 72(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dialog_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	gimp_help_connect@PLT
.LBB16_4:                               # %if.end.10
	cmpl	$0, show_help_button(%rip)
	je	.LBB16_8
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_8
# BB#6:                                 # %land.lhs.true.14
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB16_8
# BB#7:                                 # %if.then.17
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_dialog_get_action_area@PLT
	leaq	.L.str.16(%rip), %rdi
	movq	%rax, -32(%rbp)
	callq	gtk_button_new_from_stock@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_end@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_button_box_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_button_box_set_child_secondary@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.17(%rip), %rsi
	leaq	gimp_dialog_help(%rip), %rax
	movl	$2, %r8d
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rax, %rdx
	movq	%r9, %rcx
	callq	g_signal_connect_object@PLT
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB16_8:                               # %if.end.31
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_dialog_constructed, .Lfunc_end16-gimp_dialog_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_dispose,@function
gimp_dialog_dispose:                    # @gimp_dialog_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	callq	g_main_depth@PLT
	cmpl	$0, %eax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_display@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref@PLT
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB17_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dialog_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	cmpq	$0, -16(%rbp)
	je	.LBB17_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	gdk_display_flush@PLT
	movq	-16(%rbp), %rdi
	callq	g_object_unref@PLT
.LBB17_4:                               # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_dialog_dispose, .Lfunc_end17-gimp_dialog_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_finalize,@function
gimp_dialog_finalize:                   # @gimp_dialog_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB18_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dialog_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_dialog_finalize, .Lfunc_end18-gimp_dialog_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_set_property,@function
gimp_dialog_set_property:               # @gimp_dialog_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	%r9d, -112(%rbp)        # 4-byte Spill
	je	.LBB19_1
	jmp	.LBB19_20
.LBB19_20:                              # %entry
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB19_2
	jmp	.LBB19_21
.LBB19_21:                              # %entry
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB19_3
	jmp	.LBB19_16
.LBB19_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_pointer@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB19_19
.LBB19_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB19_19
.LBB19_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_object@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB19_15
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_window_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB19_6
# BB#5:                                 # %if.then.9
	movl	$0, -68(%rbp)
	jmp	.LBB19_11
.LBB19_6:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_9
# BB#7:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB19_9
# BB#8:                                 # %if.then.12
	movl	$1, -68(%rbp)
	jmp	.LBB19_10
.LBB19_9:                               # %if.else.13
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB19_10:                              # %if.end
	jmp	.LBB19_11
.LBB19_11:                              # %if.end.15
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB19_13
# BB#12:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for@PLT
	jmp	.LBB19_14
.LBB19_13:                              # %if.else.22
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_screen@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position@PLT
.LBB19_14:                              # %if.end.28
	jmp	.LBB19_15
.LBB19_15:                              # %if.end.29
	jmp	.LBB19_19
.LBB19_16:                              # %sw.default
	jmp	.LBB19_17
.LBB19_17:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-92(%rbp), %r8d
	movq	-88(%rbp), %rax
	movq	8(%rax), %r9
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -172(%rbp)        # 4-byte Spill
	movq	%r9, -184(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.18(%rip), %rdi
	leaq	.L.str.19(%rip), %rsi
	movl	$264, %edx              # imm = 0x108
	leaq	.L.str.20(%rip), %rcx
	movl	-172(%rbp), %r8d        # 4-byte Reload
	movq	-184(%rbp), %r9         # 8-byte Reload
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#18:                                # %do.end
	jmp	.LBB19_19
.LBB19_19:                              # %sw.epilog
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_dialog_set_property, .Lfunc_end19-gimp_dialog_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_get_property,@function
gimp_dialog_get_property:               # @gimp_dialog_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB20_1
	jmp	.LBB20_7
.LBB20_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB20_2
	jmp	.LBB20_3
.LBB20_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_pointer@PLT
	jmp	.LBB20_6
.LBB20_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB20_6
.LBB20_3:                               # %sw.default
	jmp	.LBB20_4
.LBB20_4:                               # %do.body
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
	leaq	.L.str.18(%rip), %rdi
	leaq	.L.str.19(%rip), %rsi
	movl	$288, %edx              # imm = 0x120
	leaq	.L.str.20(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB20_6
.LBB20_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_dialog_get_property, .Lfunc_end20-gimp_dialog_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_hide,@function
gimp_dialog_hide:                       # @gimp_dialog_hide
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_focus@PLT
	movq	gimp_dialog_parent_class(%rip), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_dialog_hide, .Lfunc_end21-gimp_dialog_hide
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_delete_event,@function
gimp_dialog_delete_event:               # @gimp_dialog_delete_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_dialog_delete_event, .Lfunc_end22-gimp_dialog_delete_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_help,@function
gimp_dialog_help:                       # @gimp_dialog_help
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	*%rax
.LBB23_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_dialog_help, .Lfunc_end23-gimp_dialog_help
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
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
	je	.LBB24_2
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
.LBB24_2:                               # %entry
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
.Lfunc_end24:
	.size	g_warning, .Lfunc_end24-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_response,@function
gimp_dialog_response:                   # @gimp_dialog_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_dialog_get_action_area@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_container_get_children@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB25_19
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_dialog_get_response_for_widget@PLT
	cmpl	-12(%rbp), %eax
	jne	.LBB25_14
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_button_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB25_5
# BB#4:                                 # %if.then.7
	movl	$0, -68(%rbp)
	jmp	.LBB25_10
.LBB25_5:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_8
# BB#6:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB25_8
# BB#7:                                 # %if.then.11
	movl	$1, -68(%rbp)
	jmp	.LBB25_9
.LBB25_8:                               # %if.else.12
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB25_9:                               # %if.end
	jmp	.LBB25_10
.LBB25_10:                              # %if.end.14
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB25_12
# BB#11:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_button_get_focus_on_click@PLT
	cmpl	$0, %eax
	je	.LBB25_13
.LBB25_12:                              # %if.then.20
	movq	-48(%rbp), %rdi
	callq	gtk_widget_grab_focus@PLT
.LBB25_13:                              # %if.end.21
	jmp	.LBB25_19
.LBB25_14:                              # %if.end.22
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_15
.LBB25_15:                              # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB25_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB25_18
.LBB25_17:                              # %cond.false
                                        #   in Loop: Header=BB25_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB25_18
.LBB25_18:                              # %cond.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB25_1
.LBB25_19:                              # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_dialog_response, .Lfunc_end25-gimp_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	run_shutdown_loop,@function
run_shutdown_loop:                      # @run_shutdown_loop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	g_main_loop_is_running@PLT
	cmpl	$0, %eax
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_main_loop_quit@PLT
.LBB26_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	run_shutdown_loop, .Lfunc_end26-run_shutdown_loop
	.cfi_endproc

	.type	gimp_dialog_get_type.g_define_type_id__volatile,@object # @gimp_dialog_get_type.g_define_type_id__volatile
	.local	gimp_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDialog"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_dialog_new,@object # @__func__.gimp_dialog_new
.L__func__.gimp_dialog_new:
	.asciz	"gimp_dialog_new"
	.size	.L__func__.gimp_dialog_new, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"parent == NULL || GTK_IS_WIDGET (parent)"
	.size	.L.str.2, 41

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"title != NULL"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"role != NULL"
	.size	.L.str.4, 13

	.type	.L__func__.gimp_dialog_new_valist,@object # @__func__.gimp_dialog_new_valist
.L__func__.gimp_dialog_new_valist:
	.asciz	"gimp_dialog_new_valist"
	.size	.L__func__.gimp_dialog_new_valist, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"title"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"role"
	.size	.L.str.6, 5

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
	.asciz	"parent"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"destroy"
	.size	.L.str.11, 8

	.type	.L__func__.gimp_dialog_add_buttons_valist,@object # @__func__.gimp_dialog_add_buttons_valist
.L__func__.gimp_dialog_add_buttons_valist:
	.asciz	"gimp_dialog_add_buttons_valist"
	.size	.L__func__.gimp_dialog_add_buttons_valist, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_DIALOG (dialog)"
	.size	.L.str.12, 24

	.type	.Lgimp_dialog_run.ri,@object # @gimp_dialog_run.ri
	.section	.rodata,"a",@progbits
	.align	8
.Lgimp_dialog_run.ri:
	.quad	0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	.Lgimp_dialog_run.ri, 32

	.type	.L__func__.gimp_dialog_run,@object # @__func__.gimp_dialog_run
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_dialog_run:
	.asciz	"gimp_dialog_run"
	.size	.L__func__.gimp_dialog_run, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"response"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"unmap"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"delete-event"
	.size	.L.str.15, 13

	.type	show_help_button,@object # @show_help_button
	.data
	.align	4
show_help_button:
	.long	1                       # 0x1
	.size	show_help_button, 4

	.type	gimp_dialog_parent_class,@object # @gimp_dialog_parent_class
	.local	gimp_dialog_parent_class
	.comm	gimp_dialog_parent_class,8,8
	.type	GimpDialog_private_offset,@object # @GimpDialog_private_offset
	.local	GimpDialog_private_offset
	.comm	GimpDialog_private_offset,4,4
	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"gtk-help"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"clicked"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.18, 54

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimpdialog.c"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"property"
	.size	.L.str.20, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
