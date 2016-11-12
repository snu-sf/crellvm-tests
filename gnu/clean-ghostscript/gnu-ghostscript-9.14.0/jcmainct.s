	.text
	.file	"jcmainct.bc"
	.globl	jinit_c_main_controller
	.align	16, 0x90
	.type	jinit_c_main_controller,@function
jinit_c_main_controller:                # @jinit_c_main_controller
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r15
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$112, %edx
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 504(%r15)
	movq	$start_pass_main, (%r14)
	cmpl	$0, 288(%r15)
	jne	.LBB0_5
# BB#1:                                 # %if.end
	testl	%ebp, %ebp
	je	.LBB0_2
# BB#6:                                 # %if.then.3
	movq	(%r15), %rax
	movl	$3, 40(%rax)
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.LBB0_2:                                # %if.else
	cmpl	$0, 92(%r15)
	jle	.LBB0_5
# BB#3:                                 # %for.body.lr.ph
	movq	104(%r15), %rbp
	addq	$40, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rax
	movl	-4(%rbp), %edx
	movl	(%rbp), %ecx
	imull	-12(%rbp), %edx
	imull	-28(%rbp), %ecx
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*16(%rax)
	movq	%rax, 32(%r14,%rbx,8)
	incq	%rbx
	movslq	92(%r15), %rax
	addq	$96, %rbp
	cmpq	%rax, %rbx
	jl	.LBB0_4
.LBB0_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jinit_c_main_controller, .Lfunc_end0-jinit_c_main_controller
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass_main,@function
start_pass_main:                        # @start_pass_main
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 288(%rdi)
	jne	.LBB1_3
# BB#1:                                 # %if.end
	movq	504(%rdi), %rax
	movl	$0, 16(%rax)
	movl	$0, 20(%rax)
	movl	$0, 24(%rax)
	movl	%esi, 28(%rax)
	testl	%esi, %esi
	je	.LBB1_2
# BB#4:                                 # %sw.default
	movq	(%rdi), %rax
	movl	$3, 40(%rax)
	jmpq	*(%rax)                 # TAILCALL
.LBB1_2:                                # %sw.bb
	movq	$process_data_simple_main, 8(%rax)
.LBB1_3:                                # %cleanup
	retq
.Lfunc_end1:
	.size	start_pass_main, .Lfunc_end1-start_pass_main
	.cfi_endproc

	.align	16, 0x90
	.type	process_data_simple_main,@function
process_data_simple_main:               # @process_data_simple_main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 80
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	504(%rbp), %r14
	movl	16(%r14), %eax
	cmpl	368(%rbp), %eax
	jae	.LBB2_11
# BB#1:                                 # %while.body.lr.ph
	leaq	20(%r14), %r12
	leaq	32(%r14), %rbx
	movl	20(%r14), %eax
	.align	16, 0x90
.LBB2_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	364(%rbp), %ecx
	cmpl	%ecx, %eax
	jae	.LBB2_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	512(%rbp), %rax
	movl	%ecx, (%rsp)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	20(%rsp), %ecx          # 4-byte Reload
	movq	%rbx, %r8
	movq	%r12, %r9
	callq	*8(%rax)
	movl	(%r12), %eax
	movl	364(%rbp), %ecx
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%ecx, %eax
	jne	.LBB2_11
# BB#5:                                 # %if.end.8
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	520(%rbp), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*8(%rax)
	movl	24(%r14), %ecx
	testl	%eax, %eax
	je	.LBB2_6
# BB#8:                                 # %if.end.16
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%ecx, %ecx
	je	.LBB2_10
# BB#9:                                 # %if.then.19
                                        #   in Loop: Header=BB2_2 Depth=1
	incl	(%r13)
	movl	$0, 24(%r14)
.LBB2_10:                               # %if.end.21
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$0, 20(%r14)
	movl	16(%r14), %ecx
	incl	%ecx
	movl	%ecx, 16(%r14)
	xorl	%eax, %eax
	cmpl	368(%rbp), %ecx
	jb	.LBB2_2
	jmp	.LBB2_11
.LBB2_6:                                # %if.then.11
	testl	%ecx, %ecx
	jne	.LBB2_11
# BB#7:                                 # %if.then.13
	decl	(%r13)
	movl	$1, 24(%r14)
.LBB2_11:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	process_data_simple_main, .Lfunc_end2-process_data_simple_main
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
