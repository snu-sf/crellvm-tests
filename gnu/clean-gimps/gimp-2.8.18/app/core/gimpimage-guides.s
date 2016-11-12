	.text
	.file	"gimpimage-guides.bc"
	.globl	gimp_image_add_hguide
	.align	16, 0x90
	.type	gimp_image_add_hguide,@function
gimp_image_add_hguide:                  # @gimp_image_add_hguide
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_hguide, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
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
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB0_16
# BB#15:                                # %if.then.16
	jmp	.LBB0_17
.LBB0_16:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_hguide, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_17:                               # %if.end.18
	jmp	.LBB0_18
.LBB0_18:                               # %do.end.19
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	392(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 392(%rax)
	movl	%ecx, %esi
	callq	gimp_guide_new
	movq	%rax, -32(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.22
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.3, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_guide
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB0_20:                               # %if.end.25
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_image_add_guide
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_add_hguide, .Lfunc_end0-gimp_image_add_hguide
	.cfi_endproc

	.globl	gimp_image_add_guide
	.align	16, 0x90
	.type	gimp_image_add_guide,@function
gimp_image_add_guide:                   # @gimp_image_add_guide
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
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
	movabsq	$.L__func__.gimp_image_add_guide, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_25
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_guide_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_guide, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_25
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-32(%rbp), %rsi
	movq	%rax, 152(%rsi)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_guide_set_position
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_guide_added
.LBB1_25:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_add_guide, .Lfunc_end1-gimp_image_add_guide
	.cfi_endproc

	.globl	gimp_image_add_vguide
	.align	16, 0x90
	.type	gimp_image_add_vguide,@function
gimp_image_add_vguide:                  # @gimp_image_add_vguide
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
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
	movabsq	$.L__func__.gimp_image_add_vguide, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_21
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpl	$0, -20(%rbp)
	jl	.LBB2_16
# BB#14:                                # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB2_16
# BB#15:                                # %if.then.16
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_vguide, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_21
.LBB2_17:                               # %if.end.18
	jmp	.LBB2_18
.LBB2_18:                               # %do.end.19
	movl	$1, %edi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	392(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 392(%rax)
	movl	%ecx, %esi
	callq	gimp_guide_new
	movq	%rax, -32(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.22
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.5, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_guide
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB2_20:                               # %if.end.25
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_image_add_guide
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_add_vguide, .Lfunc_end2-gimp_image_add_vguide
	.cfi_endproc

	.globl	gimp_image_remove_guide
	.align	16, 0x90
	.type	gimp_image_remove_guide,@function
gimp_image_remove_guide:                # @gimp_image_remove_guide
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
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
	movabsq	$.L__func__.gimp_image_remove_guide, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_27
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_guide_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_remove_guide, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_27
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB3_26
# BB#25:                                # %if.then.42
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.7, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_guide
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB3_26:                               # %if.end.45
	movq	-32(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-32(%rbp), %rsi
	movq	%rax, 152(%rsi)
	movq	-16(%rbp), %rdi
	callq	gimp_guide_removed
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_guide_removed
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	callq	gimp_guide_set_position
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_unref
.LBB3_27:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_remove_guide, .Lfunc_end3-gimp_image_remove_guide
	.cfi_endproc

	.globl	gimp_image_move_guide
	.align	16, 0x90
	.type	gimp_image_move_guide,@function
gimp_image_move_guide:                  # @gimp_image_move_guide
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_guide, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_guide_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_guide, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.39
	cmpl	$0, -20(%rbp)
	jl	.LBB4_27
# BB#26:                                # %if.then.41
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_guide, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_28:                               # %if.end.43
	jmp	.LBB4_29
.LBB4_29:                               # %do.end.44
	movq	-16(%rbp), %rdi
	callq	gimp_guide_get_orientation
	cmpl	$0, %eax
	jne	.LBB4_36
# BB#30:                                # %if.then.47
	jmp	.LBB4_31
.LBB4_31:                               # %do.body.48
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB4_33
# BB#32:                                # %if.then.51
	jmp	.LBB4_34
.LBB4_33:                               # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_guide, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_34:                               # %if.end.53
	jmp	.LBB4_35
.LBB4_35:                               # %do.end.54
	jmp	.LBB4_42
.LBB4_36:                               # %if.else.55
	jmp	.LBB4_37
.LBB4_37:                               # %do.body.56
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	movl	-80(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB4_39
# BB#38:                                # %if.then.59
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.60
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_move_guide, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_45
.LBB4_40:                               # %if.end.61
	jmp	.LBB4_41
.LBB4_41:                               # %do.end.62
	jmp	.LBB4_42
.LBB4_42:                               # %if.end.63
	cmpl	$0, -24(%rbp)
	je	.LBB4_44
# BB#43:                                # %if.then.65
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.11, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_guide
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB4_44:                               # %if.end.68
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_guide_set_position
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_guide_moved
.LBB4_45:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_move_guide, .Lfunc_end4-gimp_image_move_guide
	.cfi_endproc

	.globl	gimp_image_get_guides
	.align	16, 0x90
	.type	gimp_image_get_guides,@function
gimp_image_get_guides:                  # @gimp_image_get_guides
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
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_guides, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_get_guides, .Lfunc_end5-gimp_image_get_guides
	.cfi_endproc

	.globl	gimp_image_get_guide
	.align	16, 0x90
	.type	gimp_image_get_guide,@function
gimp_image_get_guide:                   # @gimp_image_get_guide
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
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_guide, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_23
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_22
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_guide_get_ID
	cmpl	-20(%rbp), %eax
	jne	.LBB6_17
# BB#15:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-64(%rbp), %rdi
	callq	gimp_guide_get_position
	cmpl	$0, %eax
	jl	.LBB6_17
# BB#16:                                # %if.then.21
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_23
.LBB6_17:                               # %if.end.22
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_18
.LBB6_18:                               # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_21
.LBB6_20:                               # %cond.false
                                        #   in Loop: Header=BB6_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_21
.LBB6_21:                               # %cond.end
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB6_13
.LBB6_22:                               # %for.end
	movq	$0, -8(%rbp)
.LBB6_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_get_guide, .Lfunc_end6-gimp_image_get_guide
	.cfi_endproc

	.globl	gimp_image_get_next_guide
	.align	16, 0x90
	.type	gimp_image_get_next_guide,@function
gimp_image_get_next_guide:              # @gimp_image_get_next_guide
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_next_guide, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_34
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_next_guide, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_34
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	cmpl	$0, -20(%rbp)
	jne	.LBB7_19
# BB#18:                                # %if.then.18
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.19
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB7_20:                               # %if.end.20
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	152(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB7_21:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_33
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_guide_get_position
	cmpl	$0, %eax
	jge	.LBB7_24
# BB#23:                                # %if.then.28
                                        #   in Loop: Header=BB7_21 Depth=1
	jmp	.LBB7_29
.LBB7_24:                               # %if.end.29
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB7_26
# BB#25:                                # %if.then.31
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_34
.LBB7_26:                               # %if.end.32
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-72(%rbp), %rdi
	callq	gimp_guide_get_ID
	cmpl	-20(%rbp), %eax
	jne	.LBB7_28
# BB#27:                                # %if.then.35
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
.LBB7_28:                               # %if.end.36
                                        #   in Loop: Header=BB7_21 Depth=1
	jmp	.LBB7_29
.LBB7_29:                               # %for.inc
                                        #   in Loop: Header=BB7_21 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_32
.LBB7_31:                               # %cond.false
                                        #   in Loop: Header=BB7_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_32
.LBB7_32:                               # %cond.end
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB7_21
.LBB7_33:                               # %for.end
	movq	$0, -8(%rbp)
.LBB7_34:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_get_next_guide, .Lfunc_end7-gimp_image_get_next_guide
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	gimp_image_find_guide
	.align	16, 0x90
	.type	gimp_image_find_guide,@function
gimp_image_find_guide:                  # @gimp_image_find_guide
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
	subq	$192, %rsp
	movsd	.LCPI8_0, %xmm4         # xmm4 = mem[0],zero
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
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_find_guide, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_48
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_16
# BB#14:                                # %land.lhs.true.13
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_16
# BB#15:                                # %if.then.15
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_find_guide, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_48
.LBB8_17:                               # %if.end.17
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.18
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	152(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB8_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB8_47
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jge	.LBB8_22
# BB#21:                                # %if.then.27
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_43
.LBB8_22:                               # %if.end.28
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-104(%rbp), %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	je	.LBB8_23
	jmp	.LBB8_49
.LBB8_49:                               # %if.end.28
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB8_32
	jmp	.LBB8_41
.LBB8_23:                               # %sw.bb
                                        #   in Loop: Header=BB8_19 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-108(%rbp), %xmm1
	subsd	-32(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB8_19 Depth=1
	cvtsi2sdl	-108(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB8_26
.LBB8_25:                               # %cond.false
                                        #   in Loop: Header=BB8_19 Depth=1
	cvtsi2sdl	-108(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB8_26:                               # %cond.end
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jbe	.LBB8_28
# BB#27:                                # %cond.true.39
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB8_29
.LBB8_28:                               # %cond.false.40
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB8_29:                               # %cond.end.41
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_31
# BB#30:                                # %if.then.45
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB8_31:                               # %if.end.46
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_42
.LBB8_32:                               # %sw.bb.47
                                        #   in Loop: Header=BB8_19 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-108(%rbp), %xmm1
	subsd	-24(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_34
# BB#33:                                # %cond.true.52
                                        #   in Loop: Header=BB8_19 Depth=1
	cvtsi2sdl	-108(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB8_35
.LBB8_34:                               # %cond.false.56
                                        #   in Loop: Header=BB8_19 Depth=1
	cvtsi2sdl	-108(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB8_35:                               # %cond.end.59
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	-48(%rbp), %xmm2
	mulsd	-40(%rbp), %xmm2
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jbe	.LBB8_37
# BB#36:                                # %cond.true.63
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB8_38
.LBB8_37:                               # %cond.false.64
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-48(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB8_38:                               # %cond.end.67
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_40
# BB#39:                                # %if.then.71
                                        #   in Loop: Header=BB8_19 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB8_40:                               # %if.end.74
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_42
.LBB8_41:                               # %sw.default
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_43
.LBB8_42:                               # %sw.epilog
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_43
.LBB8_43:                               # %for.inc
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB8_45
# BB#44:                                # %cond.true.76
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB8_46
.LBB8_45:                               # %cond.false.77
                                        #   in Loop: Header=BB8_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB8_46
.LBB8_46:                               # %cond.end.78
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB8_19
.LBB8_47:                               # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_48:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_find_guide, .Lfunc_end8-gimp_image_find_guide
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_add_hguide,@object # @__func__.gimp_image_add_hguide
.L__func__.gimp_image_add_hguide:
	.asciz	"gimp_image_add_hguide"
	.size	.L__func__.gimp_image_add_hguide, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"position >= 0 && position <= gimp_image_get_height (image)"
	.size	.L.str.2, 59

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"undo-type\004Add Horizontal Guide"
	.size	.L.str.3, 31

	.type	.L__func__.gimp_image_add_vguide,@object # @__func__.gimp_image_add_vguide
.L__func__.gimp_image_add_vguide:
	.asciz	"gimp_image_add_vguide"
	.size	.L__func__.gimp_image_add_vguide, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"position >= 0 && position <= gimp_image_get_width (image)"
	.size	.L.str.4, 58

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"undo-type\004Add Vertical Guide"
	.size	.L.str.5, 29

	.type	.L__func__.gimp_image_add_guide,@object # @__func__.gimp_image_add_guide
.L__func__.gimp_image_add_guide:
	.asciz	"gimp_image_add_guide"
	.size	.L__func__.gimp_image_add_guide, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_GUIDE (guide)"
	.size	.L.str.6, 22

	.type	.L__func__.gimp_image_remove_guide,@object # @__func__.gimp_image_remove_guide
.L__func__.gimp_image_remove_guide:
	.asciz	"gimp_image_remove_guide"
	.size	.L__func__.gimp_image_remove_guide, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"undo-type\004Remove Guide"
	.size	.L.str.7, 23

	.type	.L__func__.gimp_image_move_guide,@object # @__func__.gimp_image_move_guide
.L__func__.gimp_image_move_guide:
	.asciz	"gimp_image_move_guide"
	.size	.L__func__.gimp_image_move_guide, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"position >= 0"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"position <= gimp_image_get_height (image)"
	.size	.L.str.9, 42

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"position <= gimp_image_get_width (image)"
	.size	.L.str.10, 41

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"undo-type\004Move Guide"
	.size	.L.str.11, 21

	.type	.L__func__.gimp_image_get_guides,@object # @__func__.gimp_image_get_guides
.L__func__.gimp_image_get_guides:
	.asciz	"gimp_image_get_guides"
	.size	.L__func__.gimp_image_get_guides, 22

	.type	.L__func__.gimp_image_get_guide,@object # @__func__.gimp_image_get_guide
.L__func__.gimp_image_get_guide:
	.asciz	"gimp_image_get_guide"
	.size	.L__func__.gimp_image_get_guide, 21

	.type	.L__func__.gimp_image_get_next_guide,@object # @__func__.gimp_image_get_next_guide
.L__func__.gimp_image_get_next_guide:
	.asciz	"gimp_image_get_next_guide"
	.size	.L__func__.gimp_image_get_next_guide, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"guide_found != NULL"
	.size	.L.str.12, 20

	.type	.L__func__.gimp_image_find_guide,@object # @__func__.gimp_image_find_guide
.L__func__.gimp_image_find_guide:
	.asciz	"gimp_image_find_guide"
	.size	.L__func__.gimp_image_find_guide, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"epsilon_x > 0 && epsilon_y > 0"
	.size	.L.str.13, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
