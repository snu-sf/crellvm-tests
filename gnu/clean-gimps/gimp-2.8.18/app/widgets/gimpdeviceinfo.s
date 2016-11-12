	.text
	.file	"gimpdeviceinfo.bc"
	.globl	gimp_device_info_get_type
	.align	16, 0x90
	.type	gimp_device_info_get_type,@function
gimp_device_info_get_type:              # @gimp_device_info_get_type
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
	movq	gimp_device_info_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_device_info_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_context_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$432, %edx              # imm = 0x1B0
	movabsq	$gimp_device_info_class_intern_init, %rdi
	movl	$400, %r8d              # imm = 0x190
	movabsq	$gimp_device_info_init, %rcx
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
	movabsq	$gimp_device_info_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_device_info_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_device_info_get_type, .Lfunc_end0-gimp_device_info_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_class_intern_init,@function
gimp_device_info_class_intern_init:     # @gimp_device_info_class_intern_init
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
	movq	%rax, gimp_device_info_parent_class
	cmpl	$0, GimpDeviceInfo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDeviceInfo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_device_info_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_device_info_class_intern_init, .Lfunc_end1-gimp_device_info_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_init,@function
gimp_device_info_init:                  # @gimp_device_info_init
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
	movabsq	$.L.str.39, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 344(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 352(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 360(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 364(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 368(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 376(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 384(%rdi)
	movq	%rax, %rdi
	callq	gimp_curve_new
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_device_info_guess_icon, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r8
	movq	%rax, 392(%r8)
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_device_info_init, .Lfunc_end2-gimp_device_info_init
	.cfi_endproc

	.globl	gimp_device_info_new
	.align	16, 0x90
	.type	gimp_device_info_new,@function
gimp_device_info_new:                   # @gimp_device_info_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_37
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gdk_device_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_37
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gdk_display_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_27
# BB#26:                                # %if.then.48
	movl	$0, -100(%rbp)
	jmp	.LBB3_32
.LBB3_27:                               # %if.else.49
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_30
# BB#28:                                # %land.lhs.true.52
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_30
# BB#29:                                # %if.then.56
	movl	$1, -100(%rbp)
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.57
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_31:                               # %if.end.59
	jmp	.LBB3_32
.LBB3_32:                               # %if.end.60
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_34
# BB#33:                                # %if.then.63
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.64
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_37
.LBB3_35:                               # %if.end.65
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.66
	callq	gimp_device_info_get_type
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.7, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r10
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_37:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_device_info_new, .Lfunc_end3-gimp_device_info_new
	.cfi_endproc

	.globl	gimp_device_info_get_device
	.align	16, 0x90
	.type	gimp_device_info_get_device,@function
gimp_device_info_get_device:            # @gimp_device_info_get_device
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_device_info_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_device, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_15
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	352(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_14:                               # %if.end.14
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_device_info_get_device, .Lfunc_end4-gimp_device_info_get_device
	.cfi_endproc

	.globl	gimp_device_info_set_device
	.align	16, 0x90
	.type	gimp_device_info_set_device,@function
gimp_device_info_set_device:            # @gimp_device_info_set_device
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_device_info_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_set_device, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_95
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	jne	.LBB5_15
# BB#14:                                # %land.lhs.true.13
	cmpq	$0, -24(%rbp)
	je	.LBB5_31
.LBB5_15:                               # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gdk_device_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_17
# BB#16:                                # %if.then.23
	movl	$0, -76(%rbp)
	jmp	.LBB5_22
.LBB5_17:                               # %if.else.24
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_20
# BB#18:                                # %land.lhs.true.27
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_20
# BB#19:                                # %if.then.31
	movl	$1, -76(%rbp)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.32
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_21:                               # %if.end.34
	jmp	.LBB5_22
.LBB5_22:                               # %if.end.35
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_32
# BB#23:                                # %land.lhs.true.38
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gdk_display_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_25
# BB#24:                                # %if.then.47
	movl	$0, -100(%rbp)
	jmp	.LBB5_30
.LBB5_25:                               # %if.else.48
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_28
# BB#26:                                # %land.lhs.true.51
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_28
# BB#27:                                # %if.then.55
	movl	$1, -100(%rbp)
	jmp	.LBB5_29
.LBB5_28:                               # %if.else.56
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB5_29:                               # %if.end.58
	jmp	.LBB5_30
.LBB5_30:                               # %if.end.59
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_32
.LBB5_31:                               # %if.then.62
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.63
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_set_device, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_95
.LBB5_33:                               # %if.end.64
	jmp	.LBB5_34
.LBB5_34:                               # %do.end.65
	jmp	.LBB5_35
.LBB5_35:                               # %do.body.66
	movq	-8(%rbp), %rax
	cmpq	$0, 344(%rax)
	jne	.LBB5_44
# BB#36:                                # %land.lhs.true.69
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gdk_device_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB5_38
# BB#37:                                # %if.then.78
	movl	$0, -124(%rbp)
	jmp	.LBB5_43
.LBB5_38:                               # %if.else.79
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_41
# BB#39:                                # %land.lhs.true.82
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_41
# BB#40:                                # %if.then.86
	movl	$1, -124(%rbp)
	jmp	.LBB5_42
.LBB5_41:                               # %if.else.87
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB5_42:                               # %if.end.89
	jmp	.LBB5_43
.LBB5_43:                               # %if.end.90
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	jne	.LBB5_53
.LBB5_44:                               # %lor.lhs.false.93
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -136(%rbp)
	callq	gdk_device_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB5_46
# BB#45:                                # %if.then.103
	movl	$0, -148(%rbp)
	jmp	.LBB5_51
.LBB5_46:                               # %if.else.104
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_49
# BB#47:                                # %land.lhs.true.107
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB5_49
# BB#48:                                # %if.then.111
	movl	$1, -148(%rbp)
	jmp	.LBB5_50
.LBB5_49:                               # %if.else.112
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB5_50:                               # %if.end.114
	jmp	.LBB5_51
.LBB5_51:                               # %if.end.115
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB5_54
# BB#52:                                # %land.lhs.true.118
	cmpq	$0, -16(%rbp)
	jne	.LBB5_54
.LBB5_53:                               # %if.then.120
	jmp	.LBB5_55
.LBB5_54:                               # %if.else.121
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_set_device, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_95
.LBB5_55:                               # %if.end.122
	jmp	.LBB5_56
.LBB5_56:                               # %do.end.123
	jmp	.LBB5_57
.LBB5_57:                               # %do.body.124
	cmpq	$0, -16(%rbp)
	je	.LBB5_59
# BB#58:                                # %lor.lhs.false.126
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_60
.LBB5_59:                               # %if.then.130
	jmp	.LBB5_61
.LBB5_60:                               # %if.else.131
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_set_device, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_95
.LBB5_61:                               # %if.end.132
	jmp	.LBB5_62
.LBB5_62:                               # %do.end.133
	cmpq	$0, -16(%rbp)
	je	.LBB5_82
# BB#63:                                # %if.then.135
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 344(%rdx)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 352(%rdx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	360(%rax), %esi
	callq	gimp_device_info_set_mode
	movq	-8(%rbp), %rax
	movl	364(%rax), %esi
	movq	-16(%rbp), %rax
	cmpl	44(%rax), %esi
	je	.LBB5_65
# BB#64:                                # %if.then.140
	movabsq	$.L.str.13, %rdi
	movabsq	$.L__func__.gimp_device_info_set_device, %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movb	$0, %al
	callq	g_printerr
.LBB5_65:                               # %if.end.142
	movl	$0, -28(%rbp)
.LBB5_66:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	364(%rcx), %edx
	movq	-16(%rbp), %rcx
	cmpl	44(%rcx), %edx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jge	.LBB5_68
# BB#67:                                # %cond.true
                                        #   in Loop: Header=BB5_66 Depth=1
	movq	-8(%rbp), %rax
	movl	364(%rax), %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB5_69
.LBB5_68:                               # %cond.false
                                        #   in Loop: Header=BB5_66 Depth=1
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
.LBB5_69:                               # %cond.end
                                        #   in Loop: Header=BB5_66 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	-164(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB5_72
# BB#70:                                # %for.body
                                        #   in Loop: Header=BB5_66 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	368(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	callq	gimp_device_info_set_axis_use
# BB#71:                                # %for.inc
                                        #   in Loop: Header=BB5_66 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_66
.LBB5_72:                               # %for.end
	movq	-8(%rbp), %rax
	movl	376(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	56(%rax), %ecx
	je	.LBB5_74
# BB#73:                                # %if.then.150
	movabsq	$.L.str.14, %rdi
	movabsq	$.L__func__.gimp_device_info_set_device, %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movb	$0, %al
	callq	g_printerr
.LBB5_74:                               # %if.end.152
	movl	$0, -28(%rbp)
.LBB5_75:                               # %for.cond.153
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	376(%rcx), %edx
	movq	-16(%rbp), %rcx
	cmpl	56(%rcx), %edx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jge	.LBB5_77
# BB#76:                                # %cond.true.157
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-8(%rbp), %rax
	movl	376(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB5_78
.LBB5_77:                               # %cond.false.159
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB5_78:                               # %cond.end.161
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	-172(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB5_81
# BB#79:                                # %for.body.164
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	(%rcx,%rax,8), %edx
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	4(%rcx,%rax,8), %ecx
	callq	gimp_device_info_set_key
# BB#80:                                # %for.inc.170
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_75
.LBB5_81:                               # %for.end.172
	jmp	.LBB5_94
.LBB5_82:                               # %if.else.173
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	344(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	352(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	$0, 344(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 352(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	36(%rax), %esi
	callq	gimp_device_info_set_mode
	movl	$4, %esi
	movl	%esi, %edx
	movq	-16(%rbp), %rax
	movl	44(%rax), %esi
	movq	-8(%rbp), %rax
	movl	%esi, 364(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	364(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_realloc_n
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 368(%rcx)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	364(%rcx), %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movl	$0, -28(%rbp)
.LBB5_83:                               # %for.cond.189
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB5_86
# BB#84:                                # %for.body.193
                                        #   in Loop: Header=BB5_83 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	48(%rcx), %rax
	movl	(%rax), %edx
	callq	gimp_device_info_set_axis_use
# BB#85:                                # %for.inc.197
                                        #   in Loop: Header=BB5_83 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_83
.LBB5_86:                               # %for.end.199
	movl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movl	56(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 376(%rcx)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	-8(%rbp), %rsi
	movslq	376(%rsi), %rsi
	movq	%rcx, %rdi
	callq	g_realloc_n
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 384(%rcx)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	376(%rcx), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movl	$0, -28(%rbp)
.LBB5_87:                               # %for.cond.211
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	376(%rcx), %edx
	movq	-16(%rbp), %rcx
	cmpl	56(%rcx), %edx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jge	.LBB5_89
# BB#88:                                # %cond.true.216
                                        #   in Loop: Header=BB5_87 Depth=1
	movq	-8(%rbp), %rax
	movl	376(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	jmp	.LBB5_90
.LBB5_89:                               # %cond.false.218
                                        #   in Loop: Header=BB5_87 Depth=1
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
.LBB5_90:                               # %cond.end.220
                                        #   in Loop: Header=BB5_87 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	-180(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB5_93
# BB#91:                                # %for.body.224
                                        #   in Loop: Header=BB5_87 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movl	(%rcx,%rax,8), %edx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movl	4(%rcx,%rax,8), %ecx
	callq	gimp_device_info_set_key
# BB#92:                                # %for.inc.233
                                        #   in Loop: Header=BB5_87 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_87
.LBB5_93:                               # %for.end.235
	jmp	.LBB5_94
.LBB5_94:                               # %if.end.236
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_object_name_changed
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_device_info_changed
.LBB5_95:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_device_info_set_device, .Lfunc_end5-gimp_device_info_set_device
	.cfi_endproc

	.globl	gimp_device_info_set_mode
	.align	16, 0x90
	.type	gimp_device_info_set_mode,@function
gimp_device_info_set_mode:              # @gimp_device_info_set_mode
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_device_info_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_set_mode, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_17
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_device_info_get_mode
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB6_17
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB6_15
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gdk_device_set_mode
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.18
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 360(%rcx)
.LBB6_16:                               # %if.end.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_device_info_changed
.LBB6_17:                               # %if.end.22
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_device_info_set_mode, .Lfunc_end6-gimp_device_info_set_mode
	.cfi_endproc

	.globl	gimp_device_info_set_axis_use
	.align	16, 0x90
	.type	gimp_device_info_set_axis_use,@function
gimp_device_info_set_axis_use:          # @gimp_device_info_set_axis_use
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_device_info_get_type
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
	movabsq	$.L__func__.gimp_device_info_set_axis_use, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_23
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB7_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_device_info_get_n_axes
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB7_16
# BB#15:                                # %if.then.16
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_set_axis_use, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_23
.LBB7_17:                               # %if.end.18
	jmp	.LBB7_18
.LBB7_18:                               # %do.end.19
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_device_info_get_axis_use
	movl	-48(%rbp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	je	.LBB7_23
# BB#19:                                # %if.then.22
	movq	-8(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB7_21
# BB#20:                                # %if.then.24
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gdk_device_set_axis_use
	jmp	.LBB7_22
.LBB7_21:                               # %if.else.26
	movl	-16(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	368(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
.LBB7_22:                               # %if.end.27
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB7_23:                               # %if.end.29
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_device_info_set_axis_use, .Lfunc_end7-gimp_device_info_set_axis_use
	.cfi_endproc

	.globl	gimp_device_info_set_key
	.align	16, 0x90
	.type	gimp_device_info_set_key,@function
gimp_device_info_set_key:               # @gimp_device_info_set_key
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_device_info_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_set_key, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_24
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB8_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_device_info_get_n_keys
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB8_16
# BB#15:                                # %if.then.16
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_set_key, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_24
.LBB8_17:                               # %if.end.18
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.19
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_device_info_get_key
	movl	-16(%rbp), %esi
	cmpl	-24(%rbp), %esi
	jne	.LBB8_20
# BB#19:                                # %lor.lhs.false
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB8_24
.LBB8_20:                               # %if.then.22
	movq	-8(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB8_22
# BB#21:                                # %if.then.24
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	gdk_device_set_key
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.26
	movl	-16(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,8)
	movl	-20(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movl	%eax, 4(%rdx,%rcx,8)
.LBB8_23:                               # %if.end.32
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB8_24:                               # %if.end.34
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_device_info_set_key, .Lfunc_end8-gimp_device_info_set_key
	.cfi_endproc

	.globl	gimp_device_info_changed
	.align	16, 0x90
	.type	gimp_device_info_changed,@function
gimp_device_info_changed:               # @gimp_device_info_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_device_info_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	device_info_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB9_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_device_info_changed, .Lfunc_end9-gimp_device_info_changed
	.cfi_endproc

	.globl	gimp_device_info_set_default_tool
	.align	16, 0x90
	.type	gimp_device_info_set_default_tool,@function
gimp_device_info_set_default_tool:      # @gimp_device_info_set_default_tool
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_device_info_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_set_default_tool, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_17
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB10_17
# BB#13:                                # %land.lhs.true.12
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gdk_device_get_source
	cmpl	$2, %eax
	jne	.LBB10_17
# BB#14:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	32(%rax), %rax
	movq	528(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_container_get_child_by_name
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB10_16
# BB#15:                                # %if.then.25
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_tool
.LBB10_16:                              # %if.end.28
	jmp	.LBB10_17
.LBB10_17:                              # %if.end.29
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_device_info_set_default_tool, .Lfunc_end10-gimp_device_info_set_default_tool
	.cfi_endproc

	.globl	gimp_device_info_get_mode
	.align	16, 0x90
	.type	gimp_device_info_get_mode,@function
gimp_device_info_get_mode:              # @gimp_device_info_get_mode
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
	callq	gimp_device_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_mode, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_15
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB11_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB11_15
.LBB11_14:                              # %if.else.14
	movq	-16(%rbp), %rax
	movl	360(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB11_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_device_info_get_mode, .Lfunc_end11-gimp_device_info_get_mode
	.cfi_endproc

	.globl	gimp_device_info_has_cursor
	.align	16, 0x90
	.type	gimp_device_info_has_cursor,@function
gimp_device_info_has_cursor:            # @gimp_device_info_has_cursor
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_device_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_has_cursor, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_15
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB12_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB12_15
.LBB12_14:                              # %if.end.14
	movl	$0, -4(%rbp)
.LBB12_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_device_info_has_cursor, .Lfunc_end12-gimp_device_info_has_cursor
	.cfi_endproc

	.globl	gimp_device_info_get_n_axes
	.align	16, 0x90
	.type	gimp_device_info_get_n_axes,@function
gimp_device_info_get_n_axes:            # @gimp_device_info_get_n_axes
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
	callq	gimp_device_info_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_n_axes, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_15
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB13_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB13_15
.LBB13_14:                              # %if.else.14
	movq	-16(%rbp), %rax
	movl	364(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB13_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_device_info_get_n_axes, .Lfunc_end13-gimp_device_info_get_n_axes
	.cfi_endproc

	.globl	gimp_device_info_get_axis_use
	.align	16, 0x90
	.type	gimp_device_info_get_axis_use,@function
gimp_device_info_get_axis_use:          # @gimp_device_info_get_axis_use
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_device_info_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_axis_use, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_21
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	cmpl	$0, -20(%rbp)
	jl	.LBB14_16
# BB#14:                                # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_device_info_get_n_axes
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB14_16
# BB#15:                                # %if.then.16
	jmp	.LBB14_17
.LBB14_16:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_axis_use, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_21
.LBB14_17:                              # %if.end.18
	jmp	.LBB14_18
.LBB14_18:                              # %do.end.19
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB14_20
# BB#19:                                # %if.then.21
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rcx
	imulq	$24, %rax, %rax
	addq	48(%rcx), %rax
	movl	(%rax), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB14_21
.LBB14_20:                              # %if.else.23
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	368(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -4(%rbp)
.LBB14_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_device_info_get_axis_use, .Lfunc_end14-gimp_device_info_get_axis_use
	.cfi_endproc

	.globl	gimp_device_info_get_n_keys
	.align	16, 0x90
	.type	gimp_device_info_get_n_keys,@function
gimp_device_info_get_n_keys:            # @gimp_device_info_get_n_keys
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_device_info_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_n_keys, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_15
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB15_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB15_15
.LBB15_14:                              # %if.else.14
	movq	-16(%rbp), %rax
	movl	376(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB15_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_device_info_get_n_keys, .Lfunc_end15-gimp_device_info_get_n_keys
	.cfi_endproc

	.globl	gimp_device_info_get_key
	.align	16, 0x90
	.type	gimp_device_info_get_key,@function
gimp_device_info_get_key:               # @gimp_device_info_get_key
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_device_info_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_key, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_31
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB16_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_device_info_get_n_keys
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB16_16
# BB#15:                                # %if.then.16
	jmp	.LBB16_17
.LBB16_16:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_key, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_31
.LBB16_17:                              # %if.end.18
	jmp	.LBB16_18
.LBB16_18:                              # %do.end.19
	jmp	.LBB16_19
.LBB16_19:                              # %do.body.20
	cmpq	$0, -24(%rbp)
	je	.LBB16_21
# BB#20:                                # %if.then.22
	jmp	.LBB16_22
.LBB16_21:                              # %if.else.23
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_key, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_31
.LBB16_22:                              # %if.end.24
	jmp	.LBB16_23
.LBB16_23:                              # %do.end.25
	jmp	.LBB16_24
.LBB16_24:                              # %do.body.26
	cmpq	$0, -32(%rbp)
	je	.LBB16_26
# BB#25:                                # %if.then.28
	jmp	.LBB16_27
.LBB16_26:                              # %if.else.29
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_key, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_31
.LBB16_27:                              # %if.end.30
	jmp	.LBB16_28
.LBB16_28:                              # %do.end.31
	movq	-8(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB16_30
# BB#29:                                # %if.then.33
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	344(%rcx), %rcx
	movq	64(%rcx), %rcx
	movl	(%rcx,%rax,8), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	344(%rcx), %rcx
	movq	64(%rcx), %rcx
	movl	4(%rcx,%rax,8), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.LBB16_31
.LBB16_30:                              # %if.else.41
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	(%rcx,%rax,8), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	4(%rcx,%rax,8), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.LBB16_31:                              # %if.end.50
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_device_info_get_key, .Lfunc_end16-gimp_device_info_get_key
	.cfi_endproc

	.globl	gimp_device_info_get_curve
	.align	16, 0x90
	.type	gimp_device_info_get_curve,@function
gimp_device_info_get_curve:             # @gimp_device_info_get_curve
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_device_info_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_curve, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_15
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movl	-20(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jne	.LBB17_14
	jmp	.LBB17_13
.LBB17_13:                              # %sw.bb
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_15
.LBB17_14:                              # %sw.default
	movq	$0, -8(%rbp)
.LBB17_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_device_info_get_curve, .Lfunc_end17-gimp_device_info_get_curve
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
.LCPI18_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_device_info_map_axis
	.align	16, 0x90
	.type	gimp_device_info_map_axis,@function
gimp_device_info_map_axis:              # @gimp_device_info_map_axis
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_device_info_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_map_axis, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB18_37
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movl	-20(%rbp), %eax
	addl	$-3, %eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%eax, -68(%rbp)         # 4-byte Spill
	ja	.LBB18_35
# BB#38:                                # %do.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_13:                              # %sw.bb
	movq	-16(%rbp), %rax
	movq	392(%rax), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB18_37
.LBB18_14:                              # %sw.bb.12
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_16
# BB#15:                                # %cond.true
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB18_20
.LBB18_16:                              # %cond.false
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB18_18
# BB#17:                                # %cond.true.15
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB18_19
.LBB18_18:                              # %cond.false.16
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB18_19:                              # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB18_20:                              # %cond.end.17
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB18_37
.LBB18_21:                              # %sw.bb.19
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_23
# BB#22:                                # %cond.true.21
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB18_27
.LBB18_23:                              # %cond.false.22
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB18_25
# BB#24:                                # %cond.true.24
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB18_26
.LBB18_25:                              # %cond.false.25
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB18_26:                              # %cond.end.26
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB18_27:                              # %cond.end.28
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB18_37
.LBB18_28:                              # %sw.bb.30
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_30
# BB#29:                                # %cond.true.32
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB18_34
.LBB18_30:                              # %cond.false.33
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB18_32
# BB#31:                                # %cond.true.35
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB18_33
.LBB18_32:                              # %cond.false.36
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB18_33:                              # %cond.end.37
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB18_34:                              # %cond.end.39
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB18_37
.LBB18_35:                              # %sw.default
	jmp	.LBB18_36
.LBB18_36:                              # %sw.epilog
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB18_37:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_device_info_map_axis, .Lfunc_end18-gimp_device_info_map_axis
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_13
	.quad	.LBB18_14
	.quad	.LBB18_21
	.quad	.LBB18_28

	.text
	.globl	gimp_device_info_get_by_device
	.align	16, 0x90
	.type	gimp_device_info_get_by_device,@function
gimp_device_info_get_by_device:         # @gimp_device_info_get_by_device
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gdk_device_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_info_get_by_device, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -8(%rbp)
.LBB19_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_device_info_get_by_device, .Lfunc_end19-gimp_device_info_get_by_device
	.cfi_endproc

	.globl	gimp_device_info_compare
	.align	16, 0x90
	.type	gimp_device_info_compare,@function
gimp_device_info_compare:               # @gimp_device_info_compare
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 344(%rsi)
	je	.LBB20_4
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB20_4
# BB#2:                                 # %land.lhs.true.2
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	352(%rcx), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gdk_display_get_core_pointer
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_4
# BB#3:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB20_15
.LBB20_4:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB20_8
# BB#5:                                 # %land.lhs.true.7
	movq	-24(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB20_8
# BB#6:                                 # %land.lhs.true.10
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	352(%rcx), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gdk_display_get_core_pointer
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_8
# BB#7:                                 # %if.then.15
	movl	$1, -4(%rbp)
	jmp	.LBB20_15
.LBB20_8:                               # %if.else.16
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB20_11
# BB#9:                                 # %land.lhs.true.19
	movq	-24(%rbp), %rax
	cmpq	$0, 344(%rax)
	jne	.LBB20_11
# BB#10:                                # %if.then.22
	movl	$-1, -4(%rbp)
	jmp	.LBB20_15
.LBB20_11:                              # %if.else.23
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	jne	.LBB20_14
# BB#12:                                # %land.lhs.true.26
	movq	-24(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB20_14
# BB#13:                                # %if.then.29
	movl	$1, -4(%rbp)
	jmp	.LBB20_15
.LBB20_14:                              # %if.else.30
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_object_name_collate
	movl	%eax, -4(%rbp)
.LBB20_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_device_info_compare, .Lfunc_end20-gimp_device_info_compare
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_class_init,@function
gimp_device_info_class_init:            # @gimp_device_info_class_init
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
	subq	$176, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.23, %rdi
	movl	$1, %edx
	movl	$424, %ecx              # imm = 0x1A8
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_device_info_get_property, %rdi
	movabsq	$gimp_device_info_set_property, %r8
	movabsq	$gimp_device_info_finalize, %r9
	movabsq	$gimp_device_info_constructed, %r10
	movl	%eax, device_info_signals
	movq	-16(%rbp), %r11
	movq	%r10, 72(%r11)
	movq	-16(%rbp), %r10
	movq	%r9, 48(%r10)
	movq	-16(%rbp), %r9
	movq	%r8, 24(%r9)
	movq	-16(%rbp), %r8
	movq	%rdi, 32(%r8)
	movq	-24(%rbp), %rdi
	movq	%rsi, 160(%rdi)
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gdk_device_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$231, %r8d
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gdk_display_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$231, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gdk_input_mode_get_type
	movabsq	$.L.str.16, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$3, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	callq	gdk_axis_use_get_type
	movabsq	$.L.str.25, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movabsq	$.L.str.18, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_param_spec_value_array
	movl	$4, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.26, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$227, %r8d
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_string
	movabsq	$.L.str.22, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_value_array
	movl	$5, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_curve_get_type
	movabsq	$.L.str.27, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$6, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_device_info_class_init, .Lfunc_end21-gimp_device_info_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_constructed,@function
gimp_device_info_constructed:           # @gimp_device_info_constructed
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_device_info_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_device_info_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_device_info_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB22_2:                               # %if.end
	jmp	.LBB22_3
.LBB22_3:                               # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	jne	.LBB22_5
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB22_21
.LBB22_5:                               # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gdk_device_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_7
# BB#6:                                 # %if.then.9
	movl	$0, -44(%rbp)
	jmp	.LBB22_12
.LBB22_7:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_10
# BB#8:                                 # %land.lhs.true.11
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB22_10
# BB#9:                                 # %if.then.14
	movl	$1, -44(%rbp)
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.15
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB22_11:                              # %if.end.17
	jmp	.LBB22_12
.LBB22_12:                              # %if.end.18
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB22_22
# BB#13:                                # %land.lhs.true.20
	movq	-16(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gdk_display_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB22_15
# BB#14:                                # %if.then.30
	movl	$0, -68(%rbp)
	jmp	.LBB22_20
.LBB22_15:                              # %if.else.31
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_18
# BB#16:                                # %land.lhs.true.34
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB22_18
# BB#17:                                # %if.then.38
	movl	$1, -68(%rbp)
	jmp	.LBB22_19
.LBB22_18:                              # %if.else.39
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB22_19:                              # %if.end.41
	jmp	.LBB22_20
.LBB22_20:                              # %if.end.42
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB22_22
.LBB22_21:                              # %if.then.45
	jmp	.LBB22_23
.LBB22_22:                              # %if.else.46
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.28, %rsi
	movl	$187, %edx
	movabsq	$.L__func__.gimp_device_info_constructed, %rcx
	movabsq	$.L.str.29, %r8
	callq	g_assertion_message_expr
.LBB22_23:                              # %if.end.47
	jmp	.LBB22_24
.LBB22_24:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB22_26
# BB#25:                                # %if.then.53
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movl	36(%rax), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, 360(%rax)
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movl	44(%rax), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, 364(%rax)
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movl	56(%rax), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, 376(%rax)
.LBB22_26:                              # %if.end.63
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15600, %esi            # imm = 0x3CF0
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_context_define_properties
	movq	-24(%rbp), %rdi
	callq	gimp_get_user_context
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15600, %edx            # imm = 0x3CF0
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_copy_properties
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15600, %esi            # imm = 0x3CF0
	movq	%rax, %rdi
	callq	gimp_context_set_serialize_properties
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_device_info_changed, %rax
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_device_info_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_device_info_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_device_info_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %r8         # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_device_info_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_device_info_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -224(%rbp)        # 8-byte Spill
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_device_info_constructed, .Lfunc_end22-gimp_device_info_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_finalize,@function
gimp_device_info_finalize:              # @gimp_device_info_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_device_info_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 368(%rax)
.LBB23_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 384(%rax)
	je	.LBB23_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 384(%rax)
.LBB23_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 392(%rax)
	je	.LBB23_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 392(%rax)
.LBB23_6:                               # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_device_info_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_device_info_finalize, .Lfunc_end23-gimp_device_info_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_set_property,@function
gimp_device_info_set_property:          # @gimp_device_info_set_property
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_device_info_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	344(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	ja	.LBB24_31
# BB#38:                                # %entry
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI24_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB24_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 344(%rdi)
	jmp	.LBB24_34
.LBB24_2:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 352(%rdi)
	jmp	.LBB24_34
.LBB24_3:                               # %sw.bb.7
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_device_info_set_mode
	jmp	.LBB24_34
.LBB24_4:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB24_16
# BB#5:                                 # %if.then
	cmpq	$0, -48(%rbp)
	je	.LBB24_10
# BB#6:                                 # %if.then.12
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	44(%rax), %ecx
	jae	.LBB24_8
# BB#7:                                 # %cond.true
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB24_9
.LBB24_8:                               # %cond.false
	movq	-48(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
.LBB24_9:                               # %cond.end
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	jmp	.LBB24_11
.LBB24_10:                              # %if.else
	movl	$4, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 364(%rcx)
	movq	-40(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	-40(%rbp), %rsi
	movslq	364(%rsi), %rsi
	movq	%rcx, %rdi
	callq	g_realloc_n
	xorl	%esi, %esi
	movq	-40(%rbp), %rcx
	movq	%rax, 368(%rcx)
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	movq	-40(%rbp), %rcx
	movslq	364(%rcx), %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
.LBB24_11:                              # %if.end
	movl	$0, -76(%rbp)
.LBB24_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB24_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB24_12 Depth=1
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	g_value_array_get_nth
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-84(%rbp), %edx
	callq	gimp_device_info_set_axis_use
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB24_12 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB24_12
.LBB24_15:                              # %for.end
	jmp	.LBB24_16
.LBB24_16:                              # %if.end.26
	jmp	.LBB24_34
.LBB24_17:                              # %sw.bb.27
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB24_29
# BB#18:                                # %if.then.31
	cmpq	$0, -48(%rbp)
	je	.LBB24_23
# BB#19:                                # %if.then.35
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	56(%rax), %ecx
	jae	.LBB24_21
# BB#20:                                # %cond.true.39
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	jmp	.LBB24_22
.LBB24_21:                              # %cond.false.41
	movq	-48(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
.LBB24_22:                              # %cond.end.43
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	jmp	.LBB24_24
.LBB24_23:                              # %if.else.45
	movl	$8, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 376(%rcx)
	movq	-40(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	-40(%rbp), %rsi
	movslq	376(%rsi), %rsi
	movq	%rcx, %rdi
	callq	g_realloc_n
	xorl	%esi, %esi
	movq	-40(%rbp), %rcx
	movq	%rax, 384(%rcx)
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	-40(%rbp), %rcx
	movslq	376(%rcx), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
.LBB24_24:                              # %if.end.55
	movl	$0, -100(%rbp)
.LBB24_25:                              # %for.cond.56
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB24_28
# BB#26:                                # %for.body.59
                                        #   in Loop: Header=BB24_25 Depth=1
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	g_value_array_get_nth
	movq	%rax, %rdi
	callq	g_value_get_string
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gtk_accelerator_parse
	movq	-40(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	callq	gimp_device_info_set_key
# BB#27:                                # %for.inc.62
                                        #   in Loop: Header=BB24_25 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB24_25
.LBB24_28:                              # %for.end.64
	jmp	.LBB24_29
.LBB24_29:                              # %if.end.65
	jmp	.LBB24_34
.LBB24_30:                              # %sw.bb.66
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB24_34
.LBB24_31:                              # %sw.default
	jmp	.LBB24_32
.LBB24_32:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %r8d
	movq	-136(%rbp), %rax
	movq	8(%rax), %r9
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -188(%rbp)        # 4-byte Spill
	movq	%r9, -200(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-128(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.28, %rsi
	movl	$365, %edx              # imm = 0x16D
	movabsq	$.L.str.37, %rcx
	movl	-188(%rbp), %r8d        # 4-byte Reload
	movq	-200(%rbp), %r9         # 8-byte Reload
	movq	-208(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#33:                                # %do.end
	jmp	.LBB24_34
.LBB24_34:                              # %sw.epilog
	cmpq	$0, -56(%rbp)
	je	.LBB24_37
# BB#35:                                # %land.lhs.true
	cmpq	$0, -64(%rbp)
	je	.LBB24_37
# BB#36:                                # %if.then.74
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$256, %edx              # imm = 0x100
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB24_37:                              # %if.end.80
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_device_info_set_property, .Lfunc_end24-gimp_device_info_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI24_0:
	.quad	.LBB24_1
	.quad	.LBB24_2
	.quad	.LBB24_3
	.quad	.LBB24_4
	.quad	.LBB24_17
	.quad	.LBB24_30

	.text
	.align	16, 0x90
	.type	gimp_device_info_get_property,@function
gimp_device_info_get_property:          # @gimp_device_info_get_property
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_device_info_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	%r8d, -188(%rbp)        # 4-byte Spill
	ja	.LBB25_18
# BB#22:                                # %entry
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	.LJTI25_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB25_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB25_21
.LBB25_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB25_21
.LBB25_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_device_info_get_mode
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_enum
	jmp	.LBB25_21
.LBB25_4:                               # %sw.bb.5
	movl	$6, %edi
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-72(%rbp), %rcx
	movl	%edi, -204(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	callq	memset
	movl	-204(%rbp), %edi        # 4-byte Reload
	callq	g_value_array_new
	movq	%rax, -48(%rbp)
	callq	gdk_axis_use_get_type
	leaq	-72(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_value_init
	movq	-40(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_device_info_get_n_axes
	movl	%eax, -76(%rbp)
	movl	$0, -80(%rbp)
.LBB25_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB25_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-40(%rbp), %rdi
	movl	-80(%rbp), %esi
	callq	gimp_device_info_get_axis_use
	leaq	-72(%rbp), %rdi
	movl	%eax, %esi
	callq	g_value_set_enum
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	g_value_array_append
	movq	%rax, -224(%rbp)        # 8-byte Spill
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB25_5
.LBB25_8:                               # %for.end
	leaq	-72(%rbp), %rdi
	callq	g_value_unset
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
	jmp	.LBB25_21
.LBB25_9:                               # %sw.bb.12
	movl	$32, %edi
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	movl	%edi, -228(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	callq	memset
	movl	-228(%rbp), %edi        # 4-byte Reload
	callq	g_value_array_new
	leaq	-112(%rbp), %rdi
	movl	$64, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -88(%rbp)
	callq	g_value_init
	movq	-40(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_device_info_get_n_keys
	movl	%eax, -116(%rbp)
	movl	$0, -120(%rbp)
.LBB25_10:                              # %for.cond.18
                                        # =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB25_16
# BB#11:                                # %for.body.20
                                        #   in Loop: Header=BB25_10 Depth=1
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movl	-120(%rbp), %esi
	callq	gimp_device_info_get_key
	cmpl	$0, -124(%rbp)
	je	.LBB25_13
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB25_10 Depth=1
	movl	-124(%rbp), %edi
	movl	-128(%rbp), %esi
	callq	gtk_accelerator_name
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	g_strescape
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rdi
	callq	g_free
	leaq	-112(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_value_set_string
	movq	-144(%rbp), %rdi
	callq	g_free
	jmp	.LBB25_14
.LBB25_13:                              # %if.else
                                        #   in Loop: Header=BB25_10 Depth=1
	leaq	-112(%rbp), %rdi
	movabsq	$.L.str.38, %rsi
	callq	g_value_set_string
.LBB25_14:                              # %if.end
                                        #   in Loop: Header=BB25_10 Depth=1
	leaq	-112(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	g_value_array_append
	movq	%rax, -248(%rbp)        # 8-byte Spill
# BB#15:                                # %for.inc.24
                                        #   in Loop: Header=BB25_10 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB25_10
.LBB25_16:                              # %for.end.26
	leaq	-112(%rbp), %rdi
	callq	g_value_unset
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
	jmp	.LBB25_21
.LBB25_17:                              # %sw.bb.27
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB25_21
.LBB25_18:                              # %sw.default
	jmp	.LBB25_19
.LBB25_19:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movl	-164(%rbp), %r8d
	movq	-160(%rbp), %rax
	movq	8(%rax), %r9
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -252(%rbp)        # 4-byte Spill
	movq	%r9, -264(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-152(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.28, %rsi
	movl	$475, %edx              # imm = 0x1DB
	movabsq	$.L.str.37, %rcx
	movl	-252(%rbp), %r8d        # 4-byte Reload
	movq	-264(%rbp), %r9         # 8-byte Reload
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#20:                                # %do.end
	jmp	.LBB25_21
.LBB25_21:                              # %sw.epilog
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_device_info_get_property, .Lfunc_end25-gimp_device_info_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI25_0:
	.quad	.LBB25_1
	.quad	.LBB25_2
	.quad	.LBB25_3
	.quad	.LBB25_4
	.quad	.LBB25_9
	.quad	.LBB25_17

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB26_2
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
.LBB26_2:                               # %entry
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
.Lfunc_end26:
	.size	g_warning, .Lfunc_end26-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_guess_icon,@function
gimp_device_info_guess_icon:            # @gimp_device_info_guess_icon
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	cmpq	$0, %rax
	je	.LBB27_20
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gimp_viewable_get_stock_id
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	160(%rdi), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB27_20
# BB#2:                                 # %if.then
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	$-1, %rsi
	movq	%rax, %rdi
	callq	g_ascii_strdown
	movabsq	$.L.str.41, %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB27_4
# BB#3:                                 # %if.then.10
	movabsq	$.L.str.42, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB27_17
.LBB27_4:                               # %if.else
	movabsq	$.L.str.43, %rsi
	movq	-32(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB27_6
# BB#5:                                 # %if.then.13
	movabsq	$.L.str.44, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB27_16
.LBB27_6:                               # %if.else.14
	movabsq	$.L.str.45, %rsi
	movq	-32(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB27_8
# BB#7:                                 # %if.then.17
	movabsq	$.L.str.46, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB27_15
.LBB27_8:                               # %if.else.18
	movabsq	$.L.str.47, %rsi
	movq	-32(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	jne	.LBB27_13
# BB#9:                                 # %lor.lhs.false
	movabsq	$.L.str.48, %rsi
	movq	-32(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	jne	.LBB27_13
# BB#10:                                # %lor.lhs.false.23
	movabsq	$.L.str.49, %rsi
	movq	-32(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	jne	.LBB27_13
# BB#11:                                # %lor.lhs.false.26
	movabsq	$.L.str.50, %rsi
	movq	-32(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	jne	.LBB27_13
# BB#12:                                # %lor.lhs.false.29
	movabsq	$.L.str.51, %rsi
	movq	-32(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB27_14
.LBB27_13:                              # %if.then.32
	movabsq	$.L.str.52, %rax
	movq	%rax, -24(%rbp)
.LBB27_14:                              # %if.end
	jmp	.LBB27_15
.LBB27_15:                              # %if.end.33
	jmp	.LBB27_16
.LBB27_16:                              # %if.end.34
	jmp	.LBB27_17
.LBB27_17:                              # %if.end.35
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpq	$0, -24(%rbp)
	je	.LBB27_19
# BB#18:                                # %if.then.37
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_viewable_set_stock_id
.LBB27_19:                              # %if.end.38
	jmp	.LBB27_20
.LBB27_20:                              # %if.end.39
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_device_info_guess_icon, .Lfunc_end27-gimp_device_info_guess_icon
	.cfi_endproc

	.type	gimp_device_info_get_type.g_define_type_id__volatile,@object # @gimp_device_info_get_type.g_define_type_id__volatile
	.local	gimp_device_info_get_type.g_define_type_id__volatile
	.comm	gimp_device_info_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDeviceInfo"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_device_info_new,@object # @__func__.gimp_device_info_new
.L__func__.gimp_device_info_new:
	.asciz	"gimp_device_info_new"
	.size	.L__func__.gimp_device_info_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GDK_IS_DEVICE (device)"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GDK_IS_DISPLAY (display)"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"device"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"display"
	.size	.L.str.7, 8

	.type	.L__func__.gimp_device_info_get_device,@object # @__func__.gimp_device_info_get_device
.L__func__.gimp_device_info_get_device:
	.asciz	"gimp_device_info_get_device"
	.size	.L__func__.gimp_device_info_get_device, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_DEVICE_INFO (info)"
	.size	.L.str.8, 27

	.type	.L__func__.gimp_device_info_set_device,@object # @__func__.gimp_device_info_set_device
.L__func__.gimp_device_info_set_device:
	.asciz	"gimp_device_info_set_device"
	.size	.L__func__.gimp_device_info_set_device, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"(device == NULL && display == NULL) || (GDK_IS_DEVICE (device) && GDK_IS_DISPLAY (display))"
	.size	.L.str.9, 92

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"(info->device == NULL && GDK_IS_DEVICE (device)) || (GDK_IS_DEVICE (info->device) && device == NULL)"
	.size	.L.str.10, 101

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"device == NULL || strcmp (device->name, gimp_object_get_name (info)) == 0"
	.size	.L.str.11, 74

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-device-info"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s: stored 'num-axes' for device '%s' doesn't match number of axes present in device\n"
	.size	.L.str.13, 86

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s: stored 'num-keys' for device '%s' doesn't match number of keys present in device\n"
	.size	.L.str.14, 86

	.type	.L__func__.gimp_device_info_set_default_tool,@object # @__func__.gimp_device_info_set_default_tool
.L__func__.gimp_device_info_set_default_tool:
	.asciz	"gimp_device_info_set_default_tool"
	.size	.L__func__.gimp_device_info_set_default_tool, 34

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-eraser-tool"
	.size	.L.str.15, 17

	.type	.L__func__.gimp_device_info_get_mode,@object # @__func__.gimp_device_info_get_mode
.L__func__.gimp_device_info_get_mode:
	.asciz	"gimp_device_info_get_mode"
	.size	.L__func__.gimp_device_info_get_mode, 26

	.type	.L__func__.gimp_device_info_set_mode,@object # @__func__.gimp_device_info_set_mode
.L__func__.gimp_device_info_set_mode:
	.asciz	"gimp_device_info_set_mode"
	.size	.L__func__.gimp_device_info_set_mode, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"mode"
	.size	.L.str.16, 5

	.type	.L__func__.gimp_device_info_has_cursor,@object # @__func__.gimp_device_info_has_cursor
.L__func__.gimp_device_info_has_cursor:
	.asciz	"gimp_device_info_has_cursor"
	.size	.L__func__.gimp_device_info_has_cursor, 28

	.type	.L__func__.gimp_device_info_get_n_axes,@object # @__func__.gimp_device_info_get_n_axes
.L__func__.gimp_device_info_get_n_axes:
	.asciz	"gimp_device_info_get_n_axes"
	.size	.L__func__.gimp_device_info_get_n_axes, 28

	.type	.L__func__.gimp_device_info_get_axis_use,@object # @__func__.gimp_device_info_get_axis_use
.L__func__.gimp_device_info_get_axis_use:
	.asciz	"gimp_device_info_get_axis_use"
	.size	.L__func__.gimp_device_info_get_axis_use, 30

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"axis >= 0 && axis < gimp_device_info_get_n_axes (info)"
	.size	.L.str.17, 55

	.type	.L__func__.gimp_device_info_set_axis_use,@object # @__func__.gimp_device_info_set_axis_use
.L__func__.gimp_device_info_set_axis_use:
	.asciz	"gimp_device_info_set_axis_use"
	.size	.L__func__.gimp_device_info_set_axis_use, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"axes"
	.size	.L.str.18, 5

	.type	.L__func__.gimp_device_info_get_n_keys,@object # @__func__.gimp_device_info_get_n_keys
.L__func__.gimp_device_info_get_n_keys:
	.asciz	"gimp_device_info_get_n_keys"
	.size	.L__func__.gimp_device_info_get_n_keys, 28

	.type	.L__func__.gimp_device_info_get_key,@object # @__func__.gimp_device_info_get_key
.L__func__.gimp_device_info_get_key:
	.asciz	"gimp_device_info_get_key"
	.size	.L__func__.gimp_device_info_get_key, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"key >= 0 && key < gimp_device_info_get_n_keys (info)"
	.size	.L.str.19, 53

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"keyval != NULL"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"modifiers != NULL"
	.size	.L.str.21, 18

	.type	.L__func__.gimp_device_info_set_key,@object # @__func__.gimp_device_info_set_key
.L__func__.gimp_device_info_set_key:
	.asciz	"gimp_device_info_set_key"
	.size	.L__func__.gimp_device_info_set_key, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"keys"
	.size	.L.str.22, 5

	.type	.L__func__.gimp_device_info_get_curve,@object # @__func__.gimp_device_info_get_curve
.L__func__.gimp_device_info_get_curve:
	.asciz	"gimp_device_info_get_curve"
	.size	.L__func__.gimp_device_info_get_curve, 27

	.type	.L__func__.gimp_device_info_map_axis,@object # @__func__.gimp_device_info_map_axis
.L__func__.gimp_device_info_map_axis:
	.asciz	"gimp_device_info_map_axis"
	.size	.L__func__.gimp_device_info_map_axis, 26

	.type	.L__func__.gimp_device_info_changed,@object # @__func__.gimp_device_info_changed
.L__func__.gimp_device_info_changed:
	.asciz	"gimp_device_info_changed"
	.size	.L__func__.gimp_device_info_changed, 25

	.type	device_info_signals,@object # @device_info_signals
	.local	device_info_signals
	.comm	device_info_signals,4,4
	.type	.L__func__.gimp_device_info_get_by_device,@object # @__func__.gimp_device_info_get_by_device
.L__func__.gimp_device_info_get_by_device:
	.asciz	"gimp_device_info_get_by_device"
	.size	.L__func__.gimp_device_info_get_by_device, 31

	.type	gimp_device_info_parent_class,@object # @gimp_device_info_parent_class
	.local	gimp_device_info_parent_class
	.comm	gimp_device_info_parent_class,8,8
	.type	GimpDeviceInfo_private_offset,@object # @GimpDeviceInfo_private_offset
	.local	GimpDeviceInfo_private_offset
	.comm	GimpDeviceInfo_private_offset,4,4
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"changed"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-input-device"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"axis"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"key"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"pressure-curve"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimpdeviceinfo.c"
	.size	.L.str.28, 17

	.type	.L__func__.gimp_device_info_constructed,@object # @__func__.gimp_device_info_constructed
.L__func__.gimp_device_info_constructed:
	.asciz	"gimp_device_info_constructed"
	.size	.L__func__.gimp_device_info_constructed, 29

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"(info->device == NULL && info->display == NULL) || (GDK_IS_DEVICE (info->device) && GDK_IS_DISPLAY (info->display))"
	.size	.L.str.29, 116

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"foreground-changed"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"background-changed"
	.size	.L.str.31, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"tool-changed"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"brush-changed"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"pattern-changed"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gradient-changed"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.36, 54

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"property"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.zero	1
	.size	.L.str.38, 1

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"pressure curve"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"notify::name"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"eraser"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-tool-eraser"
	.size	.L.str.42, 17

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"pen"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.44, 21

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"airbrush"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-tool-airbrush"
	.size	.L.str.46, 19

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"cursor"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"mouse"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"pointer"
	.size	.L.str.49, 8

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"touchpad"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"trackpoint"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-cursor"
	.size	.L.str.52, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
