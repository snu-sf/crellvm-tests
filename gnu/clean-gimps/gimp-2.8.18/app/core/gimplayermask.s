	.text
	.file	"gimplayermask.bc"
	.globl	gimp_layer_mask_get_type
	.align	16, 0x90
	.type	gimp_layer_mask_get_type,@function
gimp_layer_mask_get_type:               # @gimp_layer_mask_get_type
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
	movq	gimp_layer_mask_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_layer_mask_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_channel_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$864, %edx              # imm = 0x360
	movabsq	$gimp_layer_mask_class_intern_init, %rdi
	movl	$184, %r8d
	movabsq	$gimp_layer_mask_init, %rcx
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
	movabsq	$gimp_layer_mask_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_layer_mask_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_layer_mask_get_type, .Lfunc_end0-gimp_layer_mask_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_mask_class_intern_init,@function
gimp_layer_mask_class_intern_init:      # @gimp_layer_mask_class_intern_init
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
	movq	%rax, gimp_layer_mask_parent_class
	cmpl	$0, GimpLayerMask_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpLayerMask_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_layer_mask_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_layer_mask_class_intern_init, .Lfunc_end1-gimp_layer_mask_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_mask_init,@function
gimp_layer_mask_init:                   # @gimp_layer_mask_init
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
	movq	$0, 160(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 168(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 172(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 176(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_layer_mask_init, .Lfunc_end2-gimp_layer_mask_init
	.cfi_endproc

	.globl	gimp_layer_mask_new
	.align	16, 0x90
	.type	gimp_layer_mask_new,@function
gimp_layer_mask_new:                    # @gimp_layer_mask_new
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpl	$0, -20(%rbp)
	jle	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpl	$0, -24(%rbp)
	jle	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	jmp	.LBB3_23
.LBB3_23:                               # %do.body.23
	cmpq	$0, -40(%rbp)
	je	.LBB3_25
# BB#24:                                # %if.then.25
	jmp	.LBB3_26
.LBB3_25:                               # %if.else.26
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_26:                               # %if.end.27
	jmp	.LBB3_27
.LBB3_27:                               # %do.end.28
	callq	gimp_layer_mask_get_type
	xorl	%ecx, %ecx
	movl	$2, %edx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r8d
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	-88(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	$2, 8(%rsp)
	callq	gimp_drawable_new
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_channel_set_color
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_channel_set_show_masked
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 152(%rax)
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 156(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_layer_mask_new, .Lfunc_end3-gimp_layer_mask_new
	.cfi_endproc

	.globl	gimp_layer_mask_set_layer
	.align	16, 0x90
	.type	gimp_layer_mask_set_layer,@function
gimp_layer_mask_set_layer:              # @gimp_layer_mask_set_layer
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_mask_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_set_layer, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_27
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_set_layer, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_27
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 160(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB4_27
# BB#26:                                # %if.then.42
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_offset
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
.LBB4_27:                               # %if.end.55
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_layer_mask_set_layer, .Lfunc_end4-gimp_layer_mask_set_layer
	.cfi_endproc

	.globl	gimp_layer_mask_get_layer
	.align	16, 0x90
	.type	gimp_layer_mask_get_layer,@function
gimp_layer_mask_get_layer:              # @gimp_layer_mask_get_layer
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_mask_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_get_layer, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_layer_mask_get_layer, .Lfunc_end5-gimp_layer_mask_get_layer
	.cfi_endproc

	.globl	gimp_layer_mask_set_apply
	.align	16, 0x90
	.type	gimp_layer_mask_set_apply,@function
gimp_layer_mask_set_apply:              # @gimp_layer_mask_set_apply
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_mask_get_type
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
	movabsq	$.L__func__.gimp_layer_mask_set_apply, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_21
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	168(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB6_21
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB6_18
# BB#14:                                # %if.then.18
	movq	-48(%rbp), %rdi
	cmpl	$0, -12(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	je	.LBB6_16
# BB#15:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.9, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB6_17:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_layer_mask_apply
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB6_18:                               # %if.end.23
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 168(%rdx)
	movq	-8(%rbp), %rdx
	cmpq	$0, 160(%rdx)
	je	.LBB6_20
# BB#19:                                # %if.then.28
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rsi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB6_20:                               # %if.end.39
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	layer_mask_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB6_21:                               # %if.end.40
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_layer_mask_set_apply, .Lfunc_end6-gimp_layer_mask_set_apply
	.cfi_endproc

	.globl	gimp_layer_mask_get_apply
	.align	16, 0x90
	.type	gimp_layer_mask_get_apply,@function
gimp_layer_mask_get_apply:              # @gimp_layer_mask_get_apply
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_mask_get_type
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
	movabsq	$.L__func__.gimp_layer_mask_get_apply, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_layer_mask_get_apply, .Lfunc_end7-gimp_layer_mask_get_apply
	.cfi_endproc

	.globl	gimp_layer_mask_set_edit
	.align	16, 0x90
	.type	gimp_layer_mask_set_edit,@function
gimp_layer_mask_set_edit:               # @gimp_layer_mask_set_edit
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_mask_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_set_edit, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_14
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	172(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB8_14
# BB#13:                                # %if.then.12
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	movl	%eax, %edx
	cmovnel	%ecx, %edx
	movq	-8(%rbp), %rsi
	movl	%edx, 172(%rsi)
	movq	-8(%rbp), %rsi
	movl	layer_mask_signals+4, %ecx
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_signal_emit
.LBB8_14:                               # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_layer_mask_set_edit, .Lfunc_end8-gimp_layer_mask_set_edit
	.cfi_endproc

	.globl	gimp_layer_mask_get_edit
	.align	16, 0x90
	.type	gimp_layer_mask_get_edit,@function
gimp_layer_mask_get_edit:               # @gimp_layer_mask_get_edit
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
	callq	gimp_layer_mask_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_get_edit, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	172(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_layer_mask_get_edit, .Lfunc_end9-gimp_layer_mask_get_edit
	.cfi_endproc

	.globl	gimp_layer_mask_set_show
	.align	16, 0x90
	.type	gimp_layer_mask_set_show,@function
gimp_layer_mask_set_show:               # @gimp_layer_mask_set_show
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_set_show, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_18
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movl	176(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB10_18
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.18
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.11, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_layer_mask_show
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB10_15:                              # %if.end.21
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 176(%rdx)
	movq	-8(%rbp), %rdx
	cmpq	$0, 160(%rdx)
	je	.LBB10_17
# BB#16:                                # %if.then.25
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB10_17:                              # %if.end.36
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	layer_mask_signals+8, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB10_18:                              # %if.end.37
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_layer_mask_set_show, .Lfunc_end10-gimp_layer_mask_set_show
	.cfi_endproc

	.globl	gimp_layer_mask_get_show
	.align	16, 0x90
	.type	gimp_layer_mask_get_show,@function
gimp_layer_mask_get_show:               # @gimp_layer_mask_get_show
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
	callq	gimp_layer_mask_get_type
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
	movabsq	$.L__func__.gimp_layer_mask_get_show, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	176(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB11_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_layer_mask_get_show, .Lfunc_end11-gimp_layer_mask_get_show
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_mask_class_init,@function
gimp_layer_mask_class_init:             # @gimp_layer_mask_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp39:
	.cfi_offset %rbx, -48
.Ltmp40:
	.cfi_offset %r12, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.12, %rdi
	movl	$1, %edx
	movl	$840, %ecx              # imm = 0x348
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.13, %rdi
	movl	$1, %edx
	movl	$848, %ecx              # imm = 0x350
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, layer_mask_signals
	movq	-40(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.14, %rdi
	movl	$1, %edx
	movl	$856, %ecx              # imm = 0x358
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, layer_mask_signals+4
	movq	-40(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-152(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -164(%rbp)        # 4-byte Spill
	callq	g_signal_new
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.16, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movabsq	$gimp_layer_mask_rename, %r8
	movabsq	$gimp_layer_mask_duplicate, %r9
	movabsq	$gimp_layer_mask_get_tree, %r10
	movabsq	$gimp_layer_mask_is_content_locked, %r11
	movabsq	$gimp_layer_mask_is_attached, %r14
	movabsq	$.L.str.15, %r15
	movl	%eax, layer_mask_signals+8
	movq	-48(%rbp), %r12
	movq	%r15, 160(%r12)
	movq	-40(%rbp), %r15
	movq	$0, 848(%r15)
	movq	-56(%rbp), %r15
	movq	%r14, 320(%r15)
	movq	-56(%rbp), %r14
	movq	%r11, 328(%r14)
	movq	-56(%rbp), %r11
	movq	%r10, 336(%r11)
	movq	-56(%rbp), %r10
	movq	%r9, 344(%r10)
	movq	-56(%rbp), %r9
	movq	%r8, 360(%r9)
	callq	g_dpgettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.17, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %r8
	movq	%rax, 456(%r8)
	callq	g_dpgettext
	movq	-56(%rbp), %rdx
	movq	%rax, 504(%rdx)
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_layer_mask_class_init, .Lfunc_end12-gimp_layer_mask_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_mask_is_attached,@function
gimp_layer_mask_is_attached:            # @gimp_layer_mask_is_attached
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_layer_mask_get_layer
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_7
.LBB13_2:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_5
# BB#4:                                 # %if.then.7
	movl	$1, -44(%rbp)
	jmp	.LBB13_6
.LBB13_5:                               # %if.else.8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_6:                               # %if.end
	jmp	.LBB13_7
.LBB13_7:                               # %if.end.10
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB13_18
# BB#8:                                 # %land.lhs.true.12
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB13_10
# BB#9:                                 # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB13_15
.LBB13_10:                              # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_13
# BB#11:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB13_13
# BB#12:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB13_14
.LBB13_13:                              # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB13_14:                              # %if.end.32
	jmp	.LBB13_15
.LBB13_15:                              # %if.end.33
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.36
	movq	-24(%rbp), %rdi
	callq	gimp_layer_get_mask
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpq	-16(%rbp), %rax
	movb	%dl, -81(%rbp)          # 1-byte Spill
	jne	.LBB13_18
# BB#17:                                # %land.rhs
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB13_18:                              # %land.end
	movb	-81(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_layer_mask_is_attached, .Lfunc_end13-gimp_layer_mask_is_attached
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_mask_is_content_locked,@function
gimp_layer_mask_is_content_locked:      # @gimp_layer_mask_is_content_locked
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_layer_mask_get_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	movl	%eax, -4(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB14_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_layer_mask_is_content_locked, .Lfunc_end14-gimp_layer_mask_is_content_locked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_mask_get_tree,@function
gimp_layer_mask_get_tree:               # @gimp_layer_mask_get_tree
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
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_layer_mask_get_tree, .Lfunc_end15-gimp_layer_mask_get_tree
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_mask_duplicate,@function
gimp_layer_mask_duplicate:              # @gimp_layer_mask_duplicate
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_mask_duplicate, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_15
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	movq	gimp_layer_mask_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_7
# BB#6:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB16_12
.LBB16_7:                               # %if.else.8
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_10
# BB#8:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_10
# BB#9:                                 # %if.then.11
	movl	$1, -52(%rbp)
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_11:                              # %if.end.14
	jmp	.LBB16_12
.LBB16_12:                              # %if.end.15
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_14
# BB#13:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 168(%rax)
	movq	-64(%rbp), %rax
	movl	172(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 172(%rax)
	movq	-64(%rbp), %rax
	movl	176(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 176(%rax)
.LBB16_14:                              # %if.end.27
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_layer_mask_duplicate, .Lfunc_end16-gimp_layer_mask_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_mask_rename,@function
gimp_layer_mask_rename:                 # @gimp_layer_mask_rename
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.19, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_layer_mask_rename, .Lfunc_end17-gimp_layer_mask_rename
	.cfi_endproc

	.type	gimp_layer_mask_get_type.g_define_type_id__volatile,@object # @gimp_layer_mask_get_type.g_define_type_id__volatile
	.local	gimp_layer_mask_get_type.g_define_type_id__volatile
	.comm	gimp_layer_mask_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpLayerMask"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_layer_mask_new,@object # @__func__.gimp_layer_mask_new
.L__func__.gimp_layer_mask_new:
	.asciz	"gimp_layer_mask_new"
	.size	.L__func__.gimp_layer_mask_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

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
	.asciz	"color != NULL"
	.size	.L.str.5, 14

	.type	.L__func__.gimp_layer_mask_set_layer,@object # @__func__.gimp_layer_mask_set_layer
.L__func__.gimp_layer_mask_set_layer:
	.asciz	"gimp_layer_mask_set_layer"
	.size	.L__func__.gimp_layer_mask_set_layer, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_LAYER_MASK (layer_mask)"
	.size	.L.str.6, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"layer == NULL || GIMP_IS_LAYER (layer)"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s mask"
	.size	.L.str.8, 8

	.type	.L__func__.gimp_layer_mask_get_layer,@object # @__func__.gimp_layer_mask_get_layer
.L__func__.gimp_layer_mask_get_layer:
	.asciz	"gimp_layer_mask_get_layer"
	.size	.L__func__.gimp_layer_mask_get_layer, 26

	.type	.L__func__.gimp_layer_mask_set_apply,@object # @__func__.gimp_layer_mask_set_apply
.L__func__.gimp_layer_mask_set_apply:
	.asciz	"gimp_layer_mask_set_apply"
	.size	.L__func__.gimp_layer_mask_set_apply, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"undo-type\004Enable Layer Mask"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Disable Layer Mask"
	.size	.L.str.10, 29

	.type	layer_mask_signals,@object # @layer_mask_signals
	.local	layer_mask_signals
	.comm	layer_mask_signals,12,4
	.type	.L__func__.gimp_layer_mask_get_apply,@object # @__func__.gimp_layer_mask_get_apply
.L__func__.gimp_layer_mask_get_apply:
	.asciz	"gimp_layer_mask_get_apply"
	.size	.L__func__.gimp_layer_mask_get_apply, 26

	.type	.L__func__.gimp_layer_mask_set_edit,@object # @__func__.gimp_layer_mask_set_edit
.L__func__.gimp_layer_mask_set_edit:
	.asciz	"gimp_layer_mask_set_edit"
	.size	.L__func__.gimp_layer_mask_set_edit, 25

	.type	.L__func__.gimp_layer_mask_get_edit,@object # @__func__.gimp_layer_mask_get_edit
.L__func__.gimp_layer_mask_get_edit:
	.asciz	"gimp_layer_mask_get_edit"
	.size	.L__func__.gimp_layer_mask_get_edit, 25

	.type	.L__func__.gimp_layer_mask_set_show,@object # @__func__.gimp_layer_mask_set_show
.L__func__.gimp_layer_mask_set_show:
	.asciz	"gimp_layer_mask_set_show"
	.size	.L__func__.gimp_layer_mask_set_show, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"undo-type\004Show Layer Mask"
	.size	.L.str.11, 26

	.type	.L__func__.gimp_layer_mask_get_show,@object # @__func__.gimp_layer_mask_get_show
.L__func__.gimp_layer_mask_get_show:
	.asciz	"gimp_layer_mask_get_show"
	.size	.L__func__.gimp_layer_mask_get_show, 25

	.type	gimp_layer_mask_parent_class,@object # @gimp_layer_mask_parent_class
	.local	gimp_layer_mask_parent_class
	.comm	gimp_layer_mask_parent_class,8,8
	.type	GimpLayerMask_private_offset,@object # @GimpLayerMask_private_offset
	.local	GimpLayerMask_private_offset
	.comm	GimpLayerMask_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"apply-changed"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"edit-changed"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"show-changed"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-layer-mask"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"undo-type\004Move Layer Mask"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"undo-type\004Layer Mask to Selection"
	.size	.L.str.17, 34

	.type	.L__func__.gimp_layer_mask_duplicate,@object # @__func__.gimp_layer_mask_duplicate
.L__func__.gimp_layer_mask_duplicate:
	.asciz	"gimp_layer_mask_duplicate"
	.size	.L__func__.gimp_layer_mask_duplicate, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)"
	.size	.L.str.18, 43

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Cannot rename layer masks."
	.size	.L.str.19, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
