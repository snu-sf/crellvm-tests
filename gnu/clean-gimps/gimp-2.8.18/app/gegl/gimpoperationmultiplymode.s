	.text
	.file	"gimpoperationmultiplymode.bc"
	.globl	gimp_operation_multiply_mode_get_type
	.align	16, 0x90
	.type	gimp_operation_multiply_mode_get_type,@function
gimp_operation_multiply_mode_get_type:  # @gimp_operation_multiply_mode_get_type
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
	movq	gimp_operation_multiply_mode_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_operation_multiply_mode_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_operation_point_layer_mode_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$400, %edx              # imm = 0x190
	movabsq	$gimp_operation_multiply_mode_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_operation_multiply_mode_init, %rcx
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
	movabsq	$gimp_operation_multiply_mode_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_operation_multiply_mode_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_operation_multiply_mode_get_type, .Lfunc_end0-gimp_operation_multiply_mode_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_multiply_mode_class_intern_init,@function
gimp_operation_multiply_mode_class_intern_init: # @gimp_operation_multiply_mode_class_intern_init
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
	movq	%rax, gimp_operation_multiply_mode_parent_class
	cmpl	$0, GimpOperationMultiplyMode_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOperationMultiplyMode_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_operation_multiply_mode_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_operation_multiply_mode_class_intern_init, .Lfunc_end1-gimp_operation_multiply_mode_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_multiply_mode_init,@function
gimp_operation_multiply_mode_init:      # @gimp_operation_multiply_mode_init
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
	.size	gimp_operation_multiply_mode_init, .Lfunc_end2-gimp_operation_multiply_mode_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_multiply_mode_class_init,@function
gimp_operation_multiply_mode_class_init: # @gimp_operation_multiply_mode_class_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gegl_operation_point_composer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	gegl_operation_class_set_keys
	movabsq	$gimp_operation_multiply_mode_process, %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 352(%rdx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_operation_multiply_mode_class_init, .Lfunc_end3-gimp_operation_multiply_mode_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_multiply_mode_process,@function
gimp_operation_multiply_mode_process:   # @gimp_operation_multiply_mode_process
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
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB4_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-64(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-64(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-64(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-64(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB4_1
.LBB4_3:                                # %while.end
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_operation_multiply_mode_process, .Lfunc_end4-gimp_operation_multiply_mode_process
	.cfi_endproc

	.type	gimp_operation_multiply_mode_get_type.g_define_type_id__volatile,@object # @gimp_operation_multiply_mode_get_type.g_define_type_id__volatile
	.local	gimp_operation_multiply_mode_get_type.g_define_type_id__volatile
	.comm	gimp_operation_multiply_mode_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOperationMultiplyMode"
	.size	.L.str, 26

	.type	gimp_operation_multiply_mode_parent_class,@object # @gimp_operation_multiply_mode_parent_class
	.local	gimp_operation_multiply_mode_parent_class
	.comm	gimp_operation_multiply_mode_parent_class,8,8
	.type	GimpOperationMultiplyMode_private_offset,@object # @GimpOperationMultiplyMode_private_offset
	.local	GimpOperationMultiplyMode_private_offset
	.comm	GimpOperationMultiplyMode_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp:multiply-mode"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"description"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP multiply mode operation"
	.size	.L.str.4, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
