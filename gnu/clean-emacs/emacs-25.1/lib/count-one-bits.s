	.text
	.file	"count-one-bits.bc"
	.globl	count_one_bits
	.align	16, 0x90
	.type	count_one_bits,@function
count_one_bits:                         # @count_one_bits
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, %eax
	shrl	%eax
	andl	$1431655765, %eax       # imm = 0x55555555
	subl	%eax, %edi
	movl	%edi, %eax
	andl	$858993459, %eax        # imm = 0x33333333
	shrl	$2, %edi
	andl	$858993459, %edi        # imm = 0x33333333
	addl	%edi, %eax
	movl	%eax, %edi
	shrl	$4, %edi
	addl	%edi, %eax
	andl	$252645135, %eax        # imm = 0xF0F0F0F
	imull	$16843009, %eax, %eax   # imm = 0x1010101
	shrl	$24, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	count_one_bits, .Lfunc_end0-count_one_bits
	.cfi_endproc

	.globl	count_one_bits_l
	.align	16, 0x90
	.type	count_one_bits_l,@function
count_one_bits_l:                       # @count_one_bits_l
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	andq	%rcx, %rax
	subq	%rax, %rdi
	movabsq	$3689348814741910323, %rax # imm = 0x3333333333333333
	movq	%rdi, %rcx
	andq	%rax, %rcx
	shrq	$2, %rdi
	andq	%rax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	addq	%rax, %rcx
	movabsq	$1085102592571150095, %rax # imm = 0xF0F0F0F0F0F0F0F
	andq	%rax, %rcx
	movabsq	$72340172838076673, %rax # imm = 0x101010101010101
	imulq	%rax, %rcx
	shrq	$56, %rcx
	movl	%ecx, %edx
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	count_one_bits_l, .Lfunc_end1-count_one_bits_l
	.cfi_endproc

	.globl	count_one_bits_ll
	.align	16, 0x90
	.type	count_one_bits_ll,@function
count_one_bits_ll:                      # @count_one_bits_ll
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
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rcx # imm = 0x5555555555555555
	andq	%rcx, %rax
	subq	%rax, %rdi
	movabsq	$3689348814741910323, %rax # imm = 0x3333333333333333
	movq	%rdi, %rcx
	andq	%rax, %rcx
	shrq	$2, %rdi
	andq	%rax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	addq	%rax, %rcx
	movabsq	$1085102592571150095, %rax # imm = 0xF0F0F0F0F0F0F0F
	andq	%rax, %rcx
	movabsq	$72340172838076673, %rax # imm = 0x101010101010101
	imulq	%rax, %rcx
	shrq	$56, %rcx
	movl	%ecx, %edx
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	count_one_bits_ll, .Lfunc_end2-count_one_bits_ll
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
