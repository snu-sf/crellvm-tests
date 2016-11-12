	.text
	.file	"gimpitem.bc"
	.globl	gimp_item_get_type
	.align	16, 0x90
	.type	gimp_item_get_type,@function
gimp_item_get_type:                     # @gimp_item_get_type
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
	movq	gimp_item_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_item_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_viewable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$576, %edx              # imm = 0x240
	movabsq	$gimp_item_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_item_init, %rcx
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
	movabsq	$gimp_item_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_item_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_item_get_type, .Lfunc_end0-gimp_item_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_class_intern_init,@function
gimp_item_class_intern_init:            # @gimp_item_class_intern_init
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
	movq	%rax, gimp_item_parent_class
	cmpl	$0, GimpItem_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpItem_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_item_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_item_class_intern_init, .Lfunc_end1-gimp_item_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_init,@function
gimp_item_init:                         # @gimp_item_init
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
	callq	gimp_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_force_floating
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	callq	gimp_parasite_list_new
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-16(%rbp), %rax
	movb	40(%rax), %dl
	andb	$-2, %dl
	orb	$1, %dl
	movb	%dl, 40(%rax)
	movq	-16(%rbp), %rax
	movb	40(%rax), %dl
	andb	$-3, %dl
	movb	%dl, 40(%rax)
	movq	-16(%rbp), %rax
	movb	40(%rax), %dl
	andb	$-5, %dl
	movb	%dl, 40(%rax)
	movq	-16(%rbp), %rax
	movb	40(%rax), %dl
	andb	$-9, %dl
	movb	%dl, 40(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_item_init, .Lfunc_end2-gimp_item_init
	.cfi_endproc

	.globl	gimp_item_new
	.align	16, 0x90
	.type	gimp_item_new,@function
gimp_item_new:                          # @gimp_item_new
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
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.2
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_8
# BB#7:                                 # %if.then.5
	movl	$0, -84(%rbp)
	jmp	.LBB3_13
.LBB3_8:                                # %if.else.6
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_11
# BB#9:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_11
# BB#10:                                # %if.then.9
	movl	$1, -84(%rbp)
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.10
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_12:                               # %if.end.12
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.13
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.15
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_16:                               # %if.end.17
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.18
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.19
	cmpl	$0, -44(%rbp)
	jle	.LBB3_21
# BB#19:                                # %land.lhs.true.21
	cmpl	$0, -48(%rbp)
	jle	.LBB3_21
# BB#20:                                # %if.then.23
	jmp	.LBB3_22
.LBB3_21:                               # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_22:                               # %if.end.25
	jmp	.LBB3_23
.LBB3_23:                               # %do.end.26
	movabsq	$.L.str.5, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %r8d
	movq	-64(%rbp), %rax
	movl	%r8d, 24(%rax)
	movl	-48(%rbp), %r8d
	movq	-64(%rbp), %rax
	movl	%r8d, 28(%rax)
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	gimp_item_set_offset
	cmpq	$0, -32(%rbp)
	je	.LBB3_26
# BB#24:                                # %land.lhs.true.33
	movq	-32(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB3_26
# BB#25:                                # %if.then.36
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	jmp	.LBB3_27
.LBB3_26:                               # %if.else.39
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	440(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
.LBB3_27:                               # %if.end.43
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_item_new, .Lfunc_end3-gimp_item_new
	.cfi_endproc

	.globl	gimp_item_set_offset
	.align	16, 0x90
	.type	gimp_item_set_offset,@function
gimp_item_set_offset:                   # @gimp_item_set_offset
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
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
	movabsq	$.L__func__.gimp_item_set_offset, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_17
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB4_14
# BB#13:                                # %if.then.16
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB4_14:                               # %if.end.19
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB4_16
# BB#15:                                # %if.then.22
	movl	$80, %eax
	movl	%eax, %esi
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB4_16:                               # %if.end.25
	movq	-8(%rbp), %rdi
	callq	gimp_item_sync_offset_node
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB4_17:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_item_set_offset, .Lfunc_end4-gimp_item_set_offset
	.cfi_endproc

	.globl	gimp_item_removed
	.align	16, 0x90
	.type	gimp_item_removed,@function
gimp_item_removed:                      # @gimp_item_removed
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
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
	movabsq	$.L__func__.gimp_item_removed, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movb	40(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 40(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB5_14
# BB#13:                                # %if.then.17
	movabsq	$gimp_item_removed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_container_foreach
.LBB5_14:                               # %if.end.18
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_item_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_15:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_item_removed, .Lfunc_end5-gimp_item_removed
	.cfi_endproc

	.globl	gimp_item_is_removed
	.align	16, 0x90
	.type	gimp_item_is_removed,@function
gimp_item_is_removed:                   # @gimp_item_is_removed
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
	callq	gimp_item_get_type
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
	movabsq	$.L__func__.gimp_item_is_removed, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movb	40(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_item_is_removed, .Lfunc_end6-gimp_item_is_removed
	.cfi_endproc

	.globl	gimp_item_unset_removed
	.align	16, 0x90
	.type	gimp_item_unset_removed,@function
gimp_item_unset_removed:                # @gimp_item_unset_removed
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
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
	movabsq	$.L__func__.gimp_item_unset_removed, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_21
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_removed
	cmpl	$0, %eax
	je	.LBB7_15
# BB#14:                                # %if.then.14
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_unset_removed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_21
.LBB7_16:                               # %if.end.16
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.17
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movb	40(%rax), %cl
	andb	$-9, %cl
	movb	%cl, 40(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB7_19
# BB#18:                                # %if.then.24
	movabsq	$gimp_item_unset_removed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_container_foreach
.LBB7_19:                               # %if.end.25
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 312(%rax)
	je	.LBB7_21
# BB#20:                                # %if.then.28
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	312(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_21:                               # %if.end.31
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_item_unset_removed, .Lfunc_end7-gimp_item_unset_removed
	.cfi_endproc

	.globl	gimp_item_is_attached
	.align	16, 0x90
	.type	gimp_item_is_attached,@function
gimp_item_is_attached:                  # @gimp_item_is_attached
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
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
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
	movabsq	$.L__func__.gimp_item_is_attached, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_parent
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rdi
	callq	gimp_item_is_attached
	movl	%eax, -4(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	320(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB8_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_item_is_attached, .Lfunc_end8-gimp_item_is_attached
	.cfi_endproc

	.globl	gimp_item_get_parent
	.align	16, 0x90
	.type	gimp_item_get_parent,@function
gimp_item_get_parent:                   # @gimp_item_get_parent
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
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
	movabsq	$.L__func__.gimp_item_get_parent, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB9_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_item_get_parent, .Lfunc_end9-gimp_item_get_parent
	.cfi_endproc

	.globl	gimp_item_get_tree
	.align	16, 0x90
	.type	gimp_item_get_tree,@function
gimp_item_get_tree:                     # @gimp_item_get_tree
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
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
	movabsq	$.L__func__.gimp_item_get_tree, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 336(%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	336(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_15
.LBB10_14:                              # %if.end.17
	movq	$0, -8(%rbp)
.LBB10_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_item_get_tree, .Lfunc_end10-gimp_item_get_tree
	.cfi_endproc

	.globl	gimp_item_get_container
	.align	16, 0x90
	.type	gimp_item_get_container,@function
gimp_item_get_container:                # @gimp_item_get_container
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_container, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_17
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_parent
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB11_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -8(%rbp)
	jmp	.LBB11_17
.LBB11_14:                              # %if.end.17
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_tree
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB11_16
# BB#15:                                # %if.then.20
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_17
.LBB11_16:                              # %if.end.21
	movq	$0, -8(%rbp)
.LBB11_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_item_get_container, .Lfunc_end11-gimp_item_get_container
	.cfi_endproc

	.globl	gimp_item_get_container_iter
	.align	16, 0x90
	.type	gimp_item_get_container_iter,@function
gimp_item_get_container_iter:           # @gimp_item_get_container_iter
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_container_iter, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_15
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_container
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB12_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_15
.LBB12_14:                              # %if.end.16
	movq	$0, -8(%rbp)
.LBB12_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_item_get_container_iter, .Lfunc_end12-gimp_item_get_container_iter
	.cfi_endproc

	.globl	gimp_item_get_index
	.align	16, 0x90
	.type	gimp_item_get_index,@function
gimp_item_get_index:                    # @gimp_item_get_index
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_index, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB13_15
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_container
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB13_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -4(%rbp)
	jmp	.LBB13_15
.LBB13_14:                              # %if.end.17
	movl	$-1, -4(%rbp)
.LBB13_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_item_get_index, .Lfunc_end13-gimp_item_get_index
	.cfi_endproc

	.globl	gimp_item_get_path
	.align	16, 0x90
	.type	gimp_item_get_path,@function
gimp_item_get_path:                     # @gimp_item_get_path
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
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_path, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_24
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movq	-16(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB14_15
# BB#14:                                # %if.then.14
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_path, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_24
.LBB14_16:                              # %if.end.16
	jmp	.LBB14_17
.LBB14_17:                              # %do.end.17
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_container
	movq	%rax, -24(%rbp)
.LBB14_18:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB14_23
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB14_18 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	callq	g_list_prepend
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_parent
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB14_21
# BB#20:                                # %if.then.27
                                        #   in Loop: Header=BB14_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_container
	movq	%rax, -24(%rbp)
	jmp	.LBB14_22
.LBB14_21:                              # %if.else.29
                                        #   in Loop: Header=BB14_18 Depth=1
	movq	$0, -24(%rbp)
.LBB14_22:                              # %if.end.30
                                        #   in Loop: Header=BB14_18 Depth=1
	jmp	.LBB14_18
.LBB14_23:                              # %while.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_item_get_path, .Lfunc_end14-gimp_item_get_path
	.cfi_endproc

	.globl	gimp_item_duplicate
	.align	16, 0x90
	.type	gimp_item_duplicate,@function
gimp_item_duplicate:                    # @gimp_item_duplicate
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_get_type
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
	movabsq	$.L__func__.gimp_item_duplicate, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_30
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.13
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.22
	movl	$0, -76(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.23
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.26
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.30
	movl	$1, -76(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.31
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB15_19:                              # %if.end.33
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.34
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.37
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.38
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_duplicate, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_30
.LBB15_23:                              # %if.end.39
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.40
	jmp	.LBB15_25
.LBB15_25:                              # %do.body.41
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB15_27
# BB#26:                                # %if.then.45
	jmp	.LBB15_28
.LBB15_27:                              # %if.else.46
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_duplicate, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_30
.LBB15_28:                              # %if.end.47
	jmp	.LBB15_29
.LBB15_29:                              # %do.end.48
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB15_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_item_duplicate, .Lfunc_end15-gimp_item_duplicate
	.cfi_endproc

	.globl	gimp_item_convert
	.align	16, 0x90
	.type	gimp_item_convert,@function
gimp_item_convert:                      # @gimp_item_convert
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_convert, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_44
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.22
	movl	$0, -84(%rbp)
	jmp	.LBB16_20
.LBB16_15:                              # %if.else.23
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_18
# BB#16:                                # %land.lhs.true.26
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB16_18
# BB#17:                                # %if.then.30
	movl	$1, -84(%rbp)
	jmp	.LBB16_19
.LBB16_18:                              # %if.else.31
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB16_19:                              # %if.end.33
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.34
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.37
	jmp	.LBB16_23
.LBB16_22:                              # %if.else.38
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_convert, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_44
.LBB16_23:                              # %if.end.39
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.40
	jmp	.LBB16_25
.LBB16_25:                              # %do.body.41
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB16_27
# BB#26:                                # %if.then.50
	movl	$0, -108(%rbp)
	jmp	.LBB16_32
.LBB16_27:                              # %if.else.51
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_30
# BB#28:                                # %land.lhs.true.54
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB16_30
# BB#29:                                # %if.then.58
	movl	$1, -108(%rbp)
	jmp	.LBB16_31
.LBB16_30:                              # %if.else.59
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB16_31:                              # %if.end.61
	jmp	.LBB16_32
.LBB16_32:                              # %if.end.62
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB16_34
# BB#33:                                # %if.then.65
	jmp	.LBB16_35
.LBB16_34:                              # %if.else.66
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_convert, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_44
.LBB16_35:                              # %if.end.67
	jmp	.LBB16_36
.LBB16_36:                              # %do.end.68
	jmp	.LBB16_37
.LBB16_37:                              # %do.body.69
	movq	-32(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB16_39
# BB#38:                                # %if.then.73
	jmp	.LBB16_40
.LBB16_39:                              # %if.else.74
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_convert, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_44
.LBB16_40:                              # %if.end.75
	jmp	.LBB16_41
.LBB16_41:                              # %do.end.76
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_item_duplicate
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB16_43
# BB#42:                                # %if.then.79
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	352(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
.LBB16_43:                              # %if.end.81
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_44:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_item_convert, .Lfunc_end16-gimp_item_convert
	.cfi_endproc

	.globl	gimp_item_rename
	.align	16, 0x90
	.type	gimp_item_rename,@function
gimp_item_rename:                       # @gimp_item_rename
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_rename, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_24
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB17_15
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB17_16
.LBB17_15:                              # %if.then.14
	jmp	.LBB17_17
.LBB17_16:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_rename, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_24
.LBB17_17:                              # %if.end.16
	jmp	.LBB17_18
.LBB17_18:                              # %do.end.17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB17_20
# BB#19:                                # %lor.lhs.false.20
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB17_21
.LBB17_20:                              # %if.then.22
	movq	-40(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB17_21:                              # %if.end.23
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB17_23
# BB#22:                                # %if.then.27
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	448(%rcx), %rdx
	movq	-32(%rbp), %rcx
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_24
.LBB17_23:                              # %if.end.29
	movl	$1, -4(%rbp)
.LBB17_24:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_item_rename, .Lfunc_end17-gimp_item_rename
	.cfi_endproc

	.globl	gimp_item_get_width
	.align	16, 0x90
	.type	gimp_item_get_width,@function
gimp_item_get_width:                    # @gimp_item_get_width
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_width, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	24(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB18_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_item_get_width, .Lfunc_end18-gimp_item_get_width
	.cfi_endproc

	.globl	gimp_item_get_height
	.align	16, 0x90
	.type	gimp_item_get_height,@function
gimp_item_get_height:                   # @gimp_item_get_height
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
	callq	gimp_item_get_type
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
	movabsq	$.L__func__.gimp_item_get_height, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	28(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB19_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_item_get_height, .Lfunc_end19-gimp_item_get_height
	.cfi_endproc

	.globl	gimp_item_set_size
	.align	16, 0x90
	.type	gimp_item_set_size,@function
gimp_item_set_size:                     # @gimp_item_set_size
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_size, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_19
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB20_14
# BB#13:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB20_19
.LBB20_14:                              # %if.then.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	cmpl	-12(%rbp), %edx
	je	.LBB20_16
# BB#15:                                # %if.then.21
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB20_16:                              # %if.end.24
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB20_18
# BB#17:                                # %if.then.27
	movl	$80, %eax
	movl	%eax, %esi
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB20_18:                              # %if.end.30
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_size_changed
.LBB20_19:                              # %if.end.34
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_item_set_size, .Lfunc_end20-gimp_item_set_size
	.cfi_endproc

	.globl	gimp_item_get_offset
	.align	16, 0x90
	.type	gimp_item_get_offset,@function
gimp_item_get_offset:                   # @gimp_item_get_offset
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_get_type
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
	movabsq	$.L__func__.gimp_item_get_offset, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_16
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB21_14
# BB#13:                                # %if.then.14
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB21_14:                              # %if.end.16
	cmpq	$0, -24(%rbp)
	je	.LBB21_16
# BB#15:                                # %if.then.18
	movq	-32(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB21_16:                              # %if.end.20
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_item_get_offset, .Lfunc_end21-gimp_item_get_offset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_sync_offset_node,@function
gimp_item_sync_offset_node:             # @gimp_item_sync_offset_node
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	-16(%rbp), %r8
	cvtsi2sdl	32(%r8), %xmm0
	movq	-16(%rbp), %r8
	cvtsi2sdl	36(%r8), %xmm1
	movb	$2, %al
	callq	gegl_node_set
.LBB22_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_item_sync_offset_node, .Lfunc_end22-gimp_item_sync_offset_node
	.cfi_endproc

	.globl	gimp_item_get_offset_x
	.align	16, 0x90
	.type	gimp_item_get_offset_x,@function
gimp_item_get_offset_x:                 # @gimp_item_get_offset_x
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_offset_x, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB23_13
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB23_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_item_get_offset_x, .Lfunc_end23-gimp_item_get_offset_x
	.cfi_endproc

	.globl	gimp_item_get_offset_y
	.align	16, 0x90
	.type	gimp_item_get_offset_y,@function
gimp_item_get_offset_y:                 # @gimp_item_get_offset_y
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_offset_y, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_13
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	36(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB24_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_item_get_offset_y, .Lfunc_end24-gimp_item_get_offset_y
	.cfi_endproc

	.globl	gimp_item_translate
	.align	16, 0x90
	.type	gimp_item_translate,@function
gimp_item_translate:                    # @gimp_item_translate
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_translate, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_18
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB25_14
# BB#13:                                # %if.then.15
	movl	$0, -20(%rbp)
.LBB25_14:                              # %if.end.16
	cmpl	$0, -20(%rbp)
	je	.LBB25_16
# BB#15:                                # %if.then.18
	movl	$20, %esi
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	456(%rax), %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB25_16:                              # %if.end.20
	movq	-32(%rbp), %rax
	movq	368(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	*%rax
	cmpl	$0, -20(%rbp)
	je	.LBB25_18
# BB#17:                                # %if.then.22
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB25_18:                              # %if.end.24
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_item_translate, .Lfunc_end25-gimp_item_translate
	.cfi_endproc

	.globl	gimp_item_get_image
	.align	16, 0x90
	.type	gimp_item_get_image,@function
gimp_item_get_image:                    # @gimp_item_get_image
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_image, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_13
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB26_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_item_get_image, .Lfunc_end26-gimp_item_get_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_item_check_scaling
	.align	16, 0x90
	.type	gimp_item_check_scaling,@function
gimp_item_check_scaling:                # @gimp_item_check_scaling
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_check_scaling, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB27_15
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -32(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -52(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	movb	%dl, -113(%rbp)         # 1-byte Spill
	jle	.LBB27_14
# BB#13:                                # %land.rhs
	cmpl	$0, -56(%rbp)
	setg	%al
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB27_14:                              # %land.end
	movb	-113(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB27_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_item_check_scaling, .Lfunc_end27-gimp_item_check_scaling
	.cfi_endproc

	.globl	gimp_item_scale
	.align	16, 0x90
	.type	gimp_item_scale,@function
gimp_item_scale:                        # @gimp_item_scale
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
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_scale, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_32
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB28_22
# BB#14:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB28_16
# BB#15:                                # %if.then.21
	movl	$0, -100(%rbp)
	jmp	.LBB28_21
.LBB28_16:                              # %if.else.22
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_19
# BB#17:                                # %land.lhs.true.25
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB28_19
# BB#18:                                # %if.then.29
	movl	$1, -100(%rbp)
	jmp	.LBB28_20
.LBB28_19:                              # %if.else.30
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB28_20:                              # %if.end.32
	jmp	.LBB28_21
.LBB28_21:                              # %if.end.33
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB28_23
.LBB28_22:                              # %if.then.36
	jmp	.LBB28_24
.LBB28_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_scale, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_32
.LBB28_24:                              # %if.end.38
	jmp	.LBB28_25
.LBB28_25:                              # %do.end.39
	cmpl	$1, -12(%rbp)
	jl	.LBB28_27
# BB#26:                                # %lor.lhs.false.41
	cmpl	$1, -16(%rbp)
	jge	.LBB28_28
.LBB28_27:                              # %if.then.43
	jmp	.LBB28_32
.LBB28_28:                              # %if.end.44
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB28_30
# BB#29:                                # %if.then.49
	movl	$21, %esi
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	464(%rax), %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB28_30:                              # %if.end.51
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-48(%rbp), %rax
	movq	376(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movq	-40(%rbp), %r10
	movq	%r10, (%rsp)
	callq	*%rax
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB28_32
# BB#31:                                # %if.then.56
	movq	-56(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB28_32:                              # %if.end.58
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_item_scale, .Lfunc_end28-gimp_item_scale
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_item_scale_by_factors
	.align	16, 0x90
	.type	gimp_item_scale_by_factors,@function
gimp_item_scale_by_factors:             # @gimp_item_scale_by_factors
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_scale_by_factors, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB29_38
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	jmp	.LBB29_13
.LBB29_13:                              # %do.body.11
	cmpq	$0, -48(%rbp)
	je	.LBB29_22
# BB#14:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB29_16
# BB#15:                                # %if.then.21
	movl	$0, -116(%rbp)
	jmp	.LBB29_21
.LBB29_16:                              # %if.else.22
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_19
# BB#17:                                # %land.lhs.true.25
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB29_19
# BB#18:                                # %if.then.29
	movl	$1, -116(%rbp)
	jmp	.LBB29_20
.LBB29_19:                              # %if.else.30
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB29_20:                              # %if.end.32
	jmp	.LBB29_21
.LBB29_21:                              # %if.end.33
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB29_23
.LBB29_22:                              # %if.then.36
	jmp	.LBB29_24
.LBB29_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_scale_by_factors, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB29_38
.LBB29_24:                              # %if.end.38
	jmp	.LBB29_25
.LBB29_25:                              # %do.end.39
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorps	%xmm0, %xmm0
	movq	%rax, -56(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB29_26
	jp	.LBB29_26
	jmp	.LBB29_27
.LBB29_26:                              # %lor.lhs.false.43
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB29_28
	jp	.LBB29_28
.LBB29_27:                              # %if.then.45
	movabsq	$.L.str.19, %rdi
	movabsq	$.L__func__.gimp_item_scale_by_factors, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB29_38
.LBB29_28:                              # %if.end.46
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB29_30
# BB#29:                                # %cond.true
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB29_31
.LBB29_30:                              # %cond.false
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
.LBB29_31:                              # %cond.end
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rcx
	cvtsi2sdl	36(%rcx), %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB29_33
# BB#32:                                # %cond.true.60
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB29_34
.LBB29_33:                              # %cond.false.65
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
.LBB29_34:                              # %cond.end.70
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-152(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -60(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-160(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB29_37
# BB#35:                                # %land.lhs.true.85
	cmpl	$0, -64(%rbp)
	je	.LBB29_37
# BB#36:                                # %if.then.88
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gimp_item_scale
	movl	$1, -4(%rbp)
	jmp	.LBB29_38
.LBB29_37:                              # %if.end.89
	movl	$0, -4(%rbp)
.LBB29_38:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_item_scale_by_factors, .Lfunc_end29-gimp_item_scale_by_factors
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB30_2
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
.LBB30_2:                               # %entry
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
.Lfunc_end30:
	.size	g_warning, .Lfunc_end30-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_item_scale_by_origin
	.align	16, 0x90
	.type	gimp_item_scale_by_origin,@function
gimp_item_scale_by_origin:              # @gimp_item_scale_by_origin
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_scale_by_origin, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_32
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	jmp	.LBB31_13
.LBB31_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB31_22
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB31_16
# BB#15:                                # %if.then.21
	movl	$0, -100(%rbp)
	jmp	.LBB31_21
.LBB31_16:                              # %if.else.22
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_19
# BB#17:                                # %land.lhs.true.25
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB31_19
# BB#18:                                # %if.then.29
	movl	$1, -100(%rbp)
	jmp	.LBB31_20
.LBB31_19:                              # %if.else.30
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB31_20:                              # %if.end.32
	jmp	.LBB31_21
.LBB31_21:                              # %if.end.33
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB31_23
.LBB31_22:                              # %if.then.36
	jmp	.LBB31_24
.LBB31_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_scale_by_origin, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_32
.LBB31_24:                              # %if.end.38
	jmp	.LBB31_25
.LBB31_25:                              # %do.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB31_27
# BB#26:                                # %lor.lhs.false.43
	cmpl	$0, -16(%rbp)
	jne	.LBB31_28
.LBB31_27:                              # %if.then.45
	movabsq	$.L.str.20, %rdi
	movabsq	$.L__func__.gimp_item_scale_by_origin, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB31_32
.LBB31_28:                              # %if.end.46
	cmpl	$0, -36(%rbp)
	je	.LBB31_30
# BB#29:                                # %if.then.48
	movq	-48(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	movsd	.LCPI31_0, %xmm0        # xmm0 = mem[0],zero
	subl	-12(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	cvtsi2sdl	36(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	movsd	.LCPI31_0, %xmm0        # xmm0 = mem[0],zero
	subl	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB31_31
.LBB31_30:                              # %if.else.59
	cvtsi2sdl	-12(%rbp), %xmm0
	movq	-48(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -52(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm0
	movq	-48(%rbp), %rdi
	cvtsi2sdl	36(%rdi), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -56(%rbp)
.LBB31_31:                              # %if.end.75
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gimp_item_scale
.LBB31_32:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_item_scale_by_origin, .Lfunc_end31-gimp_item_scale_by_origin
	.cfi_endproc

	.globl	gimp_item_resize
	.align	16, 0x90
	.type	gimp_item_resize,@function
gimp_item_resize:                       # @gimp_item_resize
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_resize, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_31
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	jmp	.LBB32_13
.LBB32_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB32_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB32_20
.LBB32_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB32_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB32_19
.LBB32_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB32_19:                              # %if.end.31
	jmp	.LBB32_20
.LBB32_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB32_22
# BB#21:                                # %if.then.35
	jmp	.LBB32_23
.LBB32_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_resize, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_31
.LBB32_23:                              # %if.end.37
	jmp	.LBB32_24
.LBB32_24:                              # %do.end.38
	cmpl	$1, -20(%rbp)
	jl	.LBB32_26
# BB#25:                                # %lor.lhs.false
	cmpl	$1, -24(%rbp)
	jge	.LBB32_27
.LBB32_26:                              # %if.then.41
	jmp	.LBB32_31
.LBB32_27:                              # %if.end.42
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB32_29
# BB#28:                                # %if.then.47
	movl	$22, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	472(%rax), %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB32_29:                              # %if.end.49
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	*%rax
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB32_31
# BB#30:                                # %if.then.54
	movq	-48(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB32_31:                              # %if.end.56
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_item_resize, .Lfunc_end32-gimp_item_resize
	.cfi_endproc

	.globl	gimp_item_flip
	.align	16, 0x90
	.type	gimp_item_flip,@function
gimp_item_flip:                         # @gimp_item_flip
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB33_8
.LBB33_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB33_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.8
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_flip, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB33_30
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	jmp	.LBB33_13
.LBB33_13:                              # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB33_15
# BB#14:                                # %if.then.14
	jmp	.LBB33_16
.LBB33_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_flip, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB33_30
.LBB33_16:                              # %if.end.16
	jmp	.LBB33_17
.LBB33_17:                              # %do.end.17
	jmp	.LBB33_18
.LBB33_18:                              # %do.body.18
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB33_20
# BB#19:                                # %if.then.27
	movl	$0, -100(%rbp)
	jmp	.LBB33_25
.LBB33_20:                              # %if.else.28
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_23
# BB#21:                                # %land.lhs.true.31
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB33_23
# BB#22:                                # %if.then.35
	movl	$1, -100(%rbp)
	jmp	.LBB33_24
.LBB33_23:                              # %if.else.36
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB33_24:                              # %if.end.38
	jmp	.LBB33_25
.LBB33_25:                              # %if.end.39
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB33_27
# BB#26:                                # %if.then.42
	jmp	.LBB33_28
.LBB33_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_flip, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB33_30
.LBB33_28:                              # %if.end.44
	jmp	.LBB33_29
.LBB33_29:                              # %do.end.45
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movl	$32, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	480(%rax), %rdx
	callq	gimp_image_undo_group_start
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-48(%rbp), %rax
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	callq	*%rax
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-56(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB33_30:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_item_flip, .Lfunc_end33-gimp_item_flip
	.cfi_endproc

	.globl	gimp_item_rotate
	.align	16, 0x90
	.type	gimp_item_rotate,@function
gimp_item_rotate:                       # @gimp_item_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_rotate, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB34_30
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	jmp	.LBB34_13
.LBB34_13:                              # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB34_15
# BB#14:                                # %if.then.14
	jmp	.LBB34_16
.LBB34_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_rotate, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB34_30
.LBB34_16:                              # %if.end.16
	jmp	.LBB34_17
.LBB34_17:                              # %do.end.17
	jmp	.LBB34_18
.LBB34_18:                              # %do.body.18
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB34_20
# BB#19:                                # %if.then.27
	movl	$0, -108(%rbp)
	jmp	.LBB34_25
.LBB34_20:                              # %if.else.28
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_23
# BB#21:                                # %land.lhs.true.31
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB34_23
# BB#22:                                # %if.then.35
	movl	$1, -108(%rbp)
	jmp	.LBB34_24
.LBB34_23:                              # %if.else.36
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB34_24:                              # %if.end.38
	jmp	.LBB34_25
.LBB34_25:                              # %if.end.39
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB34_27
# BB#26:                                # %if.then.42
	jmp	.LBB34_28
.LBB34_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_rotate, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB34_30
.LBB34_28:                              # %if.end.44
	jmp	.LBB34_29
.LBB34_29:                              # %do.end.45
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movl	$32, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	488(%rax), %rdx
	callq	gimp_image_undo_group_start
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-56(%rbp), %rax
	movq	400(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %ecx
	callq	*%rax
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-64(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB34_30:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_item_rotate, .Lfunc_end34-gimp_item_rotate
	.cfi_endproc

	.globl	gimp_item_transform
	.align	16, 0x90
	.type	gimp_item_transform,@function
gimp_item_transform:                    # @gimp_item_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_transform, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_48
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	jmp	.LBB35_13
.LBB35_13:                              # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB35_15
# BB#14:                                # %if.then.14
	jmp	.LBB35_16
.LBB35_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_transform, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_48
.LBB35_16:                              # %if.end.16
	jmp	.LBB35_17
.LBB35_17:                              # %do.end.17
	jmp	.LBB35_18
.LBB35_18:                              # %do.body.18
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB35_20
# BB#19:                                # %if.then.27
	movl	$0, -108(%rbp)
	jmp	.LBB35_25
.LBB35_20:                              # %if.else.28
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_23
# BB#21:                                # %land.lhs.true.31
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB35_23
# BB#22:                                # %if.then.35
	movl	$1, -108(%rbp)
	jmp	.LBB35_24
.LBB35_23:                              # %if.else.36
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB35_24:                              # %if.end.38
	jmp	.LBB35_25
.LBB35_25:                              # %if.end.39
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB35_27
# BB#26:                                # %if.then.42
	jmp	.LBB35_28
.LBB35_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_transform, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_48
.LBB35_28:                              # %if.end.44
	jmp	.LBB35_29
.LBB35_29:                              # %do.end.45
	jmp	.LBB35_30
.LBB35_30:                              # %do.body.46
	cmpq	$0, -24(%rbp)
	je	.LBB35_32
# BB#31:                                # %if.then.48
	jmp	.LBB35_33
.LBB35_32:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_transform, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_48
.LBB35_33:                              # %if.end.50
	jmp	.LBB35_34
.LBB35_34:                              # %do.end.51
	jmp	.LBB35_35
.LBB35_35:                              # %do.body.52
	cmpq	$0, -48(%rbp)
	je	.LBB35_44
# BB#36:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB35_38
# BB#37:                                # %if.then.62
	movl	$0, -132(%rbp)
	jmp	.LBB35_43
.LBB35_38:                              # %if.else.63
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_41
# BB#39:                                # %land.lhs.true.66
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB35_41
# BB#40:                                # %if.then.70
	movl	$1, -132(%rbp)
	jmp	.LBB35_42
.LBB35_41:                              # %if.else.71
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB35_42:                              # %if.end.73
	jmp	.LBB35_43
.LBB35_43:                              # %if.end.74
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB35_45
.LBB35_44:                              # %if.then.77
	jmp	.LBB35_46
.LBB35_45:                              # %if.else.78
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_transform, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_48
.LBB35_46:                              # %if.end.79
	jmp	.LBB35_47
.LBB35_47:                              # %do.end.80
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movl	$32, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	496(%rax), %rdx
	callq	gimp_image_undo_group_start
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-56(%rbp), %rax
	movq	408(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %r10d
	movq	-48(%rbp), %r11
	movl	%r10d, (%rsp)
	movq	%r11, 8(%rsp)
	callq	*%rax
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-64(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB35_48:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_item_transform, .Lfunc_end35-gimp_item_transform
	.cfi_endproc

	.globl	gimp_item_stroke
	.align	16, 0x90
	.type	gimp_item_stroke,@function
gimp_item_stroke:                       # @gimp_item_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.4
	movl	$1, -108(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.5
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.7
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.9
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stroke, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_97
.LBB36_11:                              # %if.end.11
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	jmp	.LBB36_13
.LBB36_13:                              # %do.body.12
	movq	-16(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB36_15
# BB#14:                                # %if.then.15
	jmp	.LBB36_16
.LBB36_15:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stroke, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_97
.LBB36_16:                              # %if.end.17
	jmp	.LBB36_17
.LBB36_17:                              # %do.end.18
	jmp	.LBB36_18
.LBB36_18:                              # %do.body.19
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB36_20
# BB#19:                                # %if.then.28
	movl	$0, -132(%rbp)
	jmp	.LBB36_25
.LBB36_20:                              # %if.else.29
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_23
# BB#21:                                # %land.lhs.true.32
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB36_23
# BB#22:                                # %if.then.36
	movl	$1, -132(%rbp)
	jmp	.LBB36_24
.LBB36_23:                              # %if.else.37
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB36_24:                              # %if.end.39
	jmp	.LBB36_25
.LBB36_25:                              # %if.end.40
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB36_27
# BB#26:                                # %if.then.43
	jmp	.LBB36_28
.LBB36_27:                              # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stroke, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_97
.LBB36_28:                              # %if.end.45
	jmp	.LBB36_29
.LBB36_29:                              # %do.end.46
	jmp	.LBB36_30
.LBB36_30:                              # %do.body.47
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB36_32
# BB#31:                                # %if.then.52
	jmp	.LBB36_33
.LBB36_32:                              # %if.else.53
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stroke, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_97
.LBB36_33:                              # %if.end.54
	jmp	.LBB36_34
.LBB36_34:                              # %do.end.55
	jmp	.LBB36_35
.LBB36_35:                              # %do.body.56
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB36_37
# BB#36:                                # %if.then.65
	movl	$0, -156(%rbp)
	jmp	.LBB36_42
.LBB36_37:                              # %if.else.66
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_40
# BB#38:                                # %land.lhs.true.69
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB36_40
# BB#39:                                # %if.then.73
	movl	$1, -156(%rbp)
	jmp	.LBB36_41
.LBB36_40:                              # %if.else.74
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB36_41:                              # %if.end.76
	jmp	.LBB36_42
.LBB36_42:                              # %if.end.77
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB36_44
# BB#43:                                # %if.then.80
	jmp	.LBB36_45
.LBB36_44:                              # %if.else.81
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stroke, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_97
.LBB36_45:                              # %if.end.82
	jmp	.LBB36_46
.LBB36_46:                              # %do.end.83
	jmp	.LBB36_47
.LBB36_47:                              # %do.body.84
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_stroke_options_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB36_49
# BB#48:                                # %if.then.93
	movl	$0, -180(%rbp)
	jmp	.LBB36_54
.LBB36_49:                              # %if.else.94
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_52
# BB#50:                                # %land.lhs.true.97
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB36_52
# BB#51:                                # %if.then.101
	movl	$1, -180(%rbp)
	jmp	.LBB36_53
.LBB36_52:                              # %if.else.102
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB36_53:                              # %if.end.104
	jmp	.LBB36_54
.LBB36_54:                              # %if.end.105
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB36_56
# BB#55:                                # %if.then.108
	jmp	.LBB36_57
.LBB36_56:                              # %if.else.109
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stroke, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_97
.LBB36_57:                              # %if.end.110
	jmp	.LBB36_58
.LBB36_58:                              # %do.end.111
	jmp	.LBB36_59
.LBB36_59:                              # %do.body.112
	cmpq	$0, -48(%rbp)
	je	.LBB36_68
# BB#60:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB36_62
# BB#61:                                # %if.then.122
	movl	$0, -204(%rbp)
	jmp	.LBB36_67
.LBB36_62:                              # %if.else.123
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_65
# BB#63:                                # %land.lhs.true.126
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB36_65
# BB#64:                                # %if.then.130
	movl	$1, -204(%rbp)
	jmp	.LBB36_66
.LBB36_65:                              # %if.else.131
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB36_66:                              # %if.end.133
	jmp	.LBB36_67
.LBB36_67:                              # %if.end.134
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB36_69
.LBB36_68:                              # %if.then.137
	jmp	.LBB36_70
.LBB36_69:                              # %if.else.138
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stroke, %rsi
	movabsq	$.L.str.26, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_97
.LBB36_70:                              # %if.end.139
	jmp	.LBB36_71
.LBB36_71:                              # %do.end.140
	jmp	.LBB36_72
.LBB36_72:                              # %do.body.141
	cmpq	$0, -64(%rbp)
	je	.LBB36_81
# BB#73:                                # %lor.lhs.false.143
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB36_75
# BB#74:                                # %if.then.152
	movl	$0, -228(%rbp)
	jmp	.LBB36_80
.LBB36_75:                              # %if.else.153
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_78
# BB#76:                                # %land.lhs.true.156
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB36_78
# BB#77:                                # %if.then.160
	movl	$1, -228(%rbp)
	jmp	.LBB36_79
.LBB36_78:                              # %if.else.161
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB36_79:                              # %if.end.163
	jmp	.LBB36_80
.LBB36_80:                              # %if.end.164
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB36_82
.LBB36_81:                              # %if.then.167
	jmp	.LBB36_83
.LBB36_82:                              # %if.else.168
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stroke, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_97
.LBB36_83:                              # %if.end.169
	jmp	.LBB36_84
.LBB36_84:                              # %do.end.170
	jmp	.LBB36_85
.LBB36_85:                              # %do.body.171
	cmpq	$0, -72(%rbp)
	je	.LBB36_87
# BB#86:                                # %lor.lhs.false.173
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB36_88
.LBB36_87:                              # %if.then.175
	jmp	.LBB36_89
.LBB36_88:                              # %if.else.176
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stroke, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_97
.LBB36_89:                              # %if.end.177
	jmp	.LBB36_90
.LBB36_90:                              # %do.end.178
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, 416(%rax)
	je	.LBB36_96
# BB#91:                                # %if.then.181
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -240(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_stroke_options_prepare
	cmpl	$0, -52(%rbp)
	je	.LBB36_93
# BB#92:                                # %if.then.185
	movl	$33, %esi
	movq	-240(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	512(%rax), %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB36_93:                              # %if.end.187
	movq	-80(%rbp), %rax
	movq	416(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	callq	*%rax
	movl	%eax, -84(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB36_95
# BB#94:                                # %if.then.191
	movq	-240(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB36_95:                              # %if.end.193
	movq	-40(%rbp), %rdi
	callq	gimp_stroke_options_finish
.LBB36_96:                              # %if.end.194
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB36_97:                              # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_item_stroke, .Lfunc_end36-gimp_item_stroke
	.cfi_endproc

	.globl	gimp_item_to_selection
	.align	16, 0x90
	.type	gimp_item_to_selection,@function
gimp_item_to_selection:                 # @gimp_item_to_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_to_selection, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB37_19
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	jmp	.LBB37_13
.LBB37_13:                              # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB37_15
# BB#14:                                # %if.then.14
	jmp	.LBB37_16
.LBB37_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_to_selection, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB37_19
.LBB37_16:                              # %if.end.16
	jmp	.LBB37_17
.LBB37_17:                              # %do.end.17
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 424(%rax)
	je	.LBB37_19
# BB#18:                                # %if.then.20
	movq	-48(%rbp), %rax
	movq	424(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	*%rax
.LBB37_19:                              # %if.end.22
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_item_to_selection, .Lfunc_end37-gimp_item_to_selection
	.cfi_endproc

	.globl	gimp_item_get_node
	.align	16, 0x90
	.type	gimp_item_get_node,@function
gimp_item_get_node:                     # @gimp_item_get_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB38_8
.LBB38_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB38_7
.LBB38_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB38_7:                               # %if.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.8
	jmp	.LBB38_11
.LBB38_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_node, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB38_15
.LBB38_11:                              # %if.end.10
	jmp	.LBB38_12
.LBB38_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB38_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB38_15
.LBB38_14:                              # %if.end.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	432(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB38_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_item_get_node, .Lfunc_end38-gimp_item_get_node
	.cfi_endproc

	.globl	gimp_item_peek_node
	.align	16, 0x90
	.type	gimp_item_peek_node,@function
gimp_item_peek_node:                    # @gimp_item_peek_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB39_8
.LBB39_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB39_7
.LBB39_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB39_7:                               # %if.end
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB39_10
# BB#9:                                 # %if.then.8
	jmp	.LBB39_11
.LBB39_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_peek_node, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB39_13
.LBB39_11:                              # %if.end.10
	jmp	.LBB39_12
.LBB39_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB39_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_item_peek_node, .Lfunc_end39-gimp_item_peek_node
	.cfi_endproc

	.globl	gimp_item_get_offset_node
	.align	16, 0x90
	.type	gimp_item_get_offset_node,@function
gimp_item_get_offset_node:              # @gimp_item_get_offset_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB40_8
.LBB40_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB40_7:                               # %if.end
	jmp	.LBB40_8
.LBB40_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB40_10
# BB#9:                                 # %if.then.8
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_offset_node, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB40_15
.LBB40_11:                              # %if.end.10
	jmp	.LBB40_12
.LBB40_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB40_14
# BB#13:                                # %if.then.14
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_node
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rcx
	movabsq	$.L.str.30, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm0
	movq	-24(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm1
	movb	$2, %al
	callq	gegl_node_new_child
	movq	-24(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB40_14:                              # %if.end.20
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB40_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_item_get_offset_node, .Lfunc_end40-gimp_item_get_offset_node
	.cfi_endproc

	.globl	gimp_item_get_ID
	.align	16, 0x90
	.type	gimp_item_get_ID,@function
gimp_item_get_ID:                       # @gimp_item_get_ID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB41_8
.LBB41_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB41_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB41_10
# BB#9:                                 # %if.then.8
	jmp	.LBB41_11
.LBB41_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_ID, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB41_13
.LBB41_11:                              # %if.end.10
	jmp	.LBB41_12
.LBB41_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB41_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_item_get_ID, .Lfunc_end41-gimp_item_get_ID
	.cfi_endproc

	.globl	gimp_item_get_by_ID
	.align	16, 0x90
	.type	gimp_item_get_by_ID,@function
gimp_item_get_by_ID:                    # @gimp_item_get_by_ID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB42_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB42_8
.LBB42_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB42_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB42_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB42_7
.LBB42_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB42_7:                               # %if.end
	jmp	.LBB42_8
.LBB42_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB42_10
# BB#9:                                 # %if.then.8
	jmp	.LBB42_11
.LBB42_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_by_ID, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB42_15
.LBB42_11:                              # %if.end.10
	jmp	.LBB42_12
.LBB42_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 408(%rax)
	jne	.LBB42_14
# BB#13:                                # %if.then.12
	movq	$0, -8(%rbp)
	jmp	.LBB42_15
.LBB42_14:                              # %if.end.13
	movq	-16(%rbp), %rax
	movq	408(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_id_table_lookup
	movq	%rax, -8(%rbp)
.LBB42_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_item_get_by_ID, .Lfunc_end42-gimp_item_get_by_ID
	.cfi_endproc

	.globl	gimp_item_get_tattoo
	.align	16, 0x90
	.type	gimp_item_get_tattoo,@function
gimp_item_get_tattoo:                   # @gimp_item_get_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB43_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB43_8
.LBB43_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB43_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB43_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB43_7
.LBB43_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB43_7:                               # %if.end
	jmp	.LBB43_8
.LBB43_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB43_10
# BB#9:                                 # %if.then.8
	jmp	.LBB43_11
.LBB43_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_tattoo, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB43_13
.LBB43_11:                              # %if.end.10
	jmp	.LBB43_12
.LBB43_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	4(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB43_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_item_get_tattoo, .Lfunc_end43-gimp_item_get_tattoo
	.cfi_endproc

	.globl	gimp_item_set_tattoo
	.align	16, 0x90
	.type	gimp_item_set_tattoo,@function
gimp_item_set_tattoo:                   # @gimp_item_set_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB44_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB44_8
.LBB44_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB44_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB44_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB44_7
.LBB44_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB44_7:                               # %if.end
	jmp	.LBB44_8
.LBB44_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB44_10
# BB#9:                                 # %if.then.8
	jmp	.LBB44_11
.LBB44_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_tattoo, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB44_13
.LBB44_11:                              # %if.end.10
	jmp	.LBB44_12
.LBB44_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	%edx, 4(%rax)
.LBB44_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_item_set_tattoo, .Lfunc_end44-gimp_item_set_tattoo
	.cfi_endproc

	.globl	gimp_item_set_image
	.align	16, 0x90
	.type	gimp_item_set_image,@function
gimp_item_set_image:                    # @gimp_item_set_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB45_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB45_8
.LBB45_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB45_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB45_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB45_7
.LBB45_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB45_7:                               # %if.end
	jmp	.LBB45_8
.LBB45_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB45_10
# BB#9:                                 # %if.then.8
	jmp	.LBB45_11
.LBB45_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_image, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB45_42
.LBB45_11:                              # %if.end.10
	jmp	.LBB45_12
.LBB45_12:                              # %do.end
	jmp	.LBB45_13
.LBB45_13:                              # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB45_15
# BB#14:                                # %if.then.14
	jmp	.LBB45_16
.LBB45_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_image, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB45_42
.LBB45_16:                              # %if.end.16
	jmp	.LBB45_17
.LBB45_17:                              # %do.end.17
	jmp	.LBB45_18
.LBB45_18:                              # %do.body.18
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_removed
	cmpl	$0, %eax
	jne	.LBB45_20
# BB#19:                                # %if.then.21
	jmp	.LBB45_21
.LBB45_20:                              # %if.else.22
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_image, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB45_42
.LBB45_21:                              # %if.end.23
	jmp	.LBB45_22
.LBB45_22:                              # %do.end.24
	jmp	.LBB45_23
.LBB45_23:                              # %do.body.25
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB45_25
# BB#24:                                # %if.then.34
	movl	$0, -68(%rbp)
	jmp	.LBB45_30
.LBB45_25:                              # %if.else.35
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB45_28
# BB#26:                                # %land.lhs.true.38
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB45_28
# BB#27:                                # %if.then.42
	movl	$1, -68(%rbp)
	jmp	.LBB45_29
.LBB45_28:                              # %if.else.43
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB45_29:                              # %if.end.45
	jmp	.LBB45_30
.LBB45_30:                              # %if.end.46
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB45_32
# BB#31:                                # %if.then.49
	jmp	.LBB45_33
.LBB45_32:                              # %if.else.50
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_image, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB45_42
.LBB45_33:                              # %if.end.51
	jmp	.LBB45_34
.LBB45_34:                              # %do.end.52
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	cmpq	8(%rsi), %rax
	jne	.LBB45_36
# BB#35:                                # %if.then.57
	jmp	.LBB45_42
.LBB45_36:                              # %if.end.58
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB45_38
# BB#37:                                # %if.then.61
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	408(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_id_table_insert
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB45_38:                              # %if.end.65
	movq	-24(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB45_40
# BB#39:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB45_41
.LBB45_40:                              # %if.then.69
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_new_tattoo
	movq	-24(%rbp), %rdi
	movl	%eax, 4(%rdi)
.LBB45_41:                              # %if.end.72
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB45_42:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_item_set_image, .Lfunc_end45-gimp_item_set_image
	.cfi_endproc

	.globl	gimp_item_replace_item
	.align	16, 0x90
	.type	gimp_item_replace_item,@function
gimp_item_replace_item:                 # @gimp_item_replace_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB46_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB46_8
.LBB46_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB46_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB46_7
.LBB46_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB46_7:                               # %if.end
	jmp	.LBB46_8
.LBB46_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB46_10
# BB#9:                                 # %if.then.8
	jmp	.LBB46_11
.LBB46_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_replace_item, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_37
.LBB46_11:                              # %if.end.10
	jmp	.LBB46_12
.LBB46_12:                              # %do.end
	jmp	.LBB46_13
.LBB46_13:                              # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB46_15
# BB#14:                                # %if.then.14
	jmp	.LBB46_16
.LBB46_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_replace_item, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_37
.LBB46_16:                              # %if.end.16
	jmp	.LBB46_17
.LBB46_17:                              # %do.end.17
	jmp	.LBB46_18
.LBB46_18:                              # %do.body.18
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_removed
	cmpl	$0, %eax
	jne	.LBB46_20
# BB#19:                                # %if.then.21
	jmp	.LBB46_21
.LBB46_20:                              # %if.else.22
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_replace_item, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_37
.LBB46_21:                              # %if.end.23
	jmp	.LBB46_22
.LBB46_22:                              # %do.end.24
	jmp	.LBB46_23
.LBB46_23:                              # %do.body.25
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB46_25
# BB#24:                                # %if.then.34
	movl	$0, -76(%rbp)
	jmp	.LBB46_30
.LBB46_25:                              # %if.else.35
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_28
# BB#26:                                # %land.lhs.true.38
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB46_28
# BB#27:                                # %if.then.42
	movl	$1, -76(%rbp)
	jmp	.LBB46_29
.LBB46_28:                              # %if.else.43
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB46_29:                              # %if.end.45
	jmp	.LBB46_30
.LBB46_30:                              # %if.end.46
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB46_32
# BB#31:                                # %if.then.49
	jmp	.LBB46_33
.LBB46_32:                              # %if.else.50
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_replace_item, %rsi
	movabsq	$.L.str.35, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_37
.LBB46_33:                              # %if.end.51
	jmp	.LBB46_34
.LBB46_34:                              # %do.end.52
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB46_36
# BB#35:                                # %if.then.59
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	32(%rax), %rax
	movq	408(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_id_table_remove
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB46_36:                              # %if.end.63
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_ID
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	32(%rax), %rax
	movq	408(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movq	-8(%rbp), %rdi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, %esi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	gimp_id_table_replace
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_item_get_image
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_set_image
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_item_set_tattoo
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_item_set_tattoo
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_item_set_offset
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_item_set_size
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_item_get_visible
	xorl	%edx, %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_item_set_visible
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_item_get_linked
	xorl	%edx, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_item_set_linked
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_item_get_lock_content
	xorl	%edx, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_item_set_lock_content
.LBB46_37:                              # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_item_replace_item, .Lfunc_end46-gimp_item_replace_item
	.cfi_endproc

	.globl	gimp_item_set_visible
	.align	16, 0x90
	.type	gimp_item_set_visible,@function
gimp_item_set_visible:                  # @gimp_item_set_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB47_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB47_8
.LBB47_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB47_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB47_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB47_7
.LBB47_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB47_7:                               # %if.end
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB47_10
# BB#9:                                 # %if.then.8
	jmp	.LBB47_11
.LBB47_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_visible, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB47_19
.LBB47_11:                              # %if.end.10
	jmp	.LBB47_12
.LBB47_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_visible
	cmpl	-12(%rbp), %eax
	je	.LBB47_19
# BB#13:                                # %if.then.14
	cmpl	$0, -16(%rbp)
	je	.LBB47_18
# BB#14:                                # %land.lhs.true.16
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB47_18
# BB#15:                                # %if.then.19
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB47_17
# BB#16:                                # %if.then.23
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	gimp_image_undo_push_item_visibility
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB47_17:                              # %if.end.25
	jmp	.LBB47_18
.LBB47_18:                              # %if.end.26
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%edx, %edx
	movl	-60(%rbp), %r8d         # 4-byte Reload
	movb	%r8b, %r9b
	movb	40(%rax), %r10b
	andb	$1, %r9b
	andb	$-2, %r10b
	orb	%r9b, %r10b
	movb	%r10b, 40(%rax)
	movq	-8(%rbp), %rax
	movl	gimp_item_signals+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB47_19:                              # %if.end.31
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_item_set_visible, .Lfunc_end47-gimp_item_set_visible
	.cfi_endproc

	.globl	gimp_item_get_visible
	.align	16, 0x90
	.type	gimp_item_get_visible,@function
gimp_item_get_visible:                  # @gimp_item_get_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB48_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB48_8
.LBB48_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB48_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB48_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB48_7
.LBB48_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB48_7:                               # %if.end
	jmp	.LBB48_8
.LBB48_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB48_10
# BB#9:                                 # %if.then.8
	jmp	.LBB48_11
.LBB48_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_visible, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB48_13
.LBB48_11:                              # %if.end.10
	jmp	.LBB48_12
.LBB48_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movb	40(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB48_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_item_get_visible, .Lfunc_end48-gimp_item_get_visible
	.cfi_endproc

	.globl	gimp_item_set_linked
	.align	16, 0x90
	.type	gimp_item_set_linked,@function
gimp_item_set_linked:                   # @gimp_item_set_linked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB49_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB49_8
.LBB49_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB49_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB49_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB49_7
.LBB49_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB49_7:                               # %if.end
	jmp	.LBB49_8
.LBB49_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB49_10
# BB#9:                                 # %if.then.8
	jmp	.LBB49_11
.LBB49_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_linked, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB49_19
.LBB49_11:                              # %if.end.10
	jmp	.LBB49_12
.LBB49_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	-12(%rbp), %eax
	je	.LBB49_19
# BB#13:                                # %if.then.14
	cmpl	$0, -16(%rbp)
	je	.LBB49_18
# BB#14:                                # %land.lhs.true.16
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB49_18
# BB#15:                                # %if.then.19
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB49_17
# BB#16:                                # %if.then.23
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	gimp_image_undo_push_item_linked
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB49_17:                              # %if.end.25
	jmp	.LBB49_18
.LBB49_18:                              # %if.end.26
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%edx, %edx
	movl	-60(%rbp), %r8d         # 4-byte Reload
	movb	%r8b, %r9b
	movb	40(%rax), %r10b
	andb	$1, %r9b
	shlb	$1, %r9b
	andb	$-3, %r10b
	orb	%r9b, %r10b
	movb	%r10b, 40(%rax)
	movq	-8(%rbp), %rax
	movl	gimp_item_signals+8, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB49_19:                              # %if.end.31
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_item_set_linked, .Lfunc_end49-gimp_item_set_linked
	.cfi_endproc

	.globl	gimp_item_get_linked
	.align	16, 0x90
	.type	gimp_item_get_linked,@function
gimp_item_get_linked:                   # @gimp_item_get_linked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB50_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB50_8
.LBB50_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB50_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB50_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB50_7
.LBB50_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB50_7:                               # %if.end
	jmp	.LBB50_8
.LBB50_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB50_10
# BB#9:                                 # %if.then.8
	jmp	.LBB50_11
.LBB50_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_linked, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB50_13
.LBB50_11:                              # %if.end.10
	jmp	.LBB50_12
.LBB50_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB50_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_item_get_linked, .Lfunc_end50-gimp_item_get_linked
	.cfi_endproc

	.globl	gimp_item_set_lock_content
	.align	16, 0x90
	.type	gimp_item_set_lock_content,@function
gimp_item_set_lock_content:             # @gimp_item_set_lock_content
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB51_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB51_8
.LBB51_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB51_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB51_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB51_7
.LBB51_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB51_7:                               # %if.end
	jmp	.LBB51_8
.LBB51_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB51_10
# BB#9:                                 # %if.then.8
	jmp	.LBB51_11
.LBB51_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_lock_content, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB51_22
.LBB51_11:                              # %if.end.10
	jmp	.LBB51_12
.LBB51_12:                              # %do.end
	jmp	.LBB51_13
.LBB51_13:                              # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_can_lock_content
	cmpl	$0, %eax
	je	.LBB51_15
# BB#14:                                # %if.then.14
	jmp	.LBB51_16
.LBB51_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_lock_content, %rsi
	movabsq	$.L.str.45, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB51_22
.LBB51_16:                              # %if.end.16
	jmp	.LBB51_17
.LBB51_17:                              # %do.end.17
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_lock_content
	cmpl	-12(%rbp), %eax
	je	.LBB51_22
# BB#18:                                # %if.then.21
	cmpl	$0, -16(%rbp)
	je	.LBB51_21
# BB#19:                                # %land.lhs.true.23
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB51_21
# BB#20:                                # %if.then.26
	jmp	.LBB51_21
.LBB51_21:                              # %if.end.27
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%edx, %edx
	movl	-44(%rbp), %r8d         # 4-byte Reload
	movb	%r8b, %r9b
	movb	40(%rax), %r10b
	andb	$1, %r9b
	shlb	$2, %r9b
	andb	$-5, %r10b
	orb	%r9b, %r10b
	movb	%r10b, 40(%rax)
	movq	-8(%rbp), %rax
	movl	gimp_item_signals+12, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB51_22:                              # %if.end.32
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_item_set_lock_content, .Lfunc_end51-gimp_item_set_lock_content
	.cfi_endproc

	.globl	gimp_item_get_lock_content
	.align	16, 0x90
	.type	gimp_item_get_lock_content,@function
gimp_item_get_lock_content:             # @gimp_item_get_lock_content
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB52_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB52_8
.LBB52_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB52_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB52_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB52_7
.LBB52_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB52_7:                               # %if.end
	jmp	.LBB52_8
.LBB52_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB52_10
# BB#9:                                 # %if.then.8
	jmp	.LBB52_11
.LBB52_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_lock_content, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB52_13
.LBB52_11:                              # %if.end.10
	jmp	.LBB52_12
.LBB52_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movb	40(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB52_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_item_get_lock_content, .Lfunc_end52-gimp_item_get_lock_content
	.cfi_endproc

	.globl	gimp_item_set_parasites
	.align	16, 0x90
	.type	gimp_item_set_parasites,@function
gimp_item_set_parasites:                # @gimp_item_set_parasites
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB53_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB53_8
.LBB53_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB53_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB53_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB53_7
.LBB53_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB53_7:                               # %if.end
	jmp	.LBB53_8
.LBB53_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB53_10
# BB#9:                                 # %if.then.8
	jmp	.LBB53_11
.LBB53_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_parasites, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB53_26
.LBB53_11:                              # %if.end.10
	jmp	.LBB53_12
.LBB53_12:                              # %do.end
	jmp	.LBB53_13
.LBB53_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_parasite_list_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB53_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB53_20
.LBB53_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB53_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB53_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB53_19
.LBB53_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB53_19:                              # %if.end.31
	jmp	.LBB53_20
.LBB53_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB53_22
# BB#21:                                # %if.then.35
	jmp	.LBB53_23
.LBB53_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_set_parasites, %rsi
	movabsq	$.L.str.36, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB53_26
.LBB53_23:                              # %if.end.37
	jmp	.LBB53_24
.LBB53_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	cmpq	16(%rsi), %rax
	je	.LBB53_26
# BB#25:                                # %if.then.43
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	movq	%rax, 16(%rdi)
.LBB53_26:                              # %if.end.47
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_item_set_parasites, .Lfunc_end53-gimp_item_set_parasites
	.cfi_endproc

	.globl	gimp_item_get_parasites
	.align	16, 0x90
	.type	gimp_item_get_parasites,@function
gimp_item_get_parasites:                # @gimp_item_get_parasites
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB54_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB54_8
.LBB54_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB54_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB54_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB54_7
.LBB54_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB54_7:                               # %if.end
	jmp	.LBB54_8
.LBB54_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB54_10
# BB#9:                                 # %if.then.8
	jmp	.LBB54_11
.LBB54_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_get_parasites, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB54_13
.LBB54_11:                              # %if.end.10
	jmp	.LBB54_12
.LBB54_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB54_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_item_get_parasites, .Lfunc_end54-gimp_item_get_parasites
	.cfi_endproc

	.globl	gimp_item_parasite_attach
	.align	16, 0x90
	.type	gimp_item_parasite_attach,@function
gimp_item_parasite_attach:              # @gimp_item_parasite_attach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB55_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB55_8
.LBB55_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB55_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB55_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB55_7
.LBB55_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB55_7:                               # %if.end
	jmp	.LBB55_8
.LBB55_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB55_10
# BB#9:                                 # %if.then.8
	jmp	.LBB55_11
.LBB55_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_parasite_attach, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB55_35
.LBB55_11:                              # %if.end.10
	jmp	.LBB55_12
.LBB55_12:                              # %do.end
	jmp	.LBB55_13
.LBB55_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB55_15
# BB#14:                                # %if.then.13
	jmp	.LBB55_16
.LBB55_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_parasite_attach, %rsi
	movabsq	$.L.str.37, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB55_35
.LBB55_16:                              # %if.end.15
	jmp	.LBB55_17
.LBB55_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -56(%rbp)
	movq	8(%rax), %rsi
	movq	%rsi, -48(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB55_19
# BB#18:                                # %if.then.21
	movl	$0, -20(%rbp)
.LBB55_19:                              # %if.end.22
	cmpl	$0, -20(%rbp)
	je	.LBB55_27
# BB#20:                                # %if.then.24
	leaq	-56(%rbp), %rdi
	callq	gimp_parasite_is_undoable
	cmpl	$0, %eax
	je	.LBB55_22
# BB#21:                                # %if.then.27
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.38, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movl	$34, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	leaq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_push_item_parasite
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB55_26
.LBB55_22:                              # %if.else.32
	leaq	-56(%rbp), %rdi
	callq	gimp_parasite_is_persistent
	cmpl	$0, %eax
	je	.LBB55_25
# BB#23:                                # %land.lhs.true.35
	leaq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_parasite_name
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_parasite_find
	leaq	-56(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_parasite_compare
	cmpl	$0, %eax
	jne	.LBB55_25
# BB#24:                                # %if.then.40
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.39, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_cantundo
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB55_25:                              # %if.end.44
	jmp	.LBB55_26
.LBB55_26:                              # %if.end.45
	jmp	.LBB55_27
.LBB55_27:                              # %if.end.46
	leaq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_parasite_list_add
	leaq	-56(%rbp), %rdi
	movl	$32768, %ecx            # imm = 0x8000
	movl	%ecx, %esi
	callq	gimp_parasite_has_flag
	cmpl	$0, %eax
	je	.LBB55_29
# BB#28:                                # %if.then.49
	leaq	-56(%rbp), %rdi
	callq	gimp_parasite_shift_parent
	leaq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_image_parasite_attach
	jmp	.LBB55_32
.LBB55_29:                              # %if.else.51
	leaq	-56(%rbp), %rdi
	movl	$8388608, %eax          # imm = 0x800000
	movl	%eax, %esi
	callq	gimp_parasite_has_flag
	cmpl	$0, %eax
	je	.LBB55_31
# BB#30:                                # %if.then.54
	leaq	-56(%rbp), %rdi
	callq	gimp_parasite_shift_parent
	leaq	-56(%rbp), %rdi
	callq	gimp_parasite_shift_parent
	leaq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_parasite_attach
.LBB55_31:                              # %if.end.56
	jmp	.LBB55_32
.LBB55_32:                              # %if.end.57
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB55_35
# BB#33:                                # %land.lhs.true.60
	leaq	-56(%rbp), %rdi
	callq	gimp_parasite_is_undoable
	cmpl	$0, %eax
	je	.LBB55_35
# BB#34:                                # %if.then.63
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB55_35:                              # %if.end.66
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_item_parasite_attach, .Lfunc_end55-gimp_item_parasite_attach
	.cfi_endproc

	.globl	gimp_item_parasite_find
	.align	16, 0x90
	.type	gimp_item_parasite_find,@function
gimp_item_parasite_find:                # @gimp_item_parasite_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB56_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB56_8
.LBB56_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB56_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB56_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB56_7
.LBB56_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB56_7:                               # %if.end
	jmp	.LBB56_8
.LBB56_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB56_10
# BB#9:                                 # %if.then.8
	jmp	.LBB56_11
.LBB56_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_parasite_find, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB56_13
.LBB56_11:                              # %if.end.10
	jmp	.LBB56_12
.LBB56_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_parasite_list_find
	movq	%rax, -8(%rbp)
.LBB56_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_item_parasite_find, .Lfunc_end56-gimp_item_parasite_find
	.cfi_endproc

	.globl	gimp_item_parasite_detach
	.align	16, 0x90
	.type	gimp_item_parasite_detach,@function
gimp_item_parasite_detach:              # @gimp_item_parasite_detach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB57_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB57_8
.LBB57_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB57_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB57_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB57_7
.LBB57_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB57_7:                               # %if.end
	jmp	.LBB57_8
.LBB57_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB57_10
# BB#9:                                 # %if.then.8
	jmp	.LBB57_11
.LBB57_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_parasite_detach, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB57_29
.LBB57_11:                              # %if.end.10
	jmp	.LBB57_12
.LBB57_12:                              # %do.end
	jmp	.LBB57_13
.LBB57_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB57_15
# BB#14:                                # %if.then.13
	jmp	.LBB57_16
.LBB57_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_parasite_detach, %rsi
	movabsq	$.L.str.40, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB57_29
.LBB57_16:                              # %if.end.15
	jmp	.LBB57_17
.LBB57_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_parasite_list_find
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB57_19
# BB#18:                                # %if.then.21
	jmp	.LBB57_29
.LBB57_19:                              # %if.end.22
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB57_21
# BB#20:                                # %if.then.25
	movl	$0, -20(%rbp)
.LBB57_21:                              # %if.end.26
	cmpl	$0, -20(%rbp)
	je	.LBB57_28
# BB#22:                                # %if.then.28
	movq	-40(%rbp), %rdi
	callq	gimp_parasite_is_undoable
	cmpl	$0, %eax
	je	.LBB57_24
# BB#23:                                # %if.then.31
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.41, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gimp_parasite_name
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_image_undo_push_item_parasite_remove
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB57_27
.LBB57_24:                              # %if.else.35
	movq	-40(%rbp), %rdi
	callq	gimp_parasite_is_persistent
	cmpl	$0, %eax
	je	.LBB57_26
# BB#25:                                # %if.then.38
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.41, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_cantundo
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB57_26:                              # %if.end.42
	jmp	.LBB57_27
.LBB57_27:                              # %if.end.43
	jmp	.LBB57_28
.LBB57_28:                              # %if.end.44
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_parasite_list_remove
.LBB57_29:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_item_parasite_detach, .Lfunc_end57-gimp_item_parasite_detach
	.cfi_endproc

	.globl	gimp_item_parasite_list
	.align	16, 0x90
	.type	gimp_item_parasite_list,@function
gimp_item_parasite_list:                # @gimp_item_parasite_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB58_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB58_8
.LBB58_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB58_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB58_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB58_7
.LBB58_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB58_7:                               # %if.end
	jmp	.LBB58_8
.LBB58_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB58_10
# BB#9:                                 # %if.then.8
	jmp	.LBB58_11
.LBB58_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_parasite_list, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB58_18
.LBB58_11:                              # %if.end.10
	jmp	.LBB58_12
.LBB58_12:                              # %do.end
	jmp	.LBB58_13
.LBB58_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB58_15
# BB#14:                                # %if.then.13
	jmp	.LBB58_16
.LBB58_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_parasite_list, %rsi
	movabsq	$.L.str.42, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB58_18
.LBB58_16:                              # %if.end.15
	jmp	.LBB58_17
.LBB58_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_parasite_list_length
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-24(%rbp), %rdi
	movslq	(%rdi), %rdi
	callq	g_malloc_n
	movabsq	$gimp_item_parasite_list_foreach_func, %rsi
	leaq	-48(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	gimp_parasite_list_foreach
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB58_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_item_parasite_list, .Lfunc_end58-gimp_item_parasite_list
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_parasite_list_foreach_func,@function
gimp_item_parasite_list_foreach_func:   # @gimp_item_parasite_list_foreach_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$8, %rdi
	movq	%rdi, (%rdx)
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_item_parasite_list_foreach_func, .Lfunc_end59-gimp_item_parasite_list_foreach_func
	.cfi_endproc

	.globl	gimp_item_is_visible
	.align	16, 0x90
	.type	gimp_item_is_visible,@function
gimp_item_is_visible:                   # @gimp_item_is_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB60_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB60_8
.LBB60_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB60_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB60_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB60_7
.LBB60_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB60_7:                               # %if.end
	jmp	.LBB60_8
.LBB60_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB60_10
# BB#9:                                 # %if.then.8
	jmp	.LBB60_11
.LBB60_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_is_visible, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB60_17
.LBB60_11:                              # %if.end.10
	jmp	.LBB60_12
.LBB60_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB60_16
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_parent
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB60_15
# BB#14:                                # %if.then.17
	movq	-48(%rbp), %rdi
	callq	gimp_item_is_visible
	movl	%eax, -4(%rbp)
	jmp	.LBB60_17
.LBB60_15:                              # %if.end.19
	movl	$1, -4(%rbp)
	jmp	.LBB60_17
.LBB60_16:                              # %if.end.20
	movl	$0, -4(%rbp)
.LBB60_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_item_is_visible, .Lfunc_end60-gimp_item_is_visible
	.cfi_endproc

	.globl	gimp_item_can_lock_content
	.align	16, 0x90
	.type	gimp_item_can_lock_content,@function
gimp_item_can_lock_content:             # @gimp_item_can_lock_content
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB61_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB61_8
.LBB61_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB61_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB61_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB61_7
.LBB61_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB61_7:                               # %if.end
	jmp	.LBB61_8
.LBB61_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB61_10
# BB#9:                                 # %if.then.8
	jmp	.LBB61_11
.LBB61_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_can_lock_content, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB61_13
.LBB61_11:                              # %if.end.10
	jmp	.LBB61_12
.LBB61_12:                              # %do.end
	movl	$1, -4(%rbp)
.LBB61_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_item_can_lock_content, .Lfunc_end61-gimp_item_can_lock_content
	.cfi_endproc

	.globl	gimp_item_is_content_locked
	.align	16, 0x90
	.type	gimp_item_is_content_locked,@function
gimp_item_is_content_locked:            # @gimp_item_is_content_locked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB62_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB62_8
.LBB62_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB62_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB62_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB62_7
.LBB62_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB62_7:                               # %if.end
	jmp	.LBB62_8
.LBB62_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB62_10
# BB#9:                                 # %if.then.8
	jmp	.LBB62_11
.LBB62_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_is_content_locked, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB62_13
.LBB62_11:                              # %if.end.10
	jmp	.LBB62_12
.LBB62_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	328(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB62_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_item_is_content_locked, .Lfunc_end62-gimp_item_is_content_locked
	.cfi_endproc

	.globl	gimp_item_mask_bounds
	.align	16, 0x90
	.type	gimp_item_mask_bounds,@function
gimp_item_mask_bounds:                  # @gimp_item_mask_bounds
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB63_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB63_8
.LBB63_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB63_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB63_6
# BB#5:                                 # %if.then.4
	movl	$1, -108(%rbp)
	jmp	.LBB63_7
.LBB63_6:                               # %if.else.5
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB63_7:                               # %if.end
	jmp	.LBB63_8
.LBB63_8:                               # %if.end.7
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB63_10
# BB#9:                                 # %if.then.9
	jmp	.LBB63_11
.LBB63_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_mask_bounds, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB63_54
.LBB63_11:                              # %if.end.11
	jmp	.LBB63_12
.LBB63_12:                              # %do.end
	jmp	.LBB63_13
.LBB63_13:                              # %do.body.12
	movq	-16(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB63_15
# BB#14:                                # %if.then.15
	jmp	.LBB63_16
.LBB63_15:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_mask_bounds, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB63_54
.LBB63_16:                              # %if.end.17
	jmp	.LBB63_17
.LBB63_17:                              # %do.end.18
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	-16(%rbp), %rax
	je	.LBB63_44
# BB#18:                                # %land.lhs.true.24
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	-64(%rbp), %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	je	.LBB63_44
# BB#19:                                # %if.then.27
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-68(%rbp), %eax
	subl	-116(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB63_21
# BB#20:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB63_25
.LBB63_21:                              # %cond.false
	movl	-68(%rbp), %eax
	subl	-116(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB63_23
# BB#22:                                # %cond.true.35
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB63_24
.LBB63_23:                              # %cond.false.36
	movl	-68(%rbp), %eax
	subl	-116(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB63_24:                              # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB63_25:                              # %cond.end.38
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	subl	-120(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-144(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB63_27
# BB#26:                                # %cond.true.43
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB63_31
.LBB63_27:                              # %cond.false.45
	movl	-72(%rbp), %eax
	subl	-120(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB63_29
# BB#28:                                # %cond.true.48
	xorl	%eax, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB63_30
.LBB63_29:                              # %cond.false.49
	movl	-72(%rbp), %eax
	subl	-120(%rbp), %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB63_30:                              # %cond.end.51
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB63_31:                              # %cond.end.53
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	-76(%rbp), %eax
	subl	-116(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-156(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB63_33
# BB#32:                                # %cond.true.58
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB63_37
.LBB63_33:                              # %cond.false.60
	movl	-76(%rbp), %eax
	subl	-116(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB63_35
# BB#34:                                # %cond.true.63
	xorl	%eax, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB63_36
.LBB63_35:                              # %cond.false.64
	movl	-76(%rbp), %eax
	subl	-116(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB63_36:                              # %cond.end.66
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB63_37:                              # %cond.end.68
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	subl	-120(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-168(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB63_39
# BB#38:                                # %cond.true.73
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB63_43
.LBB63_39:                              # %cond.false.75
	movl	-80(%rbp), %eax
	subl	-120(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB63_41
# BB#40:                                # %cond.true.78
	xorl	%eax, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB63_42
.LBB63_41:                              # %cond.false.79
	movl	-80(%rbp), %eax
	subl	-120(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB63_42:                              # %cond.end.81
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB63_43:                              # %cond.end.83
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movl	$1, -84(%rbp)
	jmp	.LBB63_45
.LBB63_44:                              # %if.else.85
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB63_45:                              # %if.end.88
	cmpq	$0, -24(%rbp)
	je	.LBB63_47
# BB#46:                                # %if.then.90
	movl	-68(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB63_47:                              # %if.end.91
	cmpq	$0, -32(%rbp)
	je	.LBB63_49
# BB#48:                                # %if.then.93
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB63_49:                              # %if.end.94
	cmpq	$0, -40(%rbp)
	je	.LBB63_51
# BB#50:                                # %if.then.96
	movl	-76(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB63_51:                              # %if.end.97
	cmpq	$0, -48(%rbp)
	je	.LBB63_53
# BB#52:                                # %if.then.99
	movl	-80(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB63_53:                              # %if.end.100
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB63_54:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_item_mask_bounds, .Lfunc_end63-gimp_item_mask_bounds
	.cfi_endproc

	.globl	gimp_item_mask_intersect
	.align	16, 0x90
	.type	gimp_item_mask_intersect,@function
gimp_item_mask_intersect:               # @gimp_item_mask_intersect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp195:
	.cfi_offset %rbx, -56
.Ltmp196:
	.cfi_offset %r12, -48
.Ltmp197:
	.cfi_offset %r13, -40
.Ltmp198:
	.cfi_offset %r14, -32
.Ltmp199:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB64_3
# BB#2:                                 # %if.then
	movl	$0, -148(%rbp)
	jmp	.LBB64_8
.LBB64_3:                               # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_6
# BB#4:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB64_6
# BB#5:                                 # %if.then.4
	movl	$1, -148(%rbp)
	jmp	.LBB64_7
.LBB64_6:                               # %if.else.5
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB64_7:                               # %if.end
	jmp	.LBB64_8
.LBB64_8:                               # %if.end.7
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB64_10
# BB#9:                                 # %if.then.9
	jmp	.LBB64_11
.LBB64_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_mask_intersect, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB64_30
.LBB64_11:                              # %if.end.11
	jmp	.LBB64_12
.LBB64_12:                              # %do.end
	jmp	.LBB64_13
.LBB64_13:                              # %do.body.12
	movq	-56(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB64_15
# BB#14:                                # %if.then.15
	jmp	.LBB64_16
.LBB64_15:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_mask_intersect, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB64_30
.LBB64_16:                              # %if.end.17
	jmp	.LBB64_17
.LBB64_17:                              # %do.end.18
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	-56(%rbp), %rax
	je	.LBB64_20
# BB#18:                                # %land.lhs.true.24
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	-104(%rbp), %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	je	.LBB64_20
# BB#19:                                # %if.then.27
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-108(%rbp), %eax
	movl	-116(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -116(%rbp)
	movl	-112(%rbp), %eax
	movl	-120(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -120(%rbp)
	movl	-108(%rbp), %eax
	subl	-156(%rbp), %eax
	movl	-112(%rbp), %ecx
	subl	-160(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %r8d
	movq	-56(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	%r8d, -184(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	leaq	-116(%rbp), %r9
	leaq	-120(%rbp), %r10
	movl	-172(%rbp), %edx        # 4-byte Reload
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movl	-176(%rbp), %r8d        # 4-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movl	-180(%rbp), %edx        # 4-byte Reload
	movl	-184(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-212(%rbp), %r8d        # 4-byte Reload
	movl	-212(%rbp), %ebx        # 4-byte Reload
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movl	%ebx, %r9d
	movl	-188(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-208(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-200(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-224(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_intersect
	movl	%eax, -124(%rbp)
	jmp	.LBB64_21
.LBB64_20:                              # %if.else.36
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -116(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -120(%rbp)
	movl	$1, -124(%rbp)
.LBB64_21:                              # %if.end.39
	cmpq	$0, -64(%rbp)
	je	.LBB64_23
# BB#22:                                # %if.then.41
	movl	-108(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB64_23:                              # %if.end.42
	cmpq	$0, -72(%rbp)
	je	.LBB64_25
# BB#24:                                # %if.then.44
	movl	-112(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB64_25:                              # %if.end.45
	cmpq	$0, -80(%rbp)
	je	.LBB64_27
# BB#26:                                # %if.then.47
	movl	-116(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB64_27:                              # %if.end.48
	cmpq	$0, -88(%rbp)
	je	.LBB64_29
# BB#28:                                # %if.then.50
	movl	-120(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB64_29:                              # %if.end.51
	movl	-124(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB64_30:                              # %return
	movl	-44(%rbp), %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_item_mask_intersect, .Lfunc_end64-gimp_item_mask_intersect
	.cfi_endproc

	.globl	gimp_item_is_in_set
	.align	16, 0x90
	.type	gimp_item_is_in_set,@function
gimp_item_is_in_set:                    # @gimp_item_is_in_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB65_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB65_8
.LBB65_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB65_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB65_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB65_7
.LBB65_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB65_7:                               # %if.end
	jmp	.LBB65_8
.LBB65_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB65_10
# BB#9:                                 # %if.then.8
	jmp	.LBB65_11
.LBB65_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_is_in_set, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB65_21
.LBB65_11:                              # %if.end.10
	jmp	.LBB65_12
.LBB65_12:                              # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$4, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	ja	.LBB65_20
# BB#22:                                # %do.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI65_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB65_13:                              # %sw.bb
	movl	$0, -4(%rbp)
	jmp	.LBB65_21
.LBB65_14:                              # %sw.bb.13
	movl	$1, -4(%rbp)
	jmp	.LBB65_21
.LBB65_15:                              # %sw.bb.14
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	movb	%dl, -85(%rbp)          # 1-byte Spill
	jne	.LBB65_17
# BB#16:                                # %land.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_height
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	sete	%dl
	movb	%dl, -85(%rbp)          # 1-byte Spill
.LBB65_17:                              # %land.end
	movb	-85(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB65_21
.LBB65_18:                              # %sw.bb.22
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_visible
	movl	%eax, -4(%rbp)
	jmp	.LBB65_21
.LBB65_19:                              # %sw.bb.24
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_linked
	movl	%eax, -4(%rbp)
	jmp	.LBB65_21
.LBB65_20:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB65_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_item_is_in_set, .Lfunc_end65-gimp_item_is_in_set
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI65_0:
	.quad	.LBB65_13
	.quad	.LBB65_14
	.quad	.LBB65_15
	.quad	.LBB65_18
	.quad	.LBB65_19

	.text
	.align	16, 0x90
	.type	gimp_item_class_init,@function
gimp_item_class_init:                   # @gimp_item_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp206:
	.cfi_offset %rbx, -56
.Ltmp207:
	.cfi_offset %r12, -48
.Ltmp208:
	.cfi_offset %r13, -40
.Ltmp209:
	.cfi_offset %r14, -32
.Ltmp210:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.47, %rdi
	movl	$1, %edx
	movl	$280, %ecx              # imm = 0x118
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -120(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.48, %rdi
	movl	$1, %edx
	movl	$288, %ecx              # imm = 0x120
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_item_signals
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.49, %rdi
	movl	$1, %edx
	movl	$296, %ecx              # imm = 0x128
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_item_signals+4
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -180(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.50, %rdi
	movl	$1, %edx
	movl	$304, %ecx              # imm = 0x130
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_item_signals+8
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -212(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_item_real_get_node, %rsi
	movabsq	$gimp_item_real_resize, %rdi
	movabsq	$gimp_item_real_scale, %r8
	movabsq	$gimp_item_real_translate, %r9
	movabsq	$gimp_item_real_rename, %r10
	movabsq	$gimp_item_real_convert, %r11
	movabsq	$gimp_item_real_duplicate, %r14
	movabsq	$gimp_item_real_is_content_locked, %r15
	movabsq	$gimp_item_real_visibility_changed, %r12
	movabsq	$gimp_item_get_popup_size, %r13
	movabsq	$gimp_item_get_preview_size, %rcx
	movabsq	$gimp_item_get_memsize, %rdx
	movabsq	$gimp_item_get_property, %rbx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movabsq	$gimp_item_set_property, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movabsq	$gimp_item_finalize, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movabsq	$gimp_item_constructed, %rcx
	movl	%eax, gimp_item_signals+12
	movq	-56(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-56(%rbp), %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-72(%rbp), %rax
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 200(%rax)
	movq	-72(%rbp), %rax
	movq	%r13, 208(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-48(%rbp), %rax
	movq	%r12, 288(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 312(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 328(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 344(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 352(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 360(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 368(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 376(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 384(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 392(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 400(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 408(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 416(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 424(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 432(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 440(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 448(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 456(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 464(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 472(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 480(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 488(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 496(%rax)
	movq	-56(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$231, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.34, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$225, %r9d
	movq	-56(%rbp), %rcx
	movl	%esi, -252(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movl	-252(%rbp), %r10d       # 4-byte Reload
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r9d, -268(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$225, (%rsp)
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$225, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -272(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r9d        # 4-byte Reload
	movl	$225, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.15, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$225, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -288(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r9d        # 4-byte Reload
	movl	$225, (%rsp)
	callq	g_param_spec_int
	movl	$4, %esi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$225, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -304(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$225, (%rsp)
	callq	g_param_spec_int
	movl	$5, %esi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.17, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$225, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -316(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$225, (%rsp)
	callq	g_param_spec_int
	movl	$6, %esi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.43, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$225, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$7, %esi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.44, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$225, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$8, %esi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.46, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$225, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$9, %esi
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	gimp_item_class_init, .Lfunc_end66-gimp_item_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_constructed,@function
gimp_item_constructed:                  # @gimp_item_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_item_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB67_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_item_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB67_2:                               # %if.end
	jmp	.LBB67_3
.LBB67_3:                               # %do.body
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB67_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB67_10
.LBB67_5:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB67_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB67_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB67_9
.LBB67_8:                               # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB67_9:                               # %if.end.13
	jmp	.LBB67_10
.LBB67_10:                              # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB67_12
# BB#11:                                # %if.then.16
	jmp	.LBB67_13
.LBB67_12:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.51, %rsi
	movl	$326, %edx              # imm = 0x146
	movabsq	$.L__func__.gimp_item_constructed, %rcx
	movabsq	$.L.str.9, %r8
	callq	g_assertion_message_expr
.LBB67_13:                              # %if.end.18
	jmp	.LBB67_14
.LBB67_14:                              # %do.end
	jmp	.LBB67_15
.LBB67_15:                              # %do.body.19
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB67_17
# BB#16:                                # %if.then.21
	jmp	.LBB67_18
.LBB67_17:                              # %if.else.22
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.51, %rsi
	movl	$327, %edx              # imm = 0x147
	movabsq	$.L__func__.gimp_item_constructed, %rcx
	movabsq	$.L.str.52, %r8
	callq	g_assertion_message_expr
.LBB67_18:                              # %if.end.23
	jmp	.LBB67_19
.LBB67_19:                              # %do.end.24
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	gimp_item_constructed, .Lfunc_end67-gimp_item_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_finalize,@function
gimp_item_finalize:                     # @gimp_item_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB68_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB68_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB68_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB68_5
# BB#4:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	408(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	callq	gimp_id_table_remove
	movq	-16(%rbp), %rdi
	movq	$0, 8(%rdi)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB68_5:                               # %if.end.12
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB68_7
# BB#6:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.LBB68_7:                               # %if.end.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_item_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	gimp_item_finalize, .Lfunc_end68-gimp_item_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_set_property,@function
gimp_item_set_property:                 # @gimp_item_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB69_2
	jmp	.LBB69_1
.LBB69_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_set_image
	jmp	.LBB69_5
.LBB69_2:                               # %sw.default
	jmp	.LBB69_3
.LBB69_3:                               # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.53, %rdi
	movabsq	$.L.str.51, %rsi
	movl	$371, %edx              # imm = 0x173
	movabsq	$.L.str.54, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB69_5
.LBB69_5:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	gimp_item_set_property, .Lfunc_end69-gimp_item_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_get_property,@function
gimp_item_get_property:                 # @gimp_item_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$8, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB70_10
# BB#14:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI70_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB70_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB70_13
.LBB70_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB70_13
.LBB70_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB70_13
.LBB70_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	28(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB70_13
.LBB70_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB70_13
.LBB70_6:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	36(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB70_13
.LBB70_7:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	g_value_set_boolean
	jmp	.LBB70_13
.LBB70_8:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	g_value_set_boolean
	jmp	.LBB70_13
.LBB70_9:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	g_value_set_boolean
	jmp	.LBB70_13
.LBB70_10:                              # %sw.default
	jmp	.LBB70_11
.LBB70_11:                              # %do.body
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
	movabsq	$.L.str.53, %rdi
	movabsq	$.L.str.51, %rsi
	movl	$415, %edx              # imm = 0x19F
	movabsq	$.L.str.54, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#12:                                # %do.end
	jmp	.LBB70_13
.LBB70_13:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	gimp_item_get_property, .Lfunc_end70-gimp_item_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI70_0:
	.quad	.LBB70_1
	.quad	.LBB70_2
	.quad	.LBB70_3
	.quad	.LBB70_4
	.quad	.LBB70_5
	.quad	.LBB70_6
	.quad	.LBB70_7
	.quad	.LBB70_8
	.quad	.LBB70_9

	.text
	.align	16, 0x90
	.type	gimp_item_get_memsize,@function
gimp_item_get_memsize:                  # @gimp_item_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_item_parent_class, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	gimp_item_get_memsize, .Lfunc_end71-gimp_item_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_real_visibility_changed,@function
gimp_item_real_visibility_changed:      # @gimp_item_real_visibility_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	.LBB72_2
# BB#1:                                 # %if.then
	jmp	.LBB72_5
.LBB72_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB72_4
# BB#3:                                 # %if.then.4
	jmp	.LBB72_5
.LBB72_4:                               # %if.else
	movabsq	$.L.str.55, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gegl_node_get_input_proxy
	movabsq	$.L.str.56, %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gegl_node_get_output_proxy
	movabsq	$.L.str.56, %rsi
	movabsq	$.L.str.55, %rcx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB72_5:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	gimp_item_real_visibility_changed, .Lfunc_end72-gimp_item_real_visibility_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_real_is_content_locked,@function
gimp_item_real_is_content_locked:       # @gimp_item_real_is_content_locked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp231:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_parent
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB73_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB73_3
# BB#2:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB73_4
.LBB73_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movb	40(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB73_4:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	gimp_item_real_is_content_locked, .Lfunc_end73-gimp_item_real_is_content_locked
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI74_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_item_real_duplicate,@function
gimp_item_real_duplicate:               # @gimp_item_real_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp234:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB74_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB74_8
.LBB74_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB74_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB74_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB74_7
.LBB74_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB74_7:                               # %if.end
	jmp	.LBB74_8
.LBB74_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB74_10
# BB#9:                                 # %if.then.8
	jmp	.LBB74_11
.LBB74_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_real_duplicate, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB74_44
.LBB74_11:                              # %if.end.10
	jmp	.LBB74_12
.LBB74_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.13
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB74_15
# BB#14:                                # %if.then.22
	movl	$0, -92(%rbp)
	jmp	.LBB74_20
.LBB74_15:                              # %if.else.23
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB74_18
# BB#16:                                # %land.lhs.true.26
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB74_18
# BB#17:                                # %if.then.30
	movl	$1, -92(%rbp)
	jmp	.LBB74_19
.LBB74_18:                              # %if.else.31
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB74_19:                              # %if.end.33
	jmp	.LBB74_20
.LBB74_20:                              # %if.end.34
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB74_22
# BB#21:                                # %if.then.37
	jmp	.LBB74_23
.LBB74_22:                              # %if.else.38
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_real_duplicate, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB74_44
.LBB74_23:                              # %if.end.39
	jmp	.LBB74_24
.LBB74_24:                              # %do.end.40
	jmp	.LBB74_25
.LBB74_25:                              # %do.body.41
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB74_27
# BB#26:                                # %if.then.45
	jmp	.LBB74_28
.LBB74_27:                              # %if.else.46
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_real_duplicate, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB74_44
.LBB74_28:                              # %if.end.47
	jmp	.LBB74_29
.LBB74_29:                              # %do.end.48
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -104(%rbp)
# BB#30:                                # %do.body.54
	cmpq	$0, -104(%rbp)
	je	.LBB74_32
# BB#31:                                # %if.then.56
	jmp	.LBB74_33
.LBB74_32:                              # %if.else.57
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_real_duplicate, %rsi
	movabsq	$.L.str.40, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB74_44
.LBB74_33:                              # %if.end.58
	jmp	.LBB74_34
.LBB74_34:                              # %do.end.59
	movl	$35, %esi
	movq	-104(%rbp), %rdi
	callq	strrchr
	movabsq	$.L.str.57, %rdi
	movq	%rax, -112(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, %esi
	movl	%esi, -120(%rbp)
	movq	-104(%rbp), %rdi
	callq	strlen
	movslq	-120(%rbp), %rdi
	cmpq	%rdi, %rax
	jb	.LBB74_36
# BB#35:                                # %land.lhs.true.67
	movabsq	$.L.str.57, %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movslq	-120(%rbp), %rdi
	subq	%rdi, %rax
	addq	-104(%rbp), %rax
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB74_39
.LBB74_36:                              # %lor.lhs.false
	cmpq	$0, -112(%rbp)
	je	.LBB74_40
# BB#37:                                # %land.lhs.true.75
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -116(%rbp)
	cmpl	$0, %eax
	jle	.LBB74_40
# BB#38:                                # %land.lhs.true.79
	cvtsi2sdl	-116(%rbp), %xmm0
	callq	log10
	movsd	.LCPI74_0, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	movq	-112(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rdi
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_40
.LBB74_39:                              # %if.then.88
	movq	-104(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -48(%rbp)
	jmp	.LBB74_41
.LBB74_40:                              # %if.else.90
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -48(%rbp)
.LBB74_41:                              # %if.end.93
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	32(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	36(%rdi), %r8d
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, -192(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	-192(%rbp), %r8d        # 4-byte Reload
	movl	-196(%rbp), %r9d        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_item_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_parasite_list_copy
	movq	-40(%rbp), %rdx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	xorl	%edx, %edx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_item_set_visible
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	callq	gimp_item_get_linked
	xorl	%edx, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_item_set_linked
	movq	-40(%rbp), %rdi
	callq	gimp_item_can_lock_content
	cmpl	$0, %eax
	je	.LBB74_43
# BB#42:                                # %if.then.109
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_lock_content
	xorl	%edx, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_item_set_lock_content
.LBB74_43:                              # %if.end.111
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB74_44:                              # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end74:
	.size	gimp_item_real_duplicate, .Lfunc_end74-gimp_item_real_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_real_convert,@function
gimp_item_real_convert:                 # @gimp_item_real_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
.Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp237:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_item_set_image
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	gimp_item_real_convert, .Lfunc_end75-gimp_item_real_convert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_real_rename,@function
gimp_item_real_rename:                  # @gimp_item_real_rename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
.Ltmp239:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp240:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB76_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_tree
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_tree_rename_item
	jmp	.LBB76_3
.LBB76_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
.LBB76_3:                               # %if.end
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	gimp_item_real_rename, .Lfunc_end76-gimp_item_real_rename
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_real_translate,@function
gimp_item_real_translate:               # @gimp_item_real_translate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp243:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	addl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	36(%rax), %edx
	addl	-16(%rbp), %edx
	movl	%ecx, %esi
	callq	gimp_item_set_offset
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	gimp_item_real_translate, .Lfunc_end77-gimp_item_real_translate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_real_scale,@function
gimp_item_real_scale:                   # @gimp_item_real_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp246:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB78_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB78_2:                               # %if.end
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB78_4
# BB#3:                                 # %if.then.5
	movl	$80, %eax
	movl	%eax, %esi
	movl	-16(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB78_4:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gimp_item_set_offset
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	gimp_item_real_scale, .Lfunc_end78-gimp_item_real_scale
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_real_resize,@function
gimp_item_real_resize:                  # @gimp_item_real_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
.Ltmp248:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp249:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	je	.LBB79_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB79_2:                               # %if.end
	movq	-40(%rbp), %rax
	movl	28(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	je	.LBB79_4
# BB#3:                                 # %if.then.5
	movl	$80, %eax
	movl	%eax, %esi
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB79_4:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %ecx
	subl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	36(%rax), %edx
	subl	-32(%rbp), %edx
	movl	%ecx, %esi
	callq	gimp_item_set_offset
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	gimp_item_real_resize, .Lfunc_end79-gimp_item_real_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_real_get_node,@function
gimp_item_real_get_node:                # @gimp_item_real_get_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp252:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	callq	gegl_node_new
	movq	-16(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	gimp_item_real_get_node, .Lfunc_end80-gimp_item_real_get_node
	.cfi_endproc

	.type	gimp_item_get_type.g_define_type_id__volatile,@object # @gimp_item_get_type.g_define_type_id__volatile
	.local	gimp_item_get_type.g_define_type_id__volatile
	.comm	gimp_item_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpItem"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_item_new,@object # @__func__.gimp_item_new
.L__func__.gimp_item_new:
	.asciz	"gimp_item_new"
	.size	.L__func__.gimp_item_new, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_type_is_a (type, GIMP_TYPE_ITEM)"
	.size	.L.str.2, 35

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"width > 0 && height > 0"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L__func__.gimp_item_removed,@object # @__func__.gimp_item_removed
.L__func__.gimp_item_removed:
	.asciz	"gimp_item_removed"
	.size	.L__func__.gimp_item_removed, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_ITEM (item)"
	.size	.L.str.6, 20

	.type	gimp_item_signals,@object # @gimp_item_signals
	.local	gimp_item_signals
	.comm	gimp_item_signals,16,16
	.type	.L__func__.gimp_item_is_removed,@object # @__func__.gimp_item_is_removed
.L__func__.gimp_item_is_removed:
	.asciz	"gimp_item_is_removed"
	.size	.L__func__.gimp_item_is_removed, 21

	.type	.L__func__.gimp_item_unset_removed,@object # @__func__.gimp_item_unset_removed
.L__func__.gimp_item_unset_removed:
	.asciz	"gimp_item_unset_removed"
	.size	.L__func__.gimp_item_unset_removed, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp_item_is_removed (item)"
	.size	.L.str.7, 28

	.type	.L__func__.gimp_item_is_attached,@object # @__func__.gimp_item_is_attached
.L__func__.gimp_item_is_attached:
	.asciz	"gimp_item_is_attached"
	.size	.L__func__.gimp_item_is_attached, 22

	.type	.L__func__.gimp_item_get_parent,@object # @__func__.gimp_item_get_parent
.L__func__.gimp_item_get_parent:
	.asciz	"gimp_item_get_parent"
	.size	.L__func__.gimp_item_get_parent, 21

	.type	.L__func__.gimp_item_get_tree,@object # @__func__.gimp_item_get_tree
.L__func__.gimp_item_get_tree:
	.asciz	"gimp_item_get_tree"
	.size	.L__func__.gimp_item_get_tree, 19

	.type	.L__func__.gimp_item_get_container,@object # @__func__.gimp_item_get_container
.L__func__.gimp_item_get_container:
	.asciz	"gimp_item_get_container"
	.size	.L__func__.gimp_item_get_container, 24

	.type	.L__func__.gimp_item_get_container_iter,@object # @__func__.gimp_item_get_container_iter
.L__func__.gimp_item_get_container_iter:
	.asciz	"gimp_item_get_container_iter"
	.size	.L__func__.gimp_item_get_container_iter, 29

	.type	.L__func__.gimp_item_get_index,@object # @__func__.gimp_item_get_index
.L__func__.gimp_item_get_index:
	.asciz	"gimp_item_get_index"
	.size	.L__func__.gimp_item_get_index, 20

	.type	.L__func__.gimp_item_get_path,@object # @__func__.gimp_item_get_path
.L__func__.gimp_item_get_path:
	.asciz	"gimp_item_get_path"
	.size	.L__func__.gimp_item_get_path, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp_item_is_attached (item)"
	.size	.L.str.8, 29

	.type	.L__func__.gimp_item_duplicate,@object # @__func__.gimp_item_duplicate
.L__func__.gimp_item_duplicate:
	.asciz	"gimp_item_duplicate"
	.size	.L__func__.gimp_item_duplicate, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_IMAGE (private->image)"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"g_type_is_a (new_type, GIMP_TYPE_ITEM)"
	.size	.L.str.10, 39

	.type	.L__func__.gimp_item_convert,@object # @__func__.gimp_item_convert
.L__func__.gimp_item_convert:
	.asciz	"gimp_item_convert"
	.size	.L__func__.gimp_item_convert, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_IMAGE (GET_PRIVATE (item)->image)"
	.size	.L.str.11, 42

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_IMAGE (dest_image)"
	.size	.L.str.12, 27

	.type	.L__func__.gimp_item_rename,@object # @__func__.gimp_item_rename
.L__func__.gimp_item_rename:
	.asciz	"gimp_item_rename"
	.size	.L__func__.gimp_item_rename, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.13, 32

	.type	.L__func__.gimp_item_get_width,@object # @__func__.gimp_item_get_width
.L__func__.gimp_item_get_width:
	.asciz	"gimp_item_get_width"
	.size	.L__func__.gimp_item_get_width, 20

	.type	.L__func__.gimp_item_get_height,@object # @__func__.gimp_item_get_height
.L__func__.gimp_item_get_height:
	.asciz	"gimp_item_get_height"
	.size	.L__func__.gimp_item_get_height, 21

	.type	.L__func__.gimp_item_set_size,@object # @__func__.gimp_item_set_size
.L__func__.gimp_item_set_size:
	.asciz	"gimp_item_set_size"
	.size	.L__func__.gimp_item_set_size, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"width"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"height"
	.size	.L.str.15, 7

	.type	.L__func__.gimp_item_get_offset,@object # @__func__.gimp_item_get_offset
.L__func__.gimp_item_get_offset:
	.asciz	"gimp_item_get_offset"
	.size	.L__func__.gimp_item_get_offset, 21

	.type	.L__func__.gimp_item_set_offset,@object # @__func__.gimp_item_set_offset
.L__func__.gimp_item_set_offset:
	.asciz	"gimp_item_set_offset"
	.size	.L__func__.gimp_item_set_offset, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"offset-x"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"offset-y"
	.size	.L.str.17, 9

	.type	.L__func__.gimp_item_get_offset_x,@object # @__func__.gimp_item_get_offset_x
.L__func__.gimp_item_get_offset_x:
	.asciz	"gimp_item_get_offset_x"
	.size	.L__func__.gimp_item_get_offset_x, 23

	.type	.L__func__.gimp_item_get_offset_y,@object # @__func__.gimp_item_get_offset_y
.L__func__.gimp_item_get_offset_y:
	.asciz	"gimp_item_get_offset_y"
	.size	.L__func__.gimp_item_get_offset_y, 23

	.type	.L__func__.gimp_item_translate,@object # @__func__.gimp_item_translate
.L__func__.gimp_item_translate:
	.asciz	"gimp_item_translate"
	.size	.L__func__.gimp_item_translate, 20

	.type	.L__func__.gimp_item_check_scaling,@object # @__func__.gimp_item_check_scaling
.L__func__.gimp_item_check_scaling:
	.asciz	"gimp_item_check_scaling"
	.size	.L__func__.gimp_item_check_scaling, 24

	.type	.L__func__.gimp_item_scale,@object # @__func__.gimp_item_scale
.L__func__.gimp_item_scale:
	.asciz	"gimp_item_scale"
	.size	.L__func__.gimp_item_scale, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.18, 48

	.type	.L__func__.gimp_item_scale_by_factors,@object # @__func__.gimp_item_scale_by_factors
.L__func__.gimp_item_scale_by_factors:
	.asciz	"gimp_item_scale_by_factors"
	.size	.L__func__.gimp_item_scale_by_factors, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: requested width or height scale equals zero"
	.size	.L.str.19, 48

	.type	.L__func__.gimp_item_scale_by_origin,@object # @__func__.gimp_item_scale_by_origin
.L__func__.gimp_item_scale_by_origin:
	.asciz	"gimp_item_scale_by_origin"
	.size	.L__func__.gimp_item_scale_by_origin, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s: requested width or height equals zero"
	.size	.L.str.20, 42

	.type	.L__func__.gimp_item_resize,@object # @__func__.gimp_item_resize
.L__func__.gimp_item_resize:
	.asciz	"gimp_item_resize"
	.size	.L__func__.gimp_item_resize, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.21, 26

	.type	.L__func__.gimp_item_flip,@object # @__func__.gimp_item_flip
.L__func__.gimp_item_flip:
	.asciz	"gimp_item_flip"
	.size	.L__func__.gimp_item_flip, 15

	.type	.L__func__.gimp_item_rotate,@object # @__func__.gimp_item_rotate
.L__func__.gimp_item_rotate:
	.asciz	"gimp_item_rotate"
	.size	.L__func__.gimp_item_rotate, 17

	.type	.L__func__.gimp_item_transform,@object # @__func__.gimp_item_transform
.L__func__.gimp_item_transform:
	.asciz	"gimp_item_transform"
	.size	.L__func__.gimp_item_transform, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"matrix != NULL"
	.size	.L.str.22, 15

	.type	.L__func__.gimp_item_stroke,@object # @__func__.gimp_item_stroke
.L__func__.gimp_item_stroke:
	.asciz	"gimp_item_stroke"
	.size	.L__func__.gimp_item_stroke, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.23, 28

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.24, 45

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"GIMP_IS_STROKE_OPTIONS (stroke_options)"
	.size	.L.str.25, 40

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"paint_options == NULL || GIMP_IS_PAINT_OPTIONS (paint_options)"
	.size	.L.str.26, 63

	.type	.L__func__.gimp_item_to_selection,@object # @__func__.gimp_item_to_selection
.L__func__.gimp_item_to_selection:
	.asciz	"gimp_item_to_selection"
	.size	.L__func__.gimp_item_to_selection, 23

	.type	.L__func__.gimp_item_get_node,@object # @__func__.gimp_item_get_node
.L__func__.gimp_item_get_node:
	.asciz	"gimp_item_get_node"
	.size	.L__func__.gimp_item_get_node, 19

	.type	.L__func__.gimp_item_peek_node,@object # @__func__.gimp_item_peek_node
.L__func__.gimp_item_peek_node:
	.asciz	"gimp_item_peek_node"
	.size	.L__func__.gimp_item_peek_node, 20

	.type	.L__func__.gimp_item_get_offset_node,@object # @__func__.gimp_item_get_offset_node
.L__func__.gimp_item_get_offset_node:
	.asciz	"gimp_item_get_offset_node"
	.size	.L__func__.gimp_item_get_offset_node, 26

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"operation"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gegl:translate"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"x"
	.size	.L.str.29, 2

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"y"
	.size	.L.str.30, 2

	.type	.L__func__.gimp_item_get_ID,@object # @__func__.gimp_item_get_ID
.L__func__.gimp_item_get_ID:
	.asciz	"gimp_item_get_ID"
	.size	.L__func__.gimp_item_get_ID, 17

	.type	.L__func__.gimp_item_get_by_ID,@object # @__func__.gimp_item_get_by_ID
.L__func__.gimp_item_get_by_ID:
	.asciz	"gimp_item_get_by_ID"
	.size	.L__func__.gimp_item_get_by_ID, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.31, 20

	.type	.L__func__.gimp_item_get_tattoo,@object # @__func__.gimp_item_get_tattoo
.L__func__.gimp_item_get_tattoo:
	.asciz	"gimp_item_get_tattoo"
	.size	.L__func__.gimp_item_get_tattoo, 21

	.type	.L__func__.gimp_item_set_tattoo,@object # @__func__.gimp_item_set_tattoo
.L__func__.gimp_item_set_tattoo:
	.asciz	"gimp_item_set_tattoo"
	.size	.L__func__.gimp_item_set_tattoo, 21

	.type	.L__func__.gimp_item_get_image,@object # @__func__.gimp_item_get_image
.L__func__.gimp_item_get_image:
	.asciz	"gimp_item_get_image"
	.size	.L__func__.gimp_item_get_image, 20

	.type	.L__func__.gimp_item_set_image,@object # @__func__.gimp_item_set_image
.L__func__.gimp_item_set_image:
	.asciz	"gimp_item_set_image"
	.size	.L__func__.gimp_item_set_image, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"! gimp_item_is_attached (item)"
	.size	.L.str.32, 31

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"! gimp_item_is_removed (item)"
	.size	.L.str.33, 30

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"id"
	.size	.L.str.34, 3

	.type	.L__func__.gimp_item_replace_item,@object # @__func__.gimp_item_replace_item
.L__func__.gimp_item_replace_item:
	.asciz	"gimp_item_replace_item"
	.size	.L__func__.gimp_item_replace_item, 23

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"GIMP_IS_ITEM (replace)"
	.size	.L.str.35, 23

	.type	.L__func__.gimp_item_set_parasites,@object # @__func__.gimp_item_set_parasites
.L__func__.gimp_item_set_parasites:
	.asciz	"gimp_item_set_parasites"
	.size	.L__func__.gimp_item_set_parasites, 24

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GIMP_IS_PARASITE_LIST (parasites)"
	.size	.L.str.36, 34

	.type	.L__func__.gimp_item_get_parasites,@object # @__func__.gimp_item_get_parasites
.L__func__.gimp_item_get_parasites:
	.asciz	"gimp_item_get_parasites"
	.size	.L__func__.gimp_item_get_parasites, 24

	.type	.L__func__.gimp_item_parasite_attach,@object # @__func__.gimp_item_parasite_attach
.L__func__.gimp_item_parasite_attach:
	.asciz	"gimp_item_parasite_attach"
	.size	.L__func__.gimp_item_parasite_attach, 26

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"parasite != NULL"
	.size	.L.str.37, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"undo-type\004Attach Parasite"
	.size	.L.str.38, 26

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"undo-type\004Attach Parasite to Item"
	.size	.L.str.39, 34

	.type	.L__func__.gimp_item_parasite_detach,@object # @__func__.gimp_item_parasite_detach
.L__func__.gimp_item_parasite_detach:
	.asciz	"gimp_item_parasite_detach"
	.size	.L__func__.gimp_item_parasite_detach, 26

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"name != NULL"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"undo-type\004Remove Parasite from Item"
	.size	.L.str.41, 36

	.type	.L__func__.gimp_item_parasite_find,@object # @__func__.gimp_item_parasite_find
.L__func__.gimp_item_parasite_find:
	.asciz	"gimp_item_parasite_find"
	.size	.L__func__.gimp_item_parasite_find, 24

	.type	.L__func__.gimp_item_parasite_list,@object # @__func__.gimp_item_parasite_list
.L__func__.gimp_item_parasite_list:
	.asciz	"gimp_item_parasite_list"
	.size	.L__func__.gimp_item_parasite_list, 24

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"count != NULL"
	.size	.L.str.42, 14

	.type	.L__func__.gimp_item_set_visible,@object # @__func__.gimp_item_set_visible
.L__func__.gimp_item_set_visible:
	.asciz	"gimp_item_set_visible"
	.size	.L__func__.gimp_item_set_visible, 22

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"visible"
	.size	.L.str.43, 8

	.type	.L__func__.gimp_item_get_visible,@object # @__func__.gimp_item_get_visible
.L__func__.gimp_item_get_visible:
	.asciz	"gimp_item_get_visible"
	.size	.L__func__.gimp_item_get_visible, 22

	.type	.L__func__.gimp_item_is_visible,@object # @__func__.gimp_item_is_visible
.L__func__.gimp_item_is_visible:
	.asciz	"gimp_item_is_visible"
	.size	.L__func__.gimp_item_is_visible, 21

	.type	.L__func__.gimp_item_set_linked,@object # @__func__.gimp_item_set_linked
.L__func__.gimp_item_set_linked:
	.asciz	"gimp_item_set_linked"
	.size	.L__func__.gimp_item_set_linked, 21

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"linked"
	.size	.L.str.44, 7

	.type	.L__func__.gimp_item_get_linked,@object # @__func__.gimp_item_get_linked
.L__func__.gimp_item_get_linked:
	.asciz	"gimp_item_get_linked"
	.size	.L__func__.gimp_item_get_linked, 21

	.type	.L__func__.gimp_item_set_lock_content,@object # @__func__.gimp_item_set_lock_content
.L__func__.gimp_item_set_lock_content:
	.asciz	"gimp_item_set_lock_content"
	.size	.L__func__.gimp_item_set_lock_content, 27

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp_item_can_lock_content (item)"
	.size	.L.str.45, 34

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"lock-content"
	.size	.L.str.46, 13

	.type	.L__func__.gimp_item_get_lock_content,@object # @__func__.gimp_item_get_lock_content
.L__func__.gimp_item_get_lock_content:
	.asciz	"gimp_item_get_lock_content"
	.size	.L__func__.gimp_item_get_lock_content, 27

	.type	.L__func__.gimp_item_can_lock_content,@object # @__func__.gimp_item_can_lock_content
.L__func__.gimp_item_can_lock_content:
	.asciz	"gimp_item_can_lock_content"
	.size	.L__func__.gimp_item_can_lock_content, 27

	.type	.L__func__.gimp_item_is_content_locked,@object # @__func__.gimp_item_is_content_locked
.L__func__.gimp_item_is_content_locked:
	.asciz	"gimp_item_is_content_locked"
	.size	.L__func__.gimp_item_is_content_locked, 28

	.type	.L__func__.gimp_item_mask_bounds,@object # @__func__.gimp_item_mask_bounds
.L__func__.gimp_item_mask_bounds:
	.asciz	"gimp_item_mask_bounds"
	.size	.L__func__.gimp_item_mask_bounds, 22

	.type	.L__func__.gimp_item_mask_intersect,@object # @__func__.gimp_item_mask_intersect
.L__func__.gimp_item_mask_intersect:
	.asciz	"gimp_item_mask_intersect"
	.size	.L__func__.gimp_item_mask_intersect, 25

	.type	.L__func__.gimp_item_is_in_set,@object # @__func__.gimp_item_is_in_set
.L__func__.gimp_item_is_in_set:
	.asciz	"gimp_item_is_in_set"
	.size	.L__func__.gimp_item_is_in_set, 20

	.type	gimp_item_parent_class,@object # @gimp_item_parent_class
	.local	gimp_item_parent_class
	.comm	gimp_item_parent_class,8,8
	.type	GimpItem_private_offset,@object # @GimpItem_private_offset
	.local	GimpItem_private_offset
	.comm	GimpItem_private_offset,4,4
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"removed"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"visibility-changed"
	.size	.L.str.48, 19

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"linked-changed"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"lock-content-changed"
	.size	.L.str.50, 21

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimpitem.c"
	.size	.L.str.51, 11

	.type	.L__func__.gimp_item_constructed,@object # @__func__.gimp_item_constructed
.L__func__.gimp_item_constructed:
	.asciz	"gimp_item_constructed"
	.size	.L__func__.gimp_item_constructed, 22

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"private->ID != 0"
	.size	.L.str.52, 17

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.53, 54

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"property"
	.size	.L.str.54, 9

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"input"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"output"
	.size	.L.str.56, 7

	.type	.L__func__.gimp_item_real_duplicate,@object # @__func__.gimp_item_real_duplicate
.L__func__.gimp_item_real_duplicate:
	.asciz	"gimp_item_real_duplicate"
	.size	.L__func__.gimp_item_real_duplicate, 25

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"copy"
	.size	.L.str.57, 5

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%s copy"
	.size	.L.str.58, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
