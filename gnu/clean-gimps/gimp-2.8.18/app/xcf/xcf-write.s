	.text
	.file	"xcf-write.bc"
	.globl	xcf_write_int32
	.align	16, 0x90
	.type	xcf_write_int32,@function
xcf_write_int32:                        # @xcf_write_int32
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.LBB0_8
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$4, %edx
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movslq	-52(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	(%rdi,%rsi,4), %r8d
	andl	$255, %r8d
	shll	$24, %r8d
	movslq	-52(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	(%rdi,%rsi,4), %r9d
	andl	$65280, %r9d            # imm = 0xFF00
	shll	$8, %r9d
	orl	%r9d, %r8d
	movslq	-52(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	(%rdi,%rsi,4), %r9d
	andl	$16711680, %r9d         # imm = 0xFF0000
	shrl	$8, %r9d
	orl	%r9d, %r8d
	movslq	-52(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	(%rdi,%rsi,4), %r9d
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r9d
	orl	%r9d, %r8d
	movl	%r8d, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	xcf_write_int8
	cmpq	$0, -48(%rbp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB0_5
# BB#4:                                 # %if.then.15
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_propagate_error
	movl	-52(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_2
.LBB0_7:                                # %for.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.16
	movl	-28(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -4(%rbp)
.LBB0_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xcf_write_int32, .Lfunc_end0-xcf_write_int32
	.cfi_endproc

	.globl	xcf_write_int8
	.align	16, 0x90
	.type	xcf_write_int8,@function
xcf_write_int8:                         # @xcf_write_int8
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	jle	.LBB1_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fwrite
	movl	%eax, %r8d
	movl	%r8d, -48(%rbp)
	movl	-48(%rbp), %r8d
	addl	-44(%rbp), %r8d
	movl	%r8d, -44(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gettext
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	-64(%rbp), %edx         # 4-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	-44(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB1_6
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-48(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	jmp	.LBB1_1
.LBB1_5:                                # %while.end
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xcf_write_int8, .Lfunc_end1-xcf_write_int8
	.cfi_endproc

	.globl	xcf_write_zero_int32
	.align	16, 0x90
	.type	xcf_write_zero_int32,@function
xcf_write_zero_int32:                   # @xcf_write_zero_int32
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB2_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movl	-20(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdx
	movq	%rcx, %rdi
	callq	memset
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	shll	$2, %eax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	xcf_write_int8
	movl	%eax, -4(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB2_3:                                # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xcf_write_zero_int32, .Lfunc_end2-xcf_write_zero_int32
	.cfi_endproc

	.globl	xcf_write_float
	.align	16, 0x90
	.type	xcf_write_float,@function
xcf_write_float:                        # @xcf_write_float
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	xcf_write_int32
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xcf_write_float, .Lfunc_end3-xcf_write_float
	.cfi_endproc

	.globl	xcf_write_string
	.align	16, 0x90
	.type	xcf_write_string,@function
xcf_write_string:                       # @xcf_write_string
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB4_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	addq	$1, %rax
	movl	%eax, %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -60(%rbp)
.LBB4_5:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-60(%rbp), %rsi
	movl	$1, %edx
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	xcf_write_int32
	cmpq	$0, -48(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB4_7
# BB#6:                                 # %if.then.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_propagate_error
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_14
.LBB4_7:                                # %if.end.6
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, -60(%rbp)
	jbe	.LBB4_9
# BB#8:                                 # %if.then.9
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movslq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rax,8), %rsi
	movl	-60(%rbp), %edx
	callq	xcf_write_int8
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB4_9:                                # %if.end.13
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB4_11
# BB#10:                                # %if.then.15
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_propagate_error
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.16
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$4, %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB4_1
.LBB4_13:                               # %for.end
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	xcf_write_string, .Lfunc_end4-xcf_write_string
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error writing XCF: %s"
	.size	.L.str, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
