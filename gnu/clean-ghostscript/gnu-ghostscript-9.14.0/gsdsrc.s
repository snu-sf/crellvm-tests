	.text
	.file	"gsdsrc.bc"
	.align	16, 0x90
	.type	data_source_enum_ptrs,@function
data_source_enum_ptrs:                  # @data_source_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rsi), %rax
	cmpl	$0, 8(%rsi)
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	24(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
.LBB0_2:                                # %cleanup
	retq
.Lfunc_end0:
	.size	data_source_enum_ptrs, .Lfunc_end0-data_source_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	data_source_reloc_ptrs,@function
data_source_reloc_ptrs:                 # @data_source_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rcx), %rax
	cmpl	$0, 8(%rbx)
	je	.LBB1_2
# BB#1:                                 # %if.end.16
	movq	16(%rbx), %rdi
	movq	%rcx, %rsi
	callq	*(%rax)
	movq	%rax, 16(%rbx)
	popq	%rbx
	retq
.LBB1_2:                                # %if.then
	movq	16(%rax), %rax
	addq	$16, %rbx
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	data_source_reloc_ptrs, .Lfunc_end1-data_source_reloc_ptrs
	.cfi_endproc

	.globl	data_source_access_string
	.align	16, 0x90
	.type	data_source_access_string,@function
data_source_access_string:              # @data_source_access_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 48
.Ltmp7:
	.cfi_offset %rbx, -48
.Ltmp8:
	.cfi_offset %r12, -40
.Ltmp9:
	.cfi_offset %r13, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movl	%edx, %r13d
	movq	%rsi, %rax
	movq	16(%rdi), %rsi
	addq	%rax, %rsi
	movl	%r13d, %edx
	leaq	(%rdx,%rax), %rcx
	movl	24(%rdi), %ebx
	cmpq	%rbx, %rcx
	jbe	.LBB2_1
# BB#4:                                 # %if.else.8
	subq	%rax, %rbx
	jbe	.LBB2_6
# BB#5:                                 # %if.then.15
	movl	%ebx, %r12d
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	memcpy
	leaq	(%r12,%r15), %rdi
	subl	%ebx, %r13d
	xorl	%esi, %esi
	movq	%r13, %rdx
	jmp	.LBB2_7
.LBB2_1:                                # %if.then
	testq	%r14, %r14
	je	.LBB2_3
# BB#2:                                 # %if.then.6
	movq	%rsi, (%r14)
	jmp	.LBB2_8
.LBB2_6:                                # %if.else.27
	xorl	%esi, %esi
	movq	%r15, %rdi
.LBB2_7:                                # %if.end.30
	callq	memset
	movq	%r15, (%r14)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	%r15, %rdi
	callq	memcpy
.LBB2_8:                                # %if.end.31
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	data_source_access_string, .Lfunc_end2-data_source_access_string
	.cfi_endproc

	.globl	data_source_access_bytes
	.align	16, 0x90
	.type	data_source_access_bytes,@function
data_source_access_bytes:               # @data_source_access_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 16
	addq	16(%rdi), %rsi
	testq	%r8, %r8
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	%rsi, (%r8)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movl	%edx, %edx
	movq	%rcx, %rdi
	callq	memcpy
.LBB3_3:                                # %if.end
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	data_source_access_bytes, .Lfunc_end3-data_source_access_bytes
	.cfi_endproc

	.globl	data_source_access_stream
	.align	16, 0x90
	.type	data_source_access_stream,@function
data_source_access_stream:              # @data_source_access_stream
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
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movl	%edx, %ebp
	movq	16(%rdi), %rbx
	movq	176(%rbx), %rcx
	cmpq	%rsi, %rcx
	ja	.LBB4_5
# BB#1:                                 # %land.lhs.true
	movq	%rsi, %rax
	subq	%rcx, %rax
	addq	136(%rbx), %rax
	movl	%ebp, %edx
	leaq	(%rax,%rdx), %rcx
	movq	120(%rbx), %rdi
	incq	%rdi
	cmpq	%rdi, %rcx
	jbe	.LBB4_2
.LBB4_5:                                # %if.else.6
	movq	%rbx, %rdi
	callq	spseek
	testl	%eax, %eax
	js	.LBB4_11
# BB#6:                                 # %if.end.11
	leaq	4(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	sgets
	testl	%eax, %eax
	js	.LBB4_11
# BB#7:                                 # %if.end.16
	cmpl	%ebp, 4(%rsp)
	jne	.LBB4_11
# BB#8:                                 # %if.end.20
	testq	%r14, %r14
	je	.LBB4_10
# BB#9:                                 # %if.then.22
	movq	%r15, (%r14)
.LBB4_10:                               # %cleanup
	xorl	%eax, %eax
	jmp	.LBB4_12
.LBB4_11:                               # %cleanup.26.critedge22
	movl	$-15, %eax
	jmp	.LBB4_12
.LBB4_2:                                # %if.then
	testq	%r14, %r14
	je	.LBB4_4
# BB#3:                                 # %if.then.5
	movq	%rax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB4_12
.LBB4_4:                                # %if.else
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	memcpy
	xorl	%eax, %eax
.LBB4_12:                               # %cleanup.26
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	data_source_access_stream, .Lfunc_end4-data_source_access_stream
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_data_source_t"
	.size	.L.str, 17

	.type	st_data_source,@object  # @st_data_source
	.section	.rodata,"a",@progbits
	.globl	st_data_source
	.align	8
st_data_source:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	data_source_enum_ptrs
	.quad	data_source_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_data_source, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
