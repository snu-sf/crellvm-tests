	.text
	.file	"smd5.bc"
	.align	16, 0x90
	.type	s_MD5E_init,@function
s_MD5E_init:                            # @s_MD5E_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	addq	$108, %rdi
	callq	gs_md5_init
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	s_MD5E_init, .Lfunc_end0-s_MD5E_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_MD5E_process,@function
s_MD5E_process:                         # @s_MD5E_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 48
.Ltmp6:
	.cfi_offset %rbx, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	cmpq	%rdx, %rax
	jae	.LBB1_2
# BB#1:                                 # %if.then
	leaq	108(%r15), %rdi
	leaq	1(%rax), %rsi
	subl	%eax, %edx
	callq	gs_md5_append
	movq	8(%rbx), %rax
	movq	%rax, (%rbx)
.LBB1_2:                                # %if.end
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB1_5
# BB#3:                                 # %if.then.6
	movq	8(%r14), %rsi
	movq	16(%r14), %rcx
	subq	%rsi, %rcx
	movl	$1, %eax
	cmpq	$16, %rcx
	jl	.LBB1_5
# BB#4:                                 # %if.then.14
	addq	$108, %r15
	incq	%rsi
	movq	%r15, %rdi
	callq	gs_md5_finish
	addq	$16, 8(%r14)
	movl	$-1, %eax
.LBB1_5:                                # %if.end.21
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_MD5E_process, .Lfunc_end1-s_MD5E_process
	.cfi_endproc

	.globl	s_MD5E_make_stream
	.align	16, 0x90
	.type	s_MD5E_make_stream,@function
s_MD5E_make_stream:                     # @s_MD5E_make_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 48
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	callq	s_alloc
	movq	%rax, %r14
	movl	$st_MD5E_state, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	s_alloc_state
	movq	%rax, %rbp
	testq	%r14, %r14
	je	.LBB2_4
# BB#1:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB2_4
# BB#2:                                 # %if.end
	movq	$s_MD5E_template, (%rbp)
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	s_init_filter
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:                                 # %if.end.6
	movq	%r14, 240(%r14)
	jmp	.LBB2_5
.LBB2_4:                                # %err
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%r14d, %r14d
.LBB2_5:                                # %cleanup
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	s_MD5E_make_stream, .Lfunc_end2-s_MD5E_make_stream
	.cfi_endproc

	.align	16, 0x90
	.type	s_MD5C_process,@function
s_MD5C_process:                         # @s_MD5C_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	8(%r14), %eax
	movq	(%r14), %rsi
	subl	%esi, %eax
	movl	16(%rbx), %ebp
	subl	8(%rbx), %ebp
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	addq	$108, %rdi
	incq	%rsi
	movl	%ebp, %edx
	callq	gs_md5_append
	movq	8(%rbx), %rdi
	incq	%rdi
	movq	(%r14), %rsi
	incq	%rsi
	movslq	%ebp, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, (%r14)
	addq	8(%rbx), %rbp
	movq	%rbp, 8(%rbx)
	cmpq	%rbp, 16(%rbx)
	sete	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	s_MD5C_process, .Lfunc_end3-s_MD5C_process
	.cfi_endproc

	.globl	s_MD5C_make_stream
	.align	16, 0x90
	.type	s_MD5C_make_stream,@function
s_MD5C_make_stream:                     # @s_MD5C_make_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 48
.Ltmp31:
	.cfi_offset %rbx, -48
.Ltmp32:
	.cfi_offset %r12, -40
.Ltmp33:
	.cfi_offset %r13, -32
.Ltmp34:
	.cfi_offset %r14, -24
.Ltmp35:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	callq	s_alloc
	movq	%rax, %r14
	movl	$st_MD5E_state, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	s_alloc_state
	movq	%rax, %r13
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, %r12
	testq	%r14, %r14
	je	.LBB4_5
# BB#1:                                 # %entry
	testq	%r13, %r13
	je	.LBB4_5
# BB#2:                                 # %entry
	testq	%r12, %r12
	je	.LBB4_5
# BB#3:                                 # %if.end
	movq	$s_MD5C_template, (%r13)
	movl	$1024, %ecx             # imm = 0x400
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	s_init_filter
	testl	%eax, %eax
	js	.LBB4_5
# BB#4:                                 # %if.end.9
	movq	%r15, 240(%r14)
	movl	$1, 288(%r14)
	jmp	.LBB4_6
.LBB4_5:                                # %err
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	xorl	%r14d, %r14d
.LBB4_6:                                # %cleanup
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	s_MD5C_make_stream, .Lfunc_end4-s_MD5C_make_stream
	.cfi_endproc

	.globl	s_MD5C_get_digest
	.align	16, 0x90
	.type	s_MD5C_get_digest,@function
s_MD5C_get_digest:                      # @s_MD5C_get_digest
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 40
	subq	$104, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 144
.Ltmp41:
	.cfi_offset %rbx, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	cmpl	$16, %edx
	movl	$16, %ebp
	cmovlel	%edx, %ebp
	movl	$s_MD5C_process, %ecx
	xorl	%eax, %eax
	cmpq	%rcx, 224(%rdi)
	jne	.LBB5_8
# BB#1:                                 # %if.end
	movq	256(%rdi), %rax
	movq	188(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movups	172(%rax), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	108(%rax), %xmm0
	movups	124(%rax), %xmm1
	movups	140(%rax), %xmm2
	movups	156(%rax), %xmm3
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	(%rsp), %r15
	movq	%r15, %rsi
	callq	gs_md5_finish
	movslq	%ebp, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	cmpl	$15, %ebx
	jg	.LBB5_7
# BB#2:                                 # %for.cond.9.preheader.lr.ph
	leaq	16(%rsp), %rdi
	leaq	(%rsp,%rbx), %rcx
	.align	16, 0x90
.LBB5_3:                                # %for.cond.9.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	testl	%ebp, %ebp
	movl	$0, %edx
	jle	.LBB5_6
	.align	16, 0x90
.LBB5_4:                                # %land.rhs
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rcx,%rdx), %rsi
	cmpq	%rdi, %rsi
	jae	.LBB5_6
# BB#5:                                 # %for.body.18
                                        #   in Loop: Header=BB5_4 Depth=2
	movb	(%rsi), %al
	xorb	%al, (%r14,%rdx)
	incq	%rdx
	cmpq	%rbx, %rdx
	jl	.LBB5_4
.LBB5_6:                                # %for.inc.24
                                        #   in Loop: Header=BB5_3 Depth=1
	addq	%rbx, %rcx
	cmpq	%rdi, %rcx
	jb	.LBB5_3
.LBB5_7:
	movl	%ebp, %eax
.LBB5_8:                                # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	s_MD5C_get_digest, .Lfunc_end5-s_MD5C_get_digest
	.cfi_endproc

	.type	st_MD5E_state,@object   # @st_MD5E_state
	.section	.rodata,"a",@progbits
	.align	8
st_MD5E_state:
	.long	200                     # 0xc8
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_MD5E_state, 64

	.type	s_MD5E_template,@object # @s_MD5E_template
	.globl	s_MD5E_template
	.align	8
s_MD5E_template:
	.quad	st_MD5E_state
	.quad	s_MD5E_init
	.quad	s_MD5E_process
	.long	1                       # 0x1
	.long	16                      # 0x10
	.quad	0
	.quad	0
	.quad	0
	.size	s_MD5E_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"s_MD5E_make_stream"
	.size	.L.str, 19

	.type	s_MD5C_template,@object # @s_MD5C_template
	.section	.rodata,"a",@progbits
	.globl	s_MD5C_template
	.align	8
s_MD5C_template:
	.quad	st_MD5E_state
	.quad	s_MD5E_init
	.quad	s_MD5C_process
	.long	1                       # 0x1
	.long	1024                    # 0x400
	.quad	0
	.quad	0
	.quad	0
	.size	s_MD5C_template, 56

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"s_MD5E_make_stream(buffer)"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"MD5Encode state"
	.size	.L.str.2, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
