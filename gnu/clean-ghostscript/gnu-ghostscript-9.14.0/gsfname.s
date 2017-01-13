	.text
	.file	"gsfname.bc"
	.globl	gs_parse_file_name
	.align	16, 0x90
	.type	gs_parse_file_name,@function
gs_parse_file_name:                     # @gs_parse_file_name
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$-22, %r14d
	testl	%ebp, %ebp
	je	.LBB0_10
# BB#1:                                 # %if.end
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB0_2
# BB#3:                                 # %if.end.7
	leaq	1(%rbx), %rdi
	leal	-1(%rbp), %r13d
	movl	$37, %esi
	movq	%r13, %rdx
	callq	memchr
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB0_4
# BB#5:                                 # %if.else
	movq	%r13, %rdx
	xorl	%ecx, %ecx
	cmpb	$0, 1(%rax)
	movl	%ebp, %r13d
	je	.LBB0_7
# BB#6:                                 # %if.else.17
	movq	%rax, %rcx
	incq	%rcx
	subl	%ebx, %eax
	movl	%edx, %ebp
	movl	%eax, %r13d
	jmp	.LBB0_7
.LBB0_2:                                # %if.then.3
	movq	$0, (%r15)
	movq	$0, 8(%r15)
	movq	%rbx, 16(%r15)
	jmp	.LBB0_9
.LBB0_4:
	movl	%ebp, %r13d
.LBB0_7:                                # %if.end.20
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	gs_findiodevice
	testq	%rax, %rax
	je	.LBB0_10
# BB#8:                                 # %if.end.25
	movq	$0, (%r15)
	movq	%rax, 8(%r15)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 16(%r15)
	subl	%r13d, %ebp
.LBB0_9:                                # %cleanup
	movl	%ebp, 24(%r15)
	xorl	%r14d, %r14d
.LBB0_10:                               # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_parse_file_name, .Lfunc_end0-gs_parse_file_name
	.cfi_endproc

	.globl	gs_parse_real_file_name
	.align	16, 0x90
	.type	gs_parse_real_file_name,@function
gs_parse_real_file_name:                # @gs_parse_real_file_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebx
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movl	$-22, %r13d
	testl	%ebx, %ebx
	je	.LBB1_11
# BB#1:                                 # %if.end.i
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movzbl	(%rbp), %eax
	cmpl	$37, %eax
	jne	.LBB1_8
# BB#2:                                 # %if.end.7.i
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leaq	1(%rbp), %rdi
	leal	-1(%rbx), %r12d
	movl	$37, %esi
	movq	%r12, %rdx
	callq	memchr
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB1_3
# BB#4:                                 # %if.else.i
	movq	%r12, %rcx
	xorl	%r14d, %r14d
	cmpb	$0, 1(%rax)
	movl	%ebx, %r12d
	je	.LBB1_6
# BB#5:                                 # %if.else.17.i
	movq	%rax, %r14
	incq	%r14
	subl	%ebp, %eax
	movl	%ecx, %ebx
	movl	%eax, %r12d
	jmp	.LBB1_6
.LBB1_8:                                # %if.end.i.8
	movq	$0, (%r15)
	movq	$0, 8(%r15)
	movq	%rbp, 16(%r15)
	movl	%ebx, 24(%r15)
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gs_getiodevice
	movq	%rax, 8(%r15)
	cmpq	$0, (%r15)
	jne	.LBB1_11
	jmp	.LBB1_9
.LBB1_3:
	movl	%ebx, %r12d
.LBB1_6:                                # %if.end.20.i
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbp, %rsi
	movl	%r12d, %edx
	callq	gs_findiodevice
	testq	%rax, %rax
	je	.LBB1_11
# BB#7:                                 # %if.end
	movq	$0, (%r15)
	movq	%rax, 8(%r15)
	movq	%r14, 16(%r15)
	subl	%r12d, %ebx
	movl	%ebx, 24(%r15)
	movq	8(%rsp), %r14           # 8-byte Reload
	je	.LBB1_11
.LBB1_9:                                # %if.end.4.i
	leal	1(%rbx), %r12d
	movq	%r14, %rdi
	movl	%r12d, %esi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	*136(%r14)
	movq	%rax, %rbp
	movl	$-25, %r13d
	testq	%rbp, %rbp
	je	.LBB1_11
# BB#10:                                # %if.end.8.i
	movq	16(%r15), %rsi
	movl	%ebx, %ebx
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%rbp,%rbx)
	movq	%r14, (%r15)
	movq	%rbp, 16(%r15)
	movl	%r12d, 24(%r15)
	xorl	%r13d, %r13d
.LBB1_11:                               # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_parse_real_file_name, .Lfunc_end1-gs_parse_real_file_name
	.cfi_endproc

	.globl	gs_terminate_file_name
	.align	16, 0x90
	.type	gs_terminate_file_name,@function
gs_terminate_file_name:                 # @gs_terminate_file_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 64
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	24(%rbx), %r15d
	cmpq	$0, 8(%rbx)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gs_getiodevice
	movq	%rax, 8(%rbx)
.LBB2_2:                                # %if.end
	xorl	%eax, %eax
	cmpq	$0, (%rbx)
	jne	.LBB2_5
# BB#3:                                 # %if.end.4
	leal	1(%r15), %r13d
	movq	%r14, %rdi
	movl	%r13d, %esi
	movq	%r12, %rdx
	callq	*136(%r14)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB2_5
# BB#4:                                 # %if.end.8
	movq	16(%rbx), %rsi
	movq	%rbp, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, (%rbp,%r15)
	movq	%r14, (%rbx)
	movq	%rbp, 16(%rbx)
	movl	%r13d, 24(%rbx)
	xorl	%eax, %eax
.LBB2_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_terminate_file_name, .Lfunc_end2-gs_terminate_file_name
	.cfi_endproc

	.globl	gs_free_file_name
	.align	16, 0x90
	.type	gs_free_file_name,@function
gs_free_file_name:                      # @gs_free_file_name
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	16(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB3_1
# BB#2:                                 # %if.then
	movq	(%rdi), %rcx
	movl	24(%rdi), %edx
	movq	%rcx, %rdi
	movq	%rax, %rcx
	jmp	gs_free_const_string    # TAILCALL
.LBB3_1:                                # %if.end
	retq
.Lfunc_end3:
	.size	gs_free_file_name, .Lfunc_end3-gs_free_file_name
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
