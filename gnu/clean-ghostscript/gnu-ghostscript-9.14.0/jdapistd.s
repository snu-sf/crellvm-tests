	.text
	.file	"jdapistd.bc"
	.globl	jpeg_start_decompress
	.align	16, 0x90
	.type	jpeg_start_decompress,@function
jpeg_start_decompress:                  # @jpeg_start_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movl	36(%r14), %eax
	cmpl	$202, %eax
	je	.LBB0_4
# BB#1:                                 # %entry
	cmpl	$203, %eax
	je	.LBB0_7
# BB#2:                                 # %entry
	cmpl	$204, %eax
	jne	.LBB0_18
# BB#3:                                 # %if.end.44.thread
	leaq	792(%r14), %rbx
	jmp	.LBB0_22
.LBB0_4:                                # %if.then
	movq	%r14, %rdi
	callq	jinit_master_decompress
	cmpl	$0, 88(%r14)
	je	.LBB0_6
# BB#5:                                 # %if.then.1
	movl	$207, 36(%r14)
	jmp	.LBB0_26
.LBB0_18:                               # %if.then.39
	movq	(%r14), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r14, %rdi
	callq	*(%rcx)
	jmp	.LBB0_19
.LBB0_6:                                # %if.end.4.thread
	movl	$203, 36(%r14)
.LBB0_7:                                # %if.then.7
	movq	824(%r14), %rax
	cmpl	$0, 32(%rax)
	je	.LBB0_17
# BB#8:                                 # %for.cond.preheader
	movq	16(%r14), %rcx
	jmp	.LBB0_9
.LBB0_16:                               # %if.then.30
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	432(%r14), %edx
	addq	%rax, %rdx
	movq	%rdx, 16(%rcx)
	.align	16, 0x90
.LBB0_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB0_11
# BB#10:                                # %if.then.11
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	%r14, %rdi
	callq	*(%rcx)
.LBB0_11:                               # %if.end.14
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	824(%r14), %rax
	movq	%r14, %rdi
	callq	*(%rax)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB0_27
# BB#12:                                # %if.end.14
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpl	$2, %eax
	je	.LBB0_17
# BB#13:                                # %if.end.21
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	16(%r14), %rcx
	andl	$-3, %eax
	cmpl	$1, %eax
	jne	.LBB0_9
# BB#14:                                # %if.end.21
                                        #   in Loop: Header=BB0_9 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_9
# BB#15:                                # %if.then.26
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	8(%rcx), %rdx
	incq	%rdx
	movq	%rdx, 8(%rcx)
	movq	16(%rcx), %rax
	cmpq	%rax, %rdx
	jl	.LBB0_9
	jmp	.LBB0_16
.LBB0_17:                               # %if.end.35
	movl	172(%r14), %eax
	movl	%eax, 180(%r14)
.LBB0_19:                               # %if.end.44
	leaq	792(%r14), %rbx
	cmpl	$204, 36(%r14)
	je	.LBB0_22
# BB#20:                                # %if.then.i
	movq	792(%r14), %rax
	movq	%r14, %rdi
	callq	*(%rax)
	movl	$0, 168(%r14)
	movl	$204, 36(%r14)
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_21:                               # %while.body.i
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	(%r14), %rax
	movl	$49, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB0_22:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB0_21
# BB#23:                                # %output_pass_setup.exit
	movl	$206, %eax
	cmpl	$0, 92(%r14)
	jne	.LBB0_25
# BB#24:                                # %select.mid
	movl	$205, %eax
.LBB0_25:                               # %select.end
	movl	%eax, 36(%r14)
.LBB0_26:                               # %return
	movl	$1, %ecx
.LBB0_27:                               # %return
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	jpeg_start_decompress, .Lfunc_end0-jpeg_start_decompress
	.cfi_endproc

	.globl	jpeg_read_scanlines
	.align	16, 0x90
	.type	jpeg_read_scanlines,@function
jpeg_read_scanlines:                    # @jpeg_read_scanlines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 48
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	cmpl	$205, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB1_2:                                # %if.end
	movl	140(%rbx), %eax
	movl	168(%rbx), %ecx
	cmpl	%eax, %ecx
	jae	.LBB1_3
# BB#4:                                 # %if.end.9
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB1_6
# BB#5:                                 # %if.then.11
	movq	%rcx, 8(%rdx)
	movq	%rax, 16(%rdx)
	movq	%rbx, %rdi
	callq	*(%rdx)
.LBB1_6:                                # %if.end.19
	movl	$0, 12(%rsp)
	movq	800(%rbx), %rax
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %ecx
	callq	*8(%rax)
	movl	12(%rsp), %eax
	addl	%eax, 168(%rbx)
	jmp	.LBB1_7
.LBB1_3:                                # %if.then.5
	movq	(%rbx), %rax
	movl	$126, 40(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	xorl	%eax, %eax
.LBB1_7:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	jpeg_read_scanlines, .Lfunc_end1-jpeg_read_scanlines
	.cfi_endproc

	.globl	jpeg_read_raw_data
	.align	16, 0x90
	.type	jpeg_read_raw_data,@function
jpeg_read_raw_data:                     # @jpeg_read_raw_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 48
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	cmpl	$206, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB2_2:                                # %if.end
	movl	140(%rbx), %eax
	movl	168(%rbx), %ecx
	cmpl	%eax, %ecx
	jae	.LBB2_3
# BB#4:                                 # %if.end.9
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB2_6
# BB#5:                                 # %if.then.11
	movq	%rcx, 8(%rdx)
	movq	%rax, 16(%rdx)
	movq	%rbx, %rdi
	callq	*(%rdx)
.LBB2_6:                                # %if.end.19
	movl	428(%rbx), %ebp
	imull	420(%rbx), %ebp
	cmpl	%r15d, %ebp
	jbe	.LBB2_8
# BB#7:                                 # %if.then.22
	movq	(%rbx), %rax
	movl	$24, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB2_8:                                # %if.end.27
	movq	808(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB2_10
# BB#9:                                 # %if.end.29
	addl	%ebp, 168(%rbx)
	movl	%ebp, %eax
	jmp	.LBB2_10
.LBB2_3:                                # %if.then.5
	movq	(%rbx), %rax
	movl	$126, 40(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	xorl	%eax, %eax
.LBB2_10:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jpeg_read_raw_data, .Lfunc_end2-jpeg_read_raw_data
	.cfi_endproc

	.globl	jpeg_start_output
	.align	16, 0x90
	.type	jpeg_start_output,@function
jpeg_start_output:                      # @jpeg_start_output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	cmpl	$204, %eax
	je	.LBB3_3
# BB#1:                                 # %entry
	cmpl	$207, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB3_3:                                # %if.end
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovgl	%ebp, %eax
	movq	824(%rbx), %rcx
	cmpl	$0, 36(%rcx)
	je	.LBB3_5
# BB#4:                                 # %land.lhs.true.9
	movl	172(%rbx), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
.LBB3_5:                                # %if.end.13
	movl	%eax, 180(%rbx)
	cmpl	$204, 36(%rbx)
	je	.LBB3_8
# BB#6:                                 # %if.then.i
	movq	792(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	$0, 168(%rbx)
	movl	$204, 36(%rbx)
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_7:                                # %while.body.i
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	(%rbx), %rax
	movl	$49, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB3_8:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	792(%rbx), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB3_7
# BB#9:                                 # %output_pass_setup.exit
	movl	$206, %eax
	cmpl	$0, 92(%rbx)
	jne	.LBB3_11
# BB#10:                                # %select.mid
	movl	$205, %eax
.LBB3_11:                               # %select.end
	movl	%eax, 36(%rbx)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	jpeg_start_output, .Lfunc_end3-jpeg_start_output
	.cfi_endproc

	.globl	jpeg_finish_output
	.align	16, 0x90
	.type	jpeg_finish_output,@function
jpeg_finish_output:                     # @jpeg_finish_output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	leal	-205(%rax), %ecx
	cmpl	$1, %ecx
	ja	.LBB4_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 88(%rbx)
	je	.LBB4_4
# BB#2:                                 # %if.then
	movq	792(%rbx), %rax
	movq	%rbx, %rdi
	callq	*8(%rax)
	movl	$208, 36(%rbx)
	jmp	.LBB4_5
.LBB4_3:                                # %if.else
	cmpl	$208, %eax
	je	.LBB4_5
.LBB4_4:                                # %if.then.6
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
	.align	16, 0x90
.LBB4_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	172(%rbx), %eax
	cmpl	180(%rbx), %eax
	jg	.LBB4_8
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	824(%rbx), %rax
	cmpl	$0, 36(%rax)
	jne	.LBB4_8
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB4_5
	jmp	.LBB4_9
.LBB4_8:                                # %while.end
	movl	$207, 36(%rbx)
	movl	$1, %eax
.LBB4_9:                                # %return
	popq	%rbx
	retq
.Lfunc_end4:
	.size	jpeg_finish_output, .Lfunc_end4-jpeg_finish_output
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
