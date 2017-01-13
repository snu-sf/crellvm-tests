	.text
	.file	"gimpruler.bc"
	.globl	gimp_ruler_get_type
	.align	16, 0x90
	.type	gimp_ruler_get_type,@function
gimp_ruler_get_type:                    # @gimp_ruler_get_type
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
	movq	gimp_ruler_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_ruler_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_widget_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$752, %edx              # imm = 0x2F0
	leaq	gimp_ruler_class_intern_init(%rip), %rdi
	movl	$96, %r8d
	leaq	gimp_ruler_init(%rip), %rcx
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
	leaq	gimp_ruler_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_ruler_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_ruler_get_type, .Lfunc_end0-gimp_ruler_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_class_intern_init,@function
gimp_ruler_class_intern_init:           # @gimp_ruler_class_intern_init
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
	movq	%rax, gimp_ruler_parent_class(%rip)
	cmpl	$0, GimpRuler_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpRuler_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_ruler_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_ruler_class_intern_init, .Lfunc_end1-gimp_ruler_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4605681218924226942     # double 0.83333333333329995
	.text
	.align	16, 0x90
	.type	gimp_ruler_init,@function
gimp_ruler_init:                        # @gimp_ruler_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_has_window@PLT
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm1, 24(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm1, 32(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 68(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 88(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_ruler_init, .Lfunc_end2-gimp_ruler_init
	.cfi_endproc

	.globl	gimp_ruler_new
	.align	16, 0x90
	.type	gimp_ruler_new,@function
gimp_ruler_new:                         # @gimp_ruler_new
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
	callq	gimp_ruler_get_type@PLT
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
	.size	gimp_ruler_new, .Lfunc_end3-gimp_ruler_new
	.cfi_endproc

	.globl	gimp_ruler_add_track_widget
	.align	16, 0x90
	.type	gimp_ruler_add_track_widget,@function
gimp_ruler_add_track_widget:            # @gimp_ruler_add_track_widget
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_ruler_get_type@PLT
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
	leaq	.L__func__.gimp_ruler_add_track_widget(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_30
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_add_track_widget(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_30
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
# BB#25:                                # %do.body.41
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find@PLT
	cmpq	$0, %rax
	jne	.LBB4_27
# BB#26:                                # %if.then.44
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.45
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_add_track_widget(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_30
.LBB4_28:                               # %if.end.46
	jmp	.LBB4_29
.LBB4_29:                               # %do.end.47
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	gimp_ruler_track_widget_motion_notify(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	gimp_ruler_remove_track_widget@GOTPCREL(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB4_30:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_ruler_add_track_widget, .Lfunc_end4-gimp_ruler_add_track_widget
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_track_widget_motion_notify,@function
gimp_ruler_track_widget_motion_notify:  # @gimp_ruler_track_widget_motion_notify
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	gtk_get_event_widget@PLT
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_ruler_event_to_widget_coords
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-36(%rbp), %r8
	leaq	-40(%rbp), %r9
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_translate_coordinates@PLT
	cmpl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	callq	gimp_ruler_update_position
.LBB5_2:                                # %if.end
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_ruler_track_widget_motion_notify, .Lfunc_end5-gimp_ruler_track_widget_motion_notify
	.cfi_endproc

	.globl	gimp_ruler_remove_track_widget
	.align	16, 0x90
	.type	gimp_ruler_remove_track_widget,@function
gimp_ruler_remove_track_widget:         # @gimp_ruler_remove_track_widget
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_ruler_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_remove_track_widget(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_30
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_remove_track_widget(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_30
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
# BB#25:                                # %do.body.41
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find@PLT
	cmpq	$0, %rax
	je	.LBB6_27
# BB#26:                                # %if.then.44
	jmp	.LBB6_28
.LBB6_27:                               # %if.else.45
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_remove_track_widget(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_30
.LBB6_28:                               # %if.end.46
	jmp	.LBB6_29
.LBB6_29:                               # %do.end.47
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_ruler_track_widget_motion_notify(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	%rax, 96(%r9)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	gimp_ruler_remove_track_widget@GOTPCREL(%rip), %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched@PLT
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB6_30:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_ruler_remove_track_widget, .Lfunc_end6-gimp_ruler_remove_track_widget
	.cfi_endproc

	.globl	gimp_ruler_set_unit
	.align	16, 0x90
	.type	gimp_ruler_set_unit,@function
gimp_ruler_set_unit:                    # @gimp_ruler_set_unit
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_ruler_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_set_unit(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_14
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB7_14
# BB#13:                                # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	movq	-24(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
.LBB7_14:                               # %if.end.20
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_ruler_set_unit, .Lfunc_end7-gimp_ruler_set_unit
	.cfi_endproc

	.globl	gimp_ruler_get_unit
	.align	16, 0x90
	.type	gimp_ruler_get_unit,@function
gimp_ruler_get_unit:                    # @gimp_ruler_get_unit
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_ruler_get_type@PLT
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
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_get_unit(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movl	4(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_ruler_get_unit, .Lfunc_end8-gimp_ruler_get_unit
	.cfi_endproc

	.globl	gimp_ruler_set_position
	.align	16, 0x90
	.type	gimp_ruler_set_position,@function
gimp_ruler_set_position:                # @gimp_ruler_set_position
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_ruler_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_set_position(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_28
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jne	.LBB9_13
	jp	.LBB9_13
	jmp	.LBB9_28
.LBB9_13:                               # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_ruler_get_pos_rect
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-64(%rbp), %r8d
	movq	-24(%rbp), %rax
	subl	60(%rax), %r8d
	movl	%r8d, -68(%rbp)
	movl	-60(%rbp), %r8d
	movq	-24(%rbp), %rax
	subl	64(%rax), %r8d
	movl	%r8d, -72(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB9_24
# BB#14:                                # %land.lhs.true.29
	movq	-24(%rbp), %rax
	cmpl	$0, 72(%rax)
	je	.LBB9_24
# BB#15:                                # %land.lhs.true.32
	cmpl	$0, -68(%rbp)
	jge	.LBB9_17
# BB#16:                                # %cond.true
	xorl	%eax, %eax
	subl	-68(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB9_18
.LBB9_17:                               # %cond.false
	movl	-68(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB9_18:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	cmpl	$20, %eax
	jg	.LBB9_23
# BB#19:                                # %lor.lhs.false
	cmpl	$0, -72(%rbp)
	jge	.LBB9_21
# BB#20:                                # %cond.true.37
	xorl	%eax, %eax
	subl	-72(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB9_22
.LBB9_21:                               # %cond.false.39
	movl	-72(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB9_22:                               # %cond.end.40
	movl	-104(%rbp), %eax        # 4-byte Reload
	cmpl	$20, %eax
	jle	.LBB9_24
.LBB9_23:                               # %if.then.43
	movq	-8(%rbp), %rdi
	callq	gimp_ruler_queue_pos_redraw
	jmp	.LBB9_27
.LBB9_24:                               # %if.else.44
	movq	-24(%rbp), %rax
	cmpl	$0, 76(%rax)
	jne	.LBB9_26
# BB#25:                                # %if.then.46
	movl	$300, %edi              # imm = 0x12C
	leaq	gimp_ruler_idle_queue_pos_redraw(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	callq	g_idle_add_full@PLT
	movq	-24(%rbp), %rcx
	movl	%eax, 76(%rcx)
.LBB9_26:                               # %if.end.49
	jmp	.LBB9_27
.LBB9_27:                               # %if.end.50
	jmp	.LBB9_28
.LBB9_28:                               # %if.end.51
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_ruler_set_position, .Lfunc_end9-gimp_ruler_set_position
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_ruler_get_pos_rect,@function
gimp_ruler_get_pos_rect:                # @gimp_ruler_get_pos_rect
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
	subq	$176, %rsp
	xorl	%esi, %esi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-48(%rbp), %rcx
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rcx, %rdi
	callq	memset@PLT
	movq	-24(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_9
.LBB10_2:                               # %if.end
	leaq	-88(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movq	-64(%rbp), %rsi
	movl	536(%rsi), %eax
	movl	%eax, -100(%rbp)
	movq	-64(%rbp), %rsi
	movl	540(%rsi), %eax
	movl	%eax, -104(%rbp)
	movq	-72(%rbp), %rsi
	cmpl	$0, (%rsi)
	jne	.LBB10_4
# BB#3:                                 # %if.then.8
	movl	$2, %eax
	movl	-80(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-76(%rbp), %ecx
	movl	-104(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -96(%rbp)
	movl	-96(%rbp), %ecx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-148(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	$2, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_5
.LBB10_4:                               # %if.else
	movl	$2, %eax
	movl	-80(%rbp), %ecx
	movl	-100(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -92(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movl	-92(%rbp), %ecx
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-152(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	$2, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB10_5:                               # %if.end.30
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	gimp_ruler_get_range@PLT
	movq	-72(%rbp), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB10_7
# BB#6:                                 # %if.then.33
	movl	$2, %eax
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtsi2sdl	-92(%rbp), %xmm1
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-120(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-120(%rbp), %xmm1
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	-100(%rbp), %edx
	subl	-40(%rbp), %edx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-156(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -48(%rbp)
	movl	-96(%rbp), %eax
	addl	-36(%rbp), %eax
	cltd
	idivl	%esi
	addl	-104(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.49
	movl	$2, %eax
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm1
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-120(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -128(%rbp)
	movl	-92(%rbp), %ecx
	addl	-40(%rbp), %ecx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-160(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	-100(%rbp), %eax
	movl	%eax, -48(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-120(%rbp), %xmm1
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	-104(%rbp), %esi
	subl	-36(%rbp), %esi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-164(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	subl	$1, %esi
	movl	%esi, -44(%rbp)
.LBB10_8:                               # %if.end.68
	movl	-88(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-84(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB10_9:                               # %return
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_ruler_get_pos_rect, .Lfunc_end10-gimp_ruler_get_pos_rect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_queue_pos_redraw,@function
gimp_ruler_queue_pos_redraw:            # @gimp_ruler_queue_pos_redraw
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_ruler_get_pos_rect
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw_area@PLT
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 72(%rax)
	je	.LBB11_3
.LBB11_2:                               # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movl	60(%rsi), %esi
	movq	-16(%rbp), %rdi
	movl	64(%rdi), %edx
	movq	-16(%rbp), %rdi
	movl	68(%rdi), %ecx
	movq	-16(%rbp), %rdi
	movl	72(%rdi), %r8d
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw_area@PLT
	movq	-16(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 68(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 72(%rax)
.LBB11_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_ruler_queue_pos_redraw, .Lfunc_end11-gimp_ruler_queue_pos_redraw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_idle_queue_pos_redraw,@function
gimp_ruler_idle_queue_pos_redraw:       # @gimp_ruler_idle_queue_pos_redraw
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_ruler_queue_pos_redraw
	xorl	%eax, %eax
	movq	-24(%rbp), %rsi
	movl	$0, 76(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_ruler_idle_queue_pos_redraw, .Lfunc_end12-gimp_ruler_idle_queue_pos_redraw
	.cfi_endproc

	.globl	gimp_ruler_get_position
	.align	16, 0x90
	.type	gimp_ruler_get_position,@function
gimp_ruler_get_position:                # @gimp_ruler_get_position
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_ruler_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_get_position(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB13_13:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_ruler_get_position, .Lfunc_end13-gimp_ruler_get_position
	.cfi_endproc

	.globl	gimp_ruler_set_range
	.align	16, 0x90
	.type	gimp_ruler_set_range,@function
gimp_ruler_set_range:                   # @gimp_ruler_set_range
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_ruler_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_set_range(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_19
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jne	.LBB14_13
	jp	.LBB14_13
	jmp	.LBB14_14
.LBB14_13:                              # %if.then.16
	movl	$80, %eax
	movl	%eax, %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB14_14:                              # %if.end.19
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB14_15
	jp	.LBB14_15
	jmp	.LBB14_16
.LBB14_15:                              # %if.then.22
	movl	$80, %eax
	movl	%eax, %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB14_16:                              # %if.end.25
	movq	-40(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB14_17
	jp	.LBB14_17
	jmp	.LBB14_18
.LBB14_17:                              # %if.then.28
	movl	$80, %eax
	movl	%eax, %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.13(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB14_18:                              # %if.end.31
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	movq	-40(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
.LBB14_19:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_ruler_set_range, .Lfunc_end14-gimp_ruler_set_range
	.cfi_endproc

	.globl	gimp_ruler_get_range
	.align	16, 0x90
	.type	gimp_ruler_get_range,@function
gimp_ruler_get_range:                   # @gimp_ruler_get_range
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_ruler_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_ruler_get_range(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_18
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB15_14
# BB#13:                                # %if.then.14
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_14:                              # %if.end.16
	cmpq	$0, -24(%rbp)
	je	.LBB15_16
# BB#15:                                # %if.then.18
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_16:                              # %if.end.20
	cmpq	$0, -32(%rbp)
	je	.LBB15_18
# BB#17:                                # %if.then.22
	movq	-40(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_18:                              # %if.end.24
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_ruler_get_range, .Lfunc_end15-gimp_ruler_get_range
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI16_1:
	.quad	4605681218924226942     # double 0.83333333333329995
.LCPI16_2:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
	.text
	.align	16, 0x90
	.type	gimp_ruler_class_init,@function
gimp_ruler_class_init:                  # @gimp_ruler_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movl	$104, %ecx
	movl	%ecx, %esi
	leaq	gimp_ruler_expose(%rip), %rdi
	leaq	gimp_ruler_motion_notify(%rip), %rdx
	leaq	gimp_ruler_style_set(%rip), %r8
	leaq	gimp_ruler_size_request(%rip), %r9
	leaq	gimp_ruler_size_allocate(%rip), %r10
	leaq	gimp_ruler_unmap(%rip), %r11
	leaq	gimp_ruler_map(%rip), %rbx
	leaq	gimp_ruler_unrealize(%rip), %r14
	leaq	gimp_ruler_realize(%rip), %r15
	leaq	gimp_ruler_get_property(%rip), %r12
	leaq	gimp_ruler_set_property(%rip), %r13
	leaq	gimp_ruler_dispose(%rip), %rcx
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	%r13, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%r12, 32(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 224(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 232(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 208(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 216(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 248(%rax)
	movq	-64(%rbp), %rax
	movq	%r9, 240(%rax)
	movq	-64(%rbp), %rax
	movq	%r8, 280(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 368(%rax)
	movq	-64(%rbp), %rax
	movq	%rdi, 392(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	movq	-56(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_orientation_get_type@PLT
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	leaq	.L.str.15(%rip), %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-56(%rbp), %rax
	movl	%r8d, %ecx
	movl	$227, (%rsp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit@PLT
	movl	$2, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	leaq	.L.str.19(%rip), %rdx
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$3, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.12(%rip), %rdi
	leaq	.L.str.20(%rip), %rsi
	leaq	.L.str.21(%rip), %rdx
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$4, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.22(%rip), %rsi
	leaq	.L.str.23(%rip), %rdx
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$5, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.13(%rip), %rdi
	leaq	.L.str.24(%rip), %rsi
	leaq	.L.str.25(%rip), %rdx
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$6, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.26(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$225, %ecx
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property@PLT
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_ruler_class_init, .Lfunc_end16-gimp_ruler_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_dispose,@function
gimp_ruler_dispose:                     # @gimp_ruler_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB17_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_ruler_remove_track_widget@PLT
	jmp	.LBB17_1
.LBB17_3:                               # %while.end
	movq	-24(%rbp), %rax
	cmpl	$0, 76(%rax)
	je	.LBB17_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	76(%rax), %edi
	callq	g_source_remove@PLT
	movq	-24(%rbp), %rcx
	movl	$0, 76(%rcx)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB17_5:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_ruler_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_ruler_dispose, .Lfunc_end17-gimp_ruler_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_set_property,@function
gimp_ruler_set_property:                # @gimp_ruler_set_property
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB18_7
# BB#11:                                # %entry
	leaq	.LJTI18_0(%rip), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB18_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum@PLT
	movq	-48(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize@PLT
	jmp	.LBB18_10
.LBB18_2:                               # %sw.bb.7
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_int@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_ruler_set_unit@PLT
	jmp	.LBB18_10
.LBB18_3:                               # %sw.bb.9
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double@PLT
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	gimp_ruler_set_range@PLT
	jmp	.LBB18_10
.LBB18_4:                               # %sw.bb.11
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	callq	g_value_get_double@PLT
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_ruler_set_range@PLT
	jmp	.LBB18_10
.LBB18_5:                               # %sw.bb.14
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	callq	gimp_ruler_set_position@PLT
	jmp	.LBB18_10
.LBB18_6:                               # %sw.bb.16
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	callq	g_value_get_double@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-192(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_ruler_set_range@PLT
	jmp	.LBB18_10
.LBB18_7:                               # %sw.default
	jmp	.LBB18_8
.LBB18_8:                               # %do.body
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
	movl	%r8d, -196(%rbp)        # 4-byte Spill
	movq	%r9, -208(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.27(%rip), %rdi
	leaq	.L.str.28(%rip), %rsi
	movl	$318, %edx              # imm = 0x13E
	leaq	.L.str.29(%rip), %rcx
	movl	-196(%rbp), %r8d        # 4-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	movq	-216(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB18_10
.LBB18_10:                              # %sw.epilog
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_ruler_set_property, .Lfunc_end18-gimp_ruler_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI18_0:
	.long	.LBB18_1-.LJTI18_0
	.long	.LBB18_2-.LJTI18_0
	.long	.LBB18_3-.LJTI18_0
	.long	.LBB18_4-.LJTI18_0
	.long	.LBB18_5-.LJTI18_0
	.long	.LBB18_6-.LJTI18_0

	.text
	.align	16, 0x90
	.type	gimp_ruler_get_property,@function
gimp_ruler_get_property:                # @gimp_ruler_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB19_7
# BB#11:                                # %entry
	leaq	.LJTI19_0(%rip), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB19_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB19_10
.LBB19_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	4(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB19_10
.LBB19_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB19_10
.LBB19_4:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB19_10
.LBB19_5:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB19_10
.LBB19_6:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB19_10
.LBB19_7:                               # %sw.default
	jmp	.LBB19_8
.LBB19_8:                               # %do.body
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
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.27(%rip), %rdi
	leaq	.L.str.28(%rip), %rsi
	movl	$359, %edx              # imm = 0x167
	leaq	.L.str.29(%rip), %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB19_10
.LBB19_10:                              # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_ruler_get_property, .Lfunc_end19-gimp_ruler_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI19_0:
	.long	.LBB19_1-.LJTI19_0
	.long	.LBB19_2-.LJTI19_0
	.long	.LBB19_3-.LJTI19_0
	.long	.LBB19_4-.LJTI19_0
	.long	.LBB19_5-.LJTI19_0
	.long	.LBB19_6-.LJTI19_0

	.text
	.align	16, 0x90
	.type	gimp_ruler_realize,@function
gimp_ruler_realize:                     # @gimp_ruler_realize
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	gimp_ruler_parent_class(%rip), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	224(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movl	$2, -80(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movl	-32(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movl	$1, -100(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_events@PLT
	orl	$2, %eax
	orl	$4, %eax
	movl	%eax, -120(%rbp)
	movl	$12, -132(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	leaq	-128(%rbp), %rsi
	movl	-132(%rbp), %edx
	movq	%rax, %rdi
	callq	gdk_window_new@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gdk_window_set_user_data@PLT
	movq	-16(%rbp), %rdi
	callq	gimp_ruler_make_pixmap
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_ruler_realize, .Lfunc_end20-gimp_ruler_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_unrealize,@function
gimp_ruler_unrealize:                   # @gimp_ruler_unrealize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	cairo_surface_destroy@PLT
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
.LBB21_2:                               # %if.end
	movq	-24(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB21_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
.LBB21_4:                               # %if.end.10
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB21_6
# BB#5:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gdk_window_destroy@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
.LBB21_6:                               # %if.end.15
	movq	gimp_ruler_parent_class(%rip), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_ruler_unrealize, .Lfunc_end21-gimp_ruler_unrealize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_map,@function
gimp_ruler_map:                         # @gimp_ruler_map
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
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	gimp_ruler_parent_class(%rip), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gdk_window_show@PLT
.LBB22_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_ruler_map, .Lfunc_end22-gimp_ruler_map
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_unmap,@function
gimp_ruler_unmap:                       # @gimp_ruler_unmap
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gdk_window_hide@PLT
.LBB23_2:                               # %if.end
	movq	gimp_ruler_parent_class(%rip), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_ruler_unmap, .Lfunc_end23-gimp_ruler_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_size_allocate,@function
gimp_ruler_size_allocate:               # @gimp_ruler_size_allocate
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_set_allocation@PLT
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_realized@PLT
	cmpl	$0, %eax
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	12(%rax), %r8d
	callq	gdk_window_move_resize@PLT
	movq	-24(%rbp), %rdi
	callq	gimp_ruler_make_pixmap
.LBB24_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_ruler_size_allocate, .Lfunc_end24-gimp_ruler_size_allocate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4611686018427387904     # double 2
.LCPI25_1:
	.quad	4610334938539176755     # double 1.7
	.text
	.align	16, 0x90
	.type	gimp_ruler_size_request,@function
gimp_ruler_size_request:                # @gimp_ruler_size_request
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	leaq	.L.str.30(%rip), %rsi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_ruler_get_layout
	leaq	-56(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	pango_layout_get_pixel_extents@PLT
	movsd	.LCPI25_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI25_1(%rip), %xmm1  # xmm1 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -60(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	536(%rax), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	540(%rax), %ecx
	shll	$1, %ecx
	addl	-60(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB25_3
.LBB25_2:                               # %if.else
	movq	-32(%rbp), %rax
	movl	536(%rax), %ecx
	shll	$1, %ecx
	addl	-60(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	540(%rax), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB25_3:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_ruler_size_request, .Lfunc_end25-gimp_ruler_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_style_set,@function
gimp_ruler_style_set:                   # @gimp_ruler_style_set
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	gimp_ruler_parent_class(%rip), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	leaq	.L.str.26(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movq	-24(%rbp), %rcx
	cmpq	$0, 80(%rcx)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
.LBB26_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_ruler_style_set, .Lfunc_end26-gimp_ruler_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_motion_notify,@function
gimp_ruler_motion_notify:               # @gimp_ruler_motion_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_ruler_update_position
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_ruler_motion_notify, .Lfunc_end27-gimp_ruler_motion_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_expose,@function
gimp_ruler_expose:                      # @gimp_ruler_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	je	.LBB28_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB28_3
# BB#2:                                 # %if.then.6
	movq	-24(%rbp), %rdi
	callq	gimp_ruler_draw_ticks
.LBB28_3:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region@PLT
	movq	-56(%rbp), %rdi
	callq	cairo_clip@PLT
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	callq	cairo_set_source_surface@PLT
	movq	-56(%rbp), %rdi
	callq	cairo_paint@PLT
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_ruler_draw_pos
	movq	-56(%rbp), %rdi
	callq	cairo_destroy@PLT
.LBB28_4:                               # %if.end.10
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_ruler_expose, .Lfunc_end28-gimp_ruler_expose
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
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
	je	.LBB29_2
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
.LBB29_2:                               # %entry
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
.Lfunc_end29:
	.size	g_warning, .Lfunc_end29-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_make_pixmap,@function
gimp_ruler_make_pixmap:                 # @gimp_ruler_make_pixmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	leaq	-40(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	cairo_surface_destroy@PLT
.LBB30_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movl	$4096, %esi             # imm = 0x1000
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	callq	gdk_window_create_similar_surface@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-24(%rbp), %rax
	movl	$0, 56(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_ruler_make_pixmap, .Lfunc_end30-gimp_ruler_make_pixmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_get_layout,@function
gimp_ruler_get_layout:                  # @gimp_ruler_get_layout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	pango_layout_set_text@PLT
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_3
.LBB31_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_ruler_create_layout
	movq	-32(%rbp), %rsi
	movq	%rax, 80(%rsi)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB31_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_ruler_get_layout, .Lfunc_end31-gimp_ruler_get_layout
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_create_layout,@function
gimp_ruler_create_layout:               # @gimp_ruler_create_layout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_create_pango_layout@PLT
	movq	%rax, -32(%rbp)
	callq	pango_attr_list_new@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	pango_attr_scale_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-48(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	pango_attr_list_insert@PLT
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	pango_layout_set_attributes@PLT
	movq	-40(%rbp), %rdi
	callq	pango_attr_list_unref@PLT
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_ruler_create_layout, .Lfunc_end32-gimp_ruler_create_layout
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_update_position,@function
gimp_ruler_update_position:             # @gimp_ruler_update_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation@PLT
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	callq	gimp_ruler_get_range@PLT
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	mulsd	-16(%rbp), %xmm1
	cvtsi2sdl	-40(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	gimp_ruler_set_position@PLT
	jmp	.LBB33_3
.LBB33_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	mulsd	-24(%rbp), %xmm1
	cvtsi2sdl	-36(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	gimp_ruler_set_position@PLT
.LBB33_3:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_ruler_update_position, .Lfunc_end33-gimp_ruler_update_position
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4607182418800017408     # double 1
.LCPI34_2:
	.quad	4617315517961601024     # double 5
.LCPI34_3:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI34_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_ruler_draw_ticks,@function
gimp_ruler_draw_ticks:                  # @gimp_ruler_draw_ticks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_state@PLT
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	jne	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_55
.LBB34_2:                               # %if.end
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	leaq	.L.str.30(%rip), %rsi
	movq	-24(%rbp), %rdi
	movl	536(%rdi), %eax
	movl	%eax, -80(%rbp)
	movq	-24(%rbp), %rdi
	movl	540(%rdi), %eax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_ruler_get_layout
	leaq	-264(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	pango_layout_get_extents@PLT
	movl	-252(%rbp), %ecx
	addl	$512, %ecx              # imm = 0x200
	sarl	$10, %ecx
	addl	$2, %ecx
	movl	%ecx, -196(%rbp)
	movl	-260(%rbp), %ecx
	movl	%ecx, -200(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB34_4
# BB#3:                                 # %if.then.12
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-44(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB34_5
.LBB34_4:                               # %if.else
	movl	-44(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-48(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
.LBB34_5:                               # %if.end.19
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	cairo_create@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	-36(%rbp), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	addq	$84, %rdx
	imulq	$12, %rax, %rax
	addq	%rax, %rdx
	movq	%rdx, %rsi
	callq	gdk_cairo_set_source_color@PLT
	movq	-64(%rbp), %rdi
	callq	cairo_paint@PLT
	movq	-64(%rbp), %rdi
	movl	-36(%rbp), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	addq	$24, %rdx
	imulq	$12, %rax, %rax
	addq	%rax, %rdx
	movq	%rdx, %rsi
	callq	gdk_cairo_set_source_color@PLT
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB34_7
# BB#6:                                 # %if.then.25
	movsd	.LCPI34_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-80(%rbp), %xmm0
	movl	-76(%rbp), %eax
	addl	-84(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movl	-48(%rbp), %eax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm2
	callq	cairo_rectangle@PLT
	jmp	.LBB34_8
.LBB34_7:                               # %if.else.32
	movsd	.LCPI34_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movq	-64(%rbp), %rdi
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-84(%rbp), %xmm1
	movl	-44(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm3
	callq	cairo_rectangle@PLT
.LBB34_8:                               # %if.end.40
	leaq	-104(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-216(%rbp), %rcx
	movq	-8(%rbp), %rdi
	callq	gimp_ruler_get_range@PLT
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB34_10
	jp	.LBB34_10
# BB#9:                                 # %if.then.44
	jmp	.LBB34_54
.LBB34_10:                              # %if.end.45
	movl	$32, %eax
	movl	%eax, %esi
	leaq	.L.str.31(%rip), %rdx
	leaq	-192(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	ceil@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %ecx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_snprintf@PLT
	leaq	-192(%rbp), %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	strlen@PLT
	movslq	-196(%rbp), %rdx
	imulq	%rdx, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -204(%rbp)
	movl	$0, -124(%rbp)
.LBB34_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-124(%rbp), %rax
	cmpq	$16, %rax
	jae	.LBB34_16
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB34_11 Depth=1
	leaq	ruler_metric(%rip), %rax
	movslq	-124(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI34_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movl	-204(%rbp), %edx
	shll	$1, %edx
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB34_14
# BB#13:                                # %if.then.68
	jmp	.LBB34_16
.LBB34_14:                              # %if.end.69
                                        #   in Loop: Header=BB34_11 Depth=1
	jmp	.LBB34_15
.LBB34_15:                              # %for.inc
                                        #   in Loop: Header=BB34_11 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB34_11
.LBB34_16:                              # %for.end
	movslq	-124(%rbp), %rax
	cmpq	$16, %rax
	jne	.LBB34_18
# BB#17:                                # %if.then.73
	movl	$15, -124(%rbp)
.LBB34_18:                              # %if.end.74
	movq	-8(%rbp), %rdi
	callq	gimp_ruler_get_unit@PLT
	movl	%eax, -220(%rbp)
	movl	$0, -88(%rbp)
	movl	$4, -68(%rbp)
.LBB34_19:                              # %for.cond.76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_36 Depth 2
                                        #       Child Loop BB34_44 Depth 3
	cmpl	$0, -68(%rbp)
	jl	.LBB34_53
# BB#20:                                # %for.body.79
                                        #   in Loop: Header=BB34_19 Depth=1
	cmpl	$0, -220(%rbp)
	jne	.LBB34_24
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB34_19 Depth=1
	cmpl	$1, -124(%rbp)
	jne	.LBB34_24
# BB#22:                                # %land.lhs.true.84
                                        #   in Loop: Header=BB34_19 Depth=1
	cmpl	$1, -68(%rbp)
	jne	.LBB34_24
# BB#23:                                # %if.then.87
                                        #   in Loop: Header=BB34_19 Depth=1
	movsd	.LCPI34_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	jmp	.LBB34_25
.LBB34_24:                              # %if.else.88
                                        #   in Loop: Header=BB34_19 Depth=1
	leaq	ruler_metric(%rip), %rax
	movslq	-124(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rcx
	cvtsi2sdl	128(%rax,%rcx,4), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -272(%rbp)
.LBB34_25:                              # %if.end.95
                                        #   in Loop: Header=BB34_19 Depth=1
	movsd	.LCPI34_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movapd	.LCPI34_1(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB34_27
# BB#26:                                # %if.then.100
                                        #   in Loop: Header=BB34_19 Depth=1
	jmp	.LBB34_52
.LBB34_27:                              # %if.end.101
                                        #   in Loop: Header=BB34_19 Depth=1
	cmpl	$0, -220(%rbp)
	jne	.LBB34_30
# BB#28:                                # %land.lhs.true.104
                                        #   in Loop: Header=BB34_19 Depth=1
	movsd	.LCPI34_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-272(%rbp), %xmm0
	jbe	.LBB34_30
# BB#29:                                # %if.then.107
                                        #   in Loop: Header=BB34_19 Depth=1
	jmp	.LBB34_52
.LBB34_30:                              # %if.end.108
                                        #   in Loop: Header=BB34_19 Depth=1
	movl	-76(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	cltd
	idivl	%ecx
	subl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movl	-88(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB34_32
# BB#31:                                # %if.then.115
                                        #   in Loop: Header=BB34_19 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB34_32:                              # %if.end.116
                                        #   in Loop: Header=BB34_19 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB34_34
# BB#33:                                # %if.then.119
                                        #   in Loop: Header=BB34_19 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-272(%rbp), %xmm0
	callq	floor@PLT
	mulsd	-272(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-272(%rbp), %xmm0
	callq	ceil@PLT
	mulsd	-272(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	jmp	.LBB34_35
.LBB34_34:                              # %if.else.126
                                        #   in Loop: Header=BB34_19 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-272(%rbp), %xmm0
	callq	floor@PLT
	mulsd	-272(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-272(%rbp), %xmm0
	callq	ceil@PLT
	mulsd	-272(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
.LBB34_35:                              # %if.end.133
                                        #   in Loop: Header=BB34_19 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
.LBB34_36:                              # %for.cond.134
                                        #   Parent Loop BB34_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB34_44 Depth 3
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB34_51
# BB#37:                                # %for.body.137
                                        #   in Loop: Header=BB34_36 Depth=2
	movsd	.LCPI34_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	mulsd	-120(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -208(%rbp)
	movq	-32(%rbp), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB34_39
# BB#38:                                # %if.then.145
                                        #   in Loop: Header=BB34_36 Depth=2
	movsd	.LCPI34_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-208(%rbp), %xmm0
	movl	-76(%rbp), %eax
	addl	-84(%rbp), %eax
	subl	-88(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-88(%rbp), %xmm3
	callq	cairo_rectangle@PLT
	jmp	.LBB34_40
.LBB34_39:                              # %if.else.151
                                        #   in Loop: Header=BB34_36 Depth=2
	movsd	.LCPI34_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-64(%rbp), %rdi
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	subl	-88(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-208(%rbp), %xmm1
	cvtsi2sdl	-88(%rbp), %xmm2
	callq	cairo_rectangle@PLT
.LBB34_40:                              # %if.end.157
                                        #   in Loop: Header=BB34_36 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB34_49
# BB#41:                                # %if.then.160
                                        #   in Loop: Header=BB34_36 Depth=2
	movl	$32, %eax
	movl	%eax, %esi
	leaq	.L.str.31(%rip), %rdx
	leaq	-192(%rbp), %rdi
	cvttsd2si	-152(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf@PLT
	movq	-32(%rbp), %rdx
	cmpl	$0, (%rdx)
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jne	.LBB34_43
# BB#42:                                # %if.then.167
                                        #   in Loop: Header=BB34_36 Depth=2
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	leaq	-192(%rbp), %rsi
	movq	-232(%rbp), %rdi
	callq	pango_layout_set_text@PLT
	leaq	-248(%rbp), %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-232(%rbp), %rdi
	callq	pango_layout_get_extents@PLT
	movq	-64(%rbp), %rdi
	movl	-208(%rbp), %eax
	addl	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-84(%rbp), %eax
	movl	-244(%rbp), %ecx
	subl	-200(%rbp), %ecx
	addl	$512, %ecx              # imm = 0x200
	sarl	$10, %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_move_to@PLT
	movq	-64(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	pango_cairo_show_layout@PLT
	jmp	.LBB34_48
.LBB34_43:                              # %if.else.177
                                        #   in Loop: Header=BB34_36 Depth=2
	movl	$0, -276(%rbp)
.LBB34_44:                              # %for.cond.178
                                        #   Parent Loop BB34_19 Depth=1
                                        #     Parent Loop BB34_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	-192(%rbp), %rdi
	movl	-276(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	-332(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	jge	.LBB34_47
# BB#45:                                # %for.body.184
                                        #   in Loop: Header=BB34_44 Depth=3
	movl	$1, %edx
	leaq	-192(%rbp), %rax
	movq	-232(%rbp), %rdi
	movslq	-276(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	pango_layout_set_text@PLT
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-248(%rbp), %rdx
	movq	-232(%rbp), %rdi
	callq	pango_layout_get_extents@PLT
	movq	-64(%rbp), %rdi
	movl	-80(%rbp), %r8d
	addl	$1, %r8d
	cvtsi2sdl	%r8d, %xmm0
	movl	-208(%rbp), %r8d
	movl	-196(%rbp), %r9d
	imull	-276(%rbp), %r9d
	addl	%r9d, %r8d
	addl	$2, %r8d
	movl	-244(%rbp), %r9d
	subl	-200(%rbp), %r9d
	addl	$512, %r9d              # imm = 0x200
	sarl	$10, %r9d
	addl	%r9d, %r8d
	cvtsi2sdl	%r8d, %xmm1
	callq	cairo_move_to@PLT
	movq	-64(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	pango_cairo_show_layout@PLT
# BB#46:                                # %for.inc.197
                                        #   in Loop: Header=BB34_44 Depth=3
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB34_44
.LBB34_47:                              # %for.end.199
                                        #   in Loop: Header=BB34_36 Depth=2
	jmp	.LBB34_48
.LBB34_48:                              # %if.end.200
                                        #   in Loop: Header=BB34_36 Depth=2
	jmp	.LBB34_49
.LBB34_49:                              # %if.end.201
                                        #   in Loop: Header=BB34_36 Depth=2
	jmp	.LBB34_50
.LBB34_50:                              # %for.inc.202
                                        #   in Loop: Header=BB34_36 Depth=2
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB34_36
.LBB34_51:                              # %for.end.204
                                        #   in Loop: Header=BB34_19 Depth=1
	jmp	.LBB34_52
.LBB34_52:                              # %for.inc.205
                                        #   in Loop: Header=BB34_19 Depth=1
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB34_19
.LBB34_53:                              # %for.end.206
	movq	-64(%rbp), %rdi
	callq	cairo_fill@PLT
	movq	-32(%rbp), %rdi
	movl	$1, 56(%rdi)
.LBB34_54:                              # %out
	movq	-64(%rbp), %rdi
	callq	cairo_destroy@PLT
.LBB34_55:                              # %return
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_ruler_draw_ticks, .Lfunc_end34-gimp_ruler_draw_ticks
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_ruler_draw_pos,@function
gimp_ruler_draw_pos:                    # @gimp_ruler_draw_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_ruler_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_state@PLT
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	jne	.LBB35_2
# BB#1:                                 # %if.then
	jmp	.LBB35_9
.LBB35_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_ruler_get_position@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	gimp_ruler_get_pos_rect
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jle	.LBB35_8
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -52(%rbp)
	jle	.LBB35_8
# BB#4:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	addq	$24, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	callq	gdk_cairo_set_source_color@PLT
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-64(%rbp), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	callq	cairo_move_to@PLT
	movq	-40(%rbp), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB35_6
# BB#5:                                 # %if.then.14
	movsd	.LCPI35_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-64(%rbp), %xmm1
	cvtsi2sdl	-56(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to@PLT
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %eax
	addl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	callq	cairo_line_to@PLT
	jmp	.LBB35_7
.LBB35_6:                               # %if.else
	movsd	.LCPI35_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %eax
	addl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-60(%rbp), %xmm2
	cvtsi2sdl	-52(%rbp), %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to@PLT
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-64(%rbp), %xmm0
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to@PLT
.LBB35_7:                               # %if.end.45
	movq	-16(%rbp), %rdi
	callq	cairo_fill@PLT
.LBB35_8:                               # %if.end.46
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 60(%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, 68(%rax)
.LBB35_9:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_ruler_draw_pos, .Lfunc_end35-gimp_ruler_draw_pos
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ruler_event_to_widget_coords,@function
gimp_ruler_event_to_widget_coords:      # @gimp_ruler_event_to_widget_coords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-52(%rbp), %rax
	leaq	-56(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, %rdx
	movq	%r8, %rcx
	callq	gtk_widget_get_translation_to_window
	cmpl	$0, %eax
	je	.LBB36_2
# BB#1:                                 # %if.then
	cvtsi2sdl	-52(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	cvtsi2sdl	-56(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB36_2:                               # %if.end
	cvttsd2si	-24(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	cvttsd2si	-32(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_ruler_event_to_widget_coords, .Lfunc_end36-gimp_ruler_event_to_widget_coords
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_widget_get_translation_to_window,@function
gtk_widget_get_translation_to_window:   # @gtk_widget_get_translation_to_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_has_window@PLT
	cmpl	$0, %eax
	jne	.LBB37_2
# BB#1:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-72(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movl	%ecx, (%rsi)
	subl	-68(%rbp), %eax
	movq	-40(%rbp), %rsi
	movl	%eax, (%rsi)
	jmp	.LBB37_3
.LBB37_2:                               # %if.else
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB37_3:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB37_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB37_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	setne	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB37_6:                               # %land.end
                                        #   in Loop: Header=BB37_4 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_7
	jmp	.LBB37_9
.LBB37_7:                               # %for.body
                                        #   in Loop: Header=BB37_4 Depth=1
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movq	-40(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	callq	gdk_window_coords_to_parent@PLT
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, (%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, (%rax)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-48(%rbp), %rdi
	callq	gdk_window_get_effective_parent@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB37_4
.LBB37_9:                               # %for.end
	cmpq	$0, -48(%rbp)
	jne	.LBB37_11
# BB#10:                                # %if.then.15
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB37_12
.LBB37_11:                              # %if.end.16
	movl	$1, -4(%rbp)
.LBB37_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gtk_widget_get_translation_to_window, .Lfunc_end37-gtk_widget_get_translation_to_window
	.cfi_endproc

	.type	gimp_ruler_get_type.g_define_type_id__volatile,@object # @gimp_ruler_get_type.g_define_type_id__volatile
	.local	gimp_ruler_get_type.g_define_type_id__volatile
	.comm	gimp_ruler_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpRuler"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"orientation"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LibGimpWidgets"
	.size	.L.str.2, 15

	.type	.L__func__.gimp_ruler_add_track_widget,@object # @__func__.gimp_ruler_add_track_widget
.L__func__.gimp_ruler_add_track_widget:
	.asciz	"gimp_ruler_add_track_widget"
	.size	.L__func__.gimp_ruler_add_track_widget, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_RULER (ruler)"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GTK_IS_WIDGET (ruler)"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"g_list_find (priv->track_widgets, widget) == NULL"
	.size	.L.str.5, 50

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"motion-notify-event"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"destroy"
	.size	.L.str.7, 8

	.type	.L__func__.gimp_ruler_remove_track_widget,@object # @__func__.gimp_ruler_remove_track_widget
.L__func__.gimp_ruler_remove_track_widget:
	.asciz	"gimp_ruler_remove_track_widget"
	.size	.L__func__.gimp_ruler_remove_track_widget, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"g_list_find (priv->track_widgets, widget) != NULL"
	.size	.L.str.8, 50

	.type	.L__func__.gimp_ruler_set_unit,@object # @__func__.gimp_ruler_set_unit
.L__func__.gimp_ruler_set_unit:
	.asciz	"gimp_ruler_set_unit"
	.size	.L__func__.gimp_ruler_set_unit, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"unit"
	.size	.L.str.9, 5

	.type	.L__func__.gimp_ruler_get_unit,@object # @__func__.gimp_ruler_get_unit
.L__func__.gimp_ruler_get_unit:
	.asciz	"gimp_ruler_get_unit"
	.size	.L__func__.gimp_ruler_get_unit, 20

	.type	.L__func__.gimp_ruler_set_position,@object # @__func__.gimp_ruler_set_position
.L__func__.gimp_ruler_set_position:
	.asciz	"gimp_ruler_set_position"
	.size	.L__func__.gimp_ruler_set_position, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"position"
	.size	.L.str.10, 9

	.type	.L__func__.gimp_ruler_get_position,@object # @__func__.gimp_ruler_get_position
.L__func__.gimp_ruler_get_position:
	.asciz	"gimp_ruler_get_position"
	.size	.L__func__.gimp_ruler_get_position, 24

	.type	.L__func__.gimp_ruler_set_range,@object # @__func__.gimp_ruler_set_range
.L__func__.gimp_ruler_set_range:
	.asciz	"gimp_ruler_set_range"
	.size	.L__func__.gimp_ruler_set_range, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"lower"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"upper"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"max-size"
	.size	.L.str.13, 9

	.type	.L__func__.gimp_ruler_get_range,@object # @__func__.gimp_ruler_get_range
.L__func__.gimp_ruler_get_range:
	.asciz	"gimp_ruler_get_range"
	.size	.L__func__.gimp_ruler_get_range, 21

	.type	gimp_ruler_parent_class,@object # @gimp_ruler_parent_class
	.local	gimp_ruler_parent_class
	.comm	gimp_ruler_parent_class,8,8
	.type	GimpRuler_private_offset,@object # @GimpRuler_private_offset
	.local	GimpRuler_private_offset
	.comm	GimpRuler_private_offset,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Orientation"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The orientation of the ruler"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unit"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Unit of ruler"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Lower"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Lower limit of ruler"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Upper"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Upper limit of ruler"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Position"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Position of mark on the ruler"
	.size	.L.str.23, 30

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Max Size"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Maximum size of the ruler"
	.size	.L.str.25, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"font-scale"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.27, 54

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimpruler.c"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"property"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"0123456789"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%d"
	.size	.L.str.31, 3

	.type	ruler_metric,@object    # @ruler_metric
	.section	.rodata,"a",@progbits
	.align	8
ruler_metric:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4611686018427387904     # double 2.000000e+00
	.quad	4617315517961601024     # double 5.000000e+00
	.quad	4621819117588971520     # double 1.000000e+01
	.quad	4627730092099895296     # double 2.500000e+01
	.quad	4632233691727265792     # double 5.000000e+01
	.quad	4636737291354636288     # double 1.000000e+02
	.quad	4643000109586448384     # double 2.500000e+02
	.quad	4647503709213818880     # double 5.000000e+02
	.quad	4652007308841189376     # double 1.000000e+03
	.quad	4657715973212602368     # double 2.500000e+03
	.quad	4662219572839972864     # double 5.000000e+03
	.quad	4666723172467343360     # double 1.000000e+04
	.quad	4672601161629433856     # double 2.500000e+04
	.quad	4677104761256804352     # double 5.000000e+04
	.quad	4681608360884174848     # double 1.000000e+05
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	10                      # 0xa
	.long	50                      # 0x32
	.long	100                     # 0x64
	.zero	4
	.size	ruler_metric, 152


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
