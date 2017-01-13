	.text
	.file	"gimptooldialog.bc"
	.globl	gimp_tool_dialog_get_type
	.align	16, 0x90
	.type	gimp_tool_dialog_get_type,@function
gimp_tool_dialog_get_type:              # @gimp_tool_dialog_get_type
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
	movq	gimp_tool_dialog_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tool_dialog_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_viewable_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$984, %edx              # imm = 0x3D8
	movabsq	$gimp_tool_dialog_class_intern_init, %rdi
	movl	$304, %r8d              # imm = 0x130
	movabsq	$gimp_tool_dialog_init, %rcx
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
	movabsq	$gimp_tool_dialog_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tool_dialog_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_dialog_get_type, .Lfunc_end0-gimp_tool_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_dialog_class_intern_init,@function
gimp_tool_dialog_class_intern_init:     # @gimp_tool_dialog_class_intern_init
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
	movq	%rax, gimp_tool_dialog_parent_class
	cmpl	$0, GimpToolDialog_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpToolDialog_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tool_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_dialog_class_intern_init, .Lfunc_end1-gimp_tool_dialog_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_dialog_init,@function
gimp_tool_dialog_init:                  # @gimp_tool_dialog_init
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
	.size	gimp_tool_dialog_init, .Lfunc_end2-gimp_tool_dialog_init
	.cfi_endproc

	.globl	gimp_tool_dialog_new
	.align	16, 0x90
	.type	gimp_tool_dialog_new,@function
gimp_tool_dialog_new:                   # @gimp_tool_dialog_new
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$664, %rsp              # imm = 0x298
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	testb	%al, %al
	movaps	%xmm7, -368(%rbp)       # 16-byte Spill
	movaps	%xmm6, -384(%rbp)       # 16-byte Spill
	movaps	%xmm5, -400(%rbp)       # 16-byte Spill
	movaps	%xmm4, -416(%rbp)       # 16-byte Spill
	movaps	%xmm3, -432(%rbp)       # 16-byte Spill
	movaps	%xmm2, -448(%rbp)       # 16-byte Spill
	movaps	%xmm1, -464(%rbp)       # 16-byte Spill
	movaps	%xmm0, -480(%rbp)       # 16-byte Spill
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r9, -496(%rbp)         # 8-byte Spill
	movq	%r8, -504(%rbp)         # 8-byte Spill
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	je	.LBB3_30
# BB#29:                                # %entry
	movaps	-480(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -304(%rbp)
	movaps	-464(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -288(%rbp)
	movaps	-448(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -272(%rbp)
	movaps	-432(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -256(%rbp)
	movaps	-416(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -240(%rbp)
	movaps	-400(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -224(%rbp)
	movaps	-384(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -208(%rbp)
	movaps	-368(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -192(%rbp)
.LBB3_30:                               # %entry
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, -312(%rbp)
	movq	-504(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -320(%rbp)
	movq	-512(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -328(%rbp)
	movq	-520(%rbp), %rsi        # 8-byte Reload
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	-488(%rbp), %r8         # 8-byte Reload
	movq	%r8, -56(%rbp)
	movq	%rdi, -64(%rbp)
	movq	%rsi, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -148(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -148(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_28
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -172(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -172(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_28
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-56(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -88(%rbp)
	callq	gimp_tool_dialog_get_type
	movq	-56(%rbp), %rsi
	movq	64(%rsi), %rdx
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-56(%rbp), %rdx
	movq	104(%rdx), %rdx
	movq	-88(%rbp), %rsi
	cmpq	$0, -72(%rbp)
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	movq	%rsi, -576(%rbp)        # 8-byte Spill
	je	.LBB3_26
# BB#25:                                # %cond.true
	movq	-72(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB3_27
.LBB3_26:                               # %cond.false
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB3_27:                               # %cond.end
	movq	-584(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r9
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %r8
	movabsq	$.L.str.9, %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-544(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-552(%rbp), %r15        # 8-byte Reload
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	movq	-560(%rbp), %r12        # 8-byte Reload
	movq	%r8, -608(%rbp)         # 8-byte Spill
	movq	%r12, %r8
	movq	-600(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movq	-592(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-568(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-608(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movq	-576(%rbp), %r11        # 8-byte Reload
	movq	%r11, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%rbx, -616(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_tool_dialog_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_tool_dialog_set_shell
	leaq	-128(%rbp), %rax
	leaq	-352(%rbp), %rcx
	movq	%rcx, 16(%rax)
	leaq	16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$24, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_add_buttons_valist
	leaq	-128(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movabsq	$.L.str.10, %rsi
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -96(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movq	-96(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_dialog_factory_add_foreign
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB3_28:                               # %return
	movq	-48(%rbp), %rax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_dialog_new, .Lfunc_end3-gimp_tool_dialog_new
	.cfi_endproc

	.globl	gimp_tool_dialog_set_shell
	.align	16, 0x90
	.type	gimp_tool_dialog_set_shell,@function
gimp_tool_dialog_set_shell:             # @gimp_tool_dialog_set_shell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tool_dialog_get_type
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
# BB#5:                                 # %if.then.5
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.6
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.8
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.10
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.11
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_dialog_set_shell, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_30
.LBB4_11:                               # %if.end.12
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.13
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.22
	movl	$0, -68(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.23
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.26
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.30
	movl	$1, -68(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.31
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_19:                               # %if.end.33
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.34
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.37
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.38
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_dialog_set_shell, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_30
.LBB4_23:                               # %if.end.39
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.40
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB4_26
# BB#25:                                # %if.then.43
	jmp	.LBB4_30
.LBB4_26:                               # %if.end.44
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_28
# BB#27:                                # %if.then.47
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_tool_dialog_shell_unmap, %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	movq	$0, (%rdi)
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB4_28:                               # %if.end.54
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_30
# BB#29:                                # %if.then.58
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_tool_dialog_shell_unmap, %rax
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
.LBB4_30:                               # %if.end.72
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_dialog_set_shell, .Lfunc_end4-gimp_tool_dialog_set_shell
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_dialog_shell_unmap,@function
gimp_tool_dialog_shell_unmap:           # @gimp_tool_dialog_shell_unmap
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_mapped
	cmpl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit_by_name
.LBB5_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_dialog_shell_unmap, .Lfunc_end5-gimp_tool_dialog_shell_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_dialog_class_init,@function
gimp_tool_dialog_class_init:            # @gimp_tool_dialog_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_tool_dialog_dispose, %rdi
	movq	%rdi, 40(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_dialog_class_init, .Lfunc_end6-gimp_tool_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_dialog_dispose,@function
gimp_tool_dialog_dispose:               # @gimp_tool_dialog_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_dialog_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_dialog_dispose, .Lfunc_end7-gimp_tool_dialog_dispose
	.cfi_endproc

	.type	gimp_tool_dialog_get_type.g_define_type_id__volatile,@object # @gimp_tool_dialog_get_type.g_define_type_id__volatile
	.local	gimp_tool_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_tool_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpToolDialog"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_tool_dialog_new,@object # @__func__.gimp_tool_dialog_new
.L__func__.gimp_tool_dialog_new:
	.asciz	"gimp_tool_dialog_new"
	.size	.L__func__.gimp_tool_dialog_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TOOL_INFO (tool_info)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.3, 30

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
	.asciz	"help-func"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"help-id"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"stock-id"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"description"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"-dialog"
	.size	.L.str.10, 8

	.type	.L__func__.gimp_tool_dialog_set_shell,@object # @__func__.gimp_tool_dialog_set_shell
.L__func__.gimp_tool_dialog_set_shell:
	.asciz	"gimp_tool_dialog_set_shell"
	.size	.L__func__.gimp_tool_dialog_set_shell, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_TOOL_DIALOG (tool_dialog)"
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"unmap"
	.size	.L.str.12, 6

	.type	gimp_tool_dialog_parent_class,@object # @gimp_tool_dialog_parent_class
	.local	gimp_tool_dialog_parent_class
	.comm	gimp_tool_dialog_parent_class,8,8
	.type	GimpToolDialog_private_offset,@object # @GimpToolDialog_private_offset
	.local	GimpToolDialog_private_offset
	.comm	GimpToolDialog_private_offset,4,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"close"
	.size	.L.str.13, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
