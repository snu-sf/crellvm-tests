	.text
	.file	"gxpath.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	gx_path_init_contained_shared
	.align	16, 0x90
	.type	gx_path_init_contained_shared,@function
gx_path_init_contained_shared:          # @gx_path_init_contained_shared
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%r15, %r15
	je	.LBB0_5
# BB#1:                                 # %if.then
	cmpq	%r15, 56(%r15)
	je	.LBB0_2
# BB#3:                                 # %if.end
	movups	112(%r15), %xmm0
	movups	%xmm0, 112(%rbx)
	movups	96(%r15), %xmm0
	movups	%xmm0, 96(%rbx)
	movups	80(%r15), %xmm0
	movups	%xmm0, 80(%rbx)
	movups	64(%r15), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movups	48(%r15), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_7
# BB#4:                                 # %do.body.7
	incq	(%rax)
	jmp	.LBB0_7
.LBB0_5:                                # %if.else
	movq	%r14, %rdi
	callq	*32(%r14)
	movq	%rax, %r15
	movl	$st_path_segments, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	*72(%r15)
	movq	%rax, %rcx
	movq	%rcx, 56(%rbx)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB0_8
# BB#6:                                 # %if.end.17
	movq	$1, (%rcx)
	movq	%r15, 8(%rcx)
	movq	56(%rbx), %rax
	movq	$rc_free_struct_only, 16(%rax)
	movq	56(%rbx), %rax
	movq	$rc_free_path_segments, 16(%rax)
	movq	$0, 88(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movl	$0, 104(%rbx)
	movl	$0, 108(%rbx)
	movb	$0, 97(%rbx)
	movb	$0, 98(%rbx)
	movb	$0, 99(%rbx)
	movq	$0, 64(%rbx)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [2147483647,2147483647,2147483648,2147483648]
	movups	%xmm0, 72(%rbx)
.LBB0_7:                                # %if.end.18
	movq	%r14, 40(%rbx)
	movl	$1, 48(%rbx)
	movq	$default_path_procs, 120(%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_8
.LBB0_2:                                # %if.then.1
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.1, %edi
	movl	$142, %esi
	callq	lprintf_file_and_line
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	errprintf_nomem
	movl	$-100, %eax
.LBB0_8:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gx_path_init_contained_shared, .Lfunc_end0-gx_path_init_contained_shared
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	gx_path_alloc_shared
	.align	16, 0x90
	.type	gx_path_alloc_shared,@function
gx_path_alloc_shared:                   # @gx_path_alloc_shared
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -48
.Ltmp15:
	.cfi_offset %r12, -40
.Ltmp16:
	.cfi_offset %r13, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$st_path, %esi
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rbx
	xorl	%r13d, %r13d
	testq	%rbx, %rbx
	je	.LBB1_10
# BB#1:                                 # %if.end
	movq	$default_path_procs, 120(%rbx)
	testq	%r12, %r12
	je	.LBB1_6
# BB#2:                                 # %if.then.2
	cmpq	%r12, 56(%r12)
	je	.LBB1_3
# BB#4:                                 # %if.end.9
	movups	112(%r12), %xmm0
	movups	%xmm0, 112(%rbx)
	movups	96(%r12), %xmm0
	movups	%xmm0, 96(%rbx)
	movups	80(%r12), %xmm0
	movups	%xmm0, 80(%rbx)
	movups	64(%r12), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	48(%r12), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_9
# BB#5:                                 # %do.body.13
	incq	(%rax)
	jmp	.LBB1_9
.LBB1_6:                                # %if.else
	movq	%r14, %rdi
	callq	*32(%r14)
	movq	%rax, %r12
	movl	$st_path_segments, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*72(%r12)
	movq	%rax, 56(%rbx)
	testq	%rax, %rax
	je	.LBB1_7
# BB#8:                                 # %if.end.27
	movq	$1, (%rax)
	movq	%r12, 8(%rax)
	movq	56(%rbx), %rax
	movq	$rc_free_struct_only, 16(%rax)
	movq	56(%rbx), %rax
	movq	$rc_free_path_segments, 16(%rax)
	movq	$0, 88(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movl	$0, 104(%rbx)
	movl	$0, 108(%rbx)
	movb	$0, 97(%rbx)
	movb	$0, 98(%rbx)
	movb	$0, 99(%rbx)
	movq	$0, 64(%rbx)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [2147483647,2147483647,2147483648,2147483648]
	movups	%xmm0, 72(%rbx)
.LBB1_9:                                # %if.end.28
	movq	%r14, 40(%rbx)
	movl	$2, 48(%rbx)
	movq	%rbx, %r13
	jmp	.LBB1_10
.LBB1_3:                                # %if.then.4
	callq	gs_program_name
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.1, %edi
	movl	$177, %esi
	callq	lprintf_file_and_line
	xorl	%r13d, %r13d
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	errprintf_nomem
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*24(%r14)
	jmp	.LBB1_10
.LBB1_7:                                # %if.then.24
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*24(%r14)
	xorl	%r13d, %r13d
.LBB1_10:                               # %cleanup.29
	movq	%r13, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gx_path_alloc_shared, .Lfunc_end1-gx_path_alloc_shared
	.cfi_endproc

	.globl	gx_path_init_local_shared
	.align	16, 0x90
	.type	gx_path_init_local_shared,@function
gx_path_init_local_shared:              # @gx_path_init_local_shared
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -24
.Ltmp23:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB2_5
# BB#1:                                 # %if.then
	cmpq	%rbx, 56(%rbx)
	je	.LBB2_2
# BB#3:                                 # %if.end
	movups	112(%rbx), %xmm0
	movups	%xmm0, 112(%rdi)
	movups	96(%rbx), %xmm0
	movups	%xmm0, 96(%rdi)
	movups	80(%rbx), %xmm0
	movups	%xmm0, 80(%rdi)
	movups	64(%rbx), %xmm0
	movups	%xmm0, 64(%rdi)
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movups	%xmm3, 48(%rdi)
	movups	%xmm2, 32(%rdi)
	movups	%xmm1, 16(%rdi)
	movups	%xmm0, (%rdi)
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.LBB2_6
# BB#4:                                 # %do.body.7
	incq	(%rax)
	jmp	.LBB2_6
.LBB2_5:                                # %do.body.13
	movq	$1, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	$rc_free_path_segments_local, 16(%rdi)
	movq	%rdi, 56(%rdi)
	movq	$0, 88(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rdi)
	movl	$0, 104(%rdi)
	movl	$0, 108(%rdi)
	movb	$0, 97(%rdi)
	movb	$0, 98(%rdi)
	movb	$0, 99(%rdi)
	movq	$0, 64(%rdi)
	movl	$2147483647, 72(%rdi)   # imm = 0x7FFFFFFF
	movabsq	$-9223372034707292161, %rax # imm = 0x800000007FFFFFFF
	movq	%rax, 76(%rdi)
	movl	$-2147483648, 84(%rdi)  # imm = 0xFFFFFFFF80000000
.LBB2_6:                                # %if.end.26
	movq	%rdx, 40(%rdi)
	movl	$0, 48(%rdi)
	movq	$default_path_procs, 120(%rdi)
	xorl	%eax, %eax
	jmp	.LBB2_7
.LBB2_2:                                # %if.then.1
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.1, %edi
	movl	$208, %esi
	callq	lprintf_file_and_line
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	errprintf_nomem
	movl	$-100, %eax
.LBB2_7:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	gx_path_init_local_shared, .Lfunc_end2-gx_path_init_local_shared
	.cfi_endproc

	.align	16, 0x90
	.type	rc_free_path_segments_local,@function
rc_free_path_segments_local:            # @rc_free_path_segments_local
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	*32(%rdi)
	movq	%rax, %r12
	cmpq	$0, 24(%r15)
	je	.LBB3_3
# BB#1:                                 # %if.end
	movq	32(%r15), %rax
	movq	32(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB3_3
	.align	16, 0x90
.LBB3_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	*24(%r12)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB3_2
.LBB3_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	rc_free_path_segments_local, .Lfunc_end3-rc_free_path_segments_local
	.cfi_endproc

	.globl	gx_path_init_bbox_accumulator
	.align	16, 0x90
	.type	gx_path_init_bbox_accumulator,@function
gx_path_init_bbox_accumulator:          # @gx_path_init_bbox_accumulator
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 88(%rdi)
	movl	$0, 104(%rdi)
	movl	$0, 108(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rdi)
	movq	$0, 56(%rdi)
	movb	$0, 97(%rdi)
	movups	%xmm0, 72(%rdi)
	movb	$0, 98(%rdi)
	movb	$1, 99(%rdi)
	movq	$0, 40(%rdi)
	movl	$0, 48(%rdi)
	movq	$path_bbox_procs, 120(%rdi)
	retq
.Lfunc_end4:
	.size	gx_path_init_bbox_accumulator, .Lfunc_end4-gx_path_init_bbox_accumulator
	.cfi_endproc

	.globl	gx_path_unshare
	.align	16, 0x90
	.type	gx_path_unshare,@function
gx_path_unshare:                        # @gx_path_unshare
	.cfi_startproc
# BB#0:                                 # %entry
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.LBB5_2
# BB#1:                                 # %land.lhs.true
	cmpq	$2, (%rax)
	jl	.LBB5_2
# BB#3:                                 # %if.then
	jmp	path_alloc_copy         # TAILCALL
.LBB5_2:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	gx_path_unshare, .Lfunc_end5-gx_path_unshare
	.cfi_endproc

	.align	16, 0x90
	.type	path_alloc_copy,@function
path_alloc_copy:                        # @path_alloc_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 160
.Ltmp36:
	.cfi_offset %rbx, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	40(%rbx), %rax
	movq	$1, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$rc_free_path_segments_local, 24(%rsp)
	leaq	8(%rsp), %rsi
	movq	%rsi, 64(%rsp)
	movq	$0, 96(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	movl	$0, 112(%rsp)
	movl	$0, 116(%rsp)
	movb	$0, 105(%rsp)
	movb	$0, 106(%rsp)
	movb	$0, 107(%rsp)
	movq	$0, 72(%rsp)
	movl	$2147483647, 80(%rsp)   # imm = 0x7FFFFFFF
	movl	$2147483647, 84(%rsp)   # imm = 0x7FFFFFFF
	movl	$-2147483648, 88(%rsp)  # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, 92(%rsp)  # imm = 0xFFFFFFFF80000000
	movq	%rax, 48(%rsp)
	movl	$0, 56(%rsp)
	movq	$default_path_procs, 128(%rsp)
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	gx_path_copy_reducing
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_1
# BB#6:                                 # %if.end
	movq	$0, 64(%rbx)
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_path_assign_free
	movl	%eax, %ebp
	jmp	.LBB6_7
.LBB6_1:                                # %if.then
	movq	64(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB6_4
# BB#2:                                 # %do.end.i
	decq	(%rsi)
	jne	.LBB6_4
# BB#3:                                 # %do.end.12.i
	movq	8(%rsi), %rdi
	movl	$.L.str.21, %edx
	callq	*16(%rsi)
	movq	$0, 64(%rsp)
.LBB6_4:                                # %do.end.23.i
	movq	$0, 96(%rsp)
	movq	$0, 64(%rsp)
	cmpl	$2, 56(%rsp)
	jne	.LBB6_7
# BB#5:                                 # %if.then.25.i
	movq	48(%rsp), %rdi
	leaq	8(%rsp), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
.LBB6_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	path_alloc_copy, .Lfunc_end6-path_alloc_copy
	.cfi_endproc

	.globl	gx_path_free
	.align	16, 0x90
	.type	gx_path_free,@function
gx_path_free:                           # @gx_path_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 32
.Ltmp41:
	.cfi_offset %rbx, -24
.Ltmp42:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	56(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_3
# BB#1:                                 # %do.end
	decq	(%rsi)
	jne	.LBB7_3
# BB#2:                                 # %do.end.12
	movq	8(%rsi), %rdi
	movq	%r14, %rdx
	callq	*16(%rsi)
	movq	$0, 56(%rbx)
.LBB7_3:                                # %do.end.23
	movq	$0, 88(%rbx)
	movq	$0, 56(%rbx)
	cmpl	$2, 48(%rbx)
	jne	.LBB7_4
# BB#5:                                 # %if.then.25
	movq	40(%rbx), %rdi
	movq	24(%rdi), %rax
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB7_4:                                # %if.end.28
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	gx_path_free, .Lfunc_end7-gx_path_free
	.cfi_endproc

	.globl	gx_path_assign_preserve
	.align	16, 0x90
	.type	gx_path_assign_preserve,@function
gx_path_assign_preserve:                # @gx_path_assign_preserve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 80
.Ltmp50:
	.cfi_offset %rbx, -56
.Ltmp51:
	.cfi_offset %r12, -48
.Ltmp52:
	.cfi_offset %r13, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	56(%r15), %rax
	movq	56(%r13), %r12
	movq	40(%r13), %rbx
	movl	48(%r13), %ebp
	cmpq	%r15, %rax
	je	.LBB8_1
# BB#13:                                # %do.body.68
	testq	%rax, %rax
	je	.LBB8_15
# BB#14:                                # %do.body.71
	incq	(%rax)
.LBB8_15:                               # %do.body.83
	testq	%r12, %r12
	je	.LBB8_18
# BB#16:                                # %do.end.89
	decq	(%r12)
	jne	.LBB8_18
# BB#17:                                # %do.end.102
	movq	8(%r12), %rdi
	movl	$.L.str.3, %edx
	movq	%r12, %rsi
	callq	*16(%r12)
	jmp	.LBB8_18
.LBB8_1:                                # %if.then
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	cmpq	%r13, %r12
	je	.LBB8_4
# BB#2:                                 # %lor.lhs.false
	testq	%r12, %r12
	je	.LBB8_8
# BB#3:                                 # %land.lhs.true
	cmpq	$2, (%r12)
	jl	.LBB8_8
.LBB8_4:                                # %if.then.9
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movq	%rax, %r14
	movl	$st_path_segments, %esi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	je	.LBB8_19
# BB#5:                                 # %do.body
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	$1, (%r12)
	movq	%r14, 8(%r12)
	movq	$rc_free_path_segments, 16(%r12)
	movq	56(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB8_11
# BB#6:                                 # %do.end
	decq	(%rsi)
	jne	.LBB8_11
# BB#7:                                 # %do.end.30
	movq	8(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*16(%rsi)
	movq	$0, 56(%r13)
	jmp	.LBB8_11
.LBB8_8:                                # %if.else.47
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	8(%r12), %rdi
	callq	*32(%rdi)
	movq	%rax, %rbx
	cmpq	$0, 24(%r12)
	je	.LBB8_11
# BB#9:                                 # %if.end.i
	movq	32(%r12), %rax
	movq	32(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB8_11
	.align	16, 0x90
.LBB8_10:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %r14
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	testq	%r14, %r14
	movq	%r14, %rsi
	jne	.LBB8_10
.LBB8_11:                               # %if.end.50
	movq	8(%rsp), %rax           # 8-byte Reload
	movups	24(%rax), %xmm0
	movups	%xmm0, 24(%r12)
	movq	%r12, 56(%r15)
	testq	%r12, %r12
	movq	(%rsp), %rbx            # 8-byte Reload
	movl	20(%rsp), %ebp          # 4-byte Reload
	je	.LBB8_18
# BB#12:                                # %do.body.56
	incq	(%r12)
.LBB8_18:                               # %if.end.117
	movups	112(%r15), %xmm0
	movups	%xmm0, 112(%r13)
	movups	96(%r15), %xmm0
	movups	%xmm0, 96(%r13)
	movups	80(%r15), %xmm0
	movups	%xmm0, 80(%r13)
	movups	64(%r15), %xmm0
	movups	%xmm0, 64(%r13)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movups	48(%r15), %xmm3
	movups	%xmm3, 48(%r13)
	movups	%xmm2, 32(%r13)
	movups	%xmm1, 16(%r13)
	movups	%xmm0, (%r13)
	movq	%rbx, 40(%r13)
	movl	%ebp, 48(%r13)
	xorl	%eax, %eax
.LBB8_19:                               # %cleanup.120
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gx_path_assign_preserve, .Lfunc_end8-gx_path_assign_preserve
	.cfi_endproc

	.globl	gx_path_assign_free
	.align	16, 0x90
	.type	gx_path_assign_free,@function
gx_path_assign_free:                    # @gx_path_assign_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp62:
	.cfi_def_cfa_offset 64
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	56(%rbx), %r12
	cmpq	%rbx, %r12
	jne	.LBB9_10
# BB#1:                                 # %land.lhs.true
	cmpq	%r14, 56(%r14)
	jne	.LBB9_10
# BB#2:                                 # %land.lhs.true.4
	testq	%r12, %r12
	je	.LBB9_4
# BB#3:                                 # %land.lhs.true.7
	cmpq	$1, (%r12)
	jle	.LBB9_4
.LBB9_10:                               # %if.else
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_path_assign_preserve
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB9_17
# BB#11:                                # %if.else.if.end.33_crit_edge
	leaq	56(%r14), %rbp
.LBB9_12:                               # %if.end.33
	movq	(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB9_15
# BB#13:                                # %do.end.i
	decq	(%rsi)
	jne	.LBB9_15
# BB#14:                                # %do.end.12.i
	movq	8(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*16(%rsi)
	movq	$0, (%rbp)
.LBB9_15:                               # %do.end.23.i
	movq	$0, 88(%r14)
	movq	$0, 56(%r14)
	xorl	%ebx, %ebx
	cmpl	$2, 48(%r14)
	jne	.LBB9_17
# BB#16:                                # %if.then.25.i
	movq	40(%r14), %rdi
	movl	$.L.str.4, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB9_17:                               # %return
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_4:                                # %if.then
	movq	8(%rbx), %rdi
	movq	40(%rbx), %r13
	movl	48(%rbx), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	callq	*32(%rdi)
	movq	%rax, %r15
	cmpq	$0, 24(%rbx)
	je	.LBB9_7
# BB#5:                                 # %if.end.i
	movq	32(%rbx), %rax
	movq	32(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB9_7
	.align	16, 0x90
.LBB9_6:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbp
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	testq	%rbp, %rbp
	movq	%rbp, %rsi
	jne	.LBB9_6
.LBB9_7:                                # %rc_free_path_segments_local.exit
	movups	112(%r14), %xmm0
	movups	%xmm0, 112(%rbx)
	movups	96(%r14), %xmm0
	movups	%xmm0, 96(%rbx)
	movups	80(%r14), %xmm0
	movups	%xmm0, 80(%rbx)
	movups	64(%r14), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	32(%r14), %xmm2
	movups	48(%r14), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	testq	%r14, %r14
	je	.LBB9_9
# BB#8:                                 # %do.body.17
	incq	(%r14)
.LBB9_9:                                # %do.end.25
	leaq	56(%r14), %rbp
	movq	%r12, 56(%rbx)
	movq	%r13, 40(%rbx)
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 48(%rbx)
	jmp	.LBB9_12
.Lfunc_end9:
	.size	gx_path_assign_free, .Lfunc_end9-gx_path_assign_free
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	gx_path_new
	.align	16, 0x90
	.type	gx_path_new,@function
gx_path_new:                            # @gx_path_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp73:
	.cfi_def_cfa_offset 48
.Ltmp74:
	.cfi_offset %rbx, -40
.Ltmp75:
	.cfi_offset %r12, -32
.Ltmp76:
	.cfi_offset %r14, -24
.Ltmp77:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	56(%r15), %r14
	testq	%r14, %r14
	je	.LBB10_5
# BB#1:                                 # %land.lhs.true
	cmpq	$2, (%r14)
	jl	.LBB10_5
# BB#2:                                 # %if.then
	movq	40(%r15), %rdi
	callq	*32(%rdi)
	movq	%rax, %rbx
	movl	$st_path_segments, %esi
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, 56(%r15)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB10_9
# BB#3:                                 # %do.end
	movq	$1, (%rax)
	movq	%rbx, 8(%rax)
	movq	56(%r15), %rax
	movq	$rc_free_struct_only, 16(%rax)
	movq	56(%r15), %rax
	movq	$rc_free_path_segments, 16(%rax)
	decq	(%r14)
	jne	.LBB10_8
# BB#4:                                 # %do.end.21
	movq	8(%r14), %rdi
	movl	$.L.str.5, %edx
	movq	%r14, %rsi
	callq	*16(%r14)
	jmp	.LBB10_8
.LBB10_5:                               # %if.else.34
	movq	8(%r14), %rdi
	callq	*32(%rdi)
	movq	%rax, %r12
	cmpq	$0, 24(%r14)
	je	.LBB10_8
# BB#6:                                 # %if.end.i
	movq	32(%r14), %rax
	movq	32(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB10_8
	.align	16, 0x90
.LBB10_7:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB10_7
.LBB10_8:                               # %if.end.37
	movq	$0, 88(%r15)
	movq	56(%r15), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movl	$0, 104(%r15)
	movl	$0, 108(%r15)
	movb	$0, 97(%r15)
	movb	$0, 98(%r15)
	movb	$0, 99(%r15)
	movq	$0, 64(%r15)
	movaps	.LCPI10_0(%rip), %xmm0  # xmm0 = [2147483647,2147483647,2147483648,2147483648]
	movups	%xmm0, 72(%r15)
	xorl	%ecx, %ecx
.LBB10_9:                               # %cleanup.38
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	gx_path_new, .Lfunc_end10-gx_path_new
	.cfi_endproc

	.globl	gx_path_add_point
	.align	16, 0x90
	.type	gx_path_add_point,@function
gx_path_add_point:                      # @gx_path_add_point
	.cfi_startproc
# BB#0:                                 # %entry
	movq	120(%rdi), %rax
	movq	(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end11:
	.size	gx_path_add_point, .Lfunc_end11-gx_path_add_point
	.cfi_endproc

	.globl	gx_path_add_relative_point
	.align	16, 0x90
	.type	gx_path_add_relative_point,@function
gx_path_add_relative_point:             # @gx_path_add_relative_point
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	97(%rdi), %eax
	movl	%eax, %ecx
	andl	$9, %ecx
	cmpl	$1, %ecx
	jne	.LBB12_1
# BB#2:                                 # %if.end
	movl	112(%rdi), %ecx
	movl	116(%rdi), %r9d
	leal	(%rcx,%rsi), %r8d
	movl	$-13, %eax
	xorl	%esi, %ecx
	js	.LBB12_4
# BB#3:                                 # %if.end
	xorl	%r8d, %esi
	js	.LBB12_12
.LBB12_4:                               # %lor.lhs.false
	leal	(%r9,%rdx), %esi
	xorl	%edx, %r9d
	js	.LBB12_6
# BB#5:                                 # %lor.lhs.false
	xorl	%esi, %edx
	js	.LBB12_12
.LBB12_6:                               # %if.end.26
	cmpb	$0, 98(%rdi)
	je	.LBB12_11
# BB#7:                                 # %if.then.27
	movl	$-15, %eax
	cmpl	72(%rdi), %r8d
	jl	.LBB12_12
# BB#8:                                 # %lor.lhs.false.31
	cmpl	80(%rdi), %r8d
	jg	.LBB12_12
# BB#9:                                 # %lor.lhs.false.36
	cmpl	76(%rdi), %esi
	jl	.LBB12_12
# BB#10:                                # %lor.lhs.false.42
	cmpl	84(%rdi), %esi
	jg	.LBB12_12
.LBB12_11:                              # %cleanup.cont
	movl	%r8d, 112(%rdi)
	movl	%esi, 116(%rdi)
	movw	$771, 96(%rdi)          # imm = 0x303
	xorl	%eax, %eax
.LBB12_12:                              # %return
	retq
.LBB12_1:                               # %if.then
	andl	$1, %eax
	orl	$-14, %eax
	retq
.Lfunc_end12:
	.size	gx_path_add_relative_point, .Lfunc_end12-gx_path_add_relative_point
	.cfi_endproc

	.globl	gx_path_add_line_notes
	.align	16, 0x90
	.type	gx_path_add_line_notes,@function
gx_path_add_line_notes:                 # @gx_path_add_line_notes
	.cfi_startproc
# BB#0:                                 # %entry
	movq	120(%rdi), %rax
	movq	8(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end13:
	.size	gx_path_add_line_notes, .Lfunc_end13-gx_path_add_line_notes
	.cfi_endproc

	.globl	gx_path_add_gap_notes
	.align	16, 0x90
	.type	gx_path_add_gap_notes,@function
gx_path_add_gap_notes:                  # @gx_path_add_gap_notes
	.cfi_startproc
# BB#0:                                 # %entry
	movq	120(%rdi), %rax
	movq	16(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end14:
	.size	gx_path_add_gap_notes, .Lfunc_end14-gx_path_add_gap_notes
	.cfi_endproc

	.globl	gx_path_add_lines_notes
	.align	16, 0x90
	.type	gx_path_add_lines_notes,@function
gx_path_add_lines_notes:                # @gx_path_add_lines_notes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp81:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp84:
	.cfi_def_cfa_offset 96
.Ltmp85:
	.cfi_offset %rbx, -56
.Ltmp86:
	.cfi_offset %r12, -48
.Ltmp87:
	.cfi_offset %r13, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	%edx, %ebp
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jle	.LBB15_18
# BB#1:                                 # %do.body
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB15_4
# BB#2:                                 # %land.lhs.true
	cmpq	$2, (%rax)
	jl	.LBB15_4
# BB#3:                                 # %if.then.4
	movq	%rbx, %rdi
	callq	path_alloc_copy
	testl	%eax, %eax
	js	.LBB15_18
.LBB15_4:                               # %do.body.9
	movzbl	97(%rbx), %ecx
	testb	$4, %cl
	jne	.LBB15_7
# BB#5:                                 # %if.then.12
	movl	$-14, %eax
	testb	$1, %cl
	je	.LBB15_18
# BB#6:                                 # %cleanup.26
	movq	%rbx, %rdi
	callq	gx_path_new_subpath
	testl	%eax, %eax
	js	.LBB15_18
.LBB15_7:                               # %do.end.31
	testl	%ebp, %ebp
	movl	$0, %eax
	jle	.LBB15_18
# BB#8:                                 # %for.body.lr.ph
	movq	56(%rbx), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	32(%rax), %r14
	movslq	%ebp, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB15_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	(%rax,%r12,8), %r13d
	movl	4(%rax,%r12,8), %r15d
	cmpb	$0, 98(%rbx)
	je	.LBB15_14
# BB#10:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB15_9 Depth=1
	movl	$-15, %eax
	cmpl	72(%rbx), %r13d
	jl	.LBB15_16
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB15_9 Depth=1
	cmpl	80(%rbx), %r13d
	jg	.LBB15_16
# BB#12:                                # %lor.lhs.false.48
                                        #   in Loop: Header=BB15_9 Depth=1
	cmpl	76(%rbx), %r15d
	jl	.LBB15_16
# BB#13:                                # %lor.lhs.false.54
                                        #   in Loop: Header=BB15_9 Depth=1
	cmpl	84(%rbx), %r15d
	jg	.LBB15_16
.LBB15_14:                              # %if.end.61
                                        #   in Loop: Header=BB15_9 Depth=1
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movq	72(%rax), %rbp
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movl	$st_line, %esi
	movl	$.L.str.6, %edx
	movq	%rax, %rdi
	callq	*%rbp
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB15_16
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB15_9 Depth=1
	movw	$1, 16(%rcx)
	movl	28(%rsp), %eax          # 4-byte Reload
	movw	%ax, 18(%rcx)
	movq	%rcx, 8(%r14)
	movq	%r14, (%rcx)
	movl	%r13d, 20(%rcx)
	movl	%r15d, 24(%rcx)
	incq	%r12
	xorl	%eax, %eax
	cmpq	8(%rsp), %r12           # 8-byte Folded Reload
	movq	%rcx, %r14
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	jl	.LBB15_9
.LBB15_16:                              # %for.end
	movq	16(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB15_18
# BB#17:                                # %if.then.91
	movl	20(%rdx), %ecx
	movl	%ecx, 112(%rbx)
	movl	24(%rdx), %ecx
	movl	%ecx, 116(%rbx)
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rdx, 32(%rcx)
	movq	$0, 8(%rdx)
	movb	$7, 97(%rbx)
.LBB15_18:                              # %cleanup.103
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gx_path_add_lines_notes, .Lfunc_end15-gx_path_add_lines_notes
	.cfi_endproc

	.align	16, 0x90
	.type	gx_path_new_subpath,@function
gx_path_new_subpath:                    # @gx_path_new_subpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 32
.Ltmp94:
	.cfi_offset %rbx, -32
.Ltmp95:
	.cfi_offset %r14, -24
.Ltmp96:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	56(%rbx), %rax
	cmpq	$2, (%rax)
	jl	.LBB16_3
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	path_alloc_copy
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB16_8
# BB#2:                                 # %if.then.do.end_crit_edge
	movq	56(%rbx), %rax
.LBB16_3:                               # %do.end
	movq	32(%rax), %r14
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movq	72(%rax), %r15
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movl	$st_subpath, %esi
	movl	$.L.str.17, %edx
	movq	%rax, %rdi
	callq	*%r15
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB16_8
# BB#4:                                 # %if.end.17
	movw	$0, 16(%rax)
	movw	$0, 18(%rax)
	movq	$0, 8(%rax)
	movq	%rax, 32(%rax)
	movl	$0, 40(%rax)
	movb	$0, 88(%rax)
	movq	112(%rbx), %rcx
	movq	%rcx, 20(%rax)
	testq	%r14, %r14
	je	.LBB16_5
# BB#6:                                 # %if.else
	movq	32(%r14), %rcx
	movq	%rax, 8(%rcx)
	movq	%rcx, (%rax)
	movq	56(%rbx), %rcx
	jmp	.LBB16_7
.LBB16_5:                               # %if.then.19
	movq	56(%rbx), %rcx
	movq	%rax, 24(%rcx)
	movq	$0, (%rax)
.LBB16_7:                               # %if.end.26
	movq	%rax, 32(%rcx)
	incl	104(%rbx)
	xorl	%ecx, %ecx
.LBB16_8:                               # %cleanup.33
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end16:
	.size	gx_path_new_subpath, .Lfunc_end16-gx_path_new_subpath
	.cfi_endproc

	.globl	gx_path_add_dash_notes
	.align	16, 0x90
	.type	gx_path_add_dash_notes,@function
gx_path_add_dash_notes:                 # @gx_path_add_dash_notes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp103:
	.cfi_def_cfa_offset 80
.Ltmp104:
	.cfi_offset %rbx, -56
.Ltmp105:
	.cfi_offset %r12, -48
.Ltmp106:
	.cfi_offset %r13, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpb	$0, 98(%rbx)
	je	.LBB17_5
# BB#1:                                 # %if.then
	movl	$-15, %eax
	cmpl	%ebp, 72(%rbx)
	jg	.LBB17_13
# BB#2:                                 # %lor.lhs.false
	cmpl	%ebp, 80(%rbx)
	jl	.LBB17_13
# BB#3:                                 # %lor.lhs.false.5
	cmpl	%r12d, 76(%rbx)
	jg	.LBB17_13
# BB#4:                                 # %lor.lhs.false.10
	cmpl	%r12d, 84(%rbx)
	jl	.LBB17_13
.LBB17_5:                               # %do.body
	movzbl	97(%rbx), %ecx
	testb	$4, %cl
	jne	.LBB17_8
# BB#6:                                 # %if.then.19
	movl	$-14, %eax
	testb	$1, %cl
	je	.LBB17_13
# BB#7:                                 # %cleanup
	movq	%rbx, %rdi
	callq	gx_path_new_subpath
	testl	%eax, %eax
	js	.LBB17_13
.LBB17_8:                               # %do.body.32
	movq	56(%rbx), %rax
	cmpq	$2, (%rax)
	jl	.LBB17_11
# BB#9:                                 # %if.then.38
	movq	%rbx, %rdi
	callq	path_alloc_copy
	testl	%eax, %eax
	js	.LBB17_13
# BB#10:                                # %if.then.38.do.end.50_crit_edge
	movq	56(%rbx), %rax
.LBB17_11:                              # %do.end.50
	movq	32(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movl	%r13d, 20(%rsp)         # 4-byte Spill
	movl	%r15d, %r13d
	movl	%r14d, %r15d
	movq	72(%rax), %r14
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movl	$st_dash, %esi
	movl	$.L.str.7, %edx
	movq	%rax, %rdi
	callq	*%r14
	movl	20(%rsp), %edi          # 4-byte Reload
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB17_13
# BB#12:                                # %if.end.63
	movw	$4, 16(%rcx)
	movw	%di, 18(%rcx)
	movq	$0, 8(%rcx)
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	32(%rdi), %rax
	movq	%rcx, 8(%rax)
	movq	%rax, (%rcx)
	movq	%rcx, 32(%rdi)
	movl	%ebp, 112(%rbx)
	movl	%ebp, 20(%rcx)
	movl	%r12d, 116(%rbx)
	movl	%r12d, 24(%rcx)
	movl	%r13d, 28(%rcx)
	movl	%r15d, 32(%rcx)
	movb	$7, 97(%rbx)
	xorl	%eax, %eax
.LBB17_13:                              # %cleanup.82
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gx_path_add_dash_notes, .Lfunc_end17-gx_path_add_dash_notes
	.cfi_endproc

	.globl	gx_path_add_rectangle
	.align	16, 0x90
	.type	gx_path_add_rectangle,@function
gx_path_add_rectangle:                  # @gx_path_add_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp111:
	.cfi_def_cfa_offset 48
.Ltmp112:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	%esi, (%rsp)
	movl	%ecx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%edx, 20(%rsp)
	movl	%r8d, 12(%rsp)
	movl	%r8d, 4(%rsp)
	movq	120(%rbx), %rax
	callq	*(%rax)
	testl	%eax, %eax
	js	.LBB18_3
# BB#1:                                 # %lor.lhs.false
	leaq	(%rsp), %rsi
	movl	$3, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB18_3
# BB#2:                                 # %lor.lhs.false.12
	movq	120(%rbx), %rax
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*32(%rax)
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB18_3:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end18:
	.size	gx_path_add_rectangle, .Lfunc_end18-gx_path_add_rectangle
	.cfi_endproc

	.globl	gx_path_close_subpath_notes
	.align	16, 0x90
	.type	gx_path_close_subpath_notes,@function
gx_path_close_subpath_notes:            # @gx_path_close_subpath_notes
	.cfi_startproc
# BB#0:                                 # %entry
	movq	120(%rdi), %rax
	movq	32(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end19:
	.size	gx_path_close_subpath_notes, .Lfunc_end19-gx_path_close_subpath_notes
	.cfi_endproc

	.globl	gx_path_add_curve_notes
	.align	16, 0x90
	.type	gx_path_add_curve_notes,@function
gx_path_add_curve_notes:                # @gx_path_add_curve_notes
	.cfi_startproc
# BB#0:                                 # %entry
	movq	120(%rdi), %rax
	movq	24(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end20:
	.size	gx_path_add_curve_notes, .Lfunc_end20-gx_path_add_curve_notes
	.cfi_endproc

	.globl	gx_path_add_partial_arc_notes
	.align	16, 0x90
	.type	gx_path_add_partial_arc_notes,@function
gx_path_add_partial_arc_notes:          # @gx_path_add_partial_arc_notes
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp113:
	.cfi_def_cfa_offset 32
	movl	%esi, %r10d
	movl	112(%rdi), %eax
	movl	116(%rdi), %r11d
	movl	%ecx, %esi
	subl	%eax, %esi
	cvtsi2sdl	%esi, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	addl	%eax, %esi
	movl	%r8d, %eax
	subl	%r11d, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	addl	%r11d, %eax
	subl	%r10d, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	addl	%r10d, %ecx
	subl	%edx, %r8d
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r8d, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r8d
	addl	%edx, %r8d
	orl	$2, %r9d
	movq	120(%rdi), %r11
	movl	%r9d, 8(%rsp)
	movl	%edx, (%rsp)
	movl	%eax, %edx
	movl	%r10d, %r9d
	callq	*24(%r11)
	addq	$24, %rsp
	retq
.Lfunc_end21:
	.size	gx_path_add_partial_arc_notes, .Lfunc_end21-gx_path_add_partial_arc_notes
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI22_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	gx_path_add_path
	.align	16, 0x90
	.type	gx_path_add_path,@function
gx_path_add_path:                       # @gx_path_add_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp114:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp116:
	.cfi_def_cfa_offset 32
.Ltmp117:
	.cfi_offset %rbx, -24
.Ltmp118:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB22_3
# BB#1:                                 # %land.lhs.true
	cmpq	$2, (%rax)
	jl	.LBB22_3
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	callq	path_alloc_copy
	testl	%eax, %eax
	js	.LBB22_12
.LBB22_3:                               # %do.body.6
	movq	56(%r14), %rax
	testq	%rax, %rax
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true.9
	cmpq	$2, (%rax)
	jl	.LBB22_6
# BB#5:                                 # %if.then.14
	movq	%r14, %rdi
	callq	path_alloc_copy
	testl	%eax, %eax
	js	.LBB22_12
.LBB22_6:                               # %do.end.24
	movq	56(%rbx), %rax
	movq	24(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB22_11
# BB#7:                                 # %if.then.26
	movq	56(%r14), %rcx
	cmpq	$0, 24(%rcx)
	je	.LBB22_9
# BB#8:                                 # %if.then.31
	movq	32(%rcx), %rsi
	addq	$32, %rcx
	movq	32(%rsi), %rsi
	movq	%rdx, 8(%rsi)
	movq	%rsi, (%rdx)
	jmp	.LBB22_10
.LBB22_9:                               # %if.else
	movq	%rdx, 24(%rcx)
	addq	$32, %rcx
.LBB22_10:                              # %if.end.43
	movq	32(%rax), %rax
	movq	%rax, (%rcx)
	movl	104(%rbx), %eax
	addl	%eax, 104(%r14)
	movl	108(%rbx), %eax
	addl	%eax, 108(%r14)
.LBB22_11:                              # %if.end.53
	movq	112(%rbx), %rax
	movq	%rax, 112(%r14)
	movb	97(%rbx), %al
	movb	%al, 97(%r14)
	movq	$0, 88(%rbx)
	movq	56(%rbx), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movl	$0, 104(%rbx)
	movl	$0, 108(%rbx)
	movb	$0, 97(%rbx)
	movb	$0, 98(%rbx)
	movb	$0, 99(%rbx)
	movq	$0, 64(%rbx)
	movaps	.LCPI22_0(%rip), %xmm0  # xmm0 = [2147483647,2147483647,2147483648,2147483648]
	movups	%xmm0, 72(%rbx)
	xorl	%eax, %eax
.LBB22_12:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end22:
	.size	gx_path_add_path, .Lfunc_end22-gx_path_add_path
	.cfi_endproc

	.globl	gx_path_add_char_path
	.align	16, 0x90
	.type	gx_path_add_char_path,@function
gx_path_add_char_path:                  # @gx_path_add_char_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 64
.Ltmp122:
	.cfi_offset %rbx, -24
.Ltmp123:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	decl	%edx
	cmpl	$4, %edx
	ja	.LBB23_11
# BB#1:                                 # %entry
	jmpq	*.LJTI23_0(,%rdx,8)
.LBB23_4:                               # %sw.bb.3
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_path_add_path
	jmp	.LBB23_12
.LBB23_2:                               # %sw.bb
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_path_current_point
	testl	%eax, %eax
	js	.LBB23_12
# BB#3:                                 # %cleanup
	movl	16(%rsp), %esi
	movl	20(%rsp), %edx
	movq	120(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	jmp	.LBB23_12
.LBB23_8:                               # %sw.bb.14
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_path_bbox
	movl	(%rsp), %esi
	movl	4(%rsp), %edx
	movq	120(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	testl	%eax, %eax
	js	.LBB23_12
# BB#9:                                 # %if.then.22
	movl	8(%rsp), %esi
	movl	12(%rsp), %edx
	movq	120(%rbx), %rax
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*8(%rax)
	jmp	.LBB23_10
.LBB23_5:                               # %sw.bb.5
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_path_bbox
	movl	(%rsp), %esi
	movl	4(%rsp), %edx
	movl	8(%rsp), %eax
	movl	12(%rsp), %ecx
	movl	%esi, 16(%rsp)
	movl	%eax, 32(%rsp)
	movl	%eax, 24(%rsp)
	movl	%edx, 36(%rsp)
	movl	%ecx, 28(%rsp)
	movl	%ecx, 20(%rsp)
	movq	120(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	testl	%eax, %eax
	js	.LBB23_10
# BB#6:                                 # %lor.lhs.false.i
	leaq	16(%rsp), %rsi
	movl	$3, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB23_10
# BB#7:                                 # %lor.lhs.false.12.i
	movq	120(%rbx), %rax
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*32(%rax)
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB23_10:                              # %sw.epilog
	testl	%eax, %eax
	js	.LBB23_12
.LBB23_11:                              # %if.end.31
	movq	%r14, %rdi
	callq	gx_path_new
	xorl	%eax, %eax
.LBB23_12:                              # %cleanup.33
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end23:
	.size	gx_path_add_char_path, .Lfunc_end23-gx_path_add_char_path
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_2
	.quad	.LBB23_4
	.quad	.LBB23_4
	.quad	.LBB23_8
	.quad	.LBB23_5

	.text
	.globl	gx_path_get_state_flags
	.align	16, 0x90
	.type	gx_path_get_state_flags,@function
gx_path_get_state_flags:                # @gx_path_get_state_flags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp126:
	.cfi_def_cfa_offset 32
.Ltmp127:
	.cfi_offset %rbx, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	xorl	%esi, %esi
	callq	*40(%rax)
	movq	120(%rbx), %rcx
	movzbl	%al, %ebp
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*40(%rcx)
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gx_path_get_state_flags, .Lfunc_end24-gx_path_get_state_flags
	.cfi_endproc

	.globl	gx_path_set_state_flags
	.align	16, 0x90
	.type	gx_path_set_state_flags,@function
gx_path_set_state_flags:                # @gx_path_set_state_flags
	.cfi_startproc
# BB#0:                                 # %entry
	movq	120(%rdi), %rax
	movq	40(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end25:
	.size	gx_path_set_state_flags, .Lfunc_end25-gx_path_set_state_flags
	.cfi_endproc

	.globl	gx_path_is_drawing
	.align	16, 0x90
	.type	gx_path_is_drawing,@function
gx_path_is_drawing:                     # @gx_path_is_drawing
	.cfi_startproc
# BB#0:                                 # %entry
	movb	97(%rdi), %al
	shrb	$2, %al
	andb	$1, %al
	movzbl	%al, %eax
	retq
.Lfunc_end26:
	.size	gx_path_is_drawing, .Lfunc_end26-gx_path_is_drawing
	.cfi_endproc

	.globl	gx_path_pop_close_notes
	.align	16, 0x90
	.type	gx_path_pop_close_notes,@function
gx_path_pop_close_notes:                # @gx_path_pop_close_notes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp131:
	.cfi_def_cfa_offset 32
.Ltmp132:
	.cfi_offset %rbx, -24
.Ltmp133:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	56(%rbx), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB27_3
# BB#1:                                 # %lor.lhs.false
	movq	32(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB27_3
# BB#2:                                 # %lor.lhs.false.2
	movzwl	16(%rsi), %ecx
	cmpl	$1, %ecx
	jne	.LBB27_3
# BB#4:                                 # %if.end
	movq	(%rsi), %rcx
	movq	$0, 8(%rcx)
	movq	%rcx, 32(%rax)
	movq	40(%rbx), %rdi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
	movq	120(%rbx), %rax
	movq	32(%rax), %rax
	movq	%rbx, %rdi
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB27_3:                               # %cleanup
	movl	$-1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gx_path_pop_close_notes, .Lfunc_end27-gx_path_pop_close_notes
	.cfi_endproc

	.align	16, 0x90
	.type	rc_free_path_segments,@function
rc_free_path_segments:                  # @rc_free_path_segments
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp134:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp136:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp137:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp138:
	.cfi_def_cfa_offset 48
.Ltmp139:
	.cfi_offset %rbx, -48
.Ltmp140:
	.cfi_offset %r12, -40
.Ltmp141:
	.cfi_offset %r13, -32
.Ltmp142:
	.cfi_offset %r14, -24
.Ltmp143:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	*32(%r15)
	movq	%rax, %r13
	cmpq	$0, 24(%r14)
	je	.LBB28_3
# BB#1:                                 # %if.end.i
	movq	32(%r14), %rax
	movq	32(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB28_3
	.align	16, 0x90
.LBB28_2:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*24(%r13)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB28_2
.LBB28_3:                               # %rc_free_path_segments_local.exit
	movq	24(%r15), %rax
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end28:
	.size	rc_free_path_segments, .Lfunc_end28-rc_free_path_segments
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_add_point,@function
gz_path_add_point:                      # @gz_path_add_point
	.cfi_startproc
# BB#0:                                 # %entry
	cmpb	$0, 98(%rdi)
	je	.LBB29_5
# BB#1:                                 # %if.then
	movl	$-15, %eax
	cmpl	%esi, 72(%rdi)
	jg	.LBB29_6
# BB#2:                                 # %lor.lhs.false
	cmpl	%esi, 80(%rdi)
	jl	.LBB29_6
# BB#3:                                 # %lor.lhs.false.5
	cmpl	%edx, 76(%rdi)
	jg	.LBB29_6
# BB#4:                                 # %lor.lhs.false.10
	cmpl	%edx, 84(%rdi)
	jl	.LBB29_6
.LBB29_5:                               # %if.end.16
	movl	%esi, 112(%rdi)
	movl	%edx, 116(%rdi)
	movw	$771, 96(%rdi)          # imm = 0x303
	xorl	%eax, %eax
.LBB29_6:                               # %return
	retq
.Lfunc_end29:
	.size	gz_path_add_point, .Lfunc_end29-gz_path_add_point
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_add_line_notes,@function
gz_path_add_line_notes:                 # @gz_path_add_line_notes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp145:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp147:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp148:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp150:
	.cfi_def_cfa_offset 64
.Ltmp151:
	.cfi_offset %rbx, -56
.Ltmp152:
	.cfi_offset %r12, -48
.Ltmp153:
	.cfi_offset %r13, -40
.Ltmp154:
	.cfi_offset %r14, -32
.Ltmp155:
	.cfi_offset %r15, -24
.Ltmp156:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpb	$0, 98(%rbx)
	je	.LBB30_5
# BB#1:                                 # %if.then
	movl	$-15, %eax
	cmpl	%ebp, 72(%rbx)
	jg	.LBB30_13
# BB#2:                                 # %lor.lhs.false
	cmpl	%ebp, 80(%rbx)
	jl	.LBB30_13
# BB#3:                                 # %lor.lhs.false.5
	cmpl	%r14d, 76(%rbx)
	jg	.LBB30_13
# BB#4:                                 # %lor.lhs.false.10
	cmpl	%r14d, 84(%rbx)
	jl	.LBB30_13
.LBB30_5:                               # %do.body
	movzbl	97(%rbx), %ecx
	testb	$4, %cl
	jne	.LBB30_8
# BB#6:                                 # %if.then.19
	movl	$-14, %eax
	testb	$1, %cl
	je	.LBB30_13
# BB#7:                                 # %cleanup
	movq	%rbx, %rdi
	callq	gx_path_new_subpath
	testl	%eax, %eax
	js	.LBB30_13
.LBB30_8:                               # %do.body.32
	movq	56(%rbx), %rax
	cmpq	$2, (%rax)
	jl	.LBB30_11
# BB#9:                                 # %if.then.38
	movq	%rbx, %rdi
	callq	path_alloc_copy
	testl	%eax, %eax
	js	.LBB30_13
# BB#10:                                # %if.then.38.do.end.50_crit_edge
	movq	56(%rbx), %rax
.LBB30_11:                              # %do.end.50
	movq	32(%rax), %r12
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movq	72(%rax), %r13
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movl	$st_line, %esi
	movl	$.L.str.10, %edx
	movq	%rax, %rdi
	callq	*%r13
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB30_13
# BB#12:                                # %if.end.63
	movw	$1, 16(%rcx)
	movw	%r15w, 18(%rcx)
	movq	$0, 8(%rcx)
	movq	32(%r12), %rax
	movq	%rcx, 8(%rax)
	movq	%rax, (%rcx)
	movq	%rcx, 32(%r12)
	movl	%ebp, 112(%rbx)
	movl	%ebp, 20(%rcx)
	movl	%r14d, 116(%rbx)
	movl	%r14d, 24(%rcx)
	movb	$7, 97(%rbx)
	xorl	%eax, %eax
.LBB30_13:                              # %cleanup.79
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gz_path_add_line_notes, .Lfunc_end30-gz_path_add_line_notes
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_add_gap_notes,@function
gz_path_add_gap_notes:                  # @gz_path_add_gap_notes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp160:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp161:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp163:
	.cfi_def_cfa_offset 64
.Ltmp164:
	.cfi_offset %rbx, -56
.Ltmp165:
	.cfi_offset %r12, -48
.Ltmp166:
	.cfi_offset %r13, -40
.Ltmp167:
	.cfi_offset %r14, -32
.Ltmp168:
	.cfi_offset %r15, -24
.Ltmp169:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpb	$0, 98(%rbx)
	je	.LBB31_5
# BB#1:                                 # %if.then
	movl	$-15, %eax
	cmpl	%ebp, 72(%rbx)
	jg	.LBB31_13
# BB#2:                                 # %lor.lhs.false
	cmpl	%ebp, 80(%rbx)
	jl	.LBB31_13
# BB#3:                                 # %lor.lhs.false.5
	cmpl	%r14d, 76(%rbx)
	jg	.LBB31_13
# BB#4:                                 # %lor.lhs.false.10
	cmpl	%r14d, 84(%rbx)
	jl	.LBB31_13
.LBB31_5:                               # %do.body
	movzbl	97(%rbx), %ecx
	testb	$4, %cl
	jne	.LBB31_8
# BB#6:                                 # %if.then.19
	movl	$-14, %eax
	testb	$1, %cl
	je	.LBB31_13
# BB#7:                                 # %cleanup
	movq	%rbx, %rdi
	callq	gx_path_new_subpath
	testl	%eax, %eax
	js	.LBB31_13
.LBB31_8:                               # %do.body.32
	movq	56(%rbx), %rax
	cmpq	$2, (%rax)
	jl	.LBB31_11
# BB#9:                                 # %if.then.38
	movq	%rbx, %rdi
	callq	path_alloc_copy
	testl	%eax, %eax
	js	.LBB31_13
# BB#10:                                # %if.then.38.do.end.50_crit_edge
	movq	56(%rbx), %rax
.LBB31_11:                              # %do.end.50
	movq	32(%rax), %r12
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movq	72(%rax), %r13
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movl	$st_line, %esi
	movl	$.L.str.11, %edx
	movq	%rax, %rdi
	callq	*%r13
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB31_13
# BB#12:                                # %if.end.63
	movw	$5, 16(%rcx)
	movw	%r15w, 18(%rcx)
	movq	$0, 8(%rcx)
	movq	32(%r12), %rax
	movq	%rcx, 8(%rax)
	movq	%rax, (%rcx)
	movq	%rcx, 32(%r12)
	movl	%ebp, 112(%rbx)
	movl	%ebp, 20(%rcx)
	movl	%r14d, 116(%rbx)
	movl	%r14d, 24(%rcx)
	movb	$7, 97(%rbx)
	xorl	%eax, %eax
.LBB31_13:                              # %cleanup.79
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gz_path_add_gap_notes, .Lfunc_end31-gz_path_add_gap_notes
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_add_curve_notes,@function
gz_path_add_curve_notes:                # @gz_path_add_curve_notes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp171:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp172:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp173:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp174:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp175:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp176:
	.cfi_def_cfa_offset 80
.Ltmp177:
	.cfi_offset %rbx, -56
.Ltmp178:
	.cfi_offset %r12, -48
.Ltmp179:
	.cfi_offset %r13, -40
.Ltmp180:
	.cfi_offset %r14, -32
.Ltmp181:
	.cfi_offset %r15, -24
.Ltmp182:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%r8d, %r15d
	movl	%ecx, %r13d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	80(%rsp), %r14d
	cmpb	$0, 98(%rbx)
	je	.LBB32_13
# BB#1:                                 # %if.then
	movl	72(%rbx), %ecx
	movl	$-15, %eax
	cmpl	%ebp, %ecx
	jg	.LBB32_21
# BB#2:                                 # %lor.lhs.false
	movl	80(%rbx), %edi
	cmpl	%ebp, %edi
	jl	.LBB32_21
# BB#3:                                 # %lor.lhs.false.6
	movl	76(%rbx), %esi
	cmpl	%edx, %esi
	jg	.LBB32_21
# BB#4:                                 # %lor.lhs.false.10
	movl	84(%rbx), %r8d
	cmpl	%edx, %r8d
	jl	.LBB32_21
# BB#5:                                 # %if.end
	cmpl	%r13d, %ecx
	jg	.LBB32_21
# BB#6:                                 # %if.end
	cmpl	%r13d, %edi
	jl	.LBB32_21
# BB#7:                                 # %if.end
	cmpl	%r15d, %esi
	jg	.LBB32_21
# BB#8:                                 # %if.end
	cmpl	%r15d, %r8d
	jl	.LBB32_21
# BB#9:                                 # %if.end.36
	cmpl	%r12d, %ecx
	jg	.LBB32_21
# BB#10:                                # %if.end.36
	cmpl	%r12d, %edi
	jl	.LBB32_21
# BB#11:                                # %if.end.36
	cmpl	%r14d, %esi
	jg	.LBB32_21
# BB#12:                                # %if.end.36
	cmpl	%r14d, %r8d
	jl	.LBB32_21
.LBB32_13:                              # %do.body
	movzbl	97(%rbx), %ecx
	testb	$4, %cl
	jne	.LBB32_16
# BB#14:                                # %if.then.61
	movl	$-14, %eax
	testb	$1, %cl
	je	.LBB32_21
# BB#15:                                # %cleanup
	movq	%rbx, %rdi
	movl	%edx, %r14d
	callq	gx_path_new_subpath
	movl	%r14d, %edx
	movl	80(%rsp), %r14d
	testl	%eax, %eax
	js	.LBB32_21
.LBB32_16:                              # %do.body.74
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	56(%rbx), %rax
	cmpq	$2, (%rax)
	jl	.LBB32_19
# BB#17:                                # %if.then.80
	movq	%rbx, %rdi
	callq	path_alloc_copy
	testl	%eax, %eax
	js	.LBB32_21
# BB#18:                                # %if.then.80.do.end.92_crit_edge
	movq	56(%rbx), %rax
.LBB32_19:                              # %do.end.92
	movq	32(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	%r14d, %r13d
	movl	%r12d, %r14d
	movl	%r15d, %r12d
	movq	72(%rax), %r15
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movl	$st_curve, %esi
	movl	$.L.str.12, %edx
	movq	%rax, %rdi
	callq	*%r15
	movl	16(%rsp), %r8d          # 4-byte Reload
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	movl	20(%rsp), %r9d          # 4-byte Reload
	je	.LBB32_21
# BB#20:                                # %if.end.105
	movl	88(%rsp), %eax
	movw	$3, 16(%rcx)
	movw	%ax, 18(%rcx)
	movq	$0, 8(%rcx)
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	32(%rdx), %rax
	movq	%rcx, 8(%rax)
	movq	%rax, (%rcx)
	movq	%rcx, 32(%rdx)
	movl	%ebp, 28(%rcx)
	movl	%r9d, 32(%rcx)
	movl	%r8d, 36(%rcx)
	movl	%r12d, 40(%rcx)
	movl	%r14d, 112(%rbx)
	movl	%r14d, 20(%rcx)
	movl	%r13d, 116(%rbx)
	movl	%r13d, 24(%rcx)
	incl	40(%rdx)
	incl	108(%rbx)
	movb	$7, 97(%rbx)
	xorl	%eax, %eax
.LBB32_21:                              # %cleanup.129
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gz_path_add_curve_notes, .Lfunc_end32-gz_path_add_curve_notes
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_close_subpath_notes,@function
gz_path_close_subpath_notes:            # @gz_path_close_subpath_notes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp184:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp185:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp186:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp187:
	.cfi_def_cfa_offset 48
.Ltmp188:
	.cfi_offset %rbx, -40
.Ltmp189:
	.cfi_offset %r14, -32
.Ltmp190:
	.cfi_offset %r15, -24
.Ltmp191:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movzbl	97(%rbx), %ecx
	xorl	%eax, %eax
	testb	$2, %cl
	je	.LBB33_8
# BB#1:                                 # %if.end
	andl	$247, %ecx
	cmpl	$3, %ecx
	jne	.LBB33_3
# BB#2:                                 # %if.then.7
	movq	%rbx, %rdi
	callq	gx_path_new_subpath
	testl	%eax, %eax
	js	.LBB33_8
.LBB33_3:                               # %do.body
	movq	56(%rbx), %rax
	cmpq	$2, (%rax)
	jl	.LBB33_6
# BB#4:                                 # %if.then.18
	movq	%rbx, %rdi
	callq	path_alloc_copy
	testl	%eax, %eax
	js	.LBB33_8
# BB#5:                                 # %if.then.18.do.end_crit_edge
	movq	56(%rbx), %rax
.LBB33_6:                               # %do.end
	movq	32(%rax), %rbp
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movq	72(%rax), %r15
	movq	40(%rbx), %rdi
	callq	*32(%rdi)
	movl	$st_line_close, %esi
	movl	$.L.str.14, %edx
	movq	%rax, %rdi
	callq	*%r15
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB33_8
# BB#7:                                 # %if.end.36
	movw	$2, 16(%rcx)
	movw	%r14w, 18(%rcx)
	movq	$0, 8(%rcx)
	movq	32(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	%rax, (%rcx)
	movq	%rcx, 32(%rbp)
	movl	20(%rbp), %eax
	movl	%eax, 112(%rbx)
	movl	%eax, 20(%rcx)
	movl	24(%rbp), %eax
	movl	%eax, 116(%rbx)
	movl	%eax, 24(%rcx)
	movq	%rbp, 32(%rcx)
	movb	$1, 88(%rbp)
	movb	$1, 97(%rbx)
	xorl	%eax, %eax
.LBB33_8:                               # %cleanup.54
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gz_path_close_subpath_notes, .Lfunc_end33-gz_path_close_subpath_notes
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_state_flags,@function
gz_path_state_flags:                    # @gz_path_state_flags
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	97(%rdi), %eax
	movb	%sil, 97(%rdi)
	retq
.Lfunc_end34:
	.size	gz_path_state_flags, .Lfunc_end34-gz_path_state_flags
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_bbox_add_point,@function
gz_path_bbox_add_point:                 # @gz_path_bbox_add_point
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 112(%rdi)
	movl	%edx, 116(%rdi)
	orb	$1, 97(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end35:
	.size	gz_path_bbox_add_point, .Lfunc_end35-gz_path_bbox_add_point
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_bbox_add_line_notes,@function
gz_path_bbox_add_line_notes:            # @gz_path_bbox_add_line_notes
	.cfi_startproc
# BB#0:                                 # %entry
	cmpb	$0, 98(%rdi)
	je	.LBB36_1
# BB#2:                                 # %if.else.i
	cmpl	%esi, 72(%rdi)
	jle	.LBB36_4
# BB#3:                                 # %if.then.14.i
	movl	%esi, 72(%rdi)
.LBB36_4:                               # %if.end.i
	cmpl	%edx, 76(%rdi)
	jle	.LBB36_6
# BB#5:                                 # %if.then.22.i
	movl	%edx, 76(%rdi)
.LBB36_6:                               # %if.end.26.i
	cmpl	%esi, 80(%rdi)
	jge	.LBB36_8
# BB#7:                                 # %if.then.31.i
	movl	%esi, 80(%rdi)
.LBB36_8:                               # %if.end.35.i
	cmpl	%edx, 84(%rdi)
	jge	.LBB36_10
# BB#9:                                 # %if.then.40.i
	movl	%edx, 84(%rdi)
	jmp	.LBB36_10
.LBB36_1:                               # %if.then.i
	movl	%esi, 80(%rdi)
	movl	%esi, 72(%rdi)
	movl	%edx, 84(%rdi)
	movl	%edx, 76(%rdi)
	movb	$1, 98(%rdi)
.LBB36_10:                              # %gz_path_bbox_add.exit
	movl	%esi, 112(%rdi)
	movl	%edx, 116(%rdi)
	orb	$1, 97(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end36:
	.size	gz_path_bbox_add_line_notes, .Lfunc_end36-gz_path_bbox_add_line_notes
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_bbox_add_gap_notes,@function
gz_path_bbox_add_gap_notes:             # @gz_path_bbox_add_gap_notes
	.cfi_startproc
# BB#0:                                 # %entry
	cmpb	$0, 98(%rdi)
	je	.LBB37_1
# BB#2:                                 # %if.else.i
	cmpl	%esi, 72(%rdi)
	jle	.LBB37_4
# BB#3:                                 # %if.then.14.i
	movl	%esi, 72(%rdi)
.LBB37_4:                               # %if.end.i
	cmpl	%edx, 76(%rdi)
	jle	.LBB37_6
# BB#5:                                 # %if.then.22.i
	movl	%edx, 76(%rdi)
.LBB37_6:                               # %if.end.26.i
	cmpl	%esi, 80(%rdi)
	jge	.LBB37_8
# BB#7:                                 # %if.then.31.i
	movl	%esi, 80(%rdi)
.LBB37_8:                               # %if.end.35.i
	cmpl	%edx, 84(%rdi)
	jge	.LBB37_10
# BB#9:                                 # %if.then.40.i
	movl	%edx, 84(%rdi)
	jmp	.LBB37_10
.LBB37_1:                               # %if.then.i
	movl	%esi, 80(%rdi)
	movl	%esi, 72(%rdi)
	movl	%edx, 84(%rdi)
	movl	%edx, 76(%rdi)
	movb	$1, 98(%rdi)
.LBB37_10:                              # %gz_path_bbox_add.exit
	movl	%esi, 112(%rdi)
	movl	%edx, 116(%rdi)
	orb	$1, 97(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end37:
	.size	gz_path_bbox_add_gap_notes, .Lfunc_end37-gz_path_bbox_add_gap_notes
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_bbox_add_curve_notes,@function
gz_path_bbox_add_curve_notes:           # @gz_path_bbox_add_curve_notes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp193:
	.cfi_def_cfa_offset 24
.Ltmp194:
	.cfi_offset %rbx, -24
.Ltmp195:
	.cfi_offset %rbp, -16
	movb	98(%rdi), %r11b
	leaq	72(%rdi), %r10
	testb	%r11b, %r11b
	je	.LBB38_1
# BB#2:                                 # %if.else.i
	movl	72(%rdi), %eax
	cmpl	%esi, %eax
	jle	.LBB38_4
# BB#3:                                 # %if.then.14.i
	movl	%esi, (%r10)
	movl	%esi, %eax
.LBB38_4:                               # %if.end.i
	movl	76(%rdi), %ebx
	cmpl	%edx, %ebx
	jle	.LBB38_6
# BB#5:                                 # %if.then.22.i
	movl	%edx, 76(%rdi)
	movl	%edx, %ebx
.LBB38_6:                               # %if.end.26.i
	movl	80(%rdi), %ebp
	cmpl	%esi, %ebp
	jge	.LBB38_8
# BB#7:                                 # %if.then.31.i
	movl	%esi, 80(%rdi)
	movl	%esi, %ebp
.LBB38_8:                               # %if.end.35.i
	movl	84(%rdi), %esi
	cmpl	%edx, %esi
	jge	.LBB38_9
# BB#10:                                # %if.then.40.i
	movl	%edx, 84(%rdi)
	jmp	.LBB38_11
.LBB38_1:                               # %gz_path_bbox_add.exit.thread
	movl	%esi, 80(%rdi)
	movl	%esi, 72(%rdi)
	movl	%edx, 84(%rdi)
	movl	%edx, 76(%rdi)
	movb	$1, 98(%rdi)
	movb	$1, %r11b
	movl	%edx, %ebx
	movl	%esi, %eax
	jmp	.LBB38_12
.LBB38_9:
	movl	%esi, %edx
.LBB38_11:                              # %if.else.i.40
	movl	%ebp, %esi
.LBB38_12:                              # %if.else.i.40
	cmpl	%ecx, %eax
	jle	.LBB38_14
# BB#13:                                # %if.then.14.i.41
	movl	%ecx, (%r10)
	movl	%ecx, %eax
.LBB38_14:                              # %if.end.i.44
	cmpl	%r8d, %ebx
	jle	.LBB38_16
# BB#15:                                # %if.then.22.i.45
	movl	%r8d, 76(%rdi)
	movl	%r8d, %ebx
.LBB38_16:                              # %if.end.26.i.48
	cmpl	%ecx, %esi
	jge	.LBB38_18
# BB#17:                                # %if.then.31.i.49
	movl	%ecx, 80(%rdi)
	movl	%ecx, %esi
.LBB38_18:                              # %if.end.35.i.52
	cmpl	%r8d, %edx
	jge	.LBB38_20
# BB#19:                                # %if.then.40.i.53
	movl	%r8d, 84(%rdi)
	movl	%r8d, %edx
.LBB38_20:                              # %gz_path_bbox_add.exit54
	movl	24(%rsp), %ecx
	testb	%r11b, %r11b
	je	.LBB38_21
# BB#22:                                # %if.else.i.16
	cmpl	%r9d, %eax
	jle	.LBB38_24
# BB#23:                                # %if.then.14.i.17
	movl	%r9d, (%r10)
.LBB38_24:                              # %if.end.i.20
	cmpl	%ecx, %ebx
	jle	.LBB38_26
# BB#25:                                # %if.then.22.i.21
	movl	%ecx, 76(%rdi)
.LBB38_26:                              # %if.end.26.i.24
	cmpl	%r9d, %esi
	jge	.LBB38_28
# BB#27:                                # %if.then.31.i.25
	movl	%r9d, 80(%rdi)
.LBB38_28:                              # %if.end.35.i.28
	cmpl	%ecx, %edx
	jge	.LBB38_30
# BB#29:                                # %if.then.40.i.29
	movl	%ecx, 84(%rdi)
	jmp	.LBB38_30
.LBB38_21:                              # %if.then.i.13
	movl	%r9d, 80(%rdi)
	movl	%r9d, (%r10)
	movl	%ecx, 84(%rdi)
	movl	%ecx, 76(%rdi)
	movb	$1, 98(%rdi)
.LBB38_30:                              # %gz_path_bbox_add.exit30
	movl	%r9d, 112(%rdi)
	movl	%ecx, 116(%rdi)
	orb	$1, 97(%rdi)
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gz_path_bbox_add_curve_notes, .Lfunc_end38-gz_path_bbox_add_curve_notes
	.cfi_endproc

	.align	16, 0x90
	.type	gz_path_bbox_close_subpath_notes,@function
gz_path_bbox_close_subpath_notes:       # @gz_path_bbox_close_subpath_notes
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end39:
	.size	gz_path_bbox_close_subpath_notes, .Lfunc_end39-gz_path_bbox_close_subpath_notes
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"path"
	.size	.L.str, 5

	.type	path_reloc_ptrs,@object # @path_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
path_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	path_enum_ptrs
	.size	path_reloc_ptrs, 24

	.type	st_path,@object         # @st_path
	.globl	st_path
	.align	8
st_path:
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	path_reloc_ptrs
	.size	st_path, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"./base/gxpath.c"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Attempt to share (local) segments of path 0x%lx!\n"
	.size	.L.str.2, 50

	.type	default_path_procs,@object # @default_path_procs
	.data
	.align	8
default_path_procs:
	.quad	gz_path_add_point
	.quad	gz_path_add_line_notes
	.quad	gz_path_add_gap_notes
	.quad	gz_path_add_curve_notes
	.quad	gz_path_close_subpath_notes
	.quad	gz_path_state_flags
	.size	default_path_procs, 48

	.type	path_bbox_procs,@object # @path_bbox_procs
	.align	8
path_bbox_procs:
	.quad	gz_path_bbox_add_point
	.quad	gz_path_bbox_add_line_notes
	.quad	gz_path_bbox_add_gap_notes
	.quad	gz_path_bbox_add_curve_notes
	.quad	gz_path_bbox_close_subpath_notes
	.quad	gz_path_state_flags
	.size	path_bbox_procs, 48

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gx_path_assign"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gx_path_assign_free"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gx_path_new"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gx_path_add_lines"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gx_dash_add_dash"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gx_path_pop_close_subpath"
	.size	.L.str.8, 26

	.type	path_enum_ptrs,@object  # @path_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
path_enum_ptrs:
	.short	0                       # 0x0
	.short	56                      # 0x38
	.short	0                       # 0x0
	.short	88                      # 0x58
	.short	0                       # 0x0
	.short	64                      # 0x40
	.size	path_enum_ptrs, 12

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"path segments"
	.size	.L.str.9, 14

	.type	path_segments_reloc_ptrs,@object # @path_segments_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
path_segments_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	path_segments_enum_ptrs
	.size	path_segments_reloc_ptrs, 24

	.type	st_path_segments,@object # @st_path_segments
	.align	8
st_path_segments:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	path_segments_reloc_ptrs
	.size	st_path_segments, 64

	.type	path_segments_enum_ptrs,@object # @path_segments_enum_ptrs
	.align	2
path_segments_enum_ptrs:
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	path_segments_enum_ptrs, 8

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"gx_path_add_line"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gx_path_add_gap"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gx_path_add_curve"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"curve"
	.size	.L.str.13, 6

	.type	segment_reloc_ptrs,@object # @segment_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
segment_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	segment_enum_ptrs
	.size	segment_reloc_ptrs, 24

	.type	st_curve,@object        # @st_curve
	.align	8
st_curve:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	segment_reloc_ptrs
	.size	st_curve, 64

	.type	segment_enum_ptrs,@object # @segment_enum_ptrs
	.align	2
segment_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	segment_enum_ptrs, 8

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"gx_path_close_subpath"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"close"
	.size	.L.str.15, 6

	.type	close_reloc_ptrs,@object # @close_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
close_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_segment
	.quad	close_enum_ptrs
	.size	close_reloc_ptrs, 24

	.type	st_line_close,@object   # @st_line_close
	.align	8
st_line_close:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	close_reloc_ptrs
	.size	st_line_close, 64

	.type	close_enum_ptrs,@object # @close_enum_ptrs
	.align	2
close_enum_ptrs:
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	close_enum_ptrs, 4

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"segment"
	.size	.L.str.16, 8

	.type	st_segment,@object      # @st_segment
	.section	.rodata,"a",@progbits
	.align	8
st_segment:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	segment_reloc_ptrs
	.size	st_segment, 64

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"gx_path_new_subpath"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"subpath"
	.size	.L.str.18, 8

	.type	subpath_reloc_ptrs,@object # @subpath_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
subpath_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_segment
	.quad	subpath_enum_ptrs
	.size	subpath_reloc_ptrs, 24

	.type	st_subpath,@object      # @st_subpath
	.align	8
st_subpath:
	.long	96                      # 0x60
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	subpath_reloc_ptrs
	.size	st_subpath, 64

	.type	subpath_enum_ptrs,@object # @subpath_enum_ptrs
	.align	2
subpath_enum_ptrs:
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	subpath_enum_ptrs, 4

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"line"
	.size	.L.str.19, 5

	.type	line_reloc_ptrs,@object # @line_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
line_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_segment
	.quad	0
	.size	line_reloc_ptrs, 24

	.type	st_line,@object         # @st_line
	.align	8
st_line:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.19
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	line_reloc_ptrs
	.size	st_line, 64

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"dash"
	.size	.L.str.20, 5

	.type	dash_reloc_ptrs,@object # @dash_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
dash_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_segment
	.quad	0
	.size	dash_reloc_ptrs, 24

	.type	st_dash,@object         # @st_dash
	.align	8
st_dash:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.20
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	dash_reloc_ptrs
	.size	st_dash, 64

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"path_alloc_copy error"
	.size	.L.str.21, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
