	.text
	.file	"jcapistd.bc"
	.globl	jpeg_start_compress
	.align	16, 0x90
	.type	jpeg_start_compress,@function
jpeg_start_compress:                    # @jpeg_start_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB0_2:                                # %if.end
	testl	%ebp, %ebp
	je	.LBB0_4
# BB#3:                                 # %if.then.4
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	jpeg_suppress_tables
.LBB0_4:                                # %if.end.5
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*32(%rax)
	movq	40(%rbx), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
	movq	%rbx, %rdi
	callq	jinit_compress_master
	movq	496(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	$0, 344(%rbx)
	movl	$102, %eax
	cmpl	$0, 288(%rbx)
	jne	.LBB0_6
# BB#5:                                 # %select.mid
	movl	$101, %eax
.LBB0_6:                                # %select.end
	movl	%eax, 36(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jpeg_start_compress, .Lfunc_end0-jpeg_start_compress
	.cfi_endproc

	.globl	jpeg_write_scanlines
	.align	16, 0x90
	.type	jpeg_write_scanlines,@function
jpeg_write_scanlines:                   # @jpeg_write_scanlines
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
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	cmpl	$101, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB1_2:                                # %if.end
	movl	344(%rbx), %eax
	cmpl	52(%rbx), %eax
	jb	.LBB1_4
# BB#3:                                 # %if.then.5
	movq	(%rbx), %rax
	movl	$126, 40(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
.LBB1_4:                                # %if.end.9
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_6
# BB#5:                                 # %if.then.11
	movl	344(%rbx), %ecx
	movq	%rcx, 8(%rax)
	movl	52(%rbx), %ecx
	movq	%rcx, 16(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB1_6:                                # %if.end.19
	movq	496(%rbx), %rax
	cmpl	$0, 24(%rax)
	je	.LBB1_8
# BB#7:                                 # %if.then.20
	movq	%rbx, %rdi
	callq	*8(%rax)
.LBB1_8:                                # %if.end.22
	movl	52(%rbx), %ecx
	subl	344(%rbx), %ecx
	cmpl	%ebp, %ecx
	cmovael	%ebp, %ecx
	movl	$0, 12(%rsp)
	movq	504(%rbx), %rax
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*8(%rax)
	movl	12(%rsp), %eax
	addl	%eax, 344(%rbx)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	jpeg_write_scanlines, .Lfunc_end1-jpeg_write_scanlines
	.cfi_endproc

	.globl	jpeg_write_raw_data
	.align	16, 0x90
	.type	jpeg_write_raw_data,@function
jpeg_write_raw_data:                    # @jpeg_write_raw_data
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
	cmpl	$102, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB2_2:                                # %if.end
	movl	52(%rbx), %eax
	movl	344(%rbx), %ecx
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
	movq	496(%rbx), %rax
	cmpl	$0, 24(%rax)
	je	.LBB2_8
# BB#7:                                 # %if.then.20
	movq	%rbx, %rdi
	callq	*8(%rax)
.LBB2_8:                                # %if.end.22
	movl	364(%rbx), %ebp
	imull	356(%rbx), %ebp
	cmpl	%r15d, %ebp
	jbe	.LBB2_10
# BB#9:                                 # %if.then.25
	movq	(%rbx), %rax
	movl	$24, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB2_10:                               # %if.end.30
	movq	520(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*8(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB2_12
# BB#11:                                # %if.end.33
	addl	%ebp, 344(%rbx)
	movl	%ebp, %eax
	jmp	.LBB2_12
.LBB2_3:                                # %if.then.5
	movq	(%rbx), %rax
	movl	$126, 40(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	xorl	%eax, %eax
.LBB2_12:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jpeg_write_raw_data, .Lfunc_end2-jpeg_write_raw_data
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
