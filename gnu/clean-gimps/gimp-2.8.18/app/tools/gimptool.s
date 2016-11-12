	.text
	.file	"gimptool.bc"
	.globl	gimp_tool_get_type
	.align	16, 0x90
	.type	gimp_tool_get_type,@function
gimp_tool_get_type:                     # @gimp_tool_get_type
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
	movq	gimp_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_tool_class_intern_init, %rdi
	movl	$200, %r8d
	movabsq	$gimp_tool_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_tool_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_tool_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_get_type, .Lfunc_end0-gimp_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_class_intern_init,@function
gimp_tool_class_intern_init:            # @gimp_tool_class_intern_init
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
	movq	%rax, gimp_tool_parent_class
	cmpl	$0, GimpTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_class_intern_init, .Lfunc_end1-gimp_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_init,@function
gimp_tool_init:                         # @gimp_tool_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movl	global_tool_ID, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, global_tool_ID
	movq	-8(%rbp), %rdi
	movl	%eax, 40(%rdi)
	callq	gimp_tool_control_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 84(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tool_init, .Lfunc_end2-gimp_tool_init
	.cfi_endproc

	.globl	gimp_tool_get_options
	.align	16, 0x90
	.type	gimp_tool_get_options,@function
gimp_tool_get_options:                  # @gimp_tool_get_options
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_get_options, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_get_options, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_25
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB3_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_get_options, .Lfunc_end3-gimp_tool_get_options
	.cfi_endproc

	.globl	gimp_tool_has_display
	.align	16, 0x90
	.type	gimp_tool_has_display,@function
gimp_tool_has_display:                  # @gimp_tool_has_display
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tool_get_type
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
	movabsq	$.L__func__.gimp_tool_has_display, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_has_display, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB4_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_has_display, .Lfunc_end4-gimp_tool_has_display
	.cfi_endproc

	.globl	gimp_tool_has_image
	.align	16, 0x90
	.type	gimp_tool_has_image,@function
gimp_tool_has_image:                    # @gimp_tool_has_image
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_get_type
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
	movabsq	$.L__func__.gimp_tool_has_image, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_40
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB5_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_20:                               # %if.end.32
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_23
.LBB5_22:                               # %if.then.36
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_has_image, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_40
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_39
# BB#26:                                # %land.lhs.true.43
	movq	-16(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB5_39
# BB#27:                                # %if.then.45
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB5_28:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB5_36
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB5_28 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	-24(%rbp), %rax
	jne	.LBB5_31
# BB#30:                                # %if.then.52
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_40
.LBB5_31:                               # %if.end.53
                                        #   in Loop: Header=BB5_28 Depth=1
	jmp	.LBB5_32
.LBB5_32:                               # %for.inc
                                        #   in Loop: Header=BB5_28 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB5_34
# BB#33:                                # %cond.true
                                        #   in Loop: Header=BB5_28 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_35
.LBB5_34:                               # %cond.false
                                        #   in Loop: Header=BB5_28 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_35
.LBB5_35:                               # %cond.end
                                        #   in Loop: Header=BB5_28 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB5_28
.LBB5_36:                               # %for.end
	cmpq	$0, -24(%rbp)
	jne	.LBB5_38
# BB#37:                                # %if.then.56
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_40
.LBB5_38:                               # %if.end.59
	jmp	.LBB5_39
.LBB5_39:                               # %if.end.60
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_40:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_has_image, .Lfunc_end5-gimp_tool_has_image
	.cfi_endproc

	.globl	gimp_tool_initialize
	.align	16, 0x90
	.type	gimp_tool_initialize,@function
gimp_tool_initialize:                   # @gimp_tool_initialize
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_initialize, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_29
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_initialize, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_29
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_28
# BB#25:                                # %if.then.42
	cmpq	$0, -32(%rbp)
	je	.LBB6_27
# BB#26:                                # %if.then.44
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	callq	gimp_tool_message_literal
	leaq	-32(%rbp), %rdi
	callq	g_clear_error
.LBB6_27:                               # %if.end.45
	movl	$0, -4(%rbp)
	jmp	.LBB6_29
.LBB6_28:                               # %if.end.46
	movl	$1, -4(%rbp)
.LBB6_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_initialize, .Lfunc_end6-gimp_tool_initialize
	.cfi_endproc

	.globl	gimp_tool_message_literal
	.align	16, 0x90
	.type	gimp_tool_message_literal,@function
gimp_tool_message_literal:              # @gimp_tool_message_literal
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tool_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_message_literal, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_30
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_message_literal, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_30
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %do.body.39
	cmpq	$0, -24(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.41
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_message_literal, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_30
.LBB7_28:                               # %if.end.43
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.44
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
.LBB7_30:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_message_literal, .Lfunc_end7-gimp_tool_message_literal
	.cfi_endproc

	.globl	gimp_tool_control
	.align	16, 0x90
	.type	gimp_tool_control,@function
gimp_tool_control:                      # @gimp_tool_control
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
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_25
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB8_13
	jmp	.LBB8_26
.LBB8_26:                               # %do.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB8_16
	jmp	.LBB8_27
.LBB8_27:                               # %do.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB8_22
	jmp	.LBB8_25
.LBB8_13:                               # %sw.bb
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_paused
	cmpl	$0, %eax
	jne	.LBB8_15
# BB#14:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB8_15:                               # %if.end.16
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pause
	jmp	.LBB8_25
.LBB8_16:                               # %sw.bb.18
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_paused
	cmpl	$0, %eax
	je	.LBB8_20
# BB#17:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_resume
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_paused
	cmpl	$0, %eax
	jne	.LBB8_19
# BB#18:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB8_19:                               # %if.end.30
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.31
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	g_warning
.LBB8_21:                               # %if.end.32
	jmp	.LBB8_25
.LBB8_22:                               # %sw.bb.33
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB8_24
# BB#23:                                # %if.then.39
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
.LBB8_24:                               # %if.end.41
	movq	-8(%rbp), %rdi
	callq	gimp_tool_clear_status
.LBB8_25:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_control, .Lfunc_end8-gimp_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_clear_status,@function
gimp_tool_clear_status:                 # @gimp_tool_clear_status
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_tool_get_type
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
	movabsq	$.L__func__.gimp_tool_clear_status, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB10_15
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_tool_pop_status
	jmp	.LBB10_13
.LBB10_15:                              # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tool_clear_status, .Lfunc_end10-gimp_tool_clear_status
	.cfi_endproc

	.globl	gimp_tool_button_press
	.align	16, 0x90
	.type	gimp_tool_button_press,@function
gimp_tool_button_press:                 # @gimp_tool_button_press
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_button_press, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_35
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_button_press, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_35
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.17
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB11_20
# BB#19:                                # %if.then.26
	movl	$0, -84(%rbp)
	jmp	.LBB11_25
.LBB11_20:                              # %if.else.27
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_23
# BB#21:                                # %land.lhs.true.30
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB11_23
# BB#22:                                # %if.then.34
	movl	$1, -84(%rbp)
	jmp	.LBB11_24
.LBB11_23:                              # %if.else.35
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB11_24:                              # %if.end.37
	jmp	.LBB11_25
.LBB11_25:                              # %if.end.38
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB11_27
# BB#26:                                # %if.then.41
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_button_press, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_35
.LBB11_28:                              # %if.end.43
	jmp	.LBB11_29
.LBB11_29:                              # %do.end.44
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	*%rax
	cmpl	$0, -28(%rbp)
	jne	.LBB11_35
# BB#30:                                # %land.lhs.true.47
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB11_35
# BB#31:                                # %if.then.50
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 84(%rcx)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	gimp_tool_control_get_wants_click
	cmpl	$0, %eax
	je	.LBB11_33
# BB#32:                                # %if.then.54
	movl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movl	$1, 92(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 96(%rcx)
	movq	-8(%rbp), %rcx
	addq	$104, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 168(%rcx)
	jmp	.LBB11_34
.LBB11_33:                              # %if.else.55
	movq	-8(%rbp), %rax
	movl	$0, 92(%rax)
.LBB11_34:                              # %if.end.57
	jmp	.LBB11_35
.LBB11_35:                              # %if.end.58
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tool_button_press, .Lfunc_end11-gimp_tool_button_press
	.cfi_endproc

	.globl	gimp_tool_button_release
	.align	16, 0x90
	.type	gimp_tool_button_release,@function
gimp_tool_button_release:               # @gimp_tool_button_release
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	$0, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_button_release, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_52
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_button_release, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_52
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	jmp	.LBB12_18
.LBB12_18:                              # %do.body.17
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB12_20
# BB#19:                                # %if.then.26
	movl	$0, -148(%rbp)
	jmp	.LBB12_25
.LBB12_20:                              # %if.else.27
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_23
# BB#21:                                # %land.lhs.true.30
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB12_23
# BB#22:                                # %if.then.34
	movl	$1, -148(%rbp)
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.35
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB12_24:                              # %if.end.37
	jmp	.LBB12_25
.LBB12_25:                              # %if.end.38
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB12_27
# BB#26:                                # %if.then.41
	jmp	.LBB12_28
.LBB12_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_button_release, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_52
.LBB12_28:                              # %if.end.43
	jmp	.LBB12_29
.LBB12_29:                              # %do.end.44
	jmp	.LBB12_30
.LBB12_30:                              # %do.body.45
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$1, %eax
	jne	.LBB12_32
# BB#31:                                # %if.then.48
	jmp	.LBB12_33
.LBB12_32:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_button_release, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_52
.LBB12_33:                              # %if.end.50
	jmp	.LBB12_34
.LBB12_34:                              # %do.end.51
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-104(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	memcpy
	movl	-24(%rbp), %ecx
	andl	$1024, %ecx             # imm = 0x400
	cmpl	$0, %ecx
	je	.LBB12_36
# BB#35:                                # %if.then.54
	movl	$1, -36(%rbp)
	jmp	.LBB12_44
.LBB12_36:                              # %if.else.55
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_wants_click
	cmpl	$0, %eax
	je	.LBB12_43
# BB#37:                                # %if.then.59
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gimp_tool_check_click_distance
	cmpl	$0, %eax
	je	.LBB12_39
# BB#38:                                # %if.then.62
	leaq	-104(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movl	$2, -36(%rbp)
	movq	-8(%rbp), %rsi
	addq	$104, %rsi
	movq	%rax, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	andl	$256, %ecx              # imm = 0x100
	movq	-32(%rbp), %r8
	movq	-168(%rbp), %rsi        # 8-byte Reload
	callq	*%rax
	jmp	.LBB12_42
.LBB12_39:                              # %if.else.65
	movq	-8(%rbp), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB12_41
# BB#40:                                # %if.then.67
	movl	$3, -36(%rbp)
.LBB12_41:                              # %if.end.68
	jmp	.LBB12_42
.LBB12_42:                              # %if.end.69
	jmp	.LBB12_43
.LBB12_43:                              # %if.end.70
	jmp	.LBB12_44
.LBB12_44:                              # %if.end.71
	leaq	-104(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movq	-32(%rbp), %r9
	callq	*%rax
# BB#45:                                # %do.body.73
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB12_47
# BB#46:                                # %if.then.77
	jmp	.LBB12_48
.LBB12_47:                              # %if.else.78
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$685, %edx              # imm = 0x2AD
	movabsq	$.L__func__.gimp_tool_button_release, %rcx
	movabsq	$.L.str.10, %r8
	callq	g_warn_message
.LBB12_48:                              # %if.end.79
	jmp	.LBB12_49
.LBB12_49:                              # %do.end.80
	movq	-8(%rbp), %rax
	cmpl	$0, 88(%rax)
	je	.LBB12_51
# BB#50:                                # %if.then.82
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_tool_set_active_modifier_state
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
.LBB12_51:                              # %if.end.85
	movq	-8(%rbp), %rax
	movl	$0, 84(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB12_52:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tool_button_release, .Lfunc_end12-gimp_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_check_click_distance,@function
gimp_tool_check_click_distance:         # @gimp_tool_check_click_distance
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, 92(%rcx)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB13_8
.LBB13_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	movabsq	$.L.str.24, %rsi
	leaq	-52(%rbp), %rdx
	movabsq	$.L.str.25, %rcx
	leaq	-56(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movl	-28(%rbp), %r10d
	movq	-16(%rbp), %rcx
	subl	168(%rcx), %r10d
	cmpl	-52(%rbp), %r10d
	jbe	.LBB13_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movl	$0, 92(%rax)
	jmp	.LBB13_7
.LBB13_4:                               # %if.else
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm0
	movq	-64(%rbp), %rax
	mulsd	200(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	8(%rax), %xmm0
	movq	-64(%rbp), %rax
	mulsd	208(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movl	-56(%rbp), %ecx
	imull	-56(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_6
# BB#5:                                 # %if.then.25
	movq	-16(%rbp), %rax
	movl	$0, 92(%rax)
.LBB13_6:                               # %if.end.27
	jmp	.LBB13_7
.LBB13_7:                               # %if.end.28
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB13_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tool_check_click_distance, .Lfunc_end13-gimp_tool_check_click_distance
	.cfi_endproc

	.globl	gimp_tool_set_active_modifier_state
	.align	16, 0x90
	.type	gimp_tool_set_active_modifier_state,@function
gimp_tool_set_active_modifier_state:    # @gimp_tool_set_active_modifier_state
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tool_get_type
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
	movabsq	$.L__func__.gimp_tool_set_active_modifier_state, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_63
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB14_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB14_20
.LBB14_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB14_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB14_19
.LBB14_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB14_19:                              # %if.end.31
	jmp	.LBB14_20
.LBB14_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB14_22
# BB#21:                                # %if.then.35
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_active_modifier_state, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_63
.LBB14_23:                              # %if.end.37
	jmp	.LBB14_24
.LBB14_24:                              # %do.end.38
	jmp	.LBB14_25
.LBB14_25:                              # %do.body.39
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$1, %eax
	jne	.LBB14_27
# BB#26:                                # %if.then.42
	jmp	.LBB14_28
.LBB14_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_active_modifier_state, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_63
.LBB14_28:                              # %if.end.44
	jmp	.LBB14_29
.LBB14_29:                              # %do.end.45
	jmp	.LBB14_30
.LBB14_30:                              # %do.body.46
	movl	gimp_log_flags, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB14_32
# BB#31:                                # %if.then.48
	movl	$2, %edi
	movabsq	$.L__func__.gimp_tool_set_active_modifier_state, %rsi
	movl	$863, %edx              # imm = 0x35F
	movabsq	$.L.str.14, %rcx
	movq	-8(%rbp), %r8
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB14_32:                              # %if.end.49
	jmp	.LBB14_33
.LBB14_33:                              # %do.end.50
	jmp	.LBB14_34
.LBB14_34:                              # %do.body.51
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB14_36
# BB#35:                                # %if.then.54
	jmp	.LBB14_37
.LBB14_36:                              # %if.else.55
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_active_modifier_state, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_63
.LBB14_37:                              # %if.end.56
	jmp	.LBB14_38
.LBB14_38:                              # %do.end.57
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	andl	$1, %ecx
	movl	-12(%rbp), %edx
	andl	$1, %edx
	cmpl	%edx, %ecx
	je	.LBB14_44
# BB#39:                                # %if.then.61
	movl	-12(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB14_42
# BB#40:                                # %land.lhs.true.65
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB14_42
# BB#41:                                # %if.then.68
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	andl	$-2, %ecx
	movl	%ecx, 84(%rax)
	jmp	.LBB14_43
.LBB14_42:                              # %if.else.71
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	-76(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	callq	gimp_tool_active_modifier_key
.LBB14_43:                              # %if.end.72
	jmp	.LBB14_44
.LBB14_44:                              # %if.end.73
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	andl	$4, %ecx
	movl	-12(%rbp), %edx
	andl	$4, %edx
	cmpl	%edx, %ecx
	je	.LBB14_50
# BB#45:                                # %if.then.78
	movl	-12(%rbp), %eax
	andl	$4, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jne	.LBB14_48
# BB#46:                                # %land.lhs.true.83
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB14_48
# BB#47:                                # %if.then.87
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	andl	$-5, %ecx
	movl	%ecx, 84(%rax)
	jmp	.LBB14_49
.LBB14_48:                              # %if.else.90
	movl	$4, %esi
	movq	-8(%rbp), %rdi
	movl	-80(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	callq	gimp_tool_active_modifier_key
.LBB14_49:                              # %if.end.91
	jmp	.LBB14_50
.LBB14_50:                              # %if.end.92
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	andl	$8, %ecx
	movl	-12(%rbp), %edx
	andl	$8, %edx
	cmpl	%edx, %ecx
	je	.LBB14_56
# BB#51:                                # %if.then.97
	movl	-12(%rbp), %eax
	andl	$8, %eax
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB14_54
# BB#52:                                # %land.lhs.true.102
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB14_54
# BB#53:                                # %if.then.106
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	andl	$-9, %ecx
	movl	%ecx, 84(%rax)
	jmp	.LBB14_55
.LBB14_54:                              # %if.else.109
	movl	$8, %esi
	movq	-8(%rbp), %rdi
	movl	-84(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	callq	gimp_tool_active_modifier_key
.LBB14_55:                              # %if.end.110
	jmp	.LBB14_56
.LBB14_56:                              # %if.end.111
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	andl	$16, %ecx
	movl	-12(%rbp), %edx
	andl	$16, %edx
	cmpl	%edx, %ecx
	je	.LBB14_62
# BB#57:                                # %if.then.116
	movl	-12(%rbp), %eax
	andl	$16, %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jne	.LBB14_60
# BB#58:                                # %land.lhs.true.121
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	je	.LBB14_60
# BB#59:                                # %if.then.125
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	andl	$-17, %ecx
	movl	%ecx, 84(%rax)
	jmp	.LBB14_61
.LBB14_60:                              # %if.else.128
	movl	$16, %esi
	movq	-8(%rbp), %rdi
	movl	-88(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	callq	gimp_tool_active_modifier_key
.LBB14_61:                              # %if.end.129
	jmp	.LBB14_62
.LBB14_62:                              # %if.end.130
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 88(%rcx)
.LBB14_63:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tool_set_active_modifier_state, .Lfunc_end14-gimp_tool_set_active_modifier_state
	.cfi_endproc

	.globl	gimp_tool_motion
	.align	16, 0x90
	.type	gimp_tool_motion,@function
gimp_tool_motion:                       # @gimp_tool_motion
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_motion, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_35
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.13
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_motion, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_35
.LBB15_16:                              # %if.end.15
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.16
	jmp	.LBB15_18
.LBB15_18:                              # %do.body.17
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_20
# BB#19:                                # %if.then.26
	movl	$0, -76(%rbp)
	jmp	.LBB15_25
.LBB15_20:                              # %if.else.27
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_23
# BB#21:                                # %land.lhs.true.30
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_23
# BB#22:                                # %if.then.34
	movl	$1, -76(%rbp)
	jmp	.LBB15_24
.LBB15_23:                              # %if.else.35
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB15_24:                              # %if.end.37
	jmp	.LBB15_25
.LBB15_25:                              # %if.end.38
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_27
# BB#26:                                # %if.then.41
	jmp	.LBB15_28
.LBB15_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_motion, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_35
.LBB15_28:                              # %if.end.43
	jmp	.LBB15_29
.LBB15_29:                              # %do.end.44
	jmp	.LBB15_30
.LBB15_30:                              # %do.body.45
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$1, %eax
	jne	.LBB15_32
# BB#31:                                # %if.then.48
	jmp	.LBB15_33
.LBB15_32:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_motion, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_35
.LBB15_33:                              # %if.end.50
	jmp	.LBB15_34
.LBB15_34:                              # %do.end.51
	movq	-8(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gimp_tool_check_click_distance
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	208(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movq	-32(%rbp), %r9
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	%r9, %r8
	movq	-88(%rbp), %r9          # 8-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	*%r9
.LBB15_35:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_tool_motion, .Lfunc_end15-gimp_tool_motion
	.cfi_endproc

	.globl	gimp_tool_set_focus_display
	.align	16, 0x90
	.type	gimp_tool_set_focus_display,@function
gimp_tool_set_focus_display:            # @gimp_tool_set_focus_display
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_focus_display, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_42
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB16_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB16_21
.LBB16_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB16_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB16_20
.LBB16_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB16_20:                              # %if.end.32
	jmp	.LBB16_21
.LBB16_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB16_23
.LBB16_22:                              # %if.then.36
	jmp	.LBB16_24
.LBB16_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_focus_display, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_42
.LBB16_24:                              # %if.end.38
	jmp	.LBB16_25
.LBB16_25:                              # %do.end.39
	jmp	.LBB16_26
.LBB16_26:                              # %do.body.40
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB16_28
# BB#27:                                # %if.then.43
	jmp	.LBB16_29
.LBB16_28:                              # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_focus_display, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_42
.LBB16_29:                              # %if.end.45
	jmp	.LBB16_30
.LBB16_30:                              # %do.end.46
	jmp	.LBB16_31
.LBB16_31:                              # %do.body.47
	movl	gimp_log_flags, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB16_33
# BB#32:                                # %if.then.49
	movl	$2, %edi
	movabsq	$.L__func__.gimp_tool_set_focus_display, %rsi
	movl	$728, %edx              # imm = 0x2D8
	movabsq	$.L.str.12, %rcx
	movq	-8(%rbp), %r8
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB16_33:                              # %if.end.50
	jmp	.LBB16_34
.LBB16_34:                              # %do.end.51
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	72(%rcx), %rax
	je	.LBB16_42
# BB#35:                                # %if.then.54
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB16_41
# BB#36:                                # %if.then.57
	movq	-8(%rbp), %rax
	cmpl	$0, 88(%rax)
	je	.LBB16_38
# BB#37:                                # %if.then.59
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	callq	gimp_tool_set_active_modifier_state
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
.LBB16_38:                              # %if.end.63
	movq	-8(%rbp), %rax
	cmpl	$0, 80(%rax)
	je	.LBB16_40
# BB#39:                                # %if.then.65
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	callq	gimp_tool_set_modifier_state
.LBB16_40:                              # %if.end.67
	jmp	.LBB16_41
.LBB16_41:                              # %if.end.68
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB16_42:                              # %if.end.70
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_tool_set_focus_display, .Lfunc_end16-gimp_tool_set_focus_display
	.cfi_endproc

	.globl	gimp_tool_set_modifier_state
	.align	16, 0x90
	.type	gimp_tool_set_modifier_state,@function
gimp_tool_set_modifier_state:           # @gimp_tool_set_modifier_state
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tool_get_type
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
	movabsq	$.L__func__.gimp_tool_set_modifier_state, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_47
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB17_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB17_20
.LBB17_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB17_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB17_19:                              # %if.end.31
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB17_22
# BB#21:                                # %if.then.35
	jmp	.LBB17_23
.LBB17_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_modifier_state, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_47
.LBB17_23:                              # %if.end.37
	jmp	.LBB17_24
.LBB17_24:                              # %do.end.38
	jmp	.LBB17_25
.LBB17_25:                              # %do.body.39
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB17_27
# BB#26:                                # %if.then.42
	jmp	.LBB17_28
.LBB17_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_modifier_state, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_47
.LBB17_28:                              # %if.end.44
	jmp	.LBB17_29
.LBB17_29:                              # %do.end.45
	jmp	.LBB17_30
.LBB17_30:                              # %do.body.46
	movl	gimp_log_flags, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB17_32
# BB#31:                                # %if.then.48
	movl	$2, %edi
	movabsq	$.L__func__.gimp_tool_set_modifier_state, %rsi
	movl	$803, %edx              # imm = 0x323
	movabsq	$.L.str.14, %rcx
	movq	-8(%rbp), %r8
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB17_32:                              # %if.end.49
	jmp	.LBB17_33
.LBB17_33:                              # %do.end.50
	jmp	.LBB17_34
.LBB17_34:                              # %do.body.51
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB17_36
# BB#35:                                # %if.then.54
	jmp	.LBB17_37
.LBB17_36:                              # %if.else.55
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_modifier_state, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_47
.LBB17_37:                              # %if.end.56
	jmp	.LBB17_38
.LBB17_38:                              # %do.end.57
	movq	-8(%rbp), %rax
	movl	80(%rax), %ecx
	andl	$1, %ecx
	movl	-12(%rbp), %edx
	andl	$1, %edx
	cmpl	%edx, %ecx
	je	.LBB17_40
# BB#39:                                # %if.then.61
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	cmovnel	%eax, %ecx
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %r8
	movl	%eax, %esi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	callq	gimp_tool_modifier_key
.LBB17_40:                              # %if.end.64
	movq	-8(%rbp), %rax
	movl	80(%rax), %ecx
	andl	$4, %ecx
	movl	-12(%rbp), %edx
	andl	$4, %edx
	cmpl	%edx, %ecx
	je	.LBB17_42
# BB#41:                                # %if.then.69
	movl	$4, %esi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	andl	$4, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	movl	%eax, %edx
	callq	gimp_tool_modifier_key
.LBB17_42:                              # %if.end.73
	movq	-8(%rbp), %rax
	movl	80(%rax), %ecx
	andl	$8, %ecx
	movl	-12(%rbp), %edx
	andl	$8, %edx
	cmpl	%edx, %ecx
	je	.LBB17_44
# BB#43:                                # %if.then.78
	movl	$8, %esi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	movl	%eax, %edx
	callq	gimp_tool_modifier_key
.LBB17_44:                              # %if.end.82
	movq	-8(%rbp), %rax
	movl	80(%rax), %ecx
	andl	$16, %ecx
	movl	-12(%rbp), %edx
	andl	$16, %edx
	cmpl	%edx, %ecx
	je	.LBB17_46
# BB#45:                                # %if.then.87
	movl	$16, %esi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	movl	%eax, %edx
	callq	gimp_tool_modifier_key
.LBB17_46:                              # %if.end.91
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 80(%rcx)
.LBB17_47:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_tool_set_modifier_state, .Lfunc_end17-gimp_tool_set_modifier_state
	.cfi_endproc

	.globl	gimp_tool_key_press
	.align	16, 0x90
	.type	gimp_tool_key_press,@function
gimp_tool_key_press:                    # @gimp_tool_key_press
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_get_type
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
	movabsq	$.L__func__.gimp_tool_key_press, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_35
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB18_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB18_20
.LBB18_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB18_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB18_19
.LBB18_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB18_19:                              # %if.end.31
	jmp	.LBB18_20
.LBB18_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB18_22
# BB#21:                                # %if.then.35
	jmp	.LBB18_23
.LBB18_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_key_press, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_35
.LBB18_23:                              # %if.end.37
	jmp	.LBB18_24
.LBB18_24:                              # %do.end.38
	jmp	.LBB18_25
.LBB18_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB18_27
# BB#26:                                # %if.then.41
	jmp	.LBB18_28
.LBB18_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_key_press, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_35
.LBB18_28:                              # %if.end.43
	jmp	.LBB18_29
.LBB18_29:                              # %do.end.44
	jmp	.LBB18_30
.LBB18_30:                              # %do.body.45
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB18_32
# BB#31:                                # %if.then.48
	jmp	.LBB18_33
.LBB18_32:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_key_press, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_35
.LBB18_33:                              # %if.end.50
	jmp	.LBB18_34
.LBB18_34:                              # %do.end.51
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB18_35:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_tool_key_press, .Lfunc_end18-gimp_tool_key_press
	.cfi_endproc

	.globl	gimp_tool_key_release
	.align	16, 0x90
	.type	gimp_tool_key_release,@function
gimp_tool_key_release:                  # @gimp_tool_key_release
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_key_release, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_35
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB19_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB19_20
.LBB19_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB19_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB19_19
.LBB19_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB19_19:                              # %if.end.31
	jmp	.LBB19_20
.LBB19_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB19_22
# BB#21:                                # %if.then.35
	jmp	.LBB19_23
.LBB19_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_key_release, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_35
.LBB19_23:                              # %if.end.37
	jmp	.LBB19_24
.LBB19_24:                              # %do.end.38
	jmp	.LBB19_25
.LBB19_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB19_27
# BB#26:                                # %if.then.41
	jmp	.LBB19_28
.LBB19_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_key_release, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_35
.LBB19_28:                              # %if.end.43
	jmp	.LBB19_29
.LBB19_29:                              # %do.end.44
	jmp	.LBB19_30
.LBB19_30:                              # %do.body.45
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB19_32
# BB#31:                                # %if.then.48
	jmp	.LBB19_33
.LBB19_32:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_key_release, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_35
.LBB19_33:                              # %if.end.50
	jmp	.LBB19_34
.LBB19_34:                              # %do.end.51
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	224(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB19_35:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_tool_key_release, .Lfunc_end19-gimp_tool_key_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_modifier_key,@function
gimp_tool_modifier_key:                 # @gimp_tool_modifier_key
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_modifier_key, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_30
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB20_20
.LBB20_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB20_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB20_19
.LBB20_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB20_19:                              # %if.end.31
	jmp	.LBB20_20
.LBB20_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB20_22
# BB#21:                                # %if.then.35
	jmp	.LBB20_23
.LBB20_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_modifier_key, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_30
.LBB20_23:                              # %if.end.37
	jmp	.LBB20_24
.LBB20_24:                              # %do.end.38
	jmp	.LBB20_25
.LBB20_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB20_27
# BB#26:                                # %if.then.41
	jmp	.LBB20_28
.LBB20_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_modifier_key, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_30
.LBB20_28:                              # %if.end.43
	jmp	.LBB20_29
.LBB20_29:                              # %do.end.44
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
.LBB20_30:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_tool_modifier_key, .Lfunc_end20-gimp_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_active_modifier_key,@function
gimp_tool_active_modifier_key:          # @gimp_tool_active_modifier_key
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_active_modifier_key, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_30
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB21_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB21_20
.LBB21_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB21_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB21_19
.LBB21_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB21_19:                              # %if.end.31
	jmp	.LBB21_20
.LBB21_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB21_22
# BB#21:                                # %if.then.35
	jmp	.LBB21_23
.LBB21_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_active_modifier_key, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_30
.LBB21_23:                              # %if.end.37
	jmp	.LBB21_24
.LBB21_24:                              # %do.end.38
	jmp	.LBB21_25
.LBB21_25:                              # %do.body.39
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB21_27
# BB#26:                                # %if.then.41
	jmp	.LBB21_28
.LBB21_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_active_modifier_key, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_30
.LBB21_28:                              # %if.end.43
	jmp	.LBB21_29
.LBB21_29:                              # %do.end.44
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	240(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
.LBB21_30:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_tool_active_modifier_key, .Lfunc_end21-gimp_tool_active_modifier_key
	.cfi_endproc

	.globl	gimp_tool_oper_update
	.align	16, 0x90
	.type	gimp_tool_oper_update,@function
gimp_tool_oper_update:                  # @gimp_tool_oper_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_oper_update, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_37
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB22_15
# BB#14:                                # %if.then.13
	jmp	.LBB22_16
.LBB22_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_oper_update, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_37
.LBB22_16:                              # %if.end.15
	jmp	.LBB22_17
.LBB22_17:                              # %do.end.16
	jmp	.LBB22_18
.LBB22_18:                              # %do.body.17
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB22_20
# BB#19:                                # %if.then.26
	movl	$0, -76(%rbp)
	jmp	.LBB22_25
.LBB22_20:                              # %if.else.27
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_23
# BB#21:                                # %land.lhs.true.30
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB22_23
# BB#22:                                # %if.then.34
	movl	$1, -76(%rbp)
	jmp	.LBB22_24
.LBB22_23:                              # %if.else.35
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB22_24:                              # %if.end.37
	jmp	.LBB22_25
.LBB22_25:                              # %if.end.38
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB22_27
# BB#26:                                # %if.then.41
	jmp	.LBB22_28
.LBB22_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_oper_update, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_37
.LBB22_28:                              # %if.end.43
	jmp	.LBB22_29
.LBB22_29:                              # %do.end.44
	jmp	.LBB22_30
.LBB22_30:                              # %do.body.45
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB22_32
# BB#31:                                # %if.then.48
	jmp	.LBB22_33
.LBB22_32:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_oper_update, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_37
.LBB22_33:                              # %if.end.50
	jmp	.LBB22_34
.LBB22_34:                              # %do.end.51
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	je	.LBB22_37
# BB#35:                                # %land.lhs.true.56
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_handle_empty_image
	cmpl	$0, %eax
	jne	.LBB22_37
# BB#36:                                # %if.then.60
	movabsq	$.L.str.16, %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.15, %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_tool_replace_status
.LBB22_37:                              # %if.end.62
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_tool_oper_update, .Lfunc_end22-gimp_tool_oper_update
	.cfi_endproc

	.globl	gimp_tool_replace_status
	.align	16, 0x90
	.type	gimp_tool_replace_status,@function
gimp_tool_replace_status:               # @gimp_tool_replace_status
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
	subq	$496, %rsp              # imm = 0x1F0
	testb	%al, %al
	movaps	%xmm7, -304(%rbp)       # 16-byte Spill
	movaps	%xmm6, -320(%rbp)       # 16-byte Spill
	movaps	%xmm5, -336(%rbp)       # 16-byte Spill
	movaps	%xmm4, -352(%rbp)       # 16-byte Spill
	movaps	%xmm3, -368(%rbp)       # 16-byte Spill
	movaps	%xmm2, -384(%rbp)       # 16-byte Spill
	movaps	%xmm1, -400(%rbp)       # 16-byte Spill
	movaps	%xmm0, -416(%rbp)       # 16-byte Spill
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r9, -432(%rbp)         # 8-byte Spill
	movq	%r8, -440(%rbp)         # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	je	.LBB23_32
# BB#31:                                # %entry
	movaps	-416(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -240(%rbp)
	movaps	-400(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -224(%rbp)
	movaps	-384(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -208(%rbp)
	movaps	-368(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -192(%rbp)
	movaps	-352(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -176(%rbp)
	movaps	-336(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -160(%rbp)
	movaps	-320(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -144(%rbp)
	movaps	-304(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -128(%rbp)
.LBB23_32:                              # %entry
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -256(%rbp)
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -264(%rbp)
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_replace_status, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_30
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB23_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB23_20
.LBB23_15:                              # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB23_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB23_19
.LBB23_18:                              # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB23_19:                              # %if.end.31
	jmp	.LBB23_20
.LBB23_20:                              # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB23_22
# BB#21:                                # %if.then.35
	jmp	.LBB23_23
.LBB23_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_replace_status, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_30
.LBB23_23:                              # %if.end.37
	jmp	.LBB23_24
.LBB23_24:                              # %do.end.38
	jmp	.LBB23_25
.LBB23_25:                              # %do.body.39
	cmpq	$0, -24(%rbp)
	je	.LBB23_27
# BB#26:                                # %if.then.41
	jmp	.LBB23_28
.LBB23_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_replace_status, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_30
.LBB23_28:                              # %if.end.43
	jmp	.LBB23_29
.LBB23_29:                              # %do.end.44
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	leaq	-64(%rbp), %rsi
	movq	%rax, -40(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, 16(%rsi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rsi)
	movl	$48, 4(%rsi)
	movl	$24, (%rsi)
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	g_type_name
	leaq	-64(%rbp), %r8
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_statusbar_replace_valist
	leaq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_list_remove
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
.LBB23_30:                              # %return
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_tool_replace_status, .Lfunc_end23-gimp_tool_replace_status
	.cfi_endproc

	.globl	gimp_tool_cursor_update
	.align	16, 0x90
	.type	gimp_tool_cursor_update,@function
gimp_tool_cursor_update:                # @gimp_tool_cursor_update
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_cursor_update, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_35
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.13
	jmp	.LBB24_16
.LBB24_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_cursor_update, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_35
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.16
	jmp	.LBB24_18
.LBB24_18:                              # %do.body.17
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB24_20
# BB#19:                                # %if.then.26
	movl	$0, -76(%rbp)
	jmp	.LBB24_25
.LBB24_20:                              # %if.else.27
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_23
# BB#21:                                # %land.lhs.true.30
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB24_23
# BB#22:                                # %if.then.34
	movl	$1, -76(%rbp)
	jmp	.LBB24_24
.LBB24_23:                              # %if.else.35
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB24_24:                              # %if.end.37
	jmp	.LBB24_25
.LBB24_25:                              # %if.end.38
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB24_27
# BB#26:                                # %if.then.41
	jmp	.LBB24_28
.LBB24_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_cursor_update, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_35
.LBB24_28:                              # %if.end.43
	jmp	.LBB24_29
.LBB24_29:                              # %do.end.44
	jmp	.LBB24_30
.LBB24_30:                              # %do.body.45
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB24_32
# BB#31:                                # %if.then.48
	jmp	.LBB24_33
.LBB24_32:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_cursor_update, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_35
.LBB24_33:                              # %if.end.50
	jmp	.LBB24_34
.LBB24_34:                              # %do.end.51
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
.LBB24_35:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_tool_cursor_update, .Lfunc_end24-gimp_tool_cursor_update
	.cfi_endproc

	.globl	gimp_tool_get_popup
	.align	16, 0x90
	.type	gimp_tool_get_popup,@function
gimp_tool_get_popup:                    # @gimp_tool_get_popup
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_get_popup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_35
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB25_15
# BB#14:                                # %if.then.13
	jmp	.LBB25_16
.LBB25_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_get_popup, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_35
.LBB25_16:                              # %if.end.15
	jmp	.LBB25_17
.LBB25_17:                              # %do.end.16
	jmp	.LBB25_18
.LBB25_18:                              # %do.body.17
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB25_20
# BB#19:                                # %if.then.26
	movl	$0, -92(%rbp)
	jmp	.LBB25_25
.LBB25_20:                              # %if.else.27
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_23
# BB#21:                                # %land.lhs.true.30
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB25_23
# BB#22:                                # %if.then.34
	movl	$1, -92(%rbp)
	jmp	.LBB25_24
.LBB25_23:                              # %if.else.35
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB25_24:                              # %if.end.37
	jmp	.LBB25_25
.LBB25_25:                              # %if.end.38
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB25_27
# BB#26:                                # %if.then.41
	jmp	.LBB25_28
.LBB25_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_get_popup, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_35
.LBB25_28:                              # %if.end.43
	jmp	.LBB25_29
.LBB25_29:                              # %do.end.44
	jmp	.LBB25_30
.LBB25_30:                              # %do.body.45
	cmpq	$0, -48(%rbp)
	je	.LBB25_32
# BB#31:                                # %if.then.47
	jmp	.LBB25_33
.LBB25_32:                              # %if.else.48
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_get_popup, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_35
.LBB25_33:                              # %if.end.49
	jmp	.LBB25_34
.LBB25_34:                              # %do.end.50
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	264(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB25_35:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_tool_get_popup, .Lfunc_end25-gimp_tool_get_popup
	.cfi_endproc

	.globl	gimp_tool_push_status
	.align	16, 0x90
	.type	gimp_tool_push_status,@function
gimp_tool_push_status:                  # @gimp_tool_push_status
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
	subq	$496, %rsp              # imm = 0x1F0
	testb	%al, %al
	movaps	%xmm7, -304(%rbp)       # 16-byte Spill
	movaps	%xmm6, -320(%rbp)       # 16-byte Spill
	movaps	%xmm5, -336(%rbp)       # 16-byte Spill
	movaps	%xmm4, -352(%rbp)       # 16-byte Spill
	movaps	%xmm3, -368(%rbp)       # 16-byte Spill
	movaps	%xmm2, -384(%rbp)       # 16-byte Spill
	movaps	%xmm1, -400(%rbp)       # 16-byte Spill
	movaps	%xmm0, -416(%rbp)       # 16-byte Spill
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r9, -432(%rbp)         # 8-byte Spill
	movq	%r8, -440(%rbp)         # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	je	.LBB26_32
# BB#31:                                # %entry
	movaps	-416(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -240(%rbp)
	movaps	-400(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -224(%rbp)
	movaps	-384(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -208(%rbp)
	movaps	-368(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -192(%rbp)
	movaps	-352(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -176(%rbp)
	movaps	-336(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -160(%rbp)
	movaps	-320(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -144(%rbp)
	movaps	-304(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -128(%rbp)
.LBB26_32:                              # %entry
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -256(%rbp)
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -264(%rbp)
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_push_status, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_30
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB26_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB26_20
.LBB26_15:                              # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB26_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB26_19
.LBB26_18:                              # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB26_19:                              # %if.end.31
	jmp	.LBB26_20
.LBB26_20:                              # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB26_22
# BB#21:                                # %if.then.35
	jmp	.LBB26_23
.LBB26_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_push_status, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_30
.LBB26_23:                              # %if.end.37
	jmp	.LBB26_24
.LBB26_24:                              # %do.end.38
	jmp	.LBB26_25
.LBB26_25:                              # %do.body.39
	cmpq	$0, -24(%rbp)
	je	.LBB26_27
# BB#26:                                # %if.then.41
	jmp	.LBB26_28
.LBB26_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_push_status, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_30
.LBB26_28:                              # %if.end.43
	jmp	.LBB26_29
.LBB26_29:                              # %do.end.44
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	leaq	-64(%rbp), %rsi
	movq	%rax, -40(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, 16(%rsi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rsi)
	movl	$48, 4(%rsi)
	movl	$24, (%rsi)
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	g_type_name
	leaq	-64(%rbp), %r8
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_statusbar_push_valist
	leaq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_list_remove
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
.LBB26_30:                              # %return
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_tool_push_status, .Lfunc_end26-gimp_tool_push_status
	.cfi_endproc

	.globl	gimp_tool_push_status_coords
	.align	16, 0x90
	.type	gimp_tool_push_status_coords,@function
gimp_tool_push_status_coords:           # @gimp_tool_push_status_coords
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%r8, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movq	%r9, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_push_status_coords, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_25
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB27_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB27_20
.LBB27_15:                              # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB27_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB27_19
.LBB27_18:                              # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB27_19:                              # %if.end.31
	jmp	.LBB27_20
.LBB27_20:                              # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB27_22
# BB#21:                                # %if.then.35
	jmp	.LBB27_23
.LBB27_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_push_status_coords, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_25
.LBB27_23:                              # %if.end.37
	jmp	.LBB27_24
.LBB27_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_name
	movq	-80(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %r9
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-64(%rbp), %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_statusbar_push_coords
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rdx
	movq	%rax, 176(%rdx)
.LBB27_25:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_tool_push_status_coords, .Lfunc_end27-gimp_tool_push_status_coords
	.cfi_endproc

	.globl	gimp_tool_push_status_length
	.align	16, 0x90
	.type	gimp_tool_push_status_length,@function
gimp_tool_push_status_length:           # @gimp_tool_push_status_length
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_push_status_length, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_25
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB28_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB28_20
.LBB28_15:                              # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB28_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB28_19
.LBB28_18:                              # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB28_19:                              # %if.end.31
	jmp	.LBB28_20
.LBB28_20:                              # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB28_22
# BB#21:                                # %if.then.35
	jmp	.LBB28_23
.LBB28_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_push_status_length, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_25
.LBB28_23:                              # %if.end.37
	jmp	.LBB28_24
.LBB28_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %r9
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_statusbar_push_length
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
.LBB28_25:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_tool_push_status_length, .Lfunc_end28-gimp_tool_push_status_length
	.cfi_endproc

	.globl	gimp_tool_pop_status
	.align	16, 0x90
	.type	gimp_tool_pop_status,@function
gimp_tool_pop_status:                   # @gimp_tool_pop_status
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_pop_status, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_25
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	jmp	.LBB29_13
.LBB29_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB29_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB29_20
.LBB29_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB29_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB29_19
.LBB29_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB29_19:                              # %if.end.31
	jmp	.LBB29_20
.LBB29_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB29_22
# BB#21:                                # %if.then.35
	jmp	.LBB29_23
.LBB29_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_pop_status, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_25
.LBB29_23:                              # %if.end.37
	jmp	.LBB29_24
.LBB29_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_statusbar_pop
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 176(%rsi)
.LBB29_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_tool_pop_status, .Lfunc_end29-gimp_tool_pop_status
	.cfi_endproc

	.globl	gimp_tool_message
	.align	16, 0x90
	.type	gimp_tool_message,@function
gimp_tool_message:                      # @gimp_tool_message
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
	subq	$464, %rsp              # imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       # 16-byte Spill
	movaps	%xmm6, -304(%rbp)       # 16-byte Spill
	movaps	%xmm5, -320(%rbp)       # 16-byte Spill
	movaps	%xmm4, -336(%rbp)       # 16-byte Spill
	movaps	%xmm3, -352(%rbp)       # 16-byte Spill
	movaps	%xmm2, -368(%rbp)       # 16-byte Spill
	movaps	%xmm1, -384(%rbp)       # 16-byte Spill
	movaps	%xmm0, -400(%rbp)       # 16-byte Spill
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r9, -416(%rbp)         # 8-byte Spill
	movq	%r8, -424(%rbp)         # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	je	.LBB30_32
# BB#31:                                # %entry
	movaps	-400(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -112(%rbp)
.LBB30_32:                              # %entry
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_message, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_30
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	jmp	.LBB30_13
.LBB30_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB30_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB30_20
.LBB30_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB30_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB30_19
.LBB30_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB30_19:                              # %if.end.31
	jmp	.LBB30_20
.LBB30_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB30_22
# BB#21:                                # %if.then.35
	jmp	.LBB30_23
.LBB30_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_message, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_30
.LBB30_23:                              # %if.end.37
	jmp	.LBB30_24
.LBB30_24:                              # %do.end.38
	jmp	.LBB30_25
.LBB30_25:                              # %do.body.39
	cmpq	$0, -24(%rbp)
	je	.LBB30_27
# BB#26:                                # %if.then.41
	jmp	.LBB30_28
.LBB30_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_message, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_30
.LBB30_28:                              # %if.end.43
	jmp	.LBB30_29
.LBB30_29:                              # %do.end.44
	movl	$80, %eax
	movl	%eax, %esi
	leaq	-48(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$24, (%rcx)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	leaq	-48(%rbp), %r8
	movq	-24(%rbp), %rcx
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_valist
	leaq	-48(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB30_30:                              # %return
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_tool_message, .Lfunc_end30-gimp_tool_message
	.cfi_endproc

	.globl	gimp_tool_set_cursor
	.align	16, 0x90
	.type	gimp_tool_set_cursor,@function
gimp_tool_set_cursor:                   # @gimp_tool_set_cursor
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tool_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_cursor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_25
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	jmp	.LBB31_13
.LBB31_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB31_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB31_20
.LBB31_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB31_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB31_19
.LBB31_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB31_19:                              # %if.end.31
	jmp	.LBB31_20
.LBB31_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB31_22
# BB#21:                                # %if.then.35
	jmp	.LBB31_23
.LBB31_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_set_cursor, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_25
.LBB31_23:                              # %if.end.37
	jmp	.LBB31_24
.LBB31_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_display_shell_set_cursor
.LBB31_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_tool_set_cursor, .Lfunc_end31-gimp_tool_set_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_class_init,@function
gimp_tool_class_init:                   # @gimp_tool_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp99:
	.cfi_offset %rbx, -56
.Ltmp100:
	.cfi_offset %r12, -48
.Ltmp101:
	.cfi_offset %r13, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_tool_real_options_notify, %rsi
	movabsq	$gimp_tool_real_get_popup, %rdi
	movabsq	$gimp_tool_real_cursor_update, %rcx
	movabsq	$gimp_tool_real_oper_update, %rdx
	movabsq	$gimp_tool_real_active_modifier_key, %r8
	movabsq	$gimp_tool_real_modifier_key, %r9
	movabsq	$gimp_tool_real_key_release, %r10
	movabsq	$gimp_tool_real_key_press, %r11
	movabsq	$gimp_tool_real_motion, %rbx
	movabsq	$gimp_tool_real_button_release, %r14
	movabsq	$gimp_tool_real_button_press, %r15
	movabsq	$gimp_tool_real_control, %r12
	movabsq	$gimp_tool_real_initialize, %r13
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movabsq	$gimp_tool_real_has_image, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movabsq	$gimp_tool_real_has_display, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$gimp_tool_get_property, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$gimp_tool_set_property, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_tool_finalize, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gimp_tool_dispose, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$gimp_tool_constructed, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 72(%rax)
	movq	-56(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 160(%rax)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 168(%rax)
	movq	-48(%rbp), %rax
	movq	%r13, 176(%rax)
	movq	-48(%rbp), %rax
	movq	%r12, 184(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 192(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 200(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 208(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 216(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 224(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 232(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 240(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-48(%rbp), %rax
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 256(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 264(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 272(%rax)
	movq	-56(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_tool_info_get_type
	movabsq	$.L.str.20, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_tool_class_init, .Lfunc_end32-gimp_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_constructed,@function
gimp_tool_constructed:                  # @gimp_tool_constructed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB33_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB33_2:                               # %if.end
	jmp	.LBB33_3
.LBB33_3:                               # %do.body
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB33_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB33_10
.LBB33_5:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB33_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB33_9
.LBB33_8:                               # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB33_9:                               # %if.end.13
	jmp	.LBB33_10
.LBB33_10:                              # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB33_12
# BB#11:                                # %if.then.16
	jmp	.LBB33_13
.LBB33_12:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$198, %edx
	movabsq	$.L__func__.gimp_tool_constructed, %rcx
	movabsq	$.L.str.3, %r8
	callq	g_assertion_message_expr
.LBB33_13:                              # %if.end.18
	jmp	.LBB33_14
.LBB33_14:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_tool_get_options
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_tool_options_notify, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_tool_constructed, .Lfunc_end33-gimp_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_dispose,@function
gimp_tool_dispose:                      # @gimp_tool_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	callq	gimp_tool_control
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	gimp_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_tool_dispose, .Lfunc_end34-gimp_tool_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_finalize,@function
gimp_tool_finalize:                     # @gimp_tool_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB35_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB35_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB35_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_tool_finalize, .Lfunc_end35-gimp_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_set_property,@function
gimp_tool_set_property:                 # @gimp_tool_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB36_2
	jmp	.LBB36_1
.LBB36_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB36_5
.LBB36_2:                               # %sw.default
	jmp	.LBB36_3
.LBB36_3:                               # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$250, %edx
	movabsq	$.L.str.23, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB36_5
.LBB36_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_tool_set_property, .Lfunc_end36-gimp_tool_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_get_property,@function
gimp_tool_get_property:                 # @gimp_tool_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB37_2
	jmp	.LBB37_1
.LBB37_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB37_5
.LBB37_2:                               # %sw.default
	jmp	.LBB37_3
.LBB37_3:                               # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$270, %edx              # imm = 0x10E
	movabsq	$.L.str.23, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB37_5
.LBB37_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_tool_get_property, .Lfunc_end37-gimp_tool_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_has_display,@function
gimp_tool_real_has_display:             # @gimp_tool_real_has_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	cmpq	56(%rdi), %rsi
	movb	%al, -17(%rbp)          # 1-byte Spill
	je	.LBB38_2
# BB#1:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB38_2:                               # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_tool_real_has_display, .Lfunc_end38-gimp_tool_real_has_display
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_has_image,@function
gimp_tool_real_has_image:               # @gimp_tool_real_has_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 56(%rsi)
	je	.LBB39_7
# BB#1:                                 # %if.then
	cmpq	$0, -24(%rbp)
	je	.LBB39_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	-24(%rbp), %rax
	jne	.LBB39_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB39_8
.LBB39_4:                               # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB39_6
# BB#5:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB39_8
.LBB39_6:                               # %if.end.8
	jmp	.LBB39_7
.LBB39_7:                               # %if.end.9
	movq	$0, -8(%rbp)
.LBB39_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_tool_real_has_image, .Lfunc_end39-gimp_tool_real_has_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_initialize,@function
gimp_tool_real_initialize:              # @gimp_tool_real_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_tool_real_initialize, .Lfunc_end40-gimp_tool_real_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_control,@function
gimp_tool_real_control:                 # @gimp_tool_real_control
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$2, %eax
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jb	.LBB41_1
	jmp	.LBB41_4
.LBB41_4:                               # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB41_2
	jmp	.LBB41_3
.LBB41_1:                               # %sw.bb
	jmp	.LBB41_3
.LBB41_2:                               # %sw.bb.1
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
.LBB41_3:                               # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_tool_real_control, .Lfunc_end41-gimp_tool_real_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_button_press,@function
gimp_tool_real_button_press:            # @gimp_tool_real_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB42_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
.LBB42_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_tool_real_button_press, .Lfunc_end42-gimp_tool_real_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_button_release,@function
gimp_tool_real_button_release:          # @gimp_tool_real_button_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	callq	gimp_tool_control_halt
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_tool_real_button_release, .Lfunc_end43-gimp_tool_real_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_motion,@function
gimp_tool_real_motion:                  # @gimp_tool_real_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_tool_real_motion, .Lfunc_end44-gimp_tool_real_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_key_press,@function
gimp_tool_real_key_press:               # @gimp_tool_real_key_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_tool_real_key_press, .Lfunc_end45-gimp_tool_real_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_key_release,@function
gimp_tool_real_key_release:             # @gimp_tool_real_key_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_tool_real_key_release, .Lfunc_end46-gimp_tool_real_key_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_modifier_key,@function
gimp_tool_real_modifier_key:            # @gimp_tool_real_modifier_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_tool_real_modifier_key, .Lfunc_end47-gimp_tool_real_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_active_modifier_key,@function
gimp_tool_real_active_modifier_key:     # @gimp_tool_real_active_modifier_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_tool_real_active_modifier_key, .Lfunc_end48-gimp_tool_real_active_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_oper_update,@function
gimp_tool_real_oper_update:             # @gimp_tool_real_oper_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_tool_real_oper_update, .Lfunc_end49-gimp_tool_real_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_cursor_update,@function
gimp_tool_real_cursor_update:           # @gimp_tool_real_cursor_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_control_get_cursor
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_tool_control_get_tool_cursor
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gimp_tool_control_get_cursor_modifier
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_tool_set_cursor
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_tool_real_cursor_update, .Lfunc_end50-gimp_tool_real_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_get_popup,@function
gimp_tool_real_get_popup:               # @gimp_tool_real_get_popup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	$0, (%rcx)
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_tool_real_get_popup, .Lfunc_end51-gimp_tool_real_get_popup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_real_options_notify,@function
gimp_tool_real_options_notify:          # @gimp_tool_real_options_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_tool_real_options_notify, .Lfunc_end52-gimp_tool_real_options_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_notify,@function
gimp_tool_options_notify:               # @gimp_tool_options_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	272(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-32(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_tool_options_notify, .Lfunc_end53-gimp_tool_options_notify
	.cfi_endproc

	.type	gimp_tool_get_type.g_define_type_id__volatile,@object # @gimp_tool_get_type.g_define_type_id__volatile
	.local	gimp_tool_get_type.g_define_type_id__volatile
	.comm	gimp_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTool"
	.size	.L.str, 9

	.type	gimp_tool_get_type.g_implement_interface_info,@object # @gimp_tool_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_tool_get_type.g_implement_interface_info:
	.quad	gimp_tool_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_tool_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_tool_get_options,@object # @__func__.gimp_tool_get_options
.L__func__.gimp_tool_get_options:
	.asciz	"gimp_tool_get_options"
	.size	.L__func__.gimp_tool_get_options, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TOOL (tool)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_TOOL_INFO (tool->tool_info)"
	.size	.L.str.3, 36

	.type	.L__func__.gimp_tool_has_display,@object # @__func__.gimp_tool_has_display
.L__func__.gimp_tool_has_display:
	.asciz	"gimp_tool_has_display"
	.size	.L__func__.gimp_tool_has_display, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.4, 26

	.type	.L__func__.gimp_tool_has_image,@object # @__func__.gimp_tool_has_image
.L__func__.gimp_tool_has_image:
	.asciz	"gimp_tool_has_image"
	.size	.L__func__.gimp_tool_has_image, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image == NULL || GIMP_IS_IMAGE (image)"
	.size	.L.str.5, 39

	.type	.L__func__.gimp_tool_initialize,@object # @__func__.gimp_tool_initialize
.L__func__.gimp_tool_initialize:
	.asciz	"gimp_tool_initialize"
	.size	.L__func__.gimp_tool_initialize, 21

	.type	.L__func__.gimp_tool_control,@object # @__func__.gimp_tool_control
.L__func__.gimp_tool_control:
	.asciz	"gimp_tool_control"
	.size	.L__func__.gimp_tool_control, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp_tool_control: unable to RESUME tool with tool->control->paused_count == 0"
	.size	.L.str.6, 79

	.type	.L__func__.gimp_tool_button_press,@object # @__func__.gimp_tool_button_press
.L__func__.gimp_tool_button_press:
	.asciz	"gimp_tool_button_press"
	.size	.L__func__.gimp_tool_button_press, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"coords != NULL"
	.size	.L.str.7, 15

	.type	.L__func__.gimp_tool_button_release,@object # @__func__.gimp_tool_button_release
.L__func__.gimp_tool_button_release:
	.asciz	"gimp_tool_button_release"
	.size	.L__func__.gimp_tool_button_release, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp_tool_control_is_active (tool->control) == TRUE"
	.size	.L.str.8, 52

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimptool.c"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp_tool_control_is_active (tool->control) == FALSE"
	.size	.L.str.10, 53

	.type	.L__func__.gimp_tool_motion,@object # @__func__.gimp_tool_motion
.L__func__.gimp_tool_motion:
	.asciz	"gimp_tool_motion"
	.size	.L__func__.gimp_tool_motion, 17

	.type	.L__func__.gimp_tool_set_focus_display,@object # @__func__.gimp_tool_set_focus_display
.L__func__.gimp_tool_set_focus_display:
	.asciz	"gimp_tool_set_focus_display"
	.size	.L__func__.gimp_tool_set_focus_display, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"display == NULL || GIMP_IS_DISPLAY (display)"
	.size	.L.str.11, 45

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"tool: %p  focus_display: %p  tool->focus_display: %p"
	.size	.L.str.12, 53

	.type	.L__func__.gimp_tool_key_press,@object # @__func__.gimp_tool_key_press
.L__func__.gimp_tool_key_press:
	.asciz	"gimp_tool_key_press"
	.size	.L__func__.gimp_tool_key_press, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"display == tool->focus_display"
	.size	.L.str.13, 31

	.type	.L__func__.gimp_tool_key_release,@object # @__func__.gimp_tool_key_release
.L__func__.gimp_tool_key_release:
	.asciz	"gimp_tool_key_release"
	.size	.L__func__.gimp_tool_key_release, 22

	.type	.L__func__.gimp_tool_set_modifier_state,@object # @__func__.gimp_tool_set_modifier_state
.L__func__.gimp_tool_set_modifier_state:
	.asciz	"gimp_tool_set_modifier_state"
	.size	.L__func__.gimp_tool_set_modifier_state, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"tool: %p  display: %p  tool->focus_display: %p"
	.size	.L.str.14, 47

	.type	.L__func__.gimp_tool_set_active_modifier_state,@object # @__func__.gimp_tool_set_active_modifier_state
.L__func__.gimp_tool_set_active_modifier_state:
	.asciz	"gimp_tool_set_active_modifier_state"
	.size	.L__func__.gimp_tool_set_active_modifier_state, 36

	.type	.L__func__.gimp_tool_oper_update,@object # @__func__.gimp_tool_oper_update
.L__func__.gimp_tool_oper_update:
	.asciz	"gimp_tool_oper_update"
	.size	.L__func__.gimp_tool_oper_update, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Can't work on an empty image, add a layer first"
	.size	.L.str.16, 48

	.type	.L__func__.gimp_tool_cursor_update,@object # @__func__.gimp_tool_cursor_update
.L__func__.gimp_tool_cursor_update:
	.asciz	"gimp_tool_cursor_update"
	.size	.L__func__.gimp_tool_cursor_update, 24

	.type	.L__func__.gimp_tool_get_popup,@object # @__func__.gimp_tool_get_popup
.L__func__.gimp_tool_get_popup:
	.asciz	"gimp_tool_get_popup"
	.size	.L__func__.gimp_tool_get_popup, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ui_path != NULL"
	.size	.L.str.17, 16

	.type	.L__func__.gimp_tool_push_status,@object # @__func__.gimp_tool_push_status
.L__func__.gimp_tool_push_status:
	.asciz	"gimp_tool_push_status"
	.size	.L__func__.gimp_tool_push_status, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"format != NULL"
	.size	.L.str.18, 15

	.type	.L__func__.gimp_tool_push_status_coords,@object # @__func__.gimp_tool_push_status_coords
.L__func__.gimp_tool_push_status_coords:
	.asciz	"gimp_tool_push_status_coords"
	.size	.L__func__.gimp_tool_push_status_coords, 29

	.type	.L__func__.gimp_tool_push_status_length,@object # @__func__.gimp_tool_push_status_length
.L__func__.gimp_tool_push_status_length:
	.asciz	"gimp_tool_push_status_length"
	.size	.L__func__.gimp_tool_push_status_length, 29

	.type	.L__func__.gimp_tool_replace_status,@object # @__func__.gimp_tool_replace_status
.L__func__.gimp_tool_replace_status:
	.asciz	"gimp_tool_replace_status"
	.size	.L__func__.gimp_tool_replace_status, 25

	.type	.L__func__.gimp_tool_pop_status,@object # @__func__.gimp_tool_pop_status
.L__func__.gimp_tool_pop_status:
	.asciz	"gimp_tool_pop_status"
	.size	.L__func__.gimp_tool_pop_status, 21

	.type	.L__func__.gimp_tool_message,@object # @__func__.gimp_tool_message
.L__func__.gimp_tool_message:
	.asciz	"gimp_tool_message"
	.size	.L__func__.gimp_tool_message, 18

	.type	.L__func__.gimp_tool_message_literal,@object # @__func__.gimp_tool_message_literal
.L__func__.gimp_tool_message_literal:
	.asciz	"gimp_tool_message_literal"
	.size	.L__func__.gimp_tool_message_literal, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"message != NULL"
	.size	.L.str.19, 16

	.type	.L__func__.gimp_tool_set_cursor,@object # @__func__.gimp_tool_set_cursor
.L__func__.gimp_tool_set_cursor:
	.asciz	"gimp_tool_set_cursor"
	.size	.L__func__.gimp_tool_set_cursor, 21

	.type	gimp_tool_parent_class,@object # @gimp_tool_parent_class
	.local	gimp_tool_parent_class
	.comm	gimp_tool_parent_class,8,8
	.type	GimpTool_private_offset,@object # @GimpTool_private_offset
	.local	GimpTool_private_offset
	.comm	GimpTool_private_offset,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tool-info"
	.size	.L.str.20, 10

	.type	.L__func__.gimp_tool_constructed,@object # @__func__.gimp_tool_constructed
.L__func__.gimp_tool_constructed:
	.asciz	"gimp_tool_constructed"
	.size	.L__func__.gimp_tool_constructed, 22

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"notify"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.22, 54

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"property"
	.size	.L.str.23, 9

	.type	global_tool_ID,@object  # @global_tool_ID
	.data
	.align	4
global_tool_ID:
	.long	1                       # 0x1
	.size	global_tool_ID, 4

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"gtk-double-click-time"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-double-click-distance"
	.size	.L.str.25, 26

	.type	.L__func__.gimp_tool_modifier_key,@object # @__func__.gimp_tool_modifier_key
.L__func__.gimp_tool_modifier_key:
	.asciz	"gimp_tool_modifier_key"
	.size	.L__func__.gimp_tool_modifier_key, 23

	.type	.L__func__.gimp_tool_active_modifier_key,@object # @__func__.gimp_tool_active_modifier_key
.L__func__.gimp_tool_active_modifier_key:
	.asciz	"gimp_tool_active_modifier_key"
	.size	.L__func__.gimp_tool_active_modifier_key, 30

	.type	.L__func__.gimp_tool_clear_status,@object # @__func__.gimp_tool_clear_status
.L__func__.gimp_tool_clear_status:
	.asciz	"gimp_tool_clear_status"
	.size	.L__func__.gimp_tool_clear_status, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
