	.text
	.file	"jcinit.bc"
	.globl	jinit_compress_master
	.align	16, 0x90
	.type	jinit_compress_master,@function
jinit_compress_master:                  # @jinit_compress_master
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	88(%rbx), %eax
	cmpl	$8, %eax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$16, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB0_2:                                # %if.end
	cmpl	$0, 52(%rbx)
	je	.LBB0_5
# BB#3:                                 # %lor.lhs.false
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.LBB0_5
# BB#4:                                 # %lor.lhs.false.6
	movl	56(%rbx), %ecx
	testl	%ecx, %ecx
	jg	.LBB0_6
.LBB0_5:                                # %if.then.8
	movq	(%rbx), %rax
	movl	$33, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	48(%rbx), %eax
	movl	56(%rbx), %ecx
.LBB0_6:                                # %if.end.13
	movl	%eax, %eax
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	movl	%ecx, %eax
	cmpq	%rcx, %rax
	je	.LBB0_8
# BB#7:                                 # %if.then.21
	movq	(%rbx), %rax
	movl	$72, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_8:                                # %if.end.26
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	jinit_c_master_control
	cmpl	$0, 288(%rbx)
	jne	.LBB0_10
# BB#9:                                 # %if.then.27
	movq	%rbx, %rdi
	callq	jinit_color_converter
	movq	%rbx, %rdi
	callq	jinit_downsampler
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	jinit_c_prep_controller
.LBB0_10:                               # %if.end.28
	movq	%rbx, %rdi
	callq	jinit_forward_dct
	cmpl	$0, 292(%rbx)
	je	.LBB0_12
# BB#11:                                # %if.then.30
	movq	%rbx, %rdi
	callq	jinit_arith_encoder
	jmp	.LBB0_13
.LBB0_12:                               # %if.else
	movq	%rbx, %rdi
	callq	jinit_huff_encoder
.LBB0_13:                               # %if.end.31
	movb	$1, %al
	cmpl	$1, 272(%rbx)
	jg	.LBB0_15
# BB#14:                                # %lor.rhs
	cmpl	$0, 296(%rbx)
	setne	%al
.LBB0_15:                               # %lor.end
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	jinit_c_coef_controller
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	jinit_c_main_controller
	movq	%rbx, %rdi
	callq	jinit_marker_writer
	movq	8(%rbx), %rax
	movq	%rbx, %rdi
	callq	*48(%rax)
	movq	528(%rbx), %rax
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end0:
	.size	jinit_compress_master, .Lfunc_end0-jinit_compress_master
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
