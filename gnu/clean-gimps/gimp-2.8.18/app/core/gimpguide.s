	.text
	.file	"gimpguide.bc"
	.globl	gimp_guide_get_type
	.align	16, 0x90
	.type	gimp_guide_get_type,@function
gimp_guide_get_type:                    # @gimp_guide_get_type
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_guide_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_guide_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$.L.str, %rdi
	callq	g_intern_static_string
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$144, %edx
	movabsq	$gimp_guide_class_intern_init, %rsi
	movl	$40, %r8d
	movabsq	$gimp_guide_init, %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_guide_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_guide_get_type.g_define_type_id__volatile, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_guide_get_type, .Lfunc_end0-gimp_guide_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_guide_class_intern_init,@function
gimp_guide_class_intern_init:           # @gimp_guide_class_intern_init
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
	movq	%rax, gimp_guide_parent_class
	cmpl	$0, GimpGuide_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpGuide_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_guide_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_guide_class_intern_init, .Lfunc_end1-gimp_guide_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_guide_init,@function
gimp_guide_init:                        # @gimp_guide_init
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
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_guide_init, .Lfunc_end2-gimp_guide_init
	.cfi_endproc

	.globl	gimp_guide_new
	.align	16, 0x90
	.type	gimp_guide_new,@function
gimp_guide_new:                         # @gimp_guide_new
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
	movl	%esi, -8(%rbp)
	callq	gimp_guide_get_type
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rcx
	xorl	%edi, %edi
	movl	%edi, %r9d
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_guide_new, .Lfunc_end3-gimp_guide_new
	.cfi_endproc

	.globl	gimp_guide_get_ID
	.align	16, 0x90
	.type	gimp_guide_get_ID,@function
gimp_guide_get_ID:                      # @gimp_guide_get_ID
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
	callq	gimp_guide_get_type
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
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_guide_get_ID, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB4_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_guide_get_ID, .Lfunc_end4-gimp_guide_get_ID
	.cfi_endproc

	.globl	gimp_guide_get_orientation
	.align	16, 0x90
	.type	gimp_guide_get_orientation,@function
gimp_guide_get_orientation:             # @gimp_guide_get_orientation
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
	callq	gimp_guide_get_type
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
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_guide_get_orientation, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$2, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_guide_get_orientation, .Lfunc_end5-gimp_guide_get_orientation
	.cfi_endproc

	.globl	gimp_guide_set_orientation
	.align	16, 0x90
	.type	gimp_guide_set_orientation,@function
gimp_guide_set_orientation:             # @gimp_guide_set_orientation
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
	callq	gimp_guide_get_type
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
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_guide_set_orientation, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB6_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_guide_set_orientation, .Lfunc_end6-gimp_guide_set_orientation
	.cfi_endproc

	.globl	gimp_guide_get_position
	.align	16, 0x90
	.type	gimp_guide_get_position,@function
gimp_guide_get_position:                # @gimp_guide_get_position
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
	callq	gimp_guide_get_type
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
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_guide_get_position, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_guide_get_position, .Lfunc_end7-gimp_guide_get_position
	.cfi_endproc

	.globl	gimp_guide_set_position
	.align	16, 0x90
	.type	gimp_guide_set_position,@function
gimp_guide_set_position:                # @gimp_guide_set_position
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
	callq	gimp_guide_get_type
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
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_guide_set_position, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB8_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_guide_set_position, .Lfunc_end8-gimp_guide_set_position
	.cfi_endproc

	.globl	gimp_guide_removed
	.align	16, 0x90
	.type	gimp_guide_removed,@function
gimp_guide_removed:                     # @gimp_guide_removed
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
	callq	gimp_guide_get_type
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
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_guide_removed, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_guide_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB9_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_guide_removed, .Lfunc_end9-gimp_guide_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_guide_class_init,@function
gimp_guide_class_init:                  # @gimp_guide_class_init
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp33:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.6, %rdi
	movl	$1, %edx
	movl	$136, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -36(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$235, %edx
	movabsq	$gimp_guide_set_property, %r9
	movabsq	$gimp_guide_get_property, %r10
	movl	%eax, gimp_guide_signals
	movq	-24(%rbp), %r11
	movq	%r10, 32(%r11)
	movq	-24(%rbp), %r10
	movq	%r9, 24(%r10)
	movq	-16(%rbp), %r9
	movq	$0, 136(%r9)
	movq	-24(%rbp), %r9
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movq	%r10, %rdx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	-72(%rbp), %eax         # 4-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movl	%eax, %r9d
	movl	$235, (%rsp)
	callq	g_param_spec_uint
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.2, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$2, %r8d
	movl	$263, %r9d              # imm = 0x107
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$262144, %r8d           # imm = 0x40000
	movl	$263, %r9d              # imm = 0x107
	movq	-24(%rbp), %rcx
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movl	-92(%rbp), %ebx         # 4-byte Reload
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%ebx, %ecx
	movl	%r9d, -108(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$263, (%rsp)            # imm = 0x107
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_guide_class_init, .Lfunc_end10-gimp_guide_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_guide_get_property,@function
gimp_guide_get_property:                # @gimp_guide_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_guide_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB11_1
	jmp	.LBB11_8
.LBB11_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB11_2
	jmp	.LBB11_9
.LBB11_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_4
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	callq	g_value_set_uint
	jmp	.LBB11_7
.LBB11_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	28(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB11_7
.LBB11_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB11_7
.LBB11_4:                               # %sw.default
	jmp	.LBB11_5
.LBB11_5:                               # %do.body
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
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$125, %edx
	movabsq	$.L.str.9, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB11_7
.LBB11_7:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_guide_get_property, .Lfunc_end11-gimp_guide_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_guide_set_property,@function
gimp_guide_set_property:                # @gimp_guide_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_guide_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB12_1
	jmp	.LBB12_8
.LBB12_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB12_2
	jmp	.LBB12_9
.LBB12_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_4
.LBB12_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_uint
	movq	-40(%rbp), %rdi
	movl	%eax, 24(%rdi)
	jmp	.LBB12_7
.LBB12_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 28(%rdi)
	jmp	.LBB12_7
.LBB12_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 32(%rdi)
	jmp	.LBB12_7
.LBB12_4:                               # %sw.default
	jmp	.LBB12_5
.LBB12_5:                               # %do.body
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
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$150, %edx
	movabsq	$.L.str.9, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB12_7
.LBB12_7:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_guide_set_property, .Lfunc_end12-gimp_guide_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
	movl	$.L.str.3, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.type	gimp_guide_get_type.g_define_type_id__volatile,@object # @gimp_guide_get_type.g_define_type_id__volatile
	.local	gimp_guide_get_type.g_define_type_id__volatile
	.comm	gimp_guide_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpGuide"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"id"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"orientation"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Gimp-Core"
	.size	.L.str.3, 10

	.type	.L__func__.gimp_guide_get_ID,@object # @__func__.gimp_guide_get_ID
.L__func__.gimp_guide_get_ID:
	.asciz	"gimp_guide_get_ID"
	.size	.L__func__.gimp_guide_get_ID, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_GUIDE (guide)"
	.size	.L.str.4, 22

	.type	.L__func__.gimp_guide_get_orientation,@object # @__func__.gimp_guide_get_orientation
.L__func__.gimp_guide_get_orientation:
	.asciz	"gimp_guide_get_orientation"
	.size	.L__func__.gimp_guide_get_orientation, 27

	.type	.L__func__.gimp_guide_set_orientation,@object # @__func__.gimp_guide_set_orientation
.L__func__.gimp_guide_set_orientation:
	.asciz	"gimp_guide_set_orientation"
	.size	.L__func__.gimp_guide_set_orientation, 27

	.type	.L__func__.gimp_guide_get_position,@object # @__func__.gimp_guide_get_position
.L__func__.gimp_guide_get_position:
	.asciz	"gimp_guide_get_position"
	.size	.L__func__.gimp_guide_get_position, 24

	.type	.L__func__.gimp_guide_set_position,@object # @__func__.gimp_guide_set_position
.L__func__.gimp_guide_set_position:
	.asciz	"gimp_guide_set_position"
	.size	.L__func__.gimp_guide_set_position, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"position"
	.size	.L.str.5, 9

	.type	.L__func__.gimp_guide_removed,@object # @__func__.gimp_guide_removed
.L__func__.gimp_guide_removed:
	.asciz	"gimp_guide_removed"
	.size	.L__func__.gimp_guide_removed, 19

	.type	gimp_guide_signals,@object # @gimp_guide_signals
	.local	gimp_guide_signals
	.comm	gimp_guide_signals,4,4
	.type	gimp_guide_parent_class,@object # @gimp_guide_parent_class
	.local	gimp_guide_parent_class
	.comm	gimp_guide_parent_class,8,8
	.type	GimpGuide_private_offset,@object # @GimpGuide_private_offset
	.local	GimpGuide_private_offset
	.comm	GimpGuide_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"removed"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpguide.c"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
