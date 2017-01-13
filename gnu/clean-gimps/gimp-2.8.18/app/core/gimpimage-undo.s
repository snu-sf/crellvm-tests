	.text
	.file	"gimpimage-undo.bc"
	.globl	gimp_image_undo_is_enabled
	.align	16, 0x90
	.type	gimp_image_undo_is_enabled,@function
gimp_image_undo_is_enabled:             # @gimp_image_undo_is_enabled
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_is_enabled, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	cmpl	$0, 116(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB0_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_undo_is_enabled, .Lfunc_end0-gimp_image_undo_is_enabled
	.cfi_endproc

	.globl	gimp_image_undo_enable
	.align	16, 0x90
	.type	gimp_image_undo_enable,@function
gimp_image_undo_enable:                 # @gimp_image_undo_enable
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_enable, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_13
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_free
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_thaw
	movl	%eax, -4(%rbp)
.LBB1_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_undo_enable, .Lfunc_end1-gimp_image_undo_enable
	.cfi_endproc

	.globl	gimp_image_undo_free
	.align	16, 0x90
	.type	gimp_image_undo_free,@function
gimp_image_undo_free:                   # @gimp_image_undo_free
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_14
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$5, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_event
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_undo_free
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_undo_free
	movq	-16(%rbp), %rax
	cmpl	$0, 104(%rax)
	jge	.LBB2_14
# BB#13:                                # %if.then.18
	movq	-16(%rbp), %rax
	movl	$100000, 104(%rax)      # imm = 0x186A0
.LBB2_14:                               # %if.end.20
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_undo_free, .Lfunc_end2-gimp_image_undo_free
	.cfi_endproc

	.globl	gimp_image_undo_thaw
	.align	16, 0x90
	.type	gimp_image_undo_thaw,@function
gimp_image_undo_thaw:                   # @gimp_image_undo_thaw
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
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_thaw, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_20
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.13
	movq	-24(%rbp), %rax
	cmpl	$0, 116(%rax)
	jle	.LBB3_15
# BB#14:                                # %if.then.15
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_thaw, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_20
.LBB3_16:                               # %if.end.17
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.18
	movq	-24(%rbp), %rax
	movl	116(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 116(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 116(%rax)
	jne	.LBB3_19
# BB#18:                                # %if.then.22
	movl	$7, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_event
.LBB3_19:                               # %if.end.23
	movl	$1, -4(%rbp)
.LBB3_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_undo_thaw, .Lfunc_end3-gimp_image_undo_thaw
	.cfi_endproc

	.globl	gimp_image_undo_disable
	.align	16, 0x90
	.type	gimp_image_undo_disable,@function
gimp_image_undo_disable:                # @gimp_image_undo_disable
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_disable, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_freeze
	movl	%eax, -4(%rbp)
.LBB4_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_undo_disable, .Lfunc_end4-gimp_image_undo_disable
	.cfi_endproc

	.globl	gimp_image_undo_freeze
	.align	16, 0x90
	.type	gimp_image_undo_freeze,@function
gimp_image_undo_freeze:                 # @gimp_image_undo_freeze
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_freeze, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	116(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 116(%rax)
	movq	-24(%rbp), %rax
	cmpl	$1, 116(%rax)
	jne	.LBB5_14
# BB#13:                                # %if.then.15
	movl	$6, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_event
.LBB5_14:                               # %if.end.16
	movl	$1, -4(%rbp)
.LBB5_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_undo_freeze, .Lfunc_end5-gimp_image_undo_freeze
	.cfi_endproc

	.globl	gimp_image_undo
	.align	16, 0x90
	.type	gimp_image_undo,@function
gimp_image_undo:                        # @gimp_image_undo
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.13
	movq	-24(%rbp), %rax
	cmpl	$0, 340(%rax)
	jne	.LBB6_15
# BB#14:                                # %if.then.15
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.17
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.18
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	320(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	328(%rax), %rdx
	callq	gimp_image_undo_pop_stack
	movl	$1, -4(%rbp)
.LBB6_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_undo, .Lfunc_end6-gimp_image_undo
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_undo_pop_stack,@function
gimp_image_undo_pop_stack:              # @gimp_image_undo_pop_stack
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
	subq	$128, %rsp
	movl	$80, %eax
	movl	%eax, %r8d
	xorl	%eax, %eax
	movl	$32, %r9d
	movl	%r9d, %r10d
	leaq	-72(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r11, %rdi
	movl	%eax, %esi
	movq	%r10, %rdx
	movq	%r8, -104(%rbp)         # 8-byte Spill
	callq	memset
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_undo_stack_pop_undo
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB7_19
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_undo_stack_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then.4
	movl	$0, -92(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.7
	movl	$1, -92(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.8
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.10
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.12
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_list_reverse
.LBB7_10:                               # %if.end.17
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_undo_stack_push_undo
	cmpl	$0, -72(%rbp)
	je	.LBB7_12
# BB#11:                                # %if.then.19
	movq	-8(%rbp), %rdi
	callq	gimp_image_mode_changed
.LBB7_12:                               # %if.end.20
	cmpl	$0, -68(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.22
	movq	-8(%rbp), %rdi
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %r8d
	callq	gimp_image_size_changed_detailed
.LBB7_14:                               # %if.end.23
	cmpl	$0, -48(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.25
	movq	-8(%rbp), %rdi
	callq	gimp_image_resolution_changed
.LBB7_16:                               # %if.end.26
	cmpl	$0, -44(%rbp)
	je	.LBB7_18
# BB#17:                                # %if.then.28
	movq	-8(%rbp), %rdi
	callq	gimp_image_unit_changed
.LBB7_18:                               # %if.end.29
	movl	$4, %eax
	movl	$3, %ecx
	movq	-8(%rbp), %rdi
	cmpl	$0, -28(%rbp)
	cmovel	%ecx, %eax
	movq	-40(%rbp), %rdx
	movl	%eax, %esi
	callq	gimp_image_undo_event
.LBB7_19:                               # %if.end.31
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_undo_pop_stack, .Lfunc_end7-gimp_image_undo_pop_stack
	.cfi_endproc

	.globl	gimp_image_redo
	.align	16, 0x90
	.type	gimp_image_redo,@function
gimp_image_redo:                        # @gimp_image_redo
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_redo, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_18
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.13
	movq	-24(%rbp), %rax
	cmpl	$0, 340(%rax)
	jne	.LBB8_15
# BB#14:                                # %if.then.15
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_redo, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_18
.LBB8_16:                               # %if.end.17
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.18
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	328(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	320(%rax), %rdx
	callq	gimp_image_undo_pop_stack
	movl	$1, -4(%rbp)
.LBB8_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_redo, .Lfunc_end8-gimp_image_redo
	.cfi_endproc

	.globl	gimp_image_strong_undo
	.align	16, 0x90
	.type	gimp_image_strong_undo,@function
gimp_image_strong_undo:                 # @gimp_image_strong_undo
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_strong_undo, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_23
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.13
	movq	-24(%rbp), %rax
	cmpl	$0, 340(%rax)
	jne	.LBB9_15
# BB#14:                                # %if.then.15
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_strong_undo, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_23
.LBB9_16:                               # %if.end.17
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.18
	movq	-24(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB9_18:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	gimp_undo_is_weak
	cmpl	$0, %eax
	je	.LBB9_22
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-24(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_undo_is_weak
	cmpl	$0, %eax
	je	.LBB9_21
# BB#20:                                # %if.then.27
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB9_21:                               # %if.end.29
                                        #   in Loop: Header=BB9_18 Depth=1
	jmp	.LBB9_18
.LBB9_22:                               # %while.end
	movl	$1, -4(%rbp)
.LBB9_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_strong_undo, .Lfunc_end9-gimp_image_strong_undo
	.cfi_endproc

	.globl	gimp_image_strong_redo
	.align	16, 0x90
	.type	gimp_image_strong_redo,@function
gimp_image_strong_redo:                 # @gimp_image_strong_redo
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_strong_redo, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_23
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.13
	movq	-24(%rbp), %rax
	cmpl	$0, 340(%rax)
	jne	.LBB10_15
# BB#14:                                # %if.then.15
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_strong_redo, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_23
.LBB10_16:                              # %if.end.17
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.18
	movq	-24(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_redo
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB10_18:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	gimp_undo_is_weak
	cmpl	$0, %eax
	je	.LBB10_22
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	-24(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_undo_is_weak
	cmpl	$0, %eax
	je	.LBB10_21
# BB#20:                                # %if.then.27
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_redo
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB10_21:                              # %if.end.29
                                        #   in Loop: Header=BB10_18 Depth=1
	jmp	.LBB10_18
.LBB10_22:                              # %while.end
	movl	$1, -4(%rbp)
.LBB10_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_strong_redo, .Lfunc_end10-gimp_image_strong_redo
	.cfi_endproc

	.globl	gimp_image_get_undo_stack
	.align	16, 0x90
	.type	gimp_image_get_undo_stack,@function
gimp_image_get_undo_stack:              # @gimp_image_get_undo_stack
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
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_undo_stack, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	320(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_get_undo_stack, .Lfunc_end11-gimp_image_get_undo_stack
	.cfi_endproc

	.globl	gimp_image_get_redo_stack
	.align	16, 0x90
	.type	gimp_image_get_redo_stack,@function
gimp_image_get_redo_stack:              # @gimp_image_get_redo_stack
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
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_redo_stack, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	328(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_image_get_redo_stack, .Lfunc_end12-gimp_image_get_redo_stack
	.cfi_endproc

	.globl	gimp_image_get_undo_group_count
	.align	16, 0x90
	.type	gimp_image_get_undo_group_count,@function
gimp_image_get_undo_group_count:        # @gimp_image_get_undo_group_count
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
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_undo_group_count, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	336(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB13_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_image_get_undo_group_count, .Lfunc_end13-gimp_image_get_undo_group_count
	.cfi_endproc

	.globl	gimp_image_undo_group_start
	.align	16, 0x90
	.type	gimp_image_undo_group_start,@function
gimp_image_undo_group_start:            # @gimp_image_undo_group_start
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_group_start, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_28
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	cmpl	$0, -20(%rbp)
	jbe	.LBB14_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$37, -20(%rbp)
	ja	.LBB14_16
# BB#15:                                # %if.then.15
	jmp	.LBB14_17
.LBB14_16:                              # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_group_start, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_28
.LBB14_17:                              # %if.end.17
	jmp	.LBB14_18
.LBB14_18:                              # %do.end.18
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_20
# BB#19:                                # %if.then.22
	movl	-20(%rbp), %edi
	callq	gimp_undo_type_to_name
	movq	%rax, -32(%rbp)
.LBB14_20:                              # %if.end.24
	movl	-20(%rbp), %edi
	callq	gimp_image_undo_dirty_from_type
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$0, 336(%rcx)
	jne	.LBB14_23
# BB#21:                                # %land.lhs.true.27
	cmpl	$0, -52(%rbp)
	je	.LBB14_23
# BB#22:                                # %if.then.29
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_image_dirty
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB14_23:                              # %if.end.31
	movq	-40(%rbp), %rax
	cmpl	$0, 116(%rax)
	jle	.LBB14_25
# BB#24:                                # %if.then.33
	movl	$0, -4(%rbp)
	jmp	.LBB14_28
.LBB14_25:                              # %if.end.34
	movq	-40(%rbp), %rax
	movl	336(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 336(%rax)
	movq	-40(%rbp), %rax
	cmpl	$1, 336(%rax)
	jle	.LBB14_27
# BB#26:                                # %if.then.38
	movl	$1, -4(%rbp)
	jmp	.LBB14_28
.LBB14_27:                              # %if.end.39
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_free_redo
	movq	-16(%rbp), %rdi
	callq	gimp_undo_stack_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 44(%rax)
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	320(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_undo_stack_push_undo
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 340(%rax)
	movl	$1, -4(%rbp)
.LBB14_28:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_image_undo_group_start, .Lfunc_end14-gimp_image_undo_group_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_undo_dirty_from_type,@function
gimp_image_undo_dirty_from_type:        # @gimp_image_undo_dirty_from_type
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
	movl	%edi, -8(%rbp)
	decl	%edi
	movl	%edi, %eax
	subl	$36, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movl	%edi, -20(%rbp)         # 4-byte Spill
	ja	.LBB15_22
# BB#25:                                # %entry
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_1:                               # %sw.bb
	movl	$3, -4(%rbp)
	jmp	.LBB15_24
.LBB15_2:                               # %sw.bb.1
	movl	$65, -4(%rbp)
	jmp	.LBB15_24
.LBB15_3:                               # %sw.bb.2
	movl	$72, -4(%rbp)
	jmp	.LBB15_24
.LBB15_4:                               # %sw.bb.3
	movl	$136, -4(%rbp)
	jmp	.LBB15_24
.LBB15_5:                               # %sw.bb.4
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB15_24
.LBB15_6:                               # %sw.bb.5
	movl	$4, -4(%rbp)
	jmp	.LBB15_24
.LBB15_7:                               # %sw.bb.6
	movl	$80, -4(%rbp)
	jmp	.LBB15_24
.LBB15_8:                               # %sw.bb.7
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB15_24
.LBB15_9:                               # %sw.bb.8
	movl	$32, -4(%rbp)
	jmp	.LBB15_24
.LBB15_10:                              # %sw.bb.9
	movl	$208, -4(%rbp)
	jmp	.LBB15_24
.LBB15_11:                              # %sw.bb.10
	movl	$208, -4(%rbp)
	jmp	.LBB15_24
.LBB15_12:                              # %sw.bb.11
	movl	$8, -4(%rbp)
	jmp	.LBB15_24
.LBB15_13:                              # %sw.bb.12
	movl	$8, -4(%rbp)
	jmp	.LBB15_24
.LBB15_14:                              # %sw.bb.13
	movl	$8, -4(%rbp)
	jmp	.LBB15_24
.LBB15_15:                              # %sw.bb.14
	movl	$80, -4(%rbp)
	jmp	.LBB15_24
.LBB15_16:                              # %sw.bb.15
	movl	$80, -4(%rbp)
	jmp	.LBB15_24
.LBB15_17:                              # %sw.bb.16
	movl	$208, -4(%rbp)
	jmp	.LBB15_24
.LBB15_18:                              # %sw.bb.17
	movl	$80, -4(%rbp)
	jmp	.LBB15_24
.LBB15_19:                              # %sw.bb.18
	movl	$36, -4(%rbp)
	jmp	.LBB15_24
.LBB15_20:                              # %sw.bb.19
	movl	$136, -4(%rbp)
	jmp	.LBB15_24
.LBB15_21:                              # %sw.bb.20
	movl	$65535, -4(%rbp)        # imm = 0xFFFF
	jmp	.LBB15_24
.LBB15_22:                              # %sw.default
	jmp	.LBB15_23
.LBB15_23:                              # %sw.epilog
	movl	$65535, -4(%rbp)        # imm = 0xFFFF
.LBB15_24:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_image_undo_dirty_from_type, .Lfunc_end15-gimp_image_undo_dirty_from_type
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_1
	.quad	.LBB15_1
	.quad	.LBB15_1
	.quad	.LBB15_1
	.quad	.LBB15_1
	.quad	.LBB15_2
	.quad	.LBB15_22
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_5
	.quad	.LBB15_6
	.quad	.LBB15_6
	.quad	.LBB15_22
	.quad	.LBB15_7
	.quad	.LBB15_7
	.quad	.LBB15_8
	.quad	.LBB15_9
	.quad	.LBB15_9
	.quad	.LBB15_9
	.quad	.LBB15_10
	.quad	.LBB15_11
	.quad	.LBB15_11
	.quad	.LBB15_22
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_13
	.quad	.LBB15_13
	.quad	.LBB15_13
	.quad	.LBB15_14
	.quad	.LBB15_15
	.quad	.LBB15_16
	.quad	.LBB15_17
	.quad	.LBB15_18
	.quad	.LBB15_19
	.quad	.LBB15_19
	.quad	.LBB15_20
	.quad	.LBB15_21

	.text
	.align	16, 0x90
	.type	gimp_image_undo_free_redo,@function
gimp_image_undo_free_redo:              # @gimp_image_undo_free_redo
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_container_is_empty
	cmpl	$0, %eax
	je	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_7
.LBB16_2:                               # %if.end
	jmp	.LBB16_3
.LBB16_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_n_children
	cmpl	$0, %eax
	jle	.LBB16_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_undo_stack_free_bottom
	movl	$2, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_image_undo_event
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB16_3
.LBB16_5:                               # %while.end
	movq	-16(%rbp), %rax
	cmpl	$0, 104(%rax)
	jg	.LBB16_7
# BB#6:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movl	$100000, 104(%rax)      # imm = 0x186A0
.LBB16_7:                               # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_image_undo_free_redo, .Lfunc_end16-gimp_image_undo_free_redo
	.cfi_endproc

	.globl	gimp_image_undo_group_end
	.align	16, 0x90
	.type	gimp_image_undo_group_end,@function
gimp_image_undo_group_end:              # @gimp_image_undo_group_end
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_group_end, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_22
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 116(%rax)
	jle	.LBB17_14
# BB#13:                                # %if.then.14
	movl	$0, -4(%rbp)
	jmp	.LBB17_22
.LBB17_14:                              # %if.end.15
	jmp	.LBB17_15
.LBB17_15:                              # %do.body.16
	movq	-24(%rbp), %rax
	cmpl	$0, 336(%rax)
	jle	.LBB17_17
# BB#16:                                # %if.then.18
	jmp	.LBB17_18
.LBB17_17:                              # %if.else.19
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_group_end, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_22
.LBB17_18:                              # %if.end.20
	jmp	.LBB17_19
.LBB17_19:                              # %do.end.21
	movq	-24(%rbp), %rax
	movl	336(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 336(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 336(%rax)
	jne	.LBB17_21
# BB#20:                                # %if.then.25
	movq	-24(%rbp), %rax
	movl	$0, 340(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_undo_stack_peek
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_event
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_free_space
.LBB17_21:                              # %if.end.27
	movl	$1, -4(%rbp)
.LBB17_22:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_image_undo_group_end, .Lfunc_end17-gimp_image_undo_group_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_undo_free_space,@function
gimp_image_undo_free_space:             # @gimp_image_undo_free_space
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	312(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movl	$1024, -32(%rbp)        # imm = 0x400
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	320(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_n_children
	cmpl	-28(%rbp), %eax
	jg	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_9
.LBB18_2:                               # %if.end
	jmp	.LBB18_3
.LBB18_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	movb	$1, %dl
	cmpq	-40(%rbp), %rax
	movb	%dl, -65(%rbp)          # 1-byte Spill
	jg	.LBB18_5
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_n_children
	cmpl	-32(%rbp), %eax
	setg	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB18_5:                               # %lor.end
                                        #   in Loop: Header=BB18_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_6
	jmp	.LBB18_9
.LBB18_6:                               # %while.body
                                        #   in Loop: Header=BB18_3 Depth=1
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gimp_undo_stack_free_bottom
	movl	$1, %esi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_image_undo_event
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_n_children
	cmpl	-28(%rbp), %eax
	jg	.LBB18_8
# BB#7:                                 # %if.then.16
	jmp	.LBB18_9
.LBB18_8:                               # %if.end.17
                                        #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_3
.LBB18_9:                               # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_image_undo_free_space, .Lfunc_end18-gimp_image_undo_free_space
	.cfi_endproc

	.globl	gimp_image_undo_push
	.align	16, 0x90
	.type	gimp_image_undo_push,@function
gimp_image_undo_push:                   # @gimp_image_undo_push
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
	subq	$616, %rsp              # imm = 0x268
.Ltmp60:
	.cfi_offset %rbx, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
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
	movl	%r8d, -500(%rbp)        # 4-byte Spill
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	movl	%edx, -516(%rbp)        # 4-byte Spill
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	je	.LBB19_36
# BB#35:                                # %entry
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
.LBB19_36:                              # %entry
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, -312(%rbp)
	movl	-500(%rbp), %ecx        # 4-byte Reload
	movq	-512(%rbp), %rdx        # 8-byte Reload
	movl	-516(%rbp), %esi        # 4-byte Reload
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	-488(%rbp), %r8         # 8-byte Reload
	movq	%r8, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -92(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -156(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -156(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB19_34
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	movq	-48(%rbp), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB19_15
# BB#14:                                # %if.then.15
	jmp	.LBB19_16
.LBB19_15:                              # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB19_34
.LBB19_16:                              # %if.end.17
	jmp	.LBB19_17
.LBB19_17:                              # %do.end.18
	jmp	.LBB19_18
.LBB19_18:                              # %do.body.19
	cmpl	$37, -52(%rbp)
	jbe	.LBB19_20
# BB#19:                                # %if.then.21
	jmp	.LBB19_21
.LBB19_20:                              # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_push, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB19_34
.LBB19_21:                              # %if.end.23
	jmp	.LBB19_22
.LBB19_22:                              # %do.end.24
	movq	-40(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -80(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB19_24
# BB#23:                                # %if.then.28
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_image_dirty
	movl	%eax, -548(%rbp)        # 4-byte Spill
.LBB19_24:                              # %if.end.30
	movq	-80(%rbp), %rax
	cmpl	$0, 116(%rax)
	jle	.LBB19_26
# BB#25:                                # %if.then.32
	movq	$0, -32(%rbp)
	jmp	.LBB19_34
.LBB19_26:                              # %if.end.33
	cmpq	$0, -64(%rbp)
	jne	.LBB19_28
# BB#27:                                # %if.then.35
	movl	-52(%rbp), %edi
	callq	gimp_undo_type_to_name
	movq	%rax, -64(%rbp)
.LBB19_28:                              # %if.end.37
	leaq	-92(%rbp), %rdx
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rax
	movabsq	$.L.str.11, %rsi
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %r10
	movq	-64(%rbp), %r11
	movq	-40(%rbp), %rbx
	movl	-52(%rbp), %r14d
	movl	-68(%rbp), %r15d
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%r8, -568(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%rbx, (%rsp)
	movq	%rax, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_parameters_append
	leaq	-92(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	%rax, -88(%rbp)
	movq	%rcx, %rax
	leaq	-352(%rbp), %rsi
	movq	%rsi, 16(%rax)
	leaq	16(%rbp), %rsi
	movq	%rsi, 8(%rax)
	movl	$48, 4(%rax)
	movl	$40, (%rax)
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_parameters_append_valist
	leaq	-128(%rbp), %rcx
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rdi
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rdx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	callq	g_object_newv
	movq	%rax, -136(%rbp)
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_parameters_free
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_free_redo
	movq	-80(%rbp), %rax
	cmpl	$0, 340(%rax)
	jne	.LBB19_32
# BB#29:                                # %if.then.46
	movq	-80(%rbp), %rax
	movq	320(%rax), %rdi
	movq	-136(%rbp), %rsi
	callq	gimp_undo_stack_push_undo
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movq	-136(%rbp), %rdx
	callq	gimp_image_undo_event
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_free_space
	movq	-80(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gimp_undo_stack_peek
	cmpq	-136(%rbp), %rax
	jne	.LBB19_31
# BB#30:                                # %if.then.50
	movq	-136(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB19_34
.LBB19_31:                              # %if.end.51
	jmp	.LBB19_33
.LBB19_32:                              # %if.else.52
	movq	-80(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	gimp_undo_stack_push_undo
	movq	-136(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB19_34
.LBB19_33:                              # %if.end.58
	movq	$0, -32(%rbp)
.LBB19_34:                              # %return
	movq	-32(%rbp), %rax
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_image_undo_push, .Lfunc_end19-gimp_image_undo_push
	.cfi_endproc

	.globl	gimp_image_undo_can_compress
	.align	16, 0x90
	.type	gimp_image_undo_can_compress,@function
gimp_image_undo_can_compress:           # @gimp_image_undo_can_compress
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_can_compress, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB20_20
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	je	.LBB20_19
# BB#13:                                # %land.lhs.true.15
	movq	-40(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_undo_stack_peek
	cmpq	$0, %rax
	jne	.LBB20_19
# BB#14:                                # %if.then.18
	movq	-40(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB20_18
# BB#15:                                # %land.lhs.true.22
	movq	-72(%rbp), %rax
	movl	44(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB20_18
# BB#16:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB20_18
# BB#17:                                # %if.then.30
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_20
.LBB20_18:                              # %if.end.31
	jmp	.LBB20_19
.LBB20_19:                              # %if.end.32
	movq	$0, -8(%rbp)
.LBB20_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_image_undo_can_compress, .Lfunc_end20-gimp_image_undo_can_compress
	.cfi_endproc

	.globl	gimp_image_undo_get_fadeable
	.align	16, 0x90
	.type	gimp_image_undo_get_fadeable,@function
gimp_image_undo_get_fadeable:           # @gimp_image_undo_get_fadeable
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_undo_get_fadeable, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_34
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_undo_stack_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB21_14
# BB#13:                                # %if.then.22
	movl	$0, -76(%rbp)
	jmp	.LBB21_19
.LBB21_14:                              # %if.else.23
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_17
# BB#15:                                # %land.lhs.true.26
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB21_17
# BB#16:                                # %if.then.30
	movl	$1, -76(%rbp)
	jmp	.LBB21_18
.LBB21_17:                              # %if.else.31
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB21_18:                              # %if.end.33
	jmp	.LBB21_19
.LBB21_19:                              # %if.end.34
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB21_24
# BB#20:                                # %land.lhs.true.37
	movq	-32(%rbp), %rax
	cmpl	$33, 44(%rax)
	jne	.LBB21_24
# BB#21:                                # %if.then.39
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_undo_stack_get_depth
	cmpl	$2, %eax
	jne	.LBB21_23
# BB#22:                                # %if.then.45
	movq	-88(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -32(%rbp)
.LBB21_23:                              # %if.end.47
	jmp	.LBB21_24
.LBB21_24:                              # %if.end.48
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_drawable_undo_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB21_26
# BB#25:                                # %if.then.57
	movl	$0, -108(%rbp)
	jmp	.LBB21_31
.LBB21_26:                              # %if.else.58
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_29
# BB#27:                                # %land.lhs.true.61
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB21_29
# BB#28:                                # %if.then.65
	movl	$1, -108(%rbp)
	jmp	.LBB21_30
.LBB21_29:                              # %if.else.66
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB21_30:                              # %if.end.68
	jmp	.LBB21_31
.LBB21_31:                              # %if.end.69
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB21_33
# BB#32:                                # %if.then.72
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_34
.LBB21_33:                              # %if.end.73
	movq	$0, -8(%rbp)
.LBB21_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_image_undo_get_fadeable, .Lfunc_end21-gimp_image_undo_get_fadeable
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_undo_is_enabled,@object # @__func__.gimp_image_undo_is_enabled
.L__func__.gimp_image_undo_is_enabled:
	.asciz	"gimp_image_undo_is_enabled"
	.size	.L__func__.gimp_image_undo_is_enabled, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L__func__.gimp_image_undo_enable,@object # @__func__.gimp_image_undo_enable
.L__func__.gimp_image_undo_enable:
	.asciz	"gimp_image_undo_enable"
	.size	.L__func__.gimp_image_undo_enable, 23

	.type	.L__func__.gimp_image_undo_disable,@object # @__func__.gimp_image_undo_disable
.L__func__.gimp_image_undo_disable:
	.asciz	"gimp_image_undo_disable"
	.size	.L__func__.gimp_image_undo_disable, 24

	.type	.L__func__.gimp_image_undo_freeze,@object # @__func__.gimp_image_undo_freeze
.L__func__.gimp_image_undo_freeze:
	.asciz	"gimp_image_undo_freeze"
	.size	.L__func__.gimp_image_undo_freeze, 23

	.type	.L__func__.gimp_image_undo_thaw,@object # @__func__.gimp_image_undo_thaw
.L__func__.gimp_image_undo_thaw:
	.asciz	"gimp_image_undo_thaw"
	.size	.L__func__.gimp_image_undo_thaw, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"private->undo_freeze_count > 0"
	.size	.L.str.2, 31

	.type	.L__func__.gimp_image_undo,@object # @__func__.gimp_image_undo
.L__func__.gimp_image_undo:
	.asciz	"gimp_image_undo"
	.size	.L__func__.gimp_image_undo, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"private->pushing_undo_group == GIMP_UNDO_GROUP_NONE"
	.size	.L.str.3, 52

	.type	.L__func__.gimp_image_redo,@object # @__func__.gimp_image_redo
.L__func__.gimp_image_redo:
	.asciz	"gimp_image_redo"
	.size	.L__func__.gimp_image_redo, 16

	.type	.L__func__.gimp_image_strong_undo,@object # @__func__.gimp_image_strong_undo
.L__func__.gimp_image_strong_undo:
	.asciz	"gimp_image_strong_undo"
	.size	.L__func__.gimp_image_strong_undo, 23

	.type	.L__func__.gimp_image_strong_redo,@object # @__func__.gimp_image_strong_redo
.L__func__.gimp_image_strong_redo:
	.asciz	"gimp_image_strong_redo"
	.size	.L__func__.gimp_image_strong_redo, 23

	.type	.L__func__.gimp_image_get_undo_stack,@object # @__func__.gimp_image_get_undo_stack
.L__func__.gimp_image_get_undo_stack:
	.asciz	"gimp_image_get_undo_stack"
	.size	.L__func__.gimp_image_get_undo_stack, 26

	.type	.L__func__.gimp_image_get_redo_stack,@object # @__func__.gimp_image_get_redo_stack
.L__func__.gimp_image_get_redo_stack:
	.asciz	"gimp_image_get_redo_stack"
	.size	.L__func__.gimp_image_get_redo_stack, 26

	.type	.L__func__.gimp_image_undo_free,@object # @__func__.gimp_image_undo_free
.L__func__.gimp_image_undo_free:
	.asciz	"gimp_image_undo_free"
	.size	.L__func__.gimp_image_undo_free, 21

	.type	.L__func__.gimp_image_get_undo_group_count,@object # @__func__.gimp_image_get_undo_group_count
.L__func__.gimp_image_get_undo_group_count:
	.asciz	"gimp_image_get_undo_group_count"
	.size	.L__func__.gimp_image_get_undo_group_count, 32

	.type	.L__func__.gimp_image_undo_group_start,@object # @__func__.gimp_image_undo_group_start
.L__func__.gimp_image_undo_group_start:
	.asciz	"gimp_image_undo_group_start"
	.size	.L__func__.gimp_image_undo_group_start, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"undo_type > GIMP_UNDO_GROUP_FIRST && undo_type <= GIMP_UNDO_GROUP_LAST"
	.size	.L.str.4, 71

	.type	.L__func__.gimp_image_undo_group_end,@object # @__func__.gimp_image_undo_group_end
.L__func__.gimp_image_undo_group_end:
	.asciz	"gimp_image_undo_group_end"
	.size	.L__func__.gimp_image_undo_group_end, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"private->group_count > 0"
	.size	.L.str.5, 25

	.type	.L__func__.gimp_image_undo_push,@object # @__func__.gimp_image_undo_push
.L__func__.gimp_image_undo_push:
	.asciz	"gimp_image_undo_push"
	.size	.L__func__.gimp_image_undo_push, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"g_type_is_a (object_type, GIMP_TYPE_UNDO)"
	.size	.L.str.6, 42

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"undo_type > GIMP_UNDO_GROUP_LAST"
	.size	.L.str.7, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"name"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"image"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"dirty-mask"
	.size	.L.str.11, 11

	.type	.L__func__.gimp_image_undo_can_compress,@object # @__func__.gimp_image_undo_can_compress
.L__func__.gimp_image_undo_can_compress:
	.asciz	"gimp_image_undo_can_compress"
	.size	.L__func__.gimp_image_undo_can_compress, 29

	.type	.L__func__.gimp_image_undo_get_fadeable,@object # @__func__.gimp_image_undo_get_fadeable
.L__func__.gimp_image_undo_get_fadeable:
	.asciz	"gimp_image_undo_get_fadeable"
	.size	.L__func__.gimp_image_undo_get_fadeable, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
