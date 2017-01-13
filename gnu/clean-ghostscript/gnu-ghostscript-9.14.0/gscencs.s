	.text
	.file	"gscencs.bc"
	.globl	gs_c_known_encode
	.align	16, 0x90
	.type	gs_c_known_encode,@function
gs_c_known_encode:                      # @gs_c_known_encode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	testl	%esi, %esi
	js	.LBB0_4
# BB#1:                                 # %entry
	cmpl	%esi, gs_c_known_encoding_count(%rip)
	jle	.LBB0_4
# BB#2:                                 # %lor.lhs.false.2
	movslq	%esi, %rcx
	movzwl	gs_c_known_encoding_lengths(%rcx,%rcx), %edx
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpq	%rdi, %rdx
	jbe	.LBB0_4
# BB#3:                                 # %if.end
	movq	gs_c_known_encodings(,%rcx,8), %rax
	movzwl	(%rax,%rdi,2), %eax
	orq	$2147418112, %rax       # imm = 0x7FFF0000
.LBB0_4:                                # %return
	retq
.Lfunc_end0:
	.size	gs_c_known_encode, .Lfunc_end0-gs_c_known_encode
	.cfi_endproc

	.globl	gs_c_decode
	.align	16, 0x90
	.type	gs_c_decode,@function
gs_c_decode:                            # @gs_c_decode
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%esi, %rax
	movq	gs_c_known_encodings(,%rax,8), %r8
	movq	gs_c_known_encodings_reverse(,%rax,8), %r9
	movzwl	gs_c_known_encoding_reverse_lengths(%rax,%rax), %r10d
	xorl	%ecx, %ecx
	jmp	.LBB1_1
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	%edx, %r10d
	.align	16, 0x90
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	$-1, %rax
	cmpl	%r10d, %ecx
	jge	.LBB1_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	(%rcx,%r10), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movslq	%edx, %rax
	movzwl	(%r9,%rax,2), %eax
	movzwl	(%r8,%rax,2), %esi
	orq	$2147418112, %rsi       # imm = 0x7FFF0000
	cmpq	%rdi, %rsi
	ja	.LBB1_3
# BB#4:                                 # %cleanup
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	%edx
	cmpq	%rdi, %rsi
	movl	%edx, %ecx
	jb	.LBB1_1
.LBB1_5:                                # %cleanup.24
	retq
.Lfunc_end1:
	.size	gs_c_decode, .Lfunc_end1-gs_c_decode
	.cfi_endproc

	.globl	gs_c_glyph_name
	.align	16, 0x90
	.type	gs_c_glyph_name,@function
gs_c_glyph_name:                        # @gs_c_glyph_name
	.cfi_startproc
# BB#0:                                 # %entry
	addl	$-2147418112, %edi      # imm = 0xFFFFFFFF80010000
	movl	%edi, %eax
	andl	$31, %eax
	shrl	$5, %edi
	movzwl	gs_c_known_encoding_offsets(%rax,%rax), %ecx
	leaq	gs_c_known_encoding_chars(%rcx,%rdi), %rcx
	movq	%rcx, (%rsi)
	movl	%eax, 8(%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gs_c_glyph_name, .Lfunc_end2-gs_c_glyph_name
	.cfi_endproc

	.globl	gs_is_c_glyph_name
	.align	16, 0x90
	.type	gs_is_c_glyph_name,@function
gs_is_c_glyph_name:                     # @gs_is_c_glyph_name
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$gs_c_known_encoding_chars, %eax
	cmpq	%rax, %rdi
	jae	.LBB3_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB3_2:                                # %land.rhs
	movslq	gs_c_known_encoding_total_chars(%rip), %rax
	leaq	gs_c_known_encoding_chars(%rax), %rax
	cmpq	%rax, %rdi
	setb	%al
	movzbl	%al, %eax
	retq
.Lfunc_end3:
	.size	gs_is_c_glyph_name, .Lfunc_end3-gs_is_c_glyph_name
	.cfi_endproc

	.globl	gs_c_name_glyph
	.align	16, 0x90
	.type	gs_c_name_glyph,@function
gs_c_name_glyph:                        # @gs_c_name_glyph
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
	movl	%esi, %r13d
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	leal	-1(%r13), %eax
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movq	%rcx, (%rsp)            # 8-byte Spill
	cmpl	gs_c_known_encoding_max_length(%rip), %eax
	jae	.LBB4_6
# BB#1:                                 # %if.end
	movl	%r13d, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movzwl	gs_c_known_encoding_offsets(%rax,%rax), %ecx
	leal	1(%r13), %eax
	movzwl	gs_c_known_encoding_offsets(%rax,%rax), %eax
	subl	%ecx, %eax
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	divl	%r13d
	movl	%eax, %ebx
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	%rax, (%rsp)            # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB4_6
# BB#2:
	leaq	gs_c_known_encoding_chars(%rcx), %r12
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	%rax, (%rsp)            # 8-byte Spill
	.align	16, 0x90
.LBB4_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbp,%rbx), %r14d
	shrl	%r14d
	movl	%r14d, %r15d
	imull	%r13d, %r15d
	leaq	(%r12,%r15), %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB4_5
# BB#4:                                 # %cleanup.thread
                                        #   in Loop: Header=BB4_3 Depth=1
	leal	1(%r14), %ecx
	testl	%eax, %eax
	cmovgl	%ebx, %r14d
	cmovgl	%ecx, %ebp
	cmpl	%r14d, %ebp
	movl	%r14d, %ebx
	jb	.LBB4_3
	jmp	.LBB4_6
.LBB4_5:                                # %cleanup
	shlq	$5, %r15
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	2147418112(%rax,%r15), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
.LBB4_6:                                # %cleanup.26
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gs_c_name_glyph, .Lfunc_end4-gs_c_name_glyph
	.cfi_endproc

	.type	gs_c_min_std_encoding_glyph,@object # @gs_c_min_std_encoding_glyph
	.section	.rodata,"a",@progbits
	.globl	gs_c_min_std_encoding_glyph
	.align	8
gs_c_min_std_encoding_glyph:
	.quad	2147418112              # 0x7fff0000
	.size	gs_c_min_std_encoding_glyph, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
