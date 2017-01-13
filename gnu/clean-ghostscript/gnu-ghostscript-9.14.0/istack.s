	.text
	.file	"istack.bc"
	.align	16, 0x90
	.type	ref_stack_clear_marks,@function
ref_stack_clear_marks:                  # @ref_stack_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	andb	$-2, 24(%rsi)
	retq
.Lfunc_end0:
	.size	ref_stack_clear_marks, .Lfunc_end0-ref_stack_clear_marks
	.cfi_endproc

	.align	16, 0x90
	.type	ref_stack_enum_ptrs,@function
ref_stack_enum_ptrs:                    # @ref_stack_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB1_1
# BB#3:                                 # %sw.bb.1
	movq	80(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	jmp	.LBB1_4
.LBB1_1:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB1_4
# BB#2:                                 # %sw.bb
	addq	$24, %rsi
	movq	%rsi, (%r8)
	movl	$ptr_ref_procs, %eax
	retq
.LBB1_4:                                # %cleanup
	retq
.Lfunc_end1:
	.size	ref_stack_enum_ptrs, .Lfunc_end1-ref_stack_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	ref_stack_reloc_ptrs,@function
ref_stack_reloc_ptrs:                   # @ref_stack_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	leaq	24(%rbx), %rdi
	movq	32(%rbx), %r15
	movq	(%r14), %rax
	leaq	40(%rbx), %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, 24(%rbx)
	subq	32(%rbx), %r15
	subq	%r15, (%rbx)
	subq	%r15, 8(%rbx)
	subq	%r15, 16(%rbx)
	movq	(%r14), %rax
	movq	80(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 80(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	ref_stack_reloc_ptrs, .Lfunc_end2-ref_stack_reloc_ptrs
	.cfi_endproc

	.globl	ref_stack_init
	.align	16, 0x90
	.type	ref_stack_init,@function
ref_stack_init:                         # @ref_stack_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 80
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movl	%ecx, %r10d
	movl	%edx, %ebp
	movq	%rsi, %r11
	movq	%rdi, %rbx
	movq	80(%rsp), %rax
	movl	4(%r11), %r14d
	movl	%ebp, %r13d
	movq	8(%r11), %rcx
	testq	%rax, %rax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$st_ref_stack_params, %esi
	movl	$.L.str.1, %edx
	movq	%r9, %rdi
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%r11, 8(%rsp)           # 8-byte Spill
	movq	%r8, %r12
	movl	%r10d, 4(%rsp)          # 4-byte Spill
	movq	%r9, %r15
	callq	*72(%r15)
	movq	%r15, %r9
	movl	4(%rsp), %r10d          # 4-byte Reload
	movq	%r12, %r8
	movq	8(%rsp), %r11           # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	$-1, %r12d
	testq	%rax, %rax
	je	.LBB3_15
.LBB3_2:                                # %if.end.9
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	$-2, %r15d
	subl	%ebp, %r15d
	subl	%r10d, %r15d
	addl	%r14d, %r15d
	leaq	32(%rcx), %rcx
	shlq	$4, %r13
	leaq	(%rcx,%r13), %rdx
	movq	%rdx, 8(%rbx)
	leaq	-16(%rcx,%r13), %rcx
	movq	%rcx, (%rbx)
	movl	%r15d, %ecx
	movq	%rcx, %rsi
	shlq	$4, %rsi
	leaq	-16(%rsi,%rdx), %rdx
	movq	%rdx, 16(%rbx)
	movups	(%r11), %xmm0
	movups	%xmm0, 24(%rbx)
	movl	$0, 40(%rbx)
	movl	$0, 44(%rbx)
	movq	%rcx, 56(%rbx)
	movw	$2816, 48(%rbx)         # imm = 0xB00
	movl	$0, 64(%rbx)
	movl	$0, 68(%rbx)
	movl	%r15d, 72(%rbx)
	movq	%rax, 80(%rbx)
	movq	%r9, 88(%rbx)
	movl	%ebp, (%rax)
	movl	%r10d, 4(%rax)
	movl	%r14d, 8(%rax)
	movl	%r15d, 12(%rax)
	testq	%r8, %r8
	je	.LBB3_4
# BB#3:                                 # %if.then.25
	leaq	16(%rax), %rcx
	movups	(%r8), %xmm0
	movups	%xmm0, (%rcx)
	movq	80(%rbx), %r14
	movl	(%r14), %ebp
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	movq	$0, 24(%rax)
	movw	$0, 16(%rax)
	movq	%rax, %r14
.LBB3_5:                                # %if.end.32
	movq	$-1, 32(%rax)
	movl	$1, 40(%rax)
	movq	8(%r11), %r13
	leaq	32(%r13), %r12
	testl	%ebp, %ebp
	je	.LBB3_12
# BB#6:                                 # %for.body.lr.ph.i
	leaq	16(%r14), %rax
	leal	-1(%rbp), %edx
	testb	$7, %bpl
	je	.LBB3_7
# BB#8:                                 # %for.body.i.prol.preheader
	movl	%ebp, %esi
	andl	$7, %esi
	negl	%esi
	movq	%r12, %rcx
	.align	16, 0x90
.LBB3_9:                                # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rax), %xmm0
	movups	%xmm0, (%rcx)
	decl	%ebp
	addq	$16, %rcx
	incl	%esi
	jne	.LBB3_9
	jmp	.LBB3_10
.LBB3_7:
	movq	%r12, %rcx
.LBB3_10:                               # %for.body.lr.ph.i.split
	cmpl	$7, %edx
	jb	.LBB3_12
	.align	16, 0x90
.LBB3_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rax), %xmm0
	movups	%xmm0, (%rcx)
	movups	(%rax), %xmm0
	movups	%xmm0, 16(%rcx)
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rcx)
	movups	(%rax), %xmm0
	movups	%xmm0, 48(%rcx)
	movups	(%rax), %xmm0
	movups	%xmm0, 64(%rcx)
	movups	(%rax), %xmm0
	movups	%xmm0, 80(%rcx)
	movups	(%rax), %xmm0
	movups	%xmm0, 96(%rcx)
	movups	(%rax), %xmm0
	movups	%xmm0, 112(%rcx)
	subq	$-128, %rcx
	addl	$-8, %ebp
	jne	.LBB3_11
.LBB3_12:                               # %for.end.i
	movslq	4(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB3_14
# BB#13:                                # %if.then.i
	movl	4(%r11), %eax
	shlq	$4, %rax
	leaq	(%rax,%r13), %rdi
	movq	%rsi, %rax
	shlq	$4, %rax
	subq	%rax, %rdi
	xorl	%edx, %edx
	movq	%r11, %rbp
	callq	refset_null_new
	movq	%rbp, %r11
.LBB3_14:                               # %init_block.exit
	movq	(%r11), %rax
	movq	%rax, 16(%r13)
	movl	(%r14), %eax
	shlq	$4, %rax
	addq	%rax, %r12
	movq	%r12, 24(%r13)
	movl	$0, 20(%r13)
	movq	8(%rbx), %rdi
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	movl	%r15d, %esi
	callq	refset_null_new
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	$0, 8(%rax)
	movw	$1024, (%rax)           # imm = 0x400
	movl	$0, 4(%rax)
.LBB3_15:                               # %cleanup
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ref_stack_init, .Lfunc_end3-ref_stack_init
	.cfi_endproc

	.globl	ref_stack_allow_expansion
	.align	16, 0x90
	.type	ref_stack_allow_expansion,@function
ref_stack_allow_expansion:              # @ref_stack_allow_expansion
	.cfi_startproc
# BB#0:                                 # %entry
	movq	80(%rdi), %rax
	movl	%esi, 40(%rax)
	retq
.Lfunc_end4:
	.size	ref_stack_allow_expansion, .Lfunc_end4-ref_stack_allow_expansion
	.cfi_endproc

	.globl	ref_stack_set_error_codes
	.align	16, 0x90
	.type	ref_stack_set_error_codes,@function
ref_stack_set_error_codes:              # @ref_stack_set_error_codes
	.cfi_startproc
# BB#0:                                 # %entry
	movq	80(%rdi), %rax
	movl	%esi, 32(%rax)
	movl	%edx, 36(%rax)
	retq
.Lfunc_end5:
	.size	ref_stack_set_error_codes, .Lfunc_end5-ref_stack_set_error_codes
	.cfi_endproc

	.globl	ref_stack_set_max_count
	.align	16, 0x90
	.type	ref_stack_set_max_count,@function
ref_stack_set_max_count:                # @ref_stack_set_max_count
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	80(%rdi), %rcx
	addq	$16, %rax
	subq	8(%rdi), %rax
	shrq	$4, %rax
	addl	44(%rdi), %eax
	cmpq	%rsi, %rax
	cmovgeq	%rax, %rsi
	cmpq	$268435455, %rsi        # imm = 0xFFFFFFF
	movl	$268435455, %eax        # imm = 0xFFFFFFF
	cmovbeq	%rsi, %rax
	cmpl	$0, 40(%rcx)
	jne	.LBB6_2
# BB#1:                                 # %if.then.9
	movl	72(%rdi), %ecx
	cmpq	%rcx, %rax
	cmovgq	%rcx, %rax
.LBB6_2:                                # %if.end.16
	movq	%rax, 56(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	ref_stack_set_max_count, .Lfunc_end6-ref_stack_set_max_count
	.cfi_endproc

	.globl	ref_stack_set_margin
	.align	16, 0x90
	.type	ref_stack_set_margin,@function
ref_stack_set_margin:                   # @ref_stack_set_margin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 48
.Ltmp24:
	.cfi_offset %rbx, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	80(%rbx), %rax
	movl	12(%rax), %ebp
	movl	68(%rbx), %esi
	subl	%r14d, %esi
	jae	.LBB7_1
# BB#2:                                 # %if.else
	movl	%ebp, %ecx
	shrl	%ecx
	movl	$-15, %eax
	cmpl	%r14d, %ecx
	jb	.LBB7_6
# BB#3:                                 # %if.end
	leaq	16(%rbx), %r15
	movq	(%rbx), %rdx
	movq	16(%rbx), %rax
	subq	%rdx, %rax
	sarq	$4, %rax
	movl	%r14d, %ecx
	cmpq	%rcx, %rax
	jge	.LBB7_5
# BB#4:                                 # %if.then.10
	addq	$16, %rdx
	subq	8(%rbx), %rdx
	shrq	$4, %rdx
	movl	%ebp, %esi
	subl	%r14d, %esi
	subl	%esi, %edx
	movq	%rbx, %rdi
	callq	ref_stack_push_block
	testl	%eax, %eax
	jns	.LBB7_5
	jmp	.LBB7_6
.LBB7_1:                                # %if.then
	leaq	16(%rbx), %r15
	movq	16(%rbx), %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	callq	refset_null_new
.LBB7_5:                                # %if.end.27
	movl	%r14d, 68(%rbx)
	subl	%r14d, %ebp
	movl	%ebp, 72(%rbx)
	movq	8(%rbx), %rax
	shlq	$4, %rbp
	leaq	-16(%rax,%rbp), %rax
	movq	%rax, (%r15)
	xorl	%eax, %eax
.LBB7_6:                                # %cleanup.35
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ref_stack_set_margin, .Lfunc_end7-ref_stack_set_margin
	.cfi_endproc

	.align	16, 0x90
	.type	ref_stack_push_block,@function
ref_stack_push_block:                   # @ref_stack_push_block
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 112
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	(%rbx), %r12
	movq	8(%rbx), %rax
	subq	%rax, %r12
	shrq	$4, %r12
	incl	%r12d
	subl	%r14d, %r12d
	movl	$-100, %ebp
	jb	.LBB8_15
# BB#1:                                 # %if.end
	movq	80(%rbx), %r15
	movl	44(%rbx), %ecx
	movq	16(%rbx), %rsi
	subq	%rax, %rsi
	sarq	$4, %rsi
	movl	%edx, %eax
	addq	%rcx, %rax
	addq	%rsi, %rax
	cmpq	56(%rbx), %rax
	jge	.LBB8_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, 40(%r15)
	je	.LBB8_3
# BB#4:                                 # %if.end.17
	movq	32(%rbx), %r13
	movq	88(%rbx), %rdi
	movl	8(%r15), %ecx
	leaq	40(%rsp), %rsi
	xorl	%edx, %edx
	movl	$.L.str.7, %r8d
	callq	gs_alloc_ref_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_15
# BB#5:                                 # %if.end.21
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movq	48(%rsp), %r13
	leaq	32(%r13), %r9
	movq	80(%rbx), %rbp
	movl	(%rbp), %eax
	testl	%eax, %eax
	je	.LBB8_12
# BB#6:                                 # %for.body.lr.ph.i
	leaq	16(%rbp), %rcx
	leal	-1(%rax), %esi
	testb	$7, %al
	je	.LBB8_7
# BB#8:                                 # %for.body.i.prol.preheader
	movl	%eax, %edi
	andl	$7, %edi
	negl	%edi
	movq	%r9, %rdx
	.align	16, 0x90
.LBB8_9:                                # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rdx)
	decl	%eax
	addq	$16, %rdx
	incl	%edi
	jne	.LBB8_9
	jmp	.LBB8_10
.LBB8_3:                                # %if.then.16
	movl	36(%r15), %ebp
	jmp	.LBB8_15
.LBB8_7:
	movq	%r9, %rdx
.LBB8_10:                               # %for.body.lr.ph.i.split
	cmpl	$7, %esi
	jb	.LBB8_12
	.align	16, 0x90
.LBB8_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rdx)
	movups	(%rcx), %xmm0
	movups	%xmm0, 16(%rdx)
	movups	(%rcx), %xmm0
	movups	%xmm0, 32(%rdx)
	movups	(%rcx), %xmm0
	movups	%xmm0, 48(%rdx)
	movups	(%rcx), %xmm0
	movups	%xmm0, 64(%rdx)
	movups	(%rcx), %xmm0
	movups	%xmm0, 80(%rdx)
	movups	(%rcx), %xmm0
	movups	%xmm0, 96(%rdx)
	movups	(%rcx), %xmm0
	movups	%xmm0, 112(%rdx)
	subq	$-128, %rdx
	addl	$-8, %eax
	jne	.LBB8_11
.LBB8_12:                               # %for.end.i
	leaq	24(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movslq	4(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_14
# BB#13:                                # %if.then.i
	movl	44(%rsp), %eax
	shlq	$4, %rax
	leaq	(%rax,%r13), %rdi
	movq	%rsi, %rax
	shlq	$4, %rax
	subq	%rax, %rdi
	xorl	%edx, %edx
	movq	%r9, 16(%rsp)           # 8-byte Spill
	callq	refset_null_new
	movq	16(%rsp), %r9           # 8-byte Reload
.LBB8_14:                               # %init_block.exit
	movq	%r13, (%rsp)            # 8-byte Spill
	movq	40(%rsp), %rax
	movq	%rax, 16(%r13)
	movl	(%rbp), %eax
	shlq	$4, %rax
	leaq	(%rax,%r9), %rax
	movq	%rax, 24(%r13)
	movl	$0, 20(%r13)
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movl	(%r15), %r15d
	shlq	$4, %r15
	addq	%r9, %r15
	movl	%r12d, %r13d
	shlq	$4, %r13
	movq	8(%rbx), %rsi
	addq	%r13, %rsi
	movl	%r14d, %ebp
	shlq	$4, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	(%r15,%rbp), %rdi
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	12(%rax), %esi
	subl	%r14d, %esi
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	callq	refset_null_new
	addq	8(%rbx), %r13
	xorl	%edx, %edx
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	refset_null_new
	movq	24(%rsp), %rdx          # 8-byte Reload
	movups	(%rdx), %xmm0
	movq	(%rsp), %rax            # 8-byte Reload
	movups	%xmm0, (%rax)
	movq	8(%rbx), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 24(%rcx)
	movl	%r12d, 20(%rcx)
	movups	40(%rsp), %xmm0
	movups	%xmm0, (%rdx)
	movq	%r15, 8(%rbx)
	movl	72(%rbx), %eax
	movq	%rax, %rcx
	shlq	$4, %rcx
	leaq	-16(%rcx,%r15), %rcx
	movq	%rcx, 16(%rbx)
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	-16(%rcx,%r15), %rcx
	movq	%rcx, (%rbx)
	addl	%eax, 40(%rbx)
	addl	%r12d, 44(%rbx)
.LBB8_15:                               # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ref_stack_push_block, .Lfunc_end8-ref_stack_push_block
	.cfi_endproc

	.globl	ref_stack_count
	.align	16, 0x90
	.type	ref_stack_count,@function
ref_stack_count:                        # @ref_stack_count
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	addq	$16, %rax
	subq	8(%rdi), %rax
	shrq	$4, %rax
	addl	44(%rdi), %eax
	retq
.Lfunc_end9:
	.size	ref_stack_count, .Lfunc_end9-ref_stack_count
	.cfi_endproc

	.globl	ref_stack_index
	.align	16, 0x90
	.type	ref_stack_index,@function
ref_stack_index:                        # @ref_stack_index
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rsi, %rsi
	js	.LBB10_7
# BB#1:                                 # %if.end
	movq	(%rdi), %rax
	leaq	16(%rax), %rcx
	subq	8(%rdi), %rcx
	shrq	$4, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	%ecx, %edx
	cmpq	%rsi, %rdx
	jle	.LBB10_3
# BB#2:                                 # %if.then.5
	andq	%r8, %rsi
	shlq	$4, %rsi
	subq	%rsi, %rax
	retq
.LBB10_3:                               # %if.end.9
	movq	32(%rdi), %rdx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB10_4:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB10_7
# BB#5:                                 # %if.end.15
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	%ecx, %ecx
	subq	%rcx, %rsi
	movl	20(%rdx), %ecx
	cmpq	%rcx, %rsi
	jge	.LBB10_4
# BB#6:                                 # %do.end
	notl	%esi
	leal	(%rsi,%rcx), %eax
	shlq	$4, %rax
	addq	24(%rdx), %rax
.LBB10_7:                               # %cleanup
	retq
.Lfunc_end10:
	.size	ref_stack_index, .Lfunc_end10-ref_stack_index
	.cfi_endproc

	.globl	ref_stack_counttomark
	.align	16, 0x90
	.type	ref_stack_counttomark,@function
ref_stack_counttomark:                  # @ref_stack_counttomark
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rdi), %rdx
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	addq	$16, %rcx
	subq	%rax, %rcx
	shrq	$4, %rcx
	xorl	%r8d, %r8d
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_6:                               # %ref_stack_enum_next.exit
                                        #   in Loop: Header=BB11_1 Depth=1
	addl	%ecx, %r8d
	movq	24(%rdx), %rax
	movl	20(%rdx), %ecx
.LBB11_1:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	testl	%ecx, %ecx
	je	.LBB11_5
# BB#2:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	%ecx, %edi
	shlq	$4, %rdi
	leaq	-15(%rax,%rdi), %rax
	movl	%ecx, %edi
	.align	16, 0x90
.LBB11_3:                               # %for.body
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %esi
	cmpl	$12, %esi
	je	.LBB11_7
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	addq	$-16, %rax
	decl	%edi
	jne	.LBB11_3
.LBB11_5:                               # %do.cond
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	8(%rdx), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	jne	.LBB11_6
	jmp	.LBB11_8
.LBB11_7:                               # %cleanup
	leal	1(%rcx,%r8), %eax
	subl	%edi, %eax
.LBB11_8:                               # %cleanup.9
	retq
.Lfunc_end11:
	.size	ref_stack_counttomark, .Lfunc_end11-ref_stack_counttomark
	.cfi_endproc

	.globl	ref_stack_enum_begin
	.align	16, 0x90
	.type	ref_stack_enum_begin,@function
ref_stack_enum_begin:                   # @ref_stack_enum_begin
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rsi), %rax
	movq	%rax, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	(%rsi), %rcx
	addq	$16, %rcx
	subq	%rax, %rcx
	shrq	$4, %rcx
	movl	%ecx, 16(%rdi)
	retq
.Lfunc_end12:
	.size	ref_stack_enum_begin, .Lfunc_end12-ref_stack_enum_begin
	.cfi_endproc

	.globl	ref_stack_enum_next
	.align	16, 0x90
	.type	ref_stack_enum_next,@function
ref_stack_enum_next:                    # @ref_stack_enum_next
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, (%rdi)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB13_2
# BB#1:                                 # %if.end
	movq	24(%rcx), %rax
	movq	%rax, 8(%rdi)
	movl	20(%rcx), %eax
	movl	%eax, 16(%rdi)
	movl	$1, %eax
.LBB13_2:                               # %cleanup
	retq
.Lfunc_end13:
	.size	ref_stack_enum_next, .Lfunc_end13-ref_stack_enum_next
	.cfi_endproc

	.globl	ref_stack_store_check
	.align	16, 0x90
	.type	ref_stack_store_check,@function
ref_stack_store_check:                  # @ref_stack_store_check
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 64
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movzwl	(%rsi), %r14d
	andl	$12, %r14d
	xorl	%r15d, %r15d
	cmpl	$12, %r14d
	je	.LBB14_9
# BB#1:                                 # %if.then
	movq	32(%rdi), %rbx
	movq	(%rdi), %rax
	movq	8(%rdi), %rdi
	addq	$16, %rax
	subq	%rdi, %rax
	shrq	$4, %rax
	movl	$1, %r13d
                                        # implicit-def: R15D
	jmp	.LBB14_2
	.align	16, 0x90
.LBB14_5:                               # %ref_stack_enum_next.exit
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	24(%rbx), %rdi
	movl	20(%rbx), %eax
.LBB14_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebp
	subl	%ecx, %ebp
	jbe	.LBB14_3
# BB#6:                                 # %if.else
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	%rbp, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	cmpl	%r12d, %ebp
	cmoval	%r12d, %ebp
	movl	%ebp, %eax
	shlq	$4, %rax
	subq	%rax, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	refs_check_space
	subl	%ebp, %r12d
	sete	%cl
	movzbl	%cl, %edx
	addl	%edx, %edx
	testl	%eax, %eax
	cmovsl	%eax, %r15d
	cmovsl	%r13d, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.LBB14_4
	jmp	.LBB14_7
	.align	16, 0x90
.LBB14_3:                               # %if.then.6
                                        #   in Loop: Header=BB14_2 Depth=1
	subl	%eax, %ecx
.LBB14_4:                               # %do.cond
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB14_5
	jmp	.LBB14_8
.LBB14_7:                               # %if.else
	cmpl	$2, %edx
	jne	.LBB14_9
.LBB14_8:                               # %cleanup.38.loopexit48
	xorl	%r15d, %r15d
.LBB14_9:                               # %cleanup.38
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ref_stack_store_check, .Lfunc_end14-ref_stack_store_check
	.cfi_endproc

	.globl	ref_stack_store
	.align	16, 0x90
	.type	ref_stack_store,@function
ref_stack_store:                        # @ref_stack_store
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 80
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	%rdi, %r14
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	addq	$16, %rax
	subq	%rdi, %rax
	shrq	$4, %rax
	movl	44(%r14), %ecx
	addl	%eax, %ecx
	movl	$-15, %r15d
	cmpl	%edx, %ecx
	jb	.LBB15_38
# BB#1:                                 # %lor.lhs.false
	movl	%r8d, 8(%rsp)           # 4-byte Spill
	cmpl	%edx, 4(%rsi)
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	%edx, 4(%rsp)           # 4-byte Spill
	jb	.LBB15_38
# BB#2:                                 # %if.end
	testl	%r9d, %r9d
	je	.LBB15_12
# BB#3:                                 # %if.then.2
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzwl	(%rcx), %ecx
	andl	$12, %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	cmpl	$12, %ecx
	je	.LBB15_12
# BB#4:                                 # %if.then.i
	movq	32(%r14), %rbp
	movl	4(%rsp), %r13d          # 4-byte Reload
	movl	%ebx, %ecx
                                        # implicit-def: R15D
	jmp	.LBB15_5
	.align	16, 0x90
.LBB15_8:                               # %ref_stack_enum_next.exit.i
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	24(%rbp), %rdi
	movl	20(%rbp), %eax
.LBB15_5:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	subl	%ecx, %r12d
	jbe	.LBB15_6
# BB#9:                                 # %if.else.i
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	%r12, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	cmpl	%r13d, %r12d
	cmoval	%r13d, %r12d
	movl	%r12d, %eax
	shlq	$4, %rax
	subq	%rax, %rdi
	movl	%r12d, %esi
	movl	12(%rsp), %edx          # 4-byte Reload
	callq	refs_check_space
	subl	%r12d, %r13d
	sete	%cl
	movzbl	%cl, %edx
	addl	%edx, %edx
	testl	%eax, %eax
	cmovsl	%eax, %r15d
	movl	$1, %eax
	cmovsl	%eax, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.LBB15_7
	jmp	.LBB15_10
	.align	16, 0x90
.LBB15_6:                               # %if.then.6.i
                                        #   in Loop: Header=BB15_5 Depth=1
	subl	%eax, %ecx
.LBB15_7:                               # %do.cond.i
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	8(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB15_8
	jmp	.LBB15_12
.LBB15_10:                              # %if.else.i
	cmpl	$2, %edx
	je	.LBB15_12
# BB#11:                                # %ref_stack_store_check.exit
	testl	%r15d, %r15d
	js	.LBB15_38
.LBB15_12:                              # %if.end.7
	movq	80(%rsp), %r13
	movl	4(%rsp), %edx           # 4-byte Reload
	movl	%edx, %eax
	shlq	$4, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	addq	8(%rcx), %rax
	movq	32(%r14), %r12
	movq	(%r14), %rsi
	movq	8(%r14), %rcx
	addq	$16, %rsi
	subq	%rcx, %rsi
	shrq	$4, %rsi
	movl	%edx, %ebp
	movl	8(%rsp), %edi           # 4-byte Reload
	jmp	.LBB15_13
	.align	16, 0x90
.LBB15_36:                              # %ref_stack_enum_next.exit
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	24(%r12), %rcx
	movl	20(%r12), %esi
.LBB15_13:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_32 Depth 2
                                        #     Child Loop BB15_28 Depth 2
                                        #     Child Loop BB15_26 Depth 2
	movl	%esi, %edx
	subl	%ebx, %edx
	jbe	.LBB15_14
# BB#15:                                # %if.else
                                        #   in Loop: Header=BB15_13 Depth=1
	cmpl	%ebp, %edx
	movl	%edx, %r15d
	cmoval	%ebp, %r15d
	cmpl	$-1, %edi
	je	.LBB15_23
# BB#16:                                # %if.else
                                        #   in Loop: Header=BB15_13 Depth=1
	testl	%edi, %edi
	jne	.LBB15_17
# BB#21:                                # %while.cond.24.preheader
                                        #   in Loop: Header=BB15_13 Depth=1
	testl	%r15d, %r15d
	je	.LBB15_22
# BB#27:                                # %while.body.27.preheader
                                        #   in Loop: Header=BB15_13 Depth=1
	decl	%ebx
	subl	%esi, %ebx
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	notl	%ebp
	cmpl	%ebp, %ebx
	cmoval	%ebx, %ebp
	incl	%ebp
	shlq	$4, %rdx
	leaq	-16(%rcx,%rdx), %r14
	addq	$-16, %rax
	movq	%rax, %rbx
	.align	16, 0x90
.LBB15_28:                              # %while.body.27
                                        #   Parent Loop BB15_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbx), %eax
	testl	64(%r13), %eax
	jne	.LBB15_30
# BB#29:                                # %cond.true
                                        #   in Loop: Header=BB15_28 Depth=2
	movq	%r13, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	88(%rsp), %rcx
	callq	alloc_save_change
.LBB15_30:                              # %cond.end
                                        #   in Loop: Header=BB15_28 Depth=2
	movups	(%r14), %xmm0
	movups	%xmm0, (%rbx)
	movzwl	(%rbx), %eax
	orl	68(%r13), %eax
	movw	%ax, (%rbx)
	addq	$-16, %r14
	incl	%ebp
	movq	%rbx, %rax
	leaq	-16(%rbx), %rbx
	jne	.LBB15_28
	jmp	.LBB15_33
	.align	16, 0x90
.LBB15_14:                              # %if.then.10
                                        #   in Loop: Header=BB15_13 Depth=1
	subl	%esi, %ebx
	jmp	.LBB15_35
.LBB15_23:                              # %while.cond.preheader
                                        #   in Loop: Header=BB15_13 Depth=1
	testl	%r15d, %r15d
	je	.LBB15_24
# BB#25:                                # %while.body.preheader
                                        #   in Loop: Header=BB15_13 Depth=1
	decl	%ebx
	subl	%esi, %ebx
	movl	%ebp, %esi
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	notl	%esi
	cmpl	%esi, %ebx
	cmoval	%ebx, %esi
	incl	%esi
	shlq	$4, %rdx
	leaq	-16(%rcx,%rdx), %rcx
	.align	16, 0x90
.LBB15_26:                              # %while.body
                                        #   Parent Loop BB15_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rcx), %xmm0
	movups	%xmm0, -16(%rax)
	addq	$-16, %rax
	addq	$-16, %rcx
	incl	%esi
	jne	.LBB15_26
	jmp	.LBB15_33
.LBB15_17:                              # %if.else
                                        #   in Loop: Header=BB15_13 Depth=1
	cmpl	$1, %edi
	jne	.LBB15_18
# BB#19:                                # %while.cond.40.preheader
                                        #   in Loop: Header=BB15_13 Depth=1
	testl	%r15d, %r15d
	je	.LBB15_20
# BB#31:                                # %while.body.43.preheader
                                        #   in Loop: Header=BB15_13 Depth=1
	decl	%ebx
	subl	%esi, %ebx
	movl	%ebp, %esi
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	notl	%esi
	cmpl	%esi, %ebx
	cmoval	%ebx, %esi
	incl	%esi
	shlq	$4, %rdx
	leaq	-16(%rcx,%rdx), %rcx
	addq	$-16, %rax
	movq	%rax, %rdx
	.align	16, 0x90
.LBB15_32:                              # %while.body.43
                                        #   Parent Loop BB15_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rdx)
	movzwl	(%rdx), %eax
	orl	68(%r13), %eax
	movw	%ax, (%rdx)
	addq	$-16, %rcx
	incl	%esi
	movq	%rdx, %rax
	leaq	-16(%rdx), %rdx
	jne	.LBB15_32
	jmp	.LBB15_33
.LBB15_18:                              #   in Loop: Header=BB15_13 Depth=1
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	jmp	.LBB15_33
.LBB15_22:                              #   in Loop: Header=BB15_13 Depth=1
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	jmp	.LBB15_33
.LBB15_24:                              #   in Loop: Header=BB15_13 Depth=1
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	jmp	.LBB15_33
.LBB15_20:                              #   in Loop: Header=BB15_13 Depth=1
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB15_33:                              # %sw.epilog
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	12(%rsp), %ebp          # 4-byte Reload
	cmpl	%r15d, %ebp
	movl	8(%rsp), %edi           # 4-byte Reload
	je	.LBB15_37
# BB#34:                                #   in Loop: Header=BB15_13 Depth=1
	subl	%r15d, %ebp
	xorl	%ebx, %ebx
.LBB15_35:                              # %do.cond
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	8(%r12), %r12
	testq	%r12, %r12
	jne	.LBB15_36
.LBB15_37:                              # %do.end
	movl	4(%rsp), %eax           # 4-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 4(%rcx)
	xorl	%r15d, %r15d
.LBB15_38:                              # %cleanup.66
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ref_stack_store, .Lfunc_end15-ref_stack_store
	.cfi_endproc

	.globl	ref_stack_pop
	.align	16, 0x90
	.type	ref_stack_pop,@function
ref_stack_pop:                          # @ref_stack_pop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp69:
	.cfi_def_cfa_offset 32
.Ltmp70:
	.cfi_offset %rbx, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	16(%rax), %rdx
	subq	%rcx, %rdx
	shrq	$4, %rdx
	cmpl	%ebp, %edx
	jae	.LBB16_2
	.align	16, 0x90
.LBB16_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	subl	%edx, %ebp
	addq	$-16, %rcx
	movq	%rcx, (%rbx)
	movq	%rbx, %rdi
	callq	ref_stack_pop_block
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	16(%rax), %rdx
	subq	%rcx, %rdx
	shrq	$4, %rdx
	cmpl	%edx, %ebp
	ja	.LBB16_1
.LBB16_2:                               # %while.end
	movl	%ebp, %ecx
	shlq	$4, %rcx
	subq	%rcx, %rax
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	ref_stack_pop, .Lfunc_end16-ref_stack_pop
	.cfi_endproc

	.globl	ref_stack_pop_block
	.align	16, 0x90
	.type	ref_stack_pop_block,@function
ref_stack_pop_block:                    # @ref_stack_pop_block
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp78:
	.cfi_def_cfa_offset 96
.Ltmp79:
	.cfi_offset %rbx, -56
.Ltmp80:
	.cfi_offset %r12, -48
.Ltmp81:
	.cfi_offset %r13, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	32(%rbx), %rcx
	movq	8(%rcx), %r14
	testq	%r14, %r14
	je	.LBB17_1
# BB#2:                                 # %if.end
	movq	(%rbx), %rdx
	movq	8(%rbx), %r15
	addq	$16, %rdx
	subq	%r15, %rdx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	movabsq	$68719476720, %rax      # imm = 0xFFFFFFFF0
	movl	20(%r14), %r13d
	movq	80(%rbx), %rdi
	movl	(%rdi), %edi
	shlq	$4, %rdi
	leaq	32(%r14,%rdi), %rdi
	movups	(%rcx), %xmm0
	movaps	%xmm0, 16(%rsp)
	leal	(%r13,%rsi), %ebp
	movl	72(%rbx), %r12d
	cmpl	%r12d, %ebp
	jbe	.LBB17_5
# BB#3:                                 # %if.then.13
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	subl	%esi, %r12d
	movl	$-100, %ebp
	je	.LBB17_6
# BB#4:                                 # %if.end.18
	movl	%r12d, %ebp
	shlq	$4, %rbp
	leaq	(%r15,%rbp), %rdi
	andq	%rax, %rdx
	movq	%r15, %rsi
	callq	memmove
	subl	%r12d, %r13d
	shlq	$4, %r13
	movq	8(%rsp), %rsi           # 8-byte Reload
	addq	%r13, %rsi
	movq	%r15, %rdi
	movq	%rsi, %r15
	movq	%rbp, %rdx
	callq	memcpy
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	refset_null_new
	subl	%r12d, 20(%r14)
	movq	16(%rbx), %rax
	movq	%rax, (%rbx)
	subl	%r12d, 44(%rbx)
	jmp	.LBB17_6
.LBB17_1:                               # %if.then
	movq	80(%rbx), %rax
	movl	32(%rax), %ebp
	jmp	.LBB17_6
.LBB17_5:                               # %if.else
	leaq	24(%rbx), %r14
	movq	%r13, %rcx
	shlq	$4, %rcx
	movq	%rdi, %r12
	leaq	(%rcx,%r12), %rdi
	andq	%rax, %rdx
	movq	%r15, %rsi
	callq	memcpy
	movq	%r12, 8(%rbx)
	movl	72(%rbx), %eax
	shlq	$4, %rax
	leaq	-16(%r12,%rax), %rax
	movq	%rax, 16(%rbx)
	movq	88(%rbx), %rdi
	movl	$.L.str.2, %edx
	movq	%r14, %rsi
	callq	gs_free_ref_array
	movaps	16(%rsp), %xmm0
	movups	%xmm0, (%r14)
	decl	%ebp
	shlq	$4, %rbp
	addq	%r12, %rbp
	movq	%rbp, (%rbx)
	movl	72(%rbx), %eax
	subl	%eax, 40(%rbx)
	subl	%r13d, 44(%rbx)
	xorl	%ebp, %ebp
.LBB17_6:                               # %cleanup.60
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	ref_stack_pop_block, .Lfunc_end17-ref_stack_pop_block
	.cfi_endproc

	.globl	ref_stack_extend
	.align	16, 0x90
	.type	ref_stack_extend,@function
ref_stack_extend:                       # @ref_stack_extend
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %r8d
	movq	16(%rdi), %rax
	movq	8(%rdi), %rsi
	subq	%rsi, %rax
	sarq	$4, %rax
	incq	%rax
	movabsq	$6148914691236517206, %rdx # imm = 0x5555555555555556
	imulq	%rdx
	movq	80(%rdi), %rax
	cmpl	%r8d, 12(%rax)
	jae	.LBB18_2
# BB#1:                                 # %cleanup
	movl	36(%rax), %eax
	retq
.LBB18_2:                               # %if.end
	movq	(%rdi), %rax
	movq	%rdx, %rcx
	shrq	$63, %rcx
	leal	(%rcx,%rdx), %ecx
	subq	%rsi, %rax
	shrq	$4, %rax
	incl	%eax
	leal	(%rcx,%r8), %r9d
	movl	72(%rdi), %edx
	movl	%edx, %esi
	subl	%r8d, %esi
	cmpl	%edx, %r9d
	cmovbel	%ecx, %esi
	cmpl	%eax, %esi
	cmoval	%eax, %esi
	movl	%r8d, %edx
	jmp	ref_stack_push_block    # TAILCALL
.Lfunc_end18:
	.size	ref_stack_extend, .Lfunc_end18-ref_stack_extend
	.cfi_endproc

	.globl	ref_stack_push
	.align	16, 0x90
	.type	ref_stack_push,@function
ref_stack_push:                         # @ref_stack_push
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp88:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp89:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp91:
	.cfi_def_cfa_offset 64
.Ltmp92:
	.cfi_offset %rbx, -56
.Ltmp93:
	.cfi_offset %r12, -48
.Ltmp94:
	.cfi_offset %r13, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	(%r12), %rcx
	movq	16(%r12), %rax
	movq	%rax, %rbp
	subq	%rcx, %rbp
	shrq	$4, %rbp
	cmpl	%r14d, %ebp
	jae	.LBB19_1
# BB#2:                                 # %for.body.lr.ph
	movabsq	$6148914691236517206, %r13 # imm = 0x5555555555555556
	movl	%r14d, %ebx
	.align	16, 0x90
.LBB19_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, (%r12)
	subq	8(%r12), %rax
	sarq	$4, %rax
	incq	%rax
	imulq	%r13
	movq	%rdx, %rax
	shrq	$63, %rax
	leal	(%rax,%rdx), %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	ref_stack_push_block
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB19_4
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	subl	%ebp, %ebx
	movq	(%r12), %rcx
	movq	16(%r12), %rax
	movq	%rax, %rbp
	subq	%rcx, %rbp
	shrq	$4, %rbp
	cmpl	%ebp, %ebx
	ja	.LBB19_3
	jmp	.LBB19_8
.LBB19_1:
	movl	%r14d, %ebx
.LBB19_8:                               # %for.end
	movl	%ebx, %eax
	shlq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, (%r12)
	xorl	%r15d, %r15d
	jmp	.LBB19_9
.LBB19_4:                               # %if.then
	movl	%r14d, %eax
	subl	%ebx, %eax
	addl	%eax, %ebp
	movq	(%r12), %rax
	movq	8(%r12), %rcx
	leaq	16(%rax), %rdx
	subq	%rcx, %rdx
	shrq	$4, %rdx
	cmpl	%ebp, %edx
	jae	.LBB19_6
	.align	16, 0x90
.LBB19_5:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	subl	%edx, %ebp
	addq	$-16, %rcx
	movq	%rcx, (%r12)
	movq	%r12, %rdi
	callq	ref_stack_pop_block
	movq	(%r12), %rax
	movq	8(%r12), %rcx
	leaq	16(%rax), %rdx
	subq	%rcx, %rdx
	shrq	$4, %rdx
	cmpl	%edx, %ebp
	ja	.LBB19_5
.LBB19_6:                               # %cleanup
	movl	%ebp, %ecx
	shlq	$4, %rcx
	subq	%rcx, %rax
	movq	%rax, (%r12)
	movl	%r14d, 64(%r12)
.LBB19_9:                               # %cleanup.15
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	ref_stack_push, .Lfunc_end19-ref_stack_push
	.cfi_endproc

	.globl	ref_stack_cleanup
	.align	16, 0x90
	.type	ref_stack_cleanup,@function
ref_stack_cleanup:                      # @ref_stack_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp100:
	.cfi_def_cfa_offset 32
.Ltmp101:
	.cfi_offset %rbx, -24
.Ltmp102:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	32(%rbx), %r14
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	subq	%rdi, %rsi
	addq	$16, %rdi
	shrq	$4, %rsi
	xorl	%edx, %edx
	callq	refset_null_new
	movups	24(%rbx), %xmm0
	movups	%xmm0, 16(%r14)
	movq	8(%rbx), %rax
	movq	%rax, 24(%r14)
	movq	(%rbx), %rax
	addq	$16, %rax
	subq	8(%rbx), %rax
	shrq	$4, %rax
	movl	%eax, 20(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end20:
	.size	ref_stack_cleanup, .Lfunc_end20-ref_stack_cleanup
	.cfi_endproc

	.globl	ref_stack_release
	.align	16, 0x90
	.type	ref_stack_release,@function
ref_stack_release:                      # @ref_stack_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 32
.Ltmp106:
	.cfi_offset %rbx, -32
.Ltmp107:
	.cfi_offset %r14, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	88(%rbx), %r14
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	16(%rax), %rdx
	subq	%rcx, %rdx
	shrq	$4, %rdx
	movl	44(%rbx), %ebp
	addl	%edx, %ebp
	cmpl	%ebp, %edx
	jae	.LBB21_2
	.align	16, 0x90
.LBB21_1:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	subl	%edx, %ebp
	addq	$-16, %rcx
	movq	%rcx, (%rbx)
	movq	%rbx, %rdi
	callq	ref_stack_pop_block
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	16(%rax), %rdx
	subq	%rcx, %rdx
	shrq	$4, %rdx
	cmpl	%edx, %ebp
	ja	.LBB21_1
.LBB21_2:                               # %ref_stack_pop.exit
	movl	%ebp, %ecx
	shlq	$4, %rcx
	subq	%rcx, %rax
	movq	%rax, (%rbx)
	movq	80(%rbx), %rsi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	addq	$24, %rbx
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gs_free_ref_array       # TAILCALL
.Lfunc_end21:
	.size	ref_stack_release, .Lfunc_end21-ref_stack_release
	.cfi_endproc

	.globl	ref_stack_free
	.align	16, 0x90
	.type	ref_stack_free,@function
ref_stack_free:                         # @ref_stack_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 32
.Ltmp112:
	.cfi_offset %rbx, -32
.Ltmp113:
	.cfi_offset %r14, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	88(%rbx), %r14
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	16(%rax), %rdx
	subq	%rcx, %rdx
	shrq	$4, %rdx
	movl	44(%rbx), %ebp
	addl	%edx, %ebp
	cmpl	%ebp, %edx
	jae	.LBB22_2
	.align	16, 0x90
.LBB22_1:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	subl	%edx, %ebp
	addq	$-16, %rcx
	movq	%rcx, (%rbx)
	movq	%rbx, %rdi
	callq	ref_stack_pop_block
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	16(%rax), %rdx
	subq	%rcx, %rdx
	shrq	$4, %rdx
	cmpl	%edx, %ebp
	ja	.LBB22_1
.LBB22_2:                               # %ref_stack_release.exit
	movl	%ebp, %ecx
	shlq	$4, %rcx
	subq	%rcx, %rax
	movq	%rax, (%rbx)
	movq	80(%rbx), %rsi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	leaq	24(%rbx), %rsi
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	callq	gs_free_ref_array
	movq	24(%r14), %rax
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end22:
	.size	ref_stack_free, .Lfunc_end22-ref_stack_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ref_stack_t"
	.size	.L.str, 12

	.type	st_ref_stack,@object    # @st_ref_stack
	.section	.rodata,"a",@progbits
	.globl	st_ref_stack
	.align	8
st_ref_stack:
	.long	96                      # 0x60
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	ref_stack_clear_marks
	.quad	ref_stack_enum_ptrs
	.quad	ref_stack_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_ref_stack, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"ref_stack_alloc(stack.params)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ref_stack_pop_block"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ref_stack_release(stack.params)"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ref_stack_release"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ref_stack_free"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ref_stack_params_t"
	.size	.L.str.6, 19

	.type	st_ref_stack_params,@object # @st_ref_stack_params
	.section	.rodata,"a",@progbits
	.align	8
st_ref_stack_params:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_ref_stack_params, 64

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"ref_stack_push_block"
	.size	.L.str.7, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
