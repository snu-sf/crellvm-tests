	.text
	.file	"gimptextlayer-transform.bc"
	.globl	gimp_text_layer_scale
	.align	16, 0x90
	.type	gimp_text_layer_scale,@function
gimp_text_layer_scale:                  # @gimp_text_layer_scale
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
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_layer_scale, .Lfunc_end0-gimp_text_layer_scale
	.cfi_endproc

	.globl	gimp_text_layer_flip
	.align	16, 0x90
	.type	gimp_text_layer_flip,@function
gimp_text_layer_flip:                   # @gimp_text_layer_flip
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
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_text_layer_transform_flip
	cmpl	$0, %eax
	je	.LBB1_4
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.7
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_flip
.LBB1_3:                                # %if.end
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	callq	gimp_text_layer_parent_class
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	callq	*%rax
.LBB1_5:                                # %if.end.11
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_layer_flip, .Lfunc_end1-gimp_text_layer_flip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_transform_flip,@function
gimp_text_layer_transform_flip:         # @gimp_text_layer_transform_flip
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
	subq	$112, %rsp
	leaq	-104(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_text_layer_get_transformation
	cmpl	$0, %eax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	leaq	-104(%rbp), %rdi
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_flip
	leaq	-104(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_text_layer_set_transformation
	movl	%eax, -4(%rbp)
.LBB2_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_layer_transform_flip, .Lfunc_end2-gimp_text_layer_transform_flip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_parent_class,@function
gimp_text_layer_parent_class:           # @gimp_text_layer_parent_class
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
	cmpq	$0, gimp_text_layer_parent_class.parent_class
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	gimp_text_layer_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_text_layer_parent_class.parent_class
.LBB3_2:                                # %if.end
	movq	gimp_text_layer_parent_class.parent_class, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_layer_parent_class, .Lfunc_end3-gimp_text_layer_parent_class
	.cfi_endproc

	.globl	gimp_text_layer_rotate
	.align	16, 0x90
	.type	gimp_text_layer_rotate,@function
gimp_text_layer_rotate:                 # @gimp_text_layer_rotate
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
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_layer_transform_rotate
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then.7
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_rotate
.LBB4_3:                                # %if.end
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	callq	gimp_text_layer_parent_class
	movq	400(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %ecx
	callq	*%rax
.LBB4_5:                                # %if.end.11
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_layer_rotate, .Lfunc_end4-gimp_text_layer_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_transform_rotate,@function
gimp_text_layer_transform_rotate:       # @gimp_text_layer_transform_rotate
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
	leaq	-112(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_text_layer_get_transformation
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	leaq	-112(%rbp), %rdi
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_transform_matrix_rotate
	leaq	-112(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_text_layer_set_transformation
	movl	%eax, -4(%rbp)
.LBB5_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_layer_transform_rotate, .Lfunc_end5-gimp_text_layer_transform_rotate
	.cfi_endproc

	.globl	gimp_text_layer_transform
	.align	16, 0x90
	.type	gimp_text_layer_transform,@function
gimp_text_layer_transform:              # @gimp_text_layer_transform
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
	movq	32(%rbp), %rax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r11d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movq	%rax, -56(%rbp)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_layer_transform, .Lfunc_end6-gimp_text_layer_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_get_transformation,@function
gimp_text_layer_get_transformation:     # @gimp_text_layer_get_transformation
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 104(%rsi)
	je	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 124(%rax)
	je	.LBB7_3
.LBB7_2:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_4
.LBB7_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_text_get_transformation
	movl	$1, -4(%rbp)
.LBB7_4:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_layer_get_transformation, .Lfunc_end7-gimp_text_layer_get_transformation
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_set_transformation,@function
gimp_text_layer_set_transformation:     # @gimp_text_layer_set_transformation
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_matrix3_is_affine
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str, %rdx
	leaq	-56(%rbp), %rcx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.2, %r9
	movq	-24(%rbp), %rdi
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	40(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movq	$0, (%rsp)
	movb	$2, %al
	callq	gimp_text_layer_set
	movl	$1, -4(%rbp)
.LBB8_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_layer_set_transformation, .Lfunc_end8-gimp_text_layer_set_transformation
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"transformation"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"offset-x"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"offset-y"
	.size	.L.str.2, 9

	.type	gimp_text_layer_parent_class.parent_class,@object # @gimp_text_layer_parent_class.parent_class
	.local	gimp_text_layer_parent_class.parent_class
	.comm	gimp_text_layer_parent_class.parent_class,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
