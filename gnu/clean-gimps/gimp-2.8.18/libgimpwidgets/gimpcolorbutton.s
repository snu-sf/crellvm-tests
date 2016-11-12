	.text
	.file	"gimpcolorbutton.bc"
	.globl	gimp_color_button_get_type
	.align	16, 0x90
	.type	gimp_color_button_get_type,@function
gimp_color_button_get_type:             # @gimp_color_button_get_type
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
	cmpq	$0, gimp_color_button_get_type.button_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	gimp_button_get_type@PLT
	leaq	.L.str(%rip), %rsi
	leaq	gimp_color_button_get_type.button_info(%rip), %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static@PLT
	movq	%rax, gimp_color_button_get_type.button_type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_color_button_get_type.button_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_button_get_type, .Lfunc_end0-gimp_color_button_get_type
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_button_class_init,@function
gimp_color_button_class_init:           # @gimp_color_button_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$224, %rsp
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent@PLT
	leaq	.L.str.13(%rip), %rdi
	movl	$1, %edx
	movl	$944, %ecx              # imm = 0x3B0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, parent_class(%rip)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -144(%rbp)        # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_0(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	gimp_color_button_get_action_type(%rip), %rsi
	leaq	gimp_color_button_clicked(%rip), %r8
	leaq	gimp_color_button_state_changed(%rip), %r9
	leaq	gimp_color_button_button_press(%rip), %r10
	leaq	gimp_color_button_set_property(%rip), %r11
	leaq	gimp_color_button_get_property(%rip), %rbx
	leaq	gimp_color_button_dispose(%rip), %r14
	leaq	gimp_color_button_finalize(%rip), %r15
	movl	%eax, gimp_color_button_signals(%rip)
	movq	-48(%rbp), %r12
	movq	%r15, 48(%r12)
	movq	-48(%rbp), %r15
	movq	%r14, 40(%r15)
	movq	-48(%rbp), %r14
	movq	%rbx, 32(%r14)
	movq	-48(%rbp), %rbx
	movq	%r11, 24(%rbx)
	movq	-56(%rbp), %r11
	movq	%r10, 344(%r11)
	movq	-56(%rbp), %r10
	movq	%r9, 256(%r10)
	movq	-64(%rbp), %r9
	movq	%r8, 840(%r9)
	movq	-40(%rbp), %r8
	movq	$0, 944(%r8)
	movq	-40(%rbp), %r8
	movq	%rsi, 952(%r8)
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-152(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
	leaq	.L.str.5(%rip), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$235, %r8d
	movq	-48(%rbp), %r9
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%r9, -168(%rbp)         # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$1, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.7(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$1, %ecx
	leaq	-96(%rbp), %r8
	movl	$231, %r9d
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	gimp_param_spec_rgb@PLT
	movl	$2, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-48(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_color_area_type_get_type@PLT
	leaq	.L.str.6(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$231, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$3, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.12(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$7, %r8d
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean@PLT
	movl	$4, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.8(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$16, %r9d
	movl	$6, %esi
	movq	-48(%rbp), %rdx
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$6, (%rsp)
	callq	g_param_spec_int@PLT
	movl	$5, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.9(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$16, %r9d
	movl	$6, %esi
	movq	-48(%rbp), %rdx
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$6, (%rsp)
	callq	g_param_spec_int@PLT
	movl	$6, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_button_class_init, .Lfunc_end1-gimp_color_button_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_init,@function
gimp_color_button_init:                 # @gimp_color_button_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	$0, 152(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 176(%rsi)
	callq	gimp_color_area_get_type@PLT
	leaq	.L.str.24(%rip), %rsi
	movl	$256, %edx              # imm = 0x100
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	leaq	.L.str.13(%rip), %rsi
	leaq	gimp_color_button_area_changed(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, 168(%rdi)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rcx
	movq	168(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_show@PLT
	callq	gtk_ui_manager_new@PLT
	leaq	.L.str.25(%rip), %rdi
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rax, 184(%rcx)
	callq	gtk_action_group_new@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -52(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	cmpq	$5, %rax
	jae	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	.L.str.26(%rip), %rdi
	leaq	actions(%rip), %rax
	movslq	-52(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rsi
	callq	dgettext@PLT
	leaq	.L.str.26(%rip), %rdi
	leaq	actions(%rip), %rcx
	movq	%rax, -64(%rbp)
	movslq	-52(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	%rax, %rcx
	movq	32(%rcx), %rsi
	callq	dgettext@PLT
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	952(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	leaq	.L.str.27(%rip), %rsi
	leaq	.L.str.28(%rip), %rcx
	leaq	.L.str.29(%rip), %r9
	leaq	.L.str.30(%rip), %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	actions(%rip), %r10
	movslq	-52(%rbp), %r11
	imulq	$48, %r11, %r11
	movq	%r10, %rbx
	addq	%r11, %rbx
	movq	(%rbx), %rdx
	movq	-64(%rbp), %r11
	movq	-72(%rbp), %rbx
	movslq	-52(%rbp), %r14
	imulq	$48, %r14, %r14
	addq	%r14, %r10
	movq	8(%r10), %r10
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%rbx, (%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_new@PLT
	leaq	actions(%rip), %rcx
	movq	%rax, -80(%rbp)
	movslq	-52(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	%rax, %rcx
	cmpq	$0, 40(%rcx)
	je	.LBB2_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	.L.str.31(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	leaq	actions(%rip), %rcx
	movq	-80(%rbp), %rdx
	movslq	-52(%rbp), %rdi
	imulq	$48, %rdi, %rdi
	addq	%rdi, %rcx
	movq	40(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	actions(%rip), %rax
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movslq	-52(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rdx
	callq	gtk_action_group_add_action_with_accel@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_ui_manager_insert_action_group@PLT
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref@PLT
	leaq	.L.str.32(%rip), %rsi
	movq	$-1, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	callq	gtk_ui_manager_add_ui_from_string@PLT
	movl	%eax, -140(%rbp)        # 4-byte Spill
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_button_init, .Lfunc_end2-gimp_color_button_init
	.cfi_endproc

	.globl	gimp_color_button_new
	.align	16, 0x90
	.type	gimp_color_button_new,@function
gimp_color_button_new:                  # @gimp_color_button_new
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -32(%rbp)
	jmp	.LBB3_16
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpl	$0, -44(%rbp)
	jle	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_new(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -32(%rbp)
	jmp	.LBB3_16
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.7
	cmpl	$0, -48(%rbp)
	jle	.LBB3_13
# BB#12:                                # %if.then.9
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.10
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_new(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -32(%rbp)
	jmp	.LBB3_16
.LBB3_14:                               # %if.end.11
	jmp	.LBB3_15
.LBB3_15:                               # %do.end.12
	callq	gimp_color_button_get_type@PLT
	leaq	.L.str.5(%rip), %rsi
	leaq	.L.str.6(%rip), %rcx
	leaq	.L.str.7(%rip), %r9
	leaq	.L.str.8(%rip), %rdx
	leaq	.L.str.9(%rip), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-40(%rbp), %r11
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rbx
	movl	-44(%rbp), %r14d
	movl	-48(%rbp), %r15d
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	%rbx, (%rsp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_object_new@PLT
	movq	%rax, -32(%rbp)
.LBB3_16:                               # %return
	movq	-32(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_button_new, .Lfunc_end3-gimp_color_button_new
	.cfi_endproc

	.globl	gimp_color_button_set_color
	.align	16, 0x90
	.type	gimp_color_button_set_color,@function
gimp_color_button_set_color:            # @gimp_color_button_set_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_button_get_type@PLT
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
	leaq	.L__func__.gimp_color_button_set_color(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_set_color(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB4_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_button_set_color, .Lfunc_end4-gimp_color_button_set_color
	.cfi_endproc

	.globl	gimp_color_button_get_color
	.align	16, 0x90
	.type	gimp_color_button_get_color,@function
gimp_color_button_get_color:            # @gimp_color_button_get_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_button_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_get_color(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_get_color(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_18
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_get_color@PLT
.LBB5_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_button_get_color, .Lfunc_end5-gimp_color_button_get_color
	.cfi_endproc

	.globl	gimp_color_button_has_alpha
	.align	16, 0x90
	.type	gimp_color_button_has_alpha,@function
gimp_color_button_has_alpha:            # @gimp_color_button_has_alpha
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_button_get_type@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_has_alpha(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_color_area_has_alpha@PLT
	movl	%eax, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_button_has_alpha, .Lfunc_end6-gimp_color_button_has_alpha
	.cfi_endproc

	.globl	gimp_color_button_set_type
	.align	16, 0x90
	.type	gimp_color_button_set_type,@function
gimp_color_button_set_type:             # @gimp_color_button_set_type
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_button_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_set_type(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_color_area_set_type@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB7_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_button_set_type, .Lfunc_end7-gimp_color_button_set_type
	.cfi_endproc

	.globl	gimp_color_button_get_update
	.align	16, 0x90
	.type	gimp_color_button_get_update,@function
gimp_color_button_get_update:           # @gimp_color_button_get_update
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_button_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_get_update(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_button_get_update, .Lfunc_end8-gimp_color_button_get_update
	.cfi_endproc

	.globl	gimp_color_button_set_update
	.align	16, 0x90
	.type	gimp_color_button_set_update,@function
gimp_color_button_set_update:           # @gimp_color_button_set_update
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_button_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_set_update(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_19
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	160(%rcx), %eax
	je	.LBB9_19
# BB#13:                                # %if.then.12
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 160(%rdx)
	movq	-8(%rbp), %rdx
	cmpq	$0, 176(%rdx)
	je	.LBB9_18
# BB#14:                                # %if.then.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB9_16
# BB#15:                                # %if.then.24
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_color_selection_get_color@PLT
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_color_button_set_color@PLT
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.25
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_color_selection_get_old_color@PLT
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_color_button_set_color@PLT
.LBB9_17:                               # %if.end.26
	jmp	.LBB9_18
.LBB9_18:                               # %if.end.27
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB9_19:                               # %if.end.29
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_button_set_update, .Lfunc_end9-gimp_color_button_set_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_finalize,@function
gimp_color_button_finalize:             # @gimp_color_button_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
.LBB10_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_button_finalize, .Lfunc_end10-gimp_color_button_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_dispose,@function
gimp_color_button_dispose:              # @gimp_color_button_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_widget_destroy@PLT
	movq	-16(%rbp), %rax
	movq	$0, 176(%rax)
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_destroy@PLT
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
.LBB11_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB11_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	g_object_unref@PLT
	movq	-16(%rbp), %rax
	movq	$0, 184(%rax)
.LBB11_6:                               # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_button_dispose, .Lfunc_end11-gimp_color_button_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_get_property,@function
gimp_color_button_get_property:         # @gimp_color_button_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB12_5
# BB#9:                                 # %entry
	leaq	.LJTI12_0(%rip), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB12_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	152(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB12_8
.LBB12_2:                               # %sw.bb.2
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_get_property@PLT
	jmp	.LBB12_8
.LBB12_3:                               # %sw.bb.4
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_get_property@PLT
	jmp	.LBB12_8
.LBB12_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	160(%rax), %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB12_8
.LBB12_5:                               # %sw.default
	jmp	.LBB12_6
.LBB12_6:                               # %do.body
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
	leaq	.L.str.14(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	movl	$434, %edx              # imm = 0x1B2
	leaq	.L.str.16(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB12_8
.LBB12_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_button_get_property, .Lfunc_end12-gimp_color_button_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI12_0:
	.long	.LBB12_1-.LJTI12_0
	.long	.LBB12_2-.LJTI12_0
	.long	.LBB12_3-.LJTI12_0
	.long	.LBB12_4-.LJTI12_0

	.text
	.align	16, 0x90
	.type	gimp_color_button_set_property,@function
gimp_color_button_set_property:         # @gimp_color_button_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB13_7
# BB#11:                                # %entry
	leaq	.LJTI13_0(%rip), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB13_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 152(%rdi)
	jmp	.LBB13_10
.LBB13_2:                               # %sw.bb.4
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_property@PLT
	jmp	.LBB13_10
.LBB13_3:                               # %sw.bb.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_property@PLT
	jmp	.LBB13_10
.LBB13_4:                               # %sw.bb.9
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boolean@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_color_button_set_update@PLT
	jmp	.LBB13_10
.LBB13_5:                               # %sw.bb.11
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-44(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rdi
	callq	gtk_widget_get_size_request@PLT
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_value_get_int@PLT
	movl	-44(%rbp), %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_widget_set_size_request@PLT
	jmp	.LBB13_10
.LBB13_6:                               # %sw.bb.15
	leaq	-44(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rdi
	callq	gtk_widget_get_size_request@PLT
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rdi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%esi, -124(%rbp)        # 4-byte Spill
	callq	g_value_get_int@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gtk_widget_set_size_request@PLT
	jmp	.LBB13_10
.LBB13_7:                               # %sw.default
	jmp	.LBB13_8
.LBB13_8:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -128(%rbp)        # 4-byte Spill
	movq	%r9, -136(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.14(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	movl	$480, %edx              # imm = 0x1E0
	leaq	.L.str.16(%rip), %rcx
	movl	-128(%rbp), %r8d        # 4-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB13_10
.LBB13_10:                              # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_button_set_property, .Lfunc_end13-gimp_color_button_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI13_0:
	.long	.LBB13_1-.LJTI13_0
	.long	.LBB13_2-.LJTI13_0
	.long	.LBB13_3-.LJTI13_0
	.long	.LBB13_4-.LJTI13_0
	.long	.LBB13_5-.LJTI13_0
	.long	.LBB13_6-.LJTI13_0

	.text
	.align	16, 0x90
	.type	gimp_color_button_button_press,@function
gimp_color_button_button_press:         # @gimp_color_button_button_press
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_triggers_context_menu@PLT
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	leaq	.L.str.17(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_menu_set_screen@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movl	52(%rdi), %r9d
	movq	-24(%rbp), %rdi
	movl	20(%rdi), %ecx
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movl	-84(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gtk_menu_popup@PLT
.LBB14_2:                               # %if.end
	movq	parent_class(%rip), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 344(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then.13
	movq	parent_class(%rip), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %if.end.18
	movl	$0, -4(%rbp)
.LBB14_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_button_button_press, .Lfunc_end14-gimp_color_button_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_state_changed,@function
gimp_color_button_state_changed:        # @gimp_color_button_state_changed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_button_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_button_state_changed(%rip), %rsi
	leaq	.L.str.18(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_17
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_is_sensitive@PLT
	cmpl	$0, %eax
	jne	.LBB15_15
# BB#13:                                # %land.lhs.true.13
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpq	$0, 176(%rax)
	je	.LBB15_15
# BB#14:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	176(%rax), %rdi
	callq	gtk_widget_hide@PLT
.LBB15_15:                              # %if.end.21
	movq	parent_class(%rip), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 256(%rax)
	je	.LBB15_17
# BB#16:                                # %if.then.25
	movq	parent_class(%rip), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB15_17:                              # %if.end.29
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_button_state_changed, .Lfunc_end15-gimp_color_button_state_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_clicked,@function
gimp_color_button_clicked:              # @gimp_color_button_clicked
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp60:
	.cfi_offset %rbx, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 176(%rax)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_color_button_get_color@PLT
	movq	-40(%rbp), %rsi
	movq	152(%rsi), %rdi
	movq	-32(%rbp), %rsi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel@PLT
	leaq	.L.str.11(%rip), %rsi
	xorl	%ecx, %ecx
	leaq	gimp_color_button_help_func(%rip), %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	leaq	.L.str.19(%rip), %rdi
	movl	$1, %edx
	leaq	.L.str.20(%rip), %r10
	movl	$4294967290, %r11d      # imm = 0xFFFFFFFA
	leaq	.L.str.21(%rip), %rbx
	movl	$4294967291, %r14d      # imm = 0xFFFFFFFB
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r14d, -128(%rbp)       # 4-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order@PLT
	leaq	.L.str.22(%rip), %rsi
	leaq	gimp_color_button_dialog_response(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r10
	movq	-40(%rbp), %rbx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rbx, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.23(%rip), %rsi
	movq	gtk_widget_destroyed@GOTPCREL(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rdi
	addq	$176, %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_color_button_has_alpha@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_color_selection_set_show_alpha@PLT
	movq	-56(%rbp), %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_set_color@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_set_old_color@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area@PLT
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.13(%rip), %rsi
	leaq	gimp_color_button_selection_changed(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-40(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
.LBB16_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_window_present@PLT
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_button_clicked, .Lfunc_end16-gimp_color_button_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_get_action_type,@function
gimp_color_button_get_action_type:      # @gimp_color_button_get_action_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_action_get_type@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_color_button_get_action_type, .Lfunc_end17-gimp_color_button_get_action_type
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_help_func,@function
gimp_color_button_help_func:            # @gimp_color_button_help_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	(%rax), %rax
	movq	832(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_standard_help_func@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_color_button_help_func, .Lfunc_end19-gimp_color_button_help_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_dialog_response,@function
gimp_color_button_dialog_response:      # @gimp_color_button_dialog_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$-5, %r8d
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	je	.LBB20_2
	jmp	.LBB20_9
.LBB20_9:                               # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jne	.LBB20_5
	jmp	.LBB20_1
.LBB20_1:                               # %sw.bb
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_color_selection_reset@PLT
	jmp	.LBB20_8
.LBB20_2:                               # %sw.bb.4
	movq	-24(%rbp), %rax
	cmpl	$0, 160(%rax)
	jne	.LBB20_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_get_color@PLT
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_color_button_set_color@PLT
.LBB20_4:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide@PLT
	jmp	.LBB20_8
.LBB20_5:                               # %sw.default
	movq	-24(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB20_7
# BB#6:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_color_selection_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_get_old_color@PLT
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_color_button_set_color@PLT
.LBB20_7:                               # %if.end.12
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide@PLT
.LBB20_8:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_color_button_dialog_response, .Lfunc_end20-gimp_color_button_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_selection_changed,@function
gimp_color_button_selection_changed:    # @gimp_color_button_selection_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 160(%rsi)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selection_get_color@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_color_button_area_changed(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_color_button_area_changed(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	gimp_color_button_signals(%rip), %esi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB21_2:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_color_button_selection_changed, .Lfunc_end21-gimp_color_button_selection_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_button_area_changed,@function
gimp_color_button_area_changed:         # @gimp_color_button_area_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 176(%rsi)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_color_button_get_color@PLT
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	gimp_color_button_selection_changed(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_color_selection_set_color@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_color_button_selection_changed(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB22_2:                               # %if.end
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	gimp_color_button_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_color_button_area_changed, .Lfunc_end22-gimp_color_button_area_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_button_use_color,@function
gimp_color_button_use_color:            # @gimp_color_button_use_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_action_get_name@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_color_button_get_color@PLT
	movq	-24(%rbp), %rdi
	leaq	.L.str.35(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB23_5
# BB#1:                                 # %if.then
	movq	_gimp_get_foreground_func@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.LBB23_3
# BB#2:                                 # %if.then.3
	leaq	-56(%rbp), %rdi
	movq	_gimp_get_foreground_func@GOTPCREL(%rip), %rax
	callq	*(%rax)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	leaq	-56(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI23_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
.LBB23_4:                               # %if.end
	jmp	.LBB23_17
.LBB23_5:                               # %if.else.5
	movq	-24(%rbp), %rdi
	leaq	.L.str.37(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB23_10
# BB#6:                                 # %if.then.8
	movq	_gimp_get_background_func@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.LBB23_8
# BB#7:                                 # %if.then.10
	leaq	-56(%rbp), %rdi
	movq	_gimp_get_background_func@GOTPCREL(%rip), %rax
	callq	*(%rax)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB23_9
.LBB23_8:                               # %if.else.12
	leaq	-56(%rbp), %rdi
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set@PLT
.LBB23_9:                               # %if.end.13
	jmp	.LBB23_16
.LBB23_10:                              # %if.else.14
	movq	-24(%rbp), %rdi
	leaq	.L.str.39(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB23_12
# BB#11:                                # %if.then.17
	leaq	-56(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI23_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
	jmp	.LBB23_15
.LBB23_12:                              # %if.else.18
	movq	-24(%rbp), %rdi
	leaq	.L.str.41(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB23_14
# BB#13:                                # %if.then.21
	leaq	-56(%rbp), %rdi
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set@PLT
.LBB23_14:                              # %if.end.22
	jmp	.LBB23_15
.LBB23_15:                              # %if.end.23
	jmp	.LBB23_16
.LBB23_16:                              # %if.end.24
	jmp	.LBB23_17
.LBB23_17:                              # %if.end.25
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_color_button_set_color@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_color_button_use_color, .Lfunc_end23-gimp_color_button_use_color
	.cfi_endproc

	.type	gimp_color_button_get_type.button_type,@object # @gimp_color_button_get_type.button_type
	.local	gimp_color_button_get_type.button_type
	.comm	gimp_color_button_get_type.button_type,8,8
	.type	gimp_color_button_get_type.button_info,@object # @gimp_color_button_get_type.button_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_color_button_get_type.button_info:
	.short	984                     # 0x3d8
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_color_button_class_init
	.quad	0
	.quad	0
	.short	192                     # 0xc0
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_color_button_init
	.quad	0
	.size	gimp_color_button_get_type.button_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorButton"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_color_button_new,@object # @__func__.gimp_color_button_new
.L__func__.gimp_color_button_new:
	.asciz	"gimp_color_button_new"
	.size	.L__func__.gimp_color_button_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"color != NULL"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"width > 0"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"height > 0"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"title"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"type"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"color"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"area-width"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"area-height"
	.size	.L.str.9, 12

	.type	.L__func__.gimp_color_button_set_color,@object # @__func__.gimp_color_button_set_color
.L__func__.gimp_color_button_set_color:
	.asciz	"gimp_color_button_set_color"
	.size	.L__func__.gimp_color_button_set_color, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_COLOR_BUTTON (button)"
	.size	.L.str.10, 30

	.type	.L__func__.gimp_color_button_get_color,@object # @__func__.gimp_color_button_get_color
.L__func__.gimp_color_button_get_color:
	.asciz	"gimp_color_button_get_color"
	.size	.L__func__.gimp_color_button_get_color, 28

	.type	.L__func__.gimp_color_button_has_alpha,@object # @__func__.gimp_color_button_has_alpha
.L__func__.gimp_color_button_has_alpha:
	.asciz	"gimp_color_button_has_alpha"
	.size	.L__func__.gimp_color_button_has_alpha, 28

	.type	.L__func__.gimp_color_button_set_type,@object # @__func__.gimp_color_button_set_type
.L__func__.gimp_color_button_set_type:
	.asciz	"gimp_color_button_set_type"
	.size	.L__func__.gimp_color_button_set_type, 27

	.type	.L__func__.gimp_color_button_get_update,@object # @__func__.gimp_color_button_get_update
.L__func__.gimp_color_button_get_update:
	.asciz	"gimp_color_button_get_update"
	.size	.L__func__.gimp_color_button_get_update, 29

	.type	.L__func__.gimp_color_button_set_update,@object # @__func__.gimp_color_button_set_update
.L__func__.gimp_color_button_set_update:
	.asciz	"gimp_color_button_set_update"
	.size	.L__func__.gimp_color_button_set_update, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-color-selection"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"continuous-update"
	.size	.L.str.12, 18

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"color-changed"
	.size	.L.str.13, 14

	.type	gimp_color_button_signals,@object # @gimp_color_button_signals
	.local	gimp_color_button_signals
	.comm	gimp_color_button_signals,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.14, 54

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimpcolorbutton.c"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"property"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"/color-button-popup"
	.size	.L.str.17, 20

	.type	.L__func__.gimp_color_button_state_changed,@object # @__func__.gimp_color_button_state_changed
.L__func__.gimp_color_button_state_changed:
	.asciz	"gimp_color_button_state_changed"
	.size	.L__func__.gimp_color_button_state_changed, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_IS_COLOR_BUTTON (widget)"
	.size	.L.str.18, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-reset"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gtk-cancel"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-ok"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"response"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"destroy"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"drag-mask"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"color-button"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp20-libgimp"
	.size	.L.str.26, 15

	.type	actions,@object         # @actions
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
actions:
	.quad	.L.str.33
	.quad	0
	.quad	.L.str.34
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.35
	.quad	0
	.quad	.L.str.36
	.quad	0
	.quad	0
	.quad	gimp_color_button_use_color
	.quad	.L.str.37
	.quad	0
	.quad	.L.str.38
	.quad	0
	.quad	0
	.quad	gimp_color_button_use_color
	.quad	.L.str.39
	.quad	0
	.quad	.L.str.40
	.quad	0
	.quad	0
	.quad	gimp_color_button_use_color
	.quad	.L.str.41
	.quad	0
	.quad	.L.str.42
	.quad	0
	.quad	0
	.quad	gimp_color_button_use_color
	.size	actions, 240

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"name"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"label"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"tooltip"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"stock-id"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"activate"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"<ui>\n  <popup action=\"color-button-popup\">\n    <menuitem action=\"color-button-use-foreground\" />\n    <menuitem action=\"color-button-use-background\" />\n    <separator />\n    <menuitem action=\"color-button-use-black\" />\n    <menuitem action=\"color-button-use-white\" />\n  </popup>\n</ui>\n"
	.size	.L.str.32, 285

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"color-button-popup"
	.size	.L.str.33, 19

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Color Button Menu"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"color-button-use-foreground"
	.size	.L.str.35, 28

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Foreground Color"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"color-button-use-background"
	.size	.L.str.37, 28

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Background Color"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"color-button-use-black"
	.size	.L.str.39, 23

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Blac_k"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"color-button-use-white"
	.size	.L.str.41, 23

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_White"
	.size	.L.str.42, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
