	.text
	.file	"gimpprojectable.bc"
	.globl	gimp_projectable_interface_get_type
	.align	16, 0x90
	.type	gimp_projectable_interface_get_type,@function
gimp_projectable_interface_get_type:    # @gimp_projectable_interface_get_type
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
	subq	$16, %rsp
	cmpq	$0, gimp_projectable_interface_get_type.projectable_iface_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_projectable_interface_get_type.projectable_iface_info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_projectable_interface_get_type.projectable_iface_type
	movq	gimp_projectable_interface_get_type.projectable_iface_type, %rdi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_add_prerequisite
.LBB0_2:                                # %if.end
	movq	gimp_projectable_interface_get_type.projectable_iface_type, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_projectable_interface_get_type, .Lfunc_end0-gimp_projectable_interface_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projectable_iface_base_init,@function
gimp_projectable_iface_base_init:       # @gimp_projectable_iface_base_init
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
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	cmpl	$0, gimp_projectable_iface_base_init.initialized
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rdi
	movl	$1, %edx
	movl	$16, %ecx
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$gimp_marshal_VOID__INT_INT_INT_INT, %r8
	movl	$4, %eax
	movl	%eax, %r9d
	movl	$4, %eax
	movl	$24, %r10d
	movl	%r10d, %r11d
	movq	-24(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-32(%rbp), %rbx         # 8-byte Reload
	movq	%r8, -40(%rbp)          # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-40(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	$24, 24(%rsp)
	movq	$24, 32(%rsp)
	movq	$24, 40(%rsp)
	movq	$24, 48(%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$0, %al
	movq	%r11, -64(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.8, %rdi
	movl	$1, %edx
	movl	$24, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movabsq	$g_cclosure_marshal_VOID__BOOLEAN, %r8
	movl	$4, %r10d
	movl	%r10d, %r9d
	movl	$20, %r10d
	movl	%r10d, %r11d
	movl	%eax, projectable_signals
	movq	-24(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$20, 24(%rsp)
	movb	$0, %al
	movq	%r11, -96(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.9, %rdi
	movl	$1, %edx
	movl	$32, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r10d
	movl	%r10d, %r9d
	xorl	%r10d, %r10d
	movl	%eax, projectable_signals+4
	movq	-24(%rbp), %r11
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
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -124(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movl	%eax, projectable_signals+8
	movl	$1, gimp_projectable_iface_base_init.initialized
.LBB1_2:                                # %if.end
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_projectable_iface_base_init, .Lfunc_end1-gimp_projectable_iface_base_init
	.cfi_endproc

	.globl	gimp_projectable_invalidate
	.align	16, 0x90
	.type	gimp_projectable_invalidate,@function
gimp_projectable_invalidate:            # @gimp_projectable_invalidate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_projectable_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_invalidate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_13
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	projectable_signals, %esi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_signal_emit
.LBB2_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_projectable_invalidate, .Lfunc_end2-gimp_projectable_invalidate
	.cfi_endproc

	.globl	gimp_projectable_flush
	.align	16, 0x90
	.type	gimp_projectable_flush,@function
gimp_projectable_flush:                 # @gimp_projectable_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_projectable_interface_get_type
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
	movabsq	$.L__func__.gimp_projectable_flush, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	projectable_signals+4, %esi
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB3_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_projectable_flush, .Lfunc_end3-gimp_projectable_flush
	.cfi_endproc

	.globl	gimp_projectable_structure_changed
	.align	16, 0x90
	.type	gimp_projectable_structure_changed,@function
gimp_projectable_structure_changed:     # @gimp_projectable_structure_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_projectable_interface_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_structure_changed, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	projectable_signals+8, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB4_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_projectable_structure_changed, .Lfunc_end4-gimp_projectable_structure_changed
	.cfi_endproc

	.globl	gimp_projectable_get_image
	.align	16, 0x90
	.type	gimp_projectable_get_image,@function
gimp_projectable_get_image:             # @gimp_projectable_get_image
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_projectable_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_get_image, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_15
.LBB5_14:                               # %if.end.18
	movq	$0, -8(%rbp)
.LBB5_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_projectable_get_image, .Lfunc_end5-gimp_projectable_get_image
	.cfi_endproc

	.globl	gimp_projectable_get_image_type
	.align	16, 0x90
	.type	gimp_projectable_get_image_type,@function
gimp_projectable_get_image_type:        # @gimp_projectable_get_image_type
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_projectable_interface_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_get_image_type, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_15
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB6_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_15
.LBB6_14:                               # %if.end.18
	movl	$0, -4(%rbp)
.LBB6_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_projectable_get_image_type, .Lfunc_end6-gimp_projectable_get_image_type
	.cfi_endproc

	.globl	gimp_projectable_get_offset
	.align	16, 0x90
	.type	gimp_projectable_get_offset,@function
gimp_projectable_get_offset:            # @gimp_projectable_get_offset
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_projectable_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_get_offset, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_24
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_get_offset, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_24
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB7_20
# BB#19:                                # %if.then.19
	jmp	.LBB7_21
.LBB7_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_get_offset, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_24
.LBB7_21:                               # %if.end.21
	jmp	.LBB7_22
.LBB7_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB7_24
# BB#23:                                # %if.then.27
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB7_24:                               # %if.end.29
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_projectable_get_offset, .Lfunc_end7-gimp_projectable_get_offset
	.cfi_endproc

	.globl	gimp_projectable_get_size
	.align	16, 0x90
	.type	gimp_projectable_get_size,@function
gimp_projectable_get_size:              # @gimp_projectable_get_size
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
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_projectable_interface_get_type
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
	movabsq	$.L__func__.gimp_projectable_get_size, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_24
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_get_size, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_24
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB8_20
# BB#19:                                # %if.then.19
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_get_size, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_24
.LBB8_21:                               # %if.end.21
	jmp	.LBB8_22
.LBB8_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB8_24
# BB#23:                                # %if.then.27
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB8_24:                               # %if.end.29
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_projectable_get_size, .Lfunc_end8-gimp_projectable_get_size
	.cfi_endproc

	.globl	gimp_projectable_get_graph
	.align	16, 0x90
	.type	gimp_projectable_get_graph,@function
gimp_projectable_get_graph:             # @gimp_projectable_get_graph
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_projectable_interface_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_get_graph, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_15
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB9_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_15
.LBB9_14:                               # %if.end.18
	movq	$0, -8(%rbp)
.LBB9_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_projectable_get_graph, .Lfunc_end9-gimp_projectable_get_graph
	.cfi_endproc

	.globl	gimp_projectable_invalidate_preview
	.align	16, 0x90
	.type	gimp_projectable_invalidate_preview,@function
gimp_projectable_invalidate_preview:    # @gimp_projectable_invalidate_preview
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_projectable_interface_get_type
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
	movabsq	$.L__func__.gimp_projectable_invalidate_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_14
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.15
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB10_14:                              # %if.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_projectable_invalidate_preview, .Lfunc_end10-gimp_projectable_invalidate_preview
	.cfi_endproc

	.globl	gimp_projectable_get_layers
	.align	16, 0x90
	.type	gimp_projectable_get_layers,@function
gimp_projectable_get_layers:            # @gimp_projectable_get_layers
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_projectable_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_projectable_get_layers, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_15
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB11_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_15
.LBB11_14:                              # %if.end.18
	movq	$0, -8(%rbp)
.LBB11_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_projectable_get_layers, .Lfunc_end11-gimp_projectable_get_layers
	.cfi_endproc

	.globl	gimp_projectable_get_channels
	.align	16, 0x90
	.type	gimp_projectable_get_channels,@function
gimp_projectable_get_channels:          # @gimp_projectable_get_channels
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_projectable_interface_get_type
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
	movabsq	$.L__func__.gimp_projectable_get_channels, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_15
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB12_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_15
.LBB12_14:                              # %if.end.18
	movq	$0, -8(%rbp)
.LBB12_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_projectable_get_channels, .Lfunc_end12-gimp_projectable_get_channels
	.cfi_endproc

	.type	gimp_projectable_interface_get_type.projectable_iface_type,@object # @gimp_projectable_interface_get_type.projectable_iface_type
	.local	gimp_projectable_interface_get_type.projectable_iface_type
	.comm	gimp_projectable_interface_get_type.projectable_iface_type,8,8
	.type	gimp_projectable_interface_get_type.projectable_iface_info,@object # @gimp_projectable_interface_get_type.projectable_iface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_projectable_interface_get_type.projectable_iface_info:
	.short	104                     # 0x68
	.zero	6
	.quad	gimp_projectable_iface_base_init
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_projectable_interface_get_type.projectable_iface_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpProjectableInterface"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_projectable_invalidate,@object # @__func__.gimp_projectable_invalidate
.L__func__.gimp_projectable_invalidate:
	.asciz	"gimp_projectable_invalidate"
	.size	.L__func__.gimp_projectable_invalidate, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PROJECTABLE (projectable)"
	.size	.L.str.2, 34

	.type	projectable_signals,@object # @projectable_signals
	.local	projectable_signals
	.comm	projectable_signals,12,4
	.type	.L__func__.gimp_projectable_flush,@object # @__func__.gimp_projectable_flush
.L__func__.gimp_projectable_flush:
	.asciz	"gimp_projectable_flush"
	.size	.L__func__.gimp_projectable_flush, 23

	.type	.L__func__.gimp_projectable_structure_changed,@object # @__func__.gimp_projectable_structure_changed
.L__func__.gimp_projectable_structure_changed:
	.asciz	"gimp_projectable_structure_changed"
	.size	.L__func__.gimp_projectable_structure_changed, 35

	.type	.L__func__.gimp_projectable_get_image,@object # @__func__.gimp_projectable_get_image
.L__func__.gimp_projectable_get_image:
	.asciz	"gimp_projectable_get_image"
	.size	.L__func__.gimp_projectable_get_image, 27

	.type	.L__func__.gimp_projectable_get_image_type,@object # @__func__.gimp_projectable_get_image_type
.L__func__.gimp_projectable_get_image_type:
	.asciz	"gimp_projectable_get_image_type"
	.size	.L__func__.gimp_projectable_get_image_type, 32

	.type	.L__func__.gimp_projectable_get_offset,@object # @__func__.gimp_projectable_get_offset
.L__func__.gimp_projectable_get_offset:
	.asciz	"gimp_projectable_get_offset"
	.size	.L__func__.gimp_projectable_get_offset, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"x != NULL"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"y != NULL"
	.size	.L.str.4, 10

	.type	.L__func__.gimp_projectable_get_size,@object # @__func__.gimp_projectable_get_size
.L__func__.gimp_projectable_get_size:
	.asciz	"gimp_projectable_get_size"
	.size	.L__func__.gimp_projectable_get_size, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"width != NULL"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"height != NULL"
	.size	.L.str.6, 15

	.type	.L__func__.gimp_projectable_get_graph,@object # @__func__.gimp_projectable_get_graph
.L__func__.gimp_projectable_get_graph:
	.asciz	"gimp_projectable_get_graph"
	.size	.L__func__.gimp_projectable_get_graph, 27

	.type	.L__func__.gimp_projectable_invalidate_preview,@object # @__func__.gimp_projectable_invalidate_preview
.L__func__.gimp_projectable_invalidate_preview:
	.asciz	"gimp_projectable_invalidate_preview"
	.size	.L__func__.gimp_projectable_invalidate_preview, 36

	.type	.L__func__.gimp_projectable_get_layers,@object # @__func__.gimp_projectable_get_layers
.L__func__.gimp_projectable_get_layers:
	.asciz	"gimp_projectable_get_layers"
	.size	.L__func__.gimp_projectable_get_layers, 28

	.type	.L__func__.gimp_projectable_get_channels,@object # @__func__.gimp_projectable_get_channels
.L__func__.gimp_projectable_get_channels:
	.asciz	"gimp_projectable_get_channels"
	.size	.L__func__.gimp_projectable_get_channels, 30

	.type	gimp_projectable_iface_base_init.initialized,@object # @gimp_projectable_iface_base_init.initialized
	.local	gimp_projectable_iface_base_init.initialized
	.comm	gimp_projectable_iface_base_init.initialized,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"invalidate"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"flush"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"structure-changed"
	.size	.L.str.9, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
