	.text
	.file	"zfile1.bc"
	.align	16, 0x90
	.type	zfile_name_combine,@function
zfile_name_combine:                     # @zfile_name_combine
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
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
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end
	movzbl	-15(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB0_3
# BB#4:                                 # %if.end.14
	movzbl	-31(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB0_5
# BB#6:                                 # %if.end.25
	movl	-28(%rbx), %r15d
	movl	-12(%rbx), %r13d
	leal	2(%r15,%r13), %esi
	movl	%esi, 16(%rsp)          # 4-byte Spill
	movl	%esi, 20(%rsp)
	movq	8(%r14), %rdi
	movl	$.L.str.6, %edx
	callq	*136(%rdi)
	movq	%rax, %r12
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB0_12
# BB#7:                                 # %if.end.37
	movq	-24(%rbx), %rdi
	movq	-8(%rbx), %rdx
	movzwl	8(%rbx), %r8d
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	%r15d, %esi
	movl	%r13d, %ecx
	movq	%r12, %r9
	callq	gp_file_name_combine
	cmpl	$1, %eax
	jne	.LBB0_8
# BB#9:                                 # %if.else
	movq	8(%r14), %rdi
	movl	20(%rsp), %ecx
	movl	$.L.str.6, %r8d
	movq	%r12, %rsi
	movl	16(%rsp), %edx          # 4-byte Reload
	callq	*152(%rdi)
	testq	%rax, %rax
	je	.LBB0_12
# BB#10:                                # %if.end.62
	movq	%rax, -24(%rbx)
	movl	56(%r14), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, -32(%rbx)
	movl	20(%rsp), %eax
	movl	%eax, -28(%rbx)
	movw	$1, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r14)
	jmp	.LBB0_11
.LBB0_3:                                # %if.then.11
	addq	$-16, %rbx
	jmp	.LBB0_1
.LBB0_5:                                # %if.then.22
	addq	$-32, %rbx
.LBB0_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
.LBB0_12:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_8:                                # %if.then.48
	movw	$0, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
.LBB0_11:                               # %cleanup
	xorl	%ebp, %ebp
	jmp	.LBB0_12
.Lfunc_end0:
	.size	zfile_name_combine, .Lfunc_end0-zfile_name_combine
	.cfi_endproc

	.align	16, 0x90
	.type	zfile_name_is_absolute,@function
zfile_name_is_absolute:                 # @zfile_name_is_absolute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB1_2
# BB#1:                                 # %cleanup
	movq	8(%rbx), %rdi
	movl	4(%rbx), %esi
	callq	gp_file_name_is_absolute
	movw	%ax, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB1_2:                                # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end1:
	.size	zfile_name_is_absolute, .Lfunc_end1-zfile_name_is_absolute
	.cfi_endproc

	.align	16, 0x90
	.type	zfile_name_separator,@function
zfile_name_separator:                   # @zfile_name_separator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r12, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	callq	gp_file_name_separator
	movq	%rax, %r14
	movq	624(%rbx), %r15
	leaq	16(%r15), %r12
	cmpq	640(%rbx), %r12
	jbe	.LBB2_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB2_3
.LBB2_2:                                # %if.else.i
	movq	%r14, %rdi
	callq	strlen
	movq	%r12, 624(%rbx)
	movq	%r14, 24(%r15)
	movw	$4704, 16(%r15)         # imm = 0x1260
	movl	%eax, 20(%r15)
	xorl	%eax, %eax
.LBB2_3:                                # %push_string.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	zfile_name_separator, .Lfunc_end2-zfile_name_separator
	.cfi_endproc

	.align	16, 0x90
	.type	zfile_name_directory_separator,@function
zfile_name_directory_separator:         # @zfile_name_directory_separator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 48
.Ltmp29:
	.cfi_offset %rbx, -40
.Ltmp30:
	.cfi_offset %r12, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	callq	gp_file_name_directory_separator
	movq	%rax, %r14
	movq	624(%rbx), %r15
	leaq	16(%r15), %r12
	cmpq	640(%rbx), %r12
	jbe	.LBB3_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB3_3
.LBB3_2:                                # %if.else.i
	movq	%r14, %rdi
	callq	strlen
	movq	%r12, 624(%rbx)
	movq	%r14, 24(%r15)
	movw	$4704, 16(%r15)         # imm = 0x1260
	movl	%eax, 20(%r15)
	xorl	%eax, %eax
.LBB3_3:                                # %push_string.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	zfile_name_directory_separator, .Lfunc_end3-zfile_name_directory_separator
	.cfi_endproc

	.align	16, 0x90
	.type	zfile_name_current,@function
zfile_name_current:                     # @zfile_name_current
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 48
.Ltmp38:
	.cfi_offset %rbx, -40
.Ltmp39:
	.cfi_offset %r12, -32
.Ltmp40:
	.cfi_offset %r14, -24
.Ltmp41:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	callq	gp_file_name_current
	movq	%rax, %r14
	movq	624(%rbx), %r15
	leaq	16(%r15), %r12
	cmpq	640(%rbx), %r12
	jbe	.LBB4_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB4_3
.LBB4_2:                                # %if.else.i
	movq	%r14, %rdi
	callq	strlen
	movq	%r12, 624(%rbx)
	movq	%r14, 24(%r15)
	movw	$4704, 16(%r15)         # imm = 0x1260
	movl	%eax, 20(%r15)
	xorl	%eax, %eax
.LBB4_3:                                # %push_string.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	zfile_name_current, .Lfunc_end4-zfile_name_current
	.cfi_endproc

	.align	16, 0x90
	.type	zfile_name_parent,@function
zfile_name_parent:                      # @zfile_name_parent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp46:
	.cfi_def_cfa_offset 48
.Ltmp47:
	.cfi_offset %rbx, -40
.Ltmp48:
	.cfi_offset %r12, -32
.Ltmp49:
	.cfi_offset %r14, -24
.Ltmp50:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	callq	gp_file_name_parent
	movq	%rax, %r14
	movq	624(%rbx), %r15
	leaq	16(%r15), %r12
	cmpq	640(%rbx), %r12
	jbe	.LBB5_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB5_3
.LBB5_2:                                # %if.else.i
	movq	%r14, %rdi
	callq	strlen
	movq	%r12, 624(%rbx)
	movq	%r14, 24(%r15)
	movw	$4704, 16(%r15)         # imm = 0x1260
	movl	%eax, 20(%r15)
	xorl	%eax, %eax
.LBB5_3:                                # %push_string.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	zfile_name_parent, .Lfunc_end5-zfile_name_parent
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0.file_name_combine"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0.file_name_is_absolute"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0.file_name_separator"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0.file_name_directory_separator"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0.file_name_current"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"0.file_name_parent"
	.size	.L.str.5, 19

	.type	zfile1_op_defs,@object  # @zfile1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfile1_op_defs
	.align	16
zfile1_op_defs:
	.quad	.L.str
	.quad	zfile_name_combine
	.quad	.L.str.1
	.quad	zfile_name_is_absolute
	.quad	.L.str.2
	.quad	zfile_name_separator
	.quad	.L.str.3
	.quad	zfile_name_directory_separator
	.quad	.L.str.4
	.quad	zfile_name_current
	.quad	.L.str.5
	.quad	zfile_name_parent
	.zero	16
	.size	zfile1_op_defs, 112

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"zfile_name_combine"
	.size	.L.str.6, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
