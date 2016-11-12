	.text
	.file	"gimpimage-sample-points.bc"
	.globl	gimp_image_add_sample_point_at_pos
	.align	16, 0x90
	.type	gimp_image_add_sample_point_at_pos,@function
gimp_image_add_sample_point_at_pos:     # @gimp_image_add_sample_point_at_pos
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_sample_point_at_pos, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_27
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpl	$0, -20(%rbp)
	jl	.LBB0_16
# BB#14:                                # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB0_16
# BB#15:                                # %if.then.16
	jmp	.LBB0_17
.LBB0_16:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_sample_point_at_pos, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_27
.LBB0_17:                               # %if.end.18
	jmp	.LBB0_18
.LBB0_18:                               # %do.end.19
	jmp	.LBB0_19
.LBB0_19:                               # %do.body.20
	cmpl	$0, -24(%rbp)
	jl	.LBB0_22
# BB#20:                                # %land.lhs.true.22
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	-72(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB0_22
# BB#21:                                # %if.then.25
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.26
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_sample_point_at_pos, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_27
.LBB0_23:                               # %if.end.27
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.28
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	396(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 396(%rax)
	movl	%ecx, %edi
	callq	gimp_sample_point_new
	movq	%rax, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB0_26
# BB#25:                                # %if.then.31
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_sample_point
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB0_26:                               # %if.end.34
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_image_add_sample_point
	movq	-40(%rbp), %rdi
	callq	gimp_sample_point_unref
	movq	-40(%rbp), %rsi
	movq	%rsi, -8(%rbp)
.LBB0_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_add_sample_point_at_pos, .Lfunc_end0-gimp_image_add_sample_point_at_pos
	.cfi_endproc

	.globl	gimp_image_add_sample_point
	.align	16, 0x90
	.type	gimp_image_add_sample_point,@function
gimp_image_add_sample_point:            # @gimp_image_add_sample_point
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_sample_point, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_18
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_sample_point, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_18
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-32(%rbp), %rsi
	movq	%rax, 168(%rsi)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_sample_point_ref
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_sample_point_added
.LBB1_18:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_add_sample_point, .Lfunc_end1-gimp_image_add_sample_point
	.cfi_endproc

	.globl	gimp_image_remove_sample_point
	.align	16, 0x90
	.type	gimp_image_remove_sample_point,@function
gimp_image_remove_sample_point:         # @gimp_image_remove_sample_point
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_remove_sample_point, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_20
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_remove_sample_point, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_20
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB2_19
# BB#18:                                # %if.then.20
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.6, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_sample_point
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB2_19:                               # %if.end.23
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-32(%rbp), %rsi
	movq	%rax, 168(%rsi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_sample_point_removed
	movq	-16(%rbp), %rax
	movl	$-1, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_sample_point_unref
.LBB2_20:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_remove_sample_point, .Lfunc_end2-gimp_image_remove_sample_point
	.cfi_endproc

	.globl	gimp_image_move_sample_point
	.align	16, 0x90
	.type	gimp_image_move_sample_point,@function
gimp_image_move_sample_point:           # @gimp_image_move_sample_point
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_sample_point, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_40
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_sample_point, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_40
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpl	$0, -20(%rbp)
	jl	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_sample_point, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_40
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	jmp	.LBB3_23
.LBB3_23:                               # %do.body.23
	cmpl	$0, -24(%rbp)
	jl	.LBB3_25
# BB#24:                                # %if.then.25
	jmp	.LBB3_26
.LBB3_25:                               # %if.else.26
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_sample_point, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_40
.LBB3_26:                               # %if.end.27
	jmp	.LBB3_27
.LBB3_27:                               # %do.end.28
	jmp	.LBB3_28
.LBB3_28:                               # %do.body.29
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB3_30
# BB#29:                                # %if.then.32
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.33
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_sample_point, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_40
.LBB3_31:                               # %if.end.34
	jmp	.LBB3_32
.LBB3_32:                               # %do.end.35
	jmp	.LBB3_33
.LBB3_33:                               # %do.body.36
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	-64(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB3_35
# BB#34:                                # %if.then.39
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.40
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_sample_point, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_40
.LBB3_36:                               # %if.end.41
	jmp	.LBB3_37
.LBB3_37:                               # %do.end.42
	cmpl	$0, -28(%rbp)
	je	.LBB3_39
# BB#38:                                # %if.then.44
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.11, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_sample_point
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB3_39:                               # %if.end.47
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_sample_point_moved
.LBB3_40:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_move_sample_point, .Lfunc_end3-gimp_image_move_sample_point
	.cfi_endproc

	.globl	gimp_image_get_sample_points
	.align	16, 0x90
	.type	gimp_image_get_sample_points,@function
gimp_image_get_sample_points:           # @gimp_image_get_sample_points
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
	movabsq	$.L__func__.gimp_image_get_sample_points, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	168(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_get_sample_points, .Lfunc_end4-gimp_image_get_sample_points
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI5_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_image_find_sample_point
	.align	16, 0x90
	.type	gimp_image_find_sample_point,@function
gimp_image_find_sample_point:           # @gimp_image_find_sample_point
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
	subq	$160, %rsp
	movsd	.LCPI5_0, %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movq	$0, -64(%rbp)
	movsd	%xmm4, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_find_sample_point, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_39
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_16
# BB#14:                                # %land.lhs.true.13
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_16
# BB#15:                                # %if.then.15
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_find_sample_point, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_39
.LBB5_17:                               # %if.end.17
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.18
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	ja	.LBB5_22
# BB#19:                                # %lor.lhs.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB5_22
# BB#20:                                # %lor.lhs.false.23
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	ja	.LBB5_22
# BB#21:                                # %lor.lhs.false.26
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB5_23
.LBB5_22:                               # %if.then.31
	movq	$0, -8(%rbp)
	jmp	.LBB5_39
.LBB5_23:                               # %if.end.32
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	168(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB5_24:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB5_38
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB5_24 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpl	$0, 8(%rax)
	jl	.LBB5_27
# BB#26:                                # %lor.lhs.false.41
                                        #   in Loop: Header=BB5_24 Depth=1
	movq	-104(%rbp), %rax
	cmpl	$0, 12(%rax)
	jge	.LBB5_28
.LBB5_27:                               # %if.then.45
                                        #   in Loop: Header=BB5_24 Depth=1
	jmp	.LBB5_34
.LBB5_28:                               # %if.end.46
                                        #   in Loop: Header=BB5_24 Depth=1
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	addsd	%xmm0, %xmm1
	subsd	-24(%rbp), %xmm1
	movq	-104(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm2
	addsd	%xmm0, %xmm2
	subsd	-32(%rbp), %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	hypot
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jbe	.LBB5_30
# BB#29:                                # %cond.true
                                        #   in Loop: Header=BB5_24 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB5_31
.LBB5_30:                               # %cond.false
                                        #   in Loop: Header=BB5_24 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB5_31:                               # %cond.end
                                        #   in Loop: Header=BB5_24 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_33
# BB#32:                                # %if.then.58
                                        #   in Loop: Header=BB5_24 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB5_33:                               # %if.end.59
                                        #   in Loop: Header=BB5_24 Depth=1
	jmp	.LBB5_34
.LBB5_34:                               # %for.inc
                                        #   in Loop: Header=BB5_24 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB5_36
# BB#35:                                # %cond.true.61
                                        #   in Loop: Header=BB5_24 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB5_37
.LBB5_36:                               # %cond.false.62
                                        #   in Loop: Header=BB5_24 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB5_37
.LBB5_37:                               # %cond.end.63
                                        #   in Loop: Header=BB5_24 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB5_24
.LBB5_38:                               # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_39:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_find_sample_point, .Lfunc_end5-gimp_image_find_sample_point
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_add_sample_point_at_pos,@object # @__func__.gimp_image_add_sample_point_at_pos
.L__func__.gimp_image_add_sample_point_at_pos:
	.asciz	"gimp_image_add_sample_point_at_pos"
	.size	.L__func__.gimp_image_add_sample_point_at_pos, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"x >= 0 && x < gimp_image_get_width (image)"
	.size	.L.str.2, 43

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"y >= 0 && y < gimp_image_get_height (image)"
	.size	.L.str.3, 44

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"undo-type\004Add Sample Point"
	.size	.L.str.4, 27

	.type	.L__func__.gimp_image_add_sample_point,@object # @__func__.gimp_image_add_sample_point
.L__func__.gimp_image_add_sample_point:
	.asciz	"gimp_image_add_sample_point"
	.size	.L__func__.gimp_image_add_sample_point, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"sample_point != NULL"
	.size	.L.str.5, 21

	.type	.L__func__.gimp_image_remove_sample_point,@object # @__func__.gimp_image_remove_sample_point
.L__func__.gimp_image_remove_sample_point:
	.asciz	"gimp_image_remove_sample_point"
	.size	.L__func__.gimp_image_remove_sample_point, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"undo-type\004Remove Sample Point"
	.size	.L.str.6, 30

	.type	.L__func__.gimp_image_move_sample_point,@object # @__func__.gimp_image_move_sample_point
.L__func__.gimp_image_move_sample_point:
	.asciz	"gimp_image_move_sample_point"
	.size	.L__func__.gimp_image_move_sample_point, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"x >= 0"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"y >= 0"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"x < gimp_image_get_width (image)"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"y < gimp_image_get_height (image)"
	.size	.L.str.10, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"undo-type\004Move Sample Point"
	.size	.L.str.11, 28

	.type	.L__func__.gimp_image_get_sample_points,@object # @__func__.gimp_image_get_sample_points
.L__func__.gimp_image_get_sample_points:
	.asciz	"gimp_image_get_sample_points"
	.size	.L__func__.gimp_image_get_sample_points, 29

	.type	.L__func__.gimp_image_find_sample_point,@object # @__func__.gimp_image_find_sample_point
.L__func__.gimp_image_find_sample_point:
	.asciz	"gimp_image_find_sample_point"
	.size	.L__func__.gimp_image_find_sample_point, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"epsilon_x > 0 && epsilon_y > 0"
	.size	.L.str.12, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
