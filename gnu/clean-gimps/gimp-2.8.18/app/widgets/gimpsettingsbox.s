	.text
	.file	"gimpsettingsbox.bc"
	.globl	gimp_settings_box_get_type
	.align	16, 0x90
	.type	gimp_settings_box_get_type,@function
gimp_settings_box_get_type:             # @gimp_settings_box_get_type
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
	movq	gimp_settings_box_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_settings_box_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$848, %edx              # imm = 0x350
	movabsq	$gimp_settings_box_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_settings_box_init, %rcx
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
	movabsq	$gimp_settings_box_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_settings_box_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_settings_box_get_type, .Lfunc_end0-gimp_settings_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_class_intern_init,@function
gimp_settings_box_class_intern_init:    # @gimp_settings_box_class_intern_init
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
	movq	%rax, gimp_settings_box_parent_class
	cmpl	$0, GimpSettingsBox_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSettingsBox_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_settings_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_settings_box_class_intern_init, .Lfunc_end1-gimp_settings_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_init,@function
gimp_settings_box_init:                 # @gimp_settings_box_init
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
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_settings_box_init, .Lfunc_end2-gimp_settings_box_init
	.cfi_endproc

	.globl	gimp_settings_box_new
	.align	16, 0x90
	.type	gimp_settings_box_new,@function
gimp_settings_box_new:                  # @gimp_settings_box_new
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
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_settings_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_42
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_config_interface_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -156(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -156(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_settings_box_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_42
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB3_27
# BB#26:                                # %if.then.48
	movl	$0, -180(%rbp)
	jmp	.LBB3_32
.LBB3_27:                               # %if.else.49
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_30
# BB#28:                                # %land.lhs.true.52
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB3_30
# BB#29:                                # %if.then.56
	movl	$1, -180(%rbp)
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.57
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB3_31:                               # %if.end.59
	jmp	.LBB3_32
.LBB3_32:                               # %if.end.60
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB3_34
# BB#33:                                # %if.then.63
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.64
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_settings_box_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_42
.LBB3_35:                               # %if.end.65
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.66
	jmp	.LBB3_37
.LBB3_37:                               # %do.body.67
	cmpq	$0, -56(%rbp)
	je	.LBB3_39
# BB#38:                                # %if.then.69
	jmp	.LBB3_40
.LBB3_39:                               # %if.else.70
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_settings_box_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_42
.LBB3_40:                               # %if.end.71
	jmp	.LBB3_41
.LBB3_41:                               # %do.end.72
	callq	gimp_settings_box_get_type
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.9, %rdx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-32(%rbp), %r10
	movq	-40(%rbp), %r11
	movq	-48(%rbp), %rbx
	movq	-56(%rbp), %r14
	movq	%rax, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%rbx, (%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movq	-112(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-72(%rbp), %rdi
	callq	g_strdup
	movq	-112(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-80(%rbp), %rdi
	callq	g_strdup
	movq	-112(%rbp), %rcx
	movq	%rax, 96(%rcx)
	movq	-88(%rbp), %rdi
	callq	g_strdup
	movq	-112(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-96(%rbp), %rdi
	callq	g_strdup
	movq	-112(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
.LBB3_42:                               # %return
	movq	-24(%rbp), %rax
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_settings_box_new, .Lfunc_end3-gimp_settings_box_new
	.cfi_endproc

	.globl	gimp_settings_box_add_current
	.align	16, 0x90
	.type	gimp_settings_box_add_current,@function
gimp_settings_box_add_current:          # @gimp_settings_box_add_current
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_settings_box_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_settings_box_add_current, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB4_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_22
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.11, %rsi
	leaq	-68(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -68(%rbp)
	jbe	.LBB4_17
# BB#15:                                # %land.lhs.true.19
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_is_equal_to
	cmpl	$0, %eax
	je	.LBB4_17
# BB#16:                                # %if.then.25
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	time
	movabsq	$.L.str.11, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB4_22
.LBB4_17:                               # %if.end.27
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_18
.LBB4_18:                               # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_21
.LBB4_20:                               # %cond.false
                                        #   in Loop: Header=BB4_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_21
.LBB4_21:                               # %cond.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB4_13
.LBB4_22:                               # %for.end
	cmpq	$0, -40(%rbp)
	jne	.LBB4_24
# BB#23:                                # %if.then.30
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	time
	movabsq	$.L.str.11, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	%eax, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_insert
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	g_object_unref
.LBB4_24:                               # %if.end.41
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_settings_box_truncate_list
	movq	-8(%rbp), %rdi
	callq	gimp_settings_box_serialize
.LBB4_25:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_settings_box_add_current, .Lfunc_end4-gimp_settings_box_add_current
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_truncate_list,@function
gimp_settings_box_truncate_list:        # @gimp_settings_box_truncate_list
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_11
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB5_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.11, %rsi
	leaq	-52(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -52(%rbp)
	jbe	.LBB5_9
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB5_8
# BB#7:                                 # %if.then.7
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB5_8:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_10
.LBB5_9:                                # %if.else
	jmp	.LBB5_11
.LBB5_10:                               # %if.end.12
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_11:                               # %while.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_settings_box_truncate_list, .Lfunc_end5-gimp_settings_box_truncate_list
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_serialize,@function
gimp_settings_box_serialize:            # @gimp_settings_box_serialize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_settings_box_separator_remove
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.51, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rdx
	movabsq	$.L.str.53, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	-24(%rbp), %r9
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_file
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then.9
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
.LBB6_4:                                # %if.end.11
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_settings_box_separator_add
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_settings_box_serialize, .Lfunc_end6-gimp_settings_box_serialize
	.cfi_endproc

	.globl	gimp_settings_box_get_combo
	.align	16, 0x90
	.type	gimp_settings_box_get_combo,@function
gimp_settings_box_get_combo:            # @gimp_settings_box_get_combo
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_settings_box_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_settings_box_get_combo, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_settings_box_get_combo, .Lfunc_end7-gimp_settings_box_get_combo
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_class_init,@function
gimp_settings_box_class_init:           # @gimp_settings_box_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_dialog_get_type
	movabsq	$.L.str.12, %rdi
	movl	$2, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__OBJECT_BOOLEAN, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$20, %r8d
	movl	%r8d, %r11d
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r14, %r9
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$20, 32(%rsp)
	movb	$0, %al
	movq	%r11, -88(%rbp)         # 8-byte Spill
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.13, %rdi
	movl	$2, %edx
	movl	$832, %ecx              # imm = 0x340
	xorl	%r12d, %r12d
	movl	%r12d, %esi
	movabsq	$gimp_marshal_BOOLEAN__STRING, %r8
	movl	$20, %r12d
	movl	%r12d, %r9d
	movl	$1, %r12d
	movl	$64, %r13d
	movl	%r13d, %r10d
	movl	%eax, settings_box_signals
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$20, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$64, 24(%rsp)
	movb	$0, %al
	movq	%r10, -128(%rbp)        # 8-byte Spill
	movl	%r12d, -132(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.14, %rdi
	movl	$2, %edx
	movl	$840, %ecx              # imm = 0x348
	xorl	%r12d, %r12d
	movl	%r12d, %esi
	movabsq	$gimp_marshal_BOOLEAN__STRING, %r8
	movl	$20, %r12d
	movl	%r12d, %r9d
	movl	$1, %r12d
	movl	$64, %r13d
	movl	%r13d, %r10d
	movl	%eax, settings_box_signals+4
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$20, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$64, 24(%rsp)
	movb	$0, %al
	movq	%r10, -168(%rbp)        # 8-byte Spill
	movl	%r12d, -172(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_settings_box_get_property, %rsi
	movabsq	$gimp_settings_box_set_property, %rdi
	movabsq	$gimp_settings_box_finalize, %r8
	movabsq	$gimp_settings_box_constructed, %r9
	movl	%eax, settings_box_signals+8
	movq	-56(%rbp), %r10
	movq	%r9, 72(%r10)
	movq	-56(%rbp), %r9
	movq	%r8, 48(%r9)
	movq	-56(%rbp), %r8
	movq	%rdi, 24(%r8)
	movq	-56(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	movq	-48(%rbp), %rsi
	movq	$0, 824(%rsi)
	movq	-48(%rbp), %rsi
	movq	$0, 832(%rsi)
	movq	-48(%rbp), %rsi
	movq	$0, 840(%rsi)
	movq	-56(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-56(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$4, %esi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$120, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_settings_box_class_init, .Lfunc_end8-gimp_settings_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_constructed,@function
gimp_settings_box_constructed:          # @gimp_settings_box_constructed
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_settings_box_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_settings_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB9_2:                                # %if.end
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_5
# BB#4:                                 # %if.then.9
	movl	$0, -76(%rbp)
	jmp	.LBB9_10
.LBB9_5:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_8
# BB#6:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB9_8
# BB#7:                                 # %if.then.12
	movl	$1, -76(%rbp)
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.13
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB9_9:                                # %if.end.15
	jmp	.LBB9_10
.LBB9_10:                               # %if.end.16
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB9_12
# BB#11:                                # %if.then.18
	jmp	.LBB9_13
.LBB9_12:                               # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$252, %edx
	movabsq	$.L__func__.gimp_settings_box_constructed, %rcx
	movabsq	$.L.str.16, %r8
	callq	g_assertion_message_expr
.LBB9_13:                               # %if.end.20
	jmp	.LBB9_14
.LBB9_14:                               # %do.end
	jmp	.LBB9_15
.LBB9_15:                               # %do.body.21
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_config_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB9_17
# BB#16:                                # %if.then.30
	movl	$0, -100(%rbp)
	jmp	.LBB9_22
.LBB9_17:                               # %if.else.31
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_20
# BB#18:                                # %land.lhs.true.34
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_20
# BB#19:                                # %if.then.38
	movl	$1, -100(%rbp)
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.39
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB9_21:                               # %if.end.41
	jmp	.LBB9_22
.LBB9_22:                               # %if.end.42
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB9_24
# BB#23:                                # %if.then.45
	jmp	.LBB9_25
.LBB9_24:                               # %if.else.46
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$253, %edx
	movabsq	$.L__func__.gimp_settings_box_constructed, %rcx
	movabsq	$.L.str.17, %r8
	callq	g_assertion_message_expr
.LBB9_25:                               # %if.end.47
	jmp	.LBB9_26
.LBB9_26:                               # %do.end.48
	jmp	.LBB9_27
.LBB9_27:                               # %do.body.49
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB9_29
# BB#28:                                # %if.then.58
	movl	$0, -124(%rbp)
	jmp	.LBB9_34
.LBB9_29:                               # %if.else.59
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_32
# BB#30:                                # %land.lhs.true.62
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_32
# BB#31:                                # %if.then.66
	movl	$1, -124(%rbp)
	jmp	.LBB9_33
.LBB9_32:                               # %if.else.67
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB9_33:                               # %if.end.69
	jmp	.LBB9_34
.LBB9_34:                               # %if.end.70
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB9_36
# BB#35:                                # %if.then.73
	jmp	.LBB9_37
.LBB9_36:                               # %if.else.74
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$254, %edx
	movabsq	$.L__func__.gimp_settings_box_constructed, %rcx
	movabsq	$.L.str.18, %r8
	callq	g_assertion_message_expr
.LBB9_37:                               # %if.end.75
	jmp	.LBB9_38
.LBB9_38:                               # %do.end.76
	jmp	.LBB9_39
.LBB9_39:                               # %do.body.77
	movq	-24(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB9_41
# BB#40:                                # %if.then.79
	jmp	.LBB9_42
.LBB9_41:                               # %if.else.80
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$255, %edx
	movabsq	$.L__func__.gimp_settings_box_constructed, %rcx
	movabsq	$.L.str.19, %r8
	callq	g_assertion_message_expr
.LBB9_42:                               # %if.end.81
	jmp	.LBB9_43
.LBB9_43:                               # %do.end.82
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_container_get_n_children
	cmpl	$0, %eax
	jne	.LBB9_45
# BB#44:                                # %if.then.86
	movq	-16(%rbp), %rdi
	callq	gimp_settings_box_deserialize
.LBB9_45:                               # %if.end.87
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movl	$16, %edx
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_combo_box_new
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_settings_box_row_separator_func, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	gtk_combo_box_set_row_separator_func
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_settings_box_setting_selected, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$1, %r9d
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_button_new
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_set_can_focus
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rdi
	movl	$1, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_settings_box_favorite_activate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_button_new
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_set_can_focus
	movq	-40(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rdi
	movl	$1, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_settings_box_menu_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_menu_new
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_attach_to_widget
	movabsq	$.L.str.28, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_settings_box_import_activate, %rcx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_settings_box_menu_item_add
	movabsq	$.L.str.30, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_settings_box_export_activate, %rcx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_settings_box_menu_item_add
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_settings_box_menu_item_add
	movabsq	$.L.str.32, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_settings_box_manage_activate, %rcx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_settings_box_menu_item_add
	movq	%rax, -352(%rbp)        # 8-byte Spill
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_settings_box_constructed, .Lfunc_end9-gimp_settings_box_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_finalize,@function
gimp_settings_box_finalize:             # @gimp_settings_box_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
.LBB10_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB10_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
.LBB10_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB10_10
# BB#7:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB10_9
# BB#8:                                 # %if.then.20
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_settings_box_toplevel_unmap, %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	40(%r9), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB10_9:                               # %if.end.23
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_destroy
.LBB10_10:                              # %if.end.25
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB10_14
# BB#11:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_13
# BB#12:                                # %if.then.33
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_settings_box_toplevel_unmap, %rdx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	32(%r9), %r9
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB10_13:                              # %if.end.36
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_destroy
.LBB10_14:                              # %if.end.38
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_settings_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_settings_box_finalize, .Lfunc_end10-gimp_settings_box_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_set_property,@function
gimp_settings_box_set_property:         # @gimp_settings_box_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB11_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 48(%rdi)
	jmp	.LBB11_8
.LBB11_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 56(%rdi)
	jmp	.LBB11_8
.LBB11_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 64(%rdi)
	jmp	.LBB11_8
.LBB11_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 72(%rdi)
	jmp	.LBB11_8
.LBB11_5:                               # %sw.default
	jmp	.LBB11_6
.LBB11_6:                               # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$419, %edx              # imm = 0x1A3
	movabsq	$.L.str.50, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB11_8
.LBB11_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_settings_box_set_property, .Lfunc_end11-gimp_settings_box_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_1
	.quad	.LBB11_2
	.quad	.LBB11_3
	.quad	.LBB11_4

	.text
	.align	16, 0x90
	.type	gimp_settings_box_get_property,@function
gimp_settings_box_get_property:         # @gimp_settings_box_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB12_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB12_8
.LBB12_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB12_8
.LBB12_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB12_8
.LBB12_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rsi
	callq	g_value_set_string
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$451, %edx              # imm = 0x1C3
	movabsq	$.L.str.50, %rcx
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
	.size	gimp_settings_box_get_property, .Lfunc_end12-gimp_settings_box_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_1
	.quad	.LBB12_2
	.quad	.LBB12_3
	.quad	.LBB12_4

	.text
	.align	16, 0x90
	.type	gimp_settings_box_deserialize,@function
gimp_settings_box_deserialize:          # @gimp_settings_box_deserialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.33, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	jne	.LBB13_6
# BB#3:                                 # %if.then.8
	movq	-24(%rbp), %rax
	cmpl	$1, 4(%rax)
	je	.LBB13_5
# BB#4:                                 # %if.then.9
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
.LBB13_5:                               # %if.end.11
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
.LBB13_6:                               # %if.end.12
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_settings_box_separator_add
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_settings_box_deserialize, .Lfunc_end13-gimp_settings_box_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_row_separator_func,@function
gimp_settings_box_row_separator_func:   # @gimp_settings_box_row_separator_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	leaq	-32(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_settings_box_row_separator_func, .Lfunc_end14-gimp_settings_box_row_separator_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_setting_selected,@function
gimp_settings_box_setting_selected:     # @gimp_settings_box_setting_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB15_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movabsq	$.L.str.11, %rsi
	movq	-40(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_object_class_find_property
	cmpq	$0, %rax
	je	.LBB15_3
# BB#2:                                 # %if.then.10
	movabsq	$.L.str.11, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	56(%rdi), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB15_3:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_select_item
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB15_4:                               # %if.end.13
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_settings_box_setting_selected, .Lfunc_end15-gimp_settings_box_setting_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_favorite_activate,@function
gimp_settings_box_favorite_activate:    # @gimp_settings_box_favorite_activate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp58:
	.cfi_offset %rbx, -32
.Ltmp59:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.35, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movabsq	$.L.str.36, %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.37, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_settings_box_favorite_callback, %rdi
	movq	-32(%rbp), %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	callq	gimp_query_string_box
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_settings_box_favorite_activate, .Lfunc_end16-gimp_settings_box_favorite_activate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_menu_press,@function
gimp_settings_box_menu_press:           # @gimp_settings_box_menu_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_settings_box_menu_position, %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	52(%rdx), %r9d
	movq	-16(%rbp), %rdx
	movl	20(%rdx), %r8d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movl	-68(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gtk_menu_popup
.LBB17_2:                               # %if.end
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_settings_box_menu_press, .Lfunc_end17-gimp_settings_box_menu_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_menu_item_add,@function
gimp_settings_box_menu_item_add:        # @gimp_settings_box_menu_item_add
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_image_menu_item_new_with_mnemonic
	movl	$1, %esi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_image_new_from_stock
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_image_menu_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_image_menu_item_set_image
	movabsq	$.L.str.39, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %if.else
	callq	gtk_separator_menu_item_new
	movq	%rax, -48(%rbp)
.LBB18_3:                               # %if.end
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_menu_shell_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_settings_box_menu_item_add, .Lfunc_end18-gimp_settings_box_menu_item_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_import_activate,@function
gimp_settings_box_import_activate:      # @gimp_settings_box_import_activate
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%edx, %edx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	80(%rax), %rsi
	callq	gimp_settings_box_file_dialog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_settings_box_import_activate, .Lfunc_end19-gimp_settings_box_import_activate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_export_activate,@function
gimp_settings_box_export_activate:      # @gimp_settings_box_export_activate
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$1, %edx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	88(%rax), %rsi
	callq	gimp_settings_box_file_dialog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_settings_box_export_activate, .Lfunc_end20-gimp_settings_box_export_activate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_manage_activate,@function
gimp_settings_box_manage_activate:      # @gimp_settings_box_manage_activate
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB21_3
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.46, %rdi
	movq	%rax, -32(%rbp)
	callq	gettext
	movabsq	$.L.str.47, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movabsq	$.L.str.48, %r8
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	movq	-32(%rbp), %r9
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movq	%r9, %rdx
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$-7, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_dialog_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	addq	$40, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_settings_box_toplevel_unmap, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_settings_box_manage_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rsi
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rdx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_settings_editor_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_show
.LBB21_3:                               # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_settings_box_manage_activate, .Lfunc_end21-gimp_settings_box_manage_activate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_separator_add,@function
gimp_settings_box_separator_add:        # @gimp_settings_box_separator_add
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_get_children_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_add
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	g_object_set_data
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_settings_box_separator_add, .Lfunc_end22-gimp_settings_box_separator_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_favorite_callback,@function
gimp_settings_box_favorite_callback:    # @gimp_settings_box_favorite_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-48(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-32(%rbp), %rdi
	callq	gimp_settings_box_serialize
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_settings_box_favorite_callback, .Lfunc_end23-gimp_settings_box_favorite_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_menu_position,@function
gimp_settings_box_menu_position:        # @gimp_settings_box_menu_position
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	%rcx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	gimp_button_menu_position
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_settings_box_menu_position, .Lfunc_end24-gimp_settings_box_menu_position
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_file_dialog,@function
gimp_settings_box_file_dialog:          # @gimp_settings_box_file_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB25_18
.LBB25_2:                               # %if.end
	cmpl	$0, -20(%rbp)
	je	.LBB25_4
# BB#3:                                 # %if.then.6
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB25_5
.LBB25_4:                               # %if.else
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB25_5:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.29, %r10
	xorl	%r9d, %r9d
	movl	$1, %r11d
	cmpl	$0, -20(%rbp)
	cmovnel	%r11d, %r9d
	cmpl	$0, -20(%rbp)
	cmovneq	%r10, %rdi
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gtk_file_chooser_dialog_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movslq	-20(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_settings_box_toplevel_unmap, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_destroy_with_parent
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	cmpl	$0, -20(%rbp)
	je	.LBB25_7
# BB#6:                                 # %if.then.33
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
.LBB25_7:                               # %if.end.36
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_settings_box_file_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.45, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	cmpq	$0, 104(%rcx)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	je	.LBB25_12
# BB#8:                                 # %land.lhs.true
	movl	$4, %esi
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB25_12
# BB#9:                                 # %if.then.43
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movq	104(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_add_shortcut_folder
	movq	-32(%rbp), %rdx
	cmpq	$0, 112(%rdx)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jne	.LBB25_11
# BB#10:                                # %if.then.49
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	104(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB25_11:                              # %if.end.54
	jmp	.LBB25_15
.LBB25_12:                              # %if.else.55
	movq	-32(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB25_14
# BB#13:                                # %if.then.58
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_get_home_dir
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_chooser_set_current_folder
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB25_14:                              # %if.end.63
	jmp	.LBB25_15
.LBB25_15:                              # %if.end.64
	movq	-32(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB25_17
# BB#16:                                # %if.then.67
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB25_17:                              # %if.end.72
	movabsq	$gimp_standard_help_func, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-32(%rbp), %rdx
	movq	96(%rdx), %rdx
	callq	gimp_help_connect
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movl	settings_box_signals, %esi
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	-20(%rbp), %r8d
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	g_signal_emit
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	gtk_widget_show
.LBB25_18:                              # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_settings_box_file_dialog, .Lfunc_end25-gimp_settings_box_file_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_toplevel_unmap,@function
gimp_settings_box_toplevel_unmap:       # @gimp_settings_box_toplevel_unmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967292, %esi       # imm = 0xFFFFFFFC
	movq	%rax, %rdi
	callq	gtk_dialog_response
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_settings_box_toplevel_unmap, .Lfunc_end26-gimp_settings_box_toplevel_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_file_response,@function
gimp_settings_box_file_response:        # @gimp_settings_box_file_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_settings_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_settings_box_toplevel_unmap, %rdx
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB27_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB27_9
# BB#3:                                 # %if.then.9
	movl	$0, -60(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -56(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB27_5
# BB#4:                                 # %if.then.14
	xorl	%edx, %edx
	leaq	-60(%rbp), %r8
	movq	-24(%rbp), %rax
	movl	settings_box_signals+8, %esi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	jmp	.LBB27_6
.LBB27_5:                               # %if.else
	xorl	%edx, %edx
	leaq	-60(%rbp), %r8
	movq	-24(%rbp), %rax
	movl	settings_box_signals+4, %esi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB27_6:                               # %if.end.15
	cmpl	$0, -60(%rbp)
	je	.LBB27_8
# BB#7:                                 # %if.then.17
	movq	-32(%rbp), %rax
	movq	112(%rax), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, 112(%rdi)
.LBB27_8:                               # %if.end.20
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB27_9:                               # %if.end.21
	cmpl	$0, -44(%rbp)
	je	.LBB27_11
# BB#10:                                # %if.then.23
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB27_12
.LBB27_11:                              # %if.else.24
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB27_12:                              # %if.end.25
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_settings_box_file_response, .Lfunc_end27-gimp_settings_box_file_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_manage_response,@function
gimp_settings_box_manage_response:      # @gimp_settings_box_manage_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_settings_box_toplevel_unmap, %rdx
	movq	-32(%rbp), %rdi
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
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB28_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_settings_box_manage_response, .Lfunc_end28-gimp_settings_box_manage_response
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end29:
	.size	g_warning, .Lfunc_end29-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_box_separator_remove,@function
gimp_settings_box_separator_remove:     # @gimp_settings_box_separator_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_remove
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_settings_box_separator_remove, .Lfunc_end30-gimp_settings_box_separator_remove
	.cfi_endproc

	.type	gimp_settings_box_get_type.g_define_type_id__volatile,@object # @gimp_settings_box_get_type.g_define_type_id__volatile
	.local	gimp_settings_box_get_type.g_define_type_id__volatile
	.comm	gimp_settings_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSettingsBox"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_settings_box_new,@object # @__func__.gimp_settings_box_new
.L__func__.gimp_settings_box_new:
	.asciz	"gimp_settings_box_new"
	.size	.L__func__.gimp_settings_box_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONFIG (config)"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_CONTAINER (container)"
	.size	.L.str.4, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"filename != NULL"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"config"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"container"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"filename"
	.size	.L.str.9, 9

	.type	.L__func__.gimp_settings_box_add_current,@object # @__func__.gimp_settings_box_add_current
.L__func__.gimp_settings_box_add_current:
	.asciz	"gimp_settings_box_add_current"
	.size	.L__func__.gimp_settings_box_add_current, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_SETTINGS_BOX (box)"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"time"
	.size	.L.str.11, 5

	.type	.L__func__.gimp_settings_box_get_combo,@object # @__func__.gimp_settings_box_get_combo
.L__func__.gimp_settings_box_get_combo:
	.asciz	"gimp_settings_box_get_combo"
	.size	.L__func__.gimp_settings_box_get_combo, 28

	.type	gimp_settings_box_parent_class,@object # @gimp_settings_box_parent_class
	.local	gimp_settings_box_parent_class
	.comm	gimp_settings_box_parent_class,8,8
	.type	GimpSettingsBox_private_offset,@object # @GimpSettingsBox_private_offset
	.local	GimpSettingsBox_private_offset
	.comm	GimpSettingsBox_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"file-dialog-setup"
	.size	.L.str.12, 18

	.type	settings_box_signals,@object # @settings_box_signals
	.local	settings_box_signals
	.comm	settings_box_signals,12,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"import"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"export"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimpsettingsbox.c"
	.size	.L.str.15, 18

	.type	.L__func__.gimp_settings_box_constructed,@object # @__func__.gimp_settings_box_constructed
.L__func__.gimp_settings_box_constructed:
	.asciz	"gimp_settings_box_constructed"
	.size	.L__func__.gimp_settings_box_constructed, 30

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_IS_GIMP (private->gimp)"
	.size	.L.str.16, 29

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_IS_CONFIG (private->config)"
	.size	.L.str.17, 33

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_IS_CONTAINER (private->container)"
	.size	.L.str.18, 39

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"private->filename != NULL"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Pick a setting from the list"
	.size	.L.str.20, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"select-item"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-add"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Add settings to favorites"
	.size	.L.str.23, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"clicked"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-menu-left"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"button-press-event"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-open"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Import Settings from File..."
	.size	.L.str.28, 30

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-save"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Export Settings to File..."
	.size	.L.str.30, 28

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-edit"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Manage Settings..."
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"separator"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Add Settings to Favorites"
	.size	.L.str.35, 26

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Enter a name for the settings"
	.size	.L.str.36, 30

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Saved Settings"
	.size	.L.str.37, 15

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"hide"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"activate"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gtk-cancel"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"save"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-import-export-settings"
	.size	.L.str.42, 28

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"unmap"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"response"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"delete-event"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Manage Saved Settings"
	.size	.L.str.46, 22

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-settings-editor-dialog"
	.size	.L.str.47, 28

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gtk-close"
	.size	.L.str.48, 10

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.49, 54

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"property"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Writing '%s'\n"
	.size	.L.str.51, 14

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"settings"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"end of settings"
	.size	.L.str.53, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
