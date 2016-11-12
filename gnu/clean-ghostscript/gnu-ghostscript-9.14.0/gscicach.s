	.text
	.file	"gscicach.bc"
	.globl	gs_color_index_cache_create
	.align	16, 0x90
	.type	gs_color_index_cache_create,@function
gs_color_index_cache_create:            # @gs_color_index_cache_create
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%r9, %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movl	%r8d, %r12d
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	(%r13), %rax
	movq	%r13, %rdi
	callq	*24(%rax)
	movl	%eax, %r14d
	movl	%r14d, 4(%rsp)          # 4-byte Spill
	movl	100(%rbp), %ebp
	movl	$256, %esi              # imm = 0x100
	movl	$160, %edx
	movl	$.L.str, %ecx
	movq	%rbx, %rdi
	callq	*88(%rbx)
	movq	%rax, %r15
	movl	%r14d, %esi
	shll	$8, %esi
	movl	$4, %edx
	movl	$.L.str, %ecx
	movq	%rbx, %rdi
	callq	*88(%rbx)
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	testl	%r12d, %r12d
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movl	%ebp, %esi
	shll	$8, %esi
	movl	$4, %edx
	movl	$.L.str, %ecx
	movq	%rbx, %rdi
	callq	*88(%rbx)
	movq	%rax, %r14
.LBB0_2:                                # %cond.end
	movl	%ebp, (%rsp)            # 4-byte Spill
	movl	$st_color_index_cache, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rbp
	testq	%r15, %r15
	je	.LBB0_6
# BB#3:                                 # %cond.end
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	je	.LBB0_6
# BB#4:                                 # %lor.lhs.false.13
	testl	%r12d, %r12d
	setne	%al
	testq	%r14, %r14
	sete	%cl
	testb	%cl, %al
	jne	.LBB0_6
# BB#5:                                 # %lor.lhs.false.13
	testq	%rbp, %rbp
	je	.LBB0_6
# BB#7:                                 # %if.end
	xorl	%esi, %esi
	movl	$152, %edx
	movq	%rbp, %rdi
	callq	memset
	xorl	%esi, %esi
	movl	$40960, %edx            # imm = 0xA000
	movq	%r15, %rdi
	callq	memset
	movq	%r13, (%rbp)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 8(%rbp)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rbp)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rbp)
	movl	(%rsp), %eax            # 4-byte Reload
	movl	%eax, 36(%rbp)
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 32(%rbp)
	movq	%rbx, 40(%rbp)
	movl	$1, 48(%rbp)
	movq	%r15, 56(%rbp)
	movl	$0, 64(%rbp)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 72(%rbp)
	movq	%r14, 80(%rbp)
	jmp	.LBB0_8
.LBB0_6:                                # %if.then
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	xorl	%ebp, %ebp
.LBB0_8:                                # %cleanup
	movq	%rbp, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_color_index_cache_create, .Lfunc_end0-gs_color_index_cache_create
	.cfi_endproc

	.globl	gs_color_index_cache_destroy
	.align	16, 0x90
	.type	gs_color_index_cache_destroy,@function
gs_color_index_cache_destroy:           # @gs_color_index_cache_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	40(%rbx), %rdi
	movq	56(%rbx), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	movq	40(%rbx), %rdi
	movq	72(%rbx), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	movq	40(%rbx), %rdi
	movq	80(%rbx), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	movq	$0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	$0, 80(%rbx)
	movq	40(%rbx), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str, %edx
	movq	%rbx, %rsi
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	gs_color_index_cache_destroy, .Lfunc_end1-gs_color_index_cache_destroy
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1117650944              # float 79
	.text
	.globl	gs_cached_color_index
	.align	16, 0x90
	.type	gs_cached_color_index,@function
gs_cached_color_index:                  # @gs_cached_color_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$984, %rsp              # imm = 0x3D8
.Ltmp21:
	.cfi_def_cfa_offset 1040
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsi, %r8
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movslq	32(%rdi), %r15
	testq	%r15, %r15
	movslq	36(%rdi), %rbp
	jle	.LBB2_1
# BB#2:                                 # %for.body.lr.ph.i.i
	leaq	-1(%r15), %rax
	xorl	%esi, %esi
	testb	$3, %r15b
	je	.LBB2_3
# BB#4:                                 # %for.body.i.i.prol.preheader
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movl	%r15d, %ebp
	andl	$3, %ebp
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB2_5:                                # %for.body.i.i.prol
                                        # =>This Inner Loop Header: Depth=1
	mulss	%xmm1, %xmm0
	addss	(%r8,%rsi,4), %xmm0
	incq	%rsi
	cmpq	%rsi, %rbp
	jne	.LBB2_5
	jmp	.LBB2_6
.LBB2_1:
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB2_10
.LBB2_3:
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	xorps	%xmm0, %xmm0
.LBB2_6:                                # %for.body.lr.ph.i.i.split
	cmpq	$3, %rax
	jb	.LBB2_9
# BB#7:                                 # %for.body.lr.ph.i.i.split.split
	movq	%r15, %rax
	subq	%rsi, %rax
	leaq	12(%r8,%rsi,4), %rsi
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB2_8:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	mulss	%xmm1, %xmm0
	addss	-12(%rsi), %xmm0
	mulss	%xmm1, %xmm0
	addss	-8(%rsi), %xmm0
	mulss	%xmm1, %xmm0
	addss	-4(%rsi), %xmm0
	mulss	%xmm1, %xmm0
	addss	(%rsi), %xmm0
	addq	$16, %rsi
	addq	$-4, %rax
	jne	.LBB2_8
.LBB2_9:                                # %for.cond.for.cond.1.preheader_crit_edge.i.i
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movd	%xmm0, %ecx
	movl	%ecx, %eax
	movzbl	%cl, %esi
	movzbl	%ch, %edx  # NOREX
	shrl	$16, %ecx
	shrl	$24, %eax
	imull	$79, %esi, %esi
	movzbl	%cl, %ecx
.LBB2_10:                               # %hash_paint_values.exit.i
	addl	%esi, %edx
	imull	$79, %edx, %edx
	addl	%ecx, %edx
	imull	$79, %edx, %ecx
	addl	%eax, %ecx
	andl	$15, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	88(%rdi,%rcx,4), %r14d
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	testq	%r14, %r14
	je	.LBB2_32
# BB#11:                                # %if.then.i
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	72(%rbp), %r13
	movl	%r15d, %eax
	imull	%r14d, %eax
	leaq	(%r13,%rax,4), %rsi
	leaq	(,%r15,4), %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r8, %rdi
	movq	%r8, 56(%rsp)           # 8-byte Spill
	callq	memcmp
	testl	%eax, %eax
	je	.LBB2_12
# BB#16:                                # %if.end.9.i
	movq	56(%rbp), %r12
	leaq	(%r14,%r14,4), %rax
	shlq	$5, %rax
	movl	144(%r12,%rax), %ebp
	cmpl	%r14d, %ebp
	movq	56(%rsp), %r8           # 8-byte Reload
	je	.LBB2_32
# BB#17:
	movl	$-15, %ebx
	.align	16, 0x90
.LBB2_18:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %eax
	imull	%ebp, %eax
	leaq	(%r13,%rax,4), %rsi
	movq	%r8, %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	movl	%ebp, %ecx
	testl	%eax, %eax
	je	.LBB2_19
# BB#30:                                # %for.inc.i
                                        #   in Loop: Header=BB2_18 Depth=1
	testl	%ebx, %ebx
	movq	56(%rsp), %r8           # 8-byte Reload
	je	.LBB2_32
# BB#31:                                # %for.inc.i
                                        #   in Loop: Header=BB2_18 Depth=1
	leaq	(%rcx,%rcx,4), %rax
	shlq	$5, %rax
	movl	144(%r12,%rax), %ebp
	incl	%ebx
	cmpl	%r14d, %ebp
	jne	.LBB2_18
.LBB2_32:                               # %if.end.34.i
	movq	40(%rsp), %r13          # 8-byte Reload
	movl	48(%r13), %r12d
	cmpl	$255, %r12d
	jg	.LBB2_37
# BB#33:                                # %if.then.37.i
	leal	1(%r12), %eax
	movl	%eax, 48(%r13)
	movl	64(%r13), %ecx
	testq	%rcx, %rcx
	movq	56(%r13), %rax
	je	.LBB2_35
# BB#34:                                # %if.then.i.70.i
	leaq	(%rcx,%rcx,4), %rdx
	shlq	$5, %rdx
	movl	148(%rax,%rdx), %esi
	leaq	(%r12,%r12,4), %rdi
	shlq	$5, %rdi
	movl	%ecx, 152(%rax,%rdi)
	movl	%esi, 148(%rax,%rdi)
	movl	%r12d, 148(%rax,%rdx)
	leaq	(%rsi,%rsi,4), %rcx
	shlq	$5, %rcx
	movl	%r12d, 152(%rax,%rcx)
	movl	%r12d, 64(%r13)
	jmp	.LBB2_39
.LBB2_37:                               # %if.else.i
	movl	64(%r13), %r12d
	movq	56(%r13), %rdx
	leaq	(%r12,%r12,4), %rcx
	shlq	$5, %rcx
	movl	148(%rdx,%rcx), %eax
	movl	%eax, 64(%r13)
	movl	136(%rdx,%rcx), %eax
	movl	140(%rdx,%rcx), %esi
	movl	144(%rdx,%rcx), %ecx
	leaq	(%rsi,%rsi,4), %rdi
	shlq	$5, %rdi
	movl	%ecx, 144(%rdx,%rdi)
	leaq	(%rcx,%rcx,4), %rdi
	shlq	$5, %rdi
	movl	%esi, 140(%rdx,%rdi)
	cmpl	%r12d, 88(%r13,%rax,4)
	jne	.LBB2_39
# BB#38:                                # %if.then.i.66.i
	movl	%ecx, 88(%r13,%rax,4)
	jmp	.LBB2_39
.LBB2_12:                               # %if.then.5.i
	movl	64(%rbp), %ecx
	cmpl	%r14d, %ecx
	movq	%rbp, %r13
	movq	%r14, %r11
	jne	.LBB2_14
# BB#13:
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	movq	%r12, %r15
	movq	24(%rsp), %r10          # 8-byte Reload
	jmp	.LBB2_43
.LBB2_35:                               # %if.else.i.72.i
	leaq	(%r12,%r12,4), %rcx
	shlq	$5, %rcx
	movl	%r12d, 152(%rax,%rcx)
	movl	%r12d, 148(%rax,%rcx)
	movl	%r12d, 64(%r13)
.LBB2_39:                               # %if.end.44.i
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	movl	88(%r13,%rbx,4), %ecx
	testq	%rcx, %rcx
	je	.LBB2_78
# BB#40:                                # %if.then.i.i
	movq	56(%r13), %rdx
	leaq	(%rcx,%rcx,4), %rsi
	shlq	$5, %rsi
	movl	140(%rdx,%rsi), %edi
	movl	%r12d, %eax
	leaq	(%rax,%rax,4), %rbp
	shlq	$5, %rbp
	movl	%ecx, 144(%rdx,%rbp)
	movl	%edi, 140(%rdx,%rbp)
	movl	%r12d, 140(%rdx,%rsi)
	leaq	(%rdi,%rdi,4), %rcx
	shlq	$5, %rcx
	movl	%r12d, 144(%rdx,%rcx)
	jmp	.LBB2_79
.LBB2_78:                               # %if.else.i.i
	movl	%r12d, %eax
	movq	56(%r13), %rcx
	leaq	(%rax,%rax,4), %rdx
	shlq	$5, %rdx
	movl	%r12d, 144(%rcx,%rdx)
	movl	%r12d, 140(%rcx,%rdx)
.LBB2_79:                               # %if.else.40
	movl	%r12d, 88(%r13,%rbx,4)
	movq	56(%r13), %rcx
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movl	%ebx, 136(%rcx,%rax)
	testq	%r9, %r9
	leaq	328(%rsp), %rbp
	cmovneq	%r9, %rbp
	movq	72(%r13), %rax
	movl	%r15d, %ecx
	imull	%r12d, %ecx
	leaq	(%rax,%rcx,4), %rdi
	shlq	$2, %r15
	movq	%r8, %rsi
	movq	%r15, %rdx
	movq	%r8, %rbx
	callq	memcpy
	leaq	72(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	(%rsi), %rax
	movq	8(%r13), %rcx
	movq	24(%r13), %r8
	leaq	64(%rsp), %rdi
	xorl	%r9d, %r9d
	movq	%rbp, %rdx
	callq	*72(%rax)
	testl	%eax, %eax
	movabsq	$4294967296, %r15       # imm = 0x100000000
	js	.LBB2_121
# BB#80:                                # %if.end.61
	movq	(%rbp), %rcx
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, %rcx
	je	.LBB2_81
# BB#82:                                # %if.else.73
	movl	$gx_dc_type_data_devn, %edx
	movl	$2, %eax
	cmpq	%rdx, %rcx
	jne	.LBB2_121
# BB#83:                                # %for.cond.78.preheader
	movq	8(%rsp), %r10           # 8-byte Reload
	testl	%r10d, %r10d
	je	.LBB2_84
# BB#85:                                # %for.body.81.lr.ph
	movl	%r12d, %eax
	movq	56(%r13), %r8
	leal	-1(%r10), %r11d
	incq	%r11
	xorl	%edi, %edi
	movq	%r11, %r14
	movabsq	$8589934576, %rdx       # imm = 0x1FFFFFFF0
	andq	%rdx, %r14
	je	.LBB2_94
# BB#86:                                # %vector.memcheck214
	leaq	(%rax,%rax,4), %rdx
	shlq	$5, %rdx
	leaq	(%rdx,%r8), %rdx
	leal	-1(%r10), %ebx
	leaq	8(%rbp,%rbx,2), %rsi
	xorl	%edi, %edi
	cmpq	%rsi, %rdx
	ja	.LBB2_88
# BB#87:                                # %vector.memcheck214
	leaq	(%rdx,%rbx,2), %rdx
	leaq	8(%rbp), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB2_94
.LBB2_88:                               # %vector.body190.preheader
	leal	-1(%r10), %esi
	incq	%rsi
	movabsq	$8589934576, %rdx       # imm = 0x1FFFFFFF0
	andq	%rdx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rdx
	shrq	$4, %rdx
	xorl	%r9d, %r9d
	btq	$4, %rsi
	jb	.LBB2_90
# BB#89:                                # %vector.body190.prol
	leaq	(%rax,%rax,4), %rsi
	shlq	$5, %rsi
	leaq	(%r8,%rsi), %rdi
	movups	8(%rbp), %xmm0
	movups	24(%rbp), %xmm1
	movups	%xmm0, (%rdi)
	movups	%xmm1, 16(%r8,%rsi)
	movl	$16, %r9d
.LBB2_90:                               # %vector.body190.preheader.split
	testq	%rdx, %rdx
	je	.LBB2_93
# BB#91:                                # %vector.body190.preheader.split.split
	leal	-1(%r10), %edx
	incq	%rdx
	movabsq	$8589934576, %rsi       # imm = 0x1FFFFFFF0
	andq	%rsi, %rdx
	subq	%r9, %rdx
	leaq	56(%rbp,%r9,2), %rdi
	leaq	(%rax,%rax,4), %rsi
	shlq	$5, %rsi
	leaq	(%rsi,%r8), %rsi
	leaq	48(%rsi,%r9,2), %rbx
	.align	16, 0x90
.LBB2_92:                               # %vector.body190
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rbx)
	movups	%xmm1, -32(%rbx)
	movups	-16(%rdi), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm0, -16(%rbx)
	movups	%xmm1, (%rbx)
	addq	$64, %rdi
	addq	$64, %rbx
	addq	$-32, %rdx
	jne	.LBB2_92
.LBB2_93:
	movq	%r14, %rdi
.LBB2_94:                               # %middle.block191
	cmpq	%rdi, %r11
	jne	.LBB2_96
# BB#95:
	movq	%r12, %r11
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	movq	32(%rsp), %r14          # 8-byte Reload
	jmp	.LBB2_104
.LBB2_81:                               # %if.then.65
	movq	8(%rbp), %rdx
	movq	%r12, %r11
	movl	%r11d, %eax
	movq	56(%r13), %r8
	leaq	(%rax,%rax,4), %rsi
	shlq	$5, %rsi
	movq	%rdx, (%r8,%rsi)
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	jmp	.LBB2_104
.LBB2_14:                               # %exclude_from_touch_list.exit165.i
	movq	56(%r13), %rax
	leaq	(%r11,%r11,4), %rsi
	shlq	$5, %rsi
	leaq	148(%rax,%rsi), %r8
	movl	148(%rax,%rsi), %edi
	movl	152(%rax,%rsi), %ebp
	leaq	152(%rax,%rsi), %rsi
	leaq	(%rdi,%rdi,4), %rbx
	shlq	$5, %rbx
	movl	%ebp, 152(%rax,%rbx)
	leaq	(%rbp,%rbp,4), %rbp
	shlq	$5, %rbp
	movl	%edi, 148(%rax,%rbp)
	testl	%ecx, %ecx
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	movq	%r12, %r15
	movq	24(%rsp), %r10          # 8-byte Reload
	je	.LBB2_41
# BB#15:                                # %if.then.i.144.i
	leaq	(%rcx,%rcx,4), %rdi
	shlq	$5, %rdi
	movl	148(%rax,%rdi), %ebp
	movl	%ecx, (%rsi)
	movl	%ebp, (%r8)
	movl	%r11d, 148(%rax,%rdi)
	leaq	(%rbp,%rbp,4), %rcx
	shlq	$5, %rcx
	movl	%r11d, 152(%rax,%rcx)
	jmp	.LBB2_42
.LBB2_19:                               # %if.then.23.i
	leaq	(%rcx,%rcx,4), %rax
	shlq	$5, %rax
	movl	136(%r12,%rax), %ecx
	movl	140(%r12,%rax), %esi
	movl	144(%r12,%rax), %edx
	leaq	(%rsi,%rsi,4), %rdi
	shlq	$5, %rdi
	movl	%edx, 144(%r12,%rdi)
	leaq	(%rdx,%rdx,4), %rdi
	shlq	$5, %rdi
	movl	%esi, 140(%r12,%rdi)
	movq	40(%rsp), %r13          # 8-byte Reload
	cmpl	%ebp, 88(%r13,%rcx,4)
	jne	.LBB2_21
# BB#20:                                # %if.then.i.132.i
	movl	%edx, 88(%r13,%rcx,4)
.LBB2_21:                               # %exclude_from_chain.exit133.i
	movq	16(%rsp), %rbx          # 8-byte Reload
	movl	88(%r13,%rbx,4), %ecx
	testq	%rcx, %rcx
	movq	32(%rsp), %r14          # 8-byte Reload
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	movq	%r12, %r15
	movq	24(%rsp), %r10          # 8-byte Reload
	je	.LBB2_23
# BB#22:                                # %if.then.i.110.i
	movq	56(%r13), %rdx
	leaq	(%rcx,%rcx,4), %rsi
	shlq	$5, %rsi
	movl	140(%rdx,%rsi), %edi
	movl	%ecx, 144(%rdx,%rax)
	movl	%edi, 140(%rdx,%rax)
	movl	%ebp, 140(%rdx,%rsi)
	leaq	(%rdi,%rdi,4), %rcx
	shlq	$5, %rcx
	movl	%ebp, 144(%rdx,%rcx)
	jmp	.LBB2_24
.LBB2_41:                               # %if.else.i.149.i
	movl	%r11d, (%rsi)
	movl	%r11d, (%r8)
.LBB2_42:                               # %if.then
	movl	%r11d, 64(%r13)
	jmp	.LBB2_43
.LBB2_23:                               # %if.else.i.115.i
	movq	56(%r13), %rcx
	movl	%ebp, 144(%rcx,%rax)
	movl	%ebp, 140(%rcx,%rax)
.LBB2_24:                               # %include_into_chain.exit119.i
	movl	%ebp, 88(%r13,%rbx,4)
	movq	56(%r13), %rcx
	movl	%ebx, 136(%rcx,%rax)
	movl	64(%r13), %edx
	cmpl	%ebp, %edx
	je	.LBB2_25
# BB#26:                                # %exclude_from_touch_list.exit.i
	leaq	148(%rcx,%rax), %r8
	movl	148(%rcx,%rax), %edi
	movl	152(%rcx,%rax), %ebx
	leaq	152(%rcx,%rax), %rax
	leaq	(%rdi,%rdi,4), %rsi
	shlq	$5, %rsi
	movl	%ebx, 152(%rcx,%rsi)
	leaq	(%rbx,%rbx,4), %rsi
	shlq	$5, %rsi
	movl	%edi, 148(%rcx,%rsi)
	testl	%edx, %edx
	je	.LBB2_28
# BB#27:                                # %if.then.i.83.i
	leaq	(%rdx,%rdx,4), %rsi
	shlq	$5, %rsi
	movl	148(%rcx,%rsi), %edi
	movl	%edx, (%rax)
	movl	%edi, (%r8)
	movl	%ebp, 148(%rcx,%rsi)
	leaq	(%rdi,%rdi,4), %rax
	shlq	$5, %rax
	movl	%ebp, 152(%rcx,%rax)
	movl	%ebp, 64(%r13)
	jmp	.LBB2_25
.LBB2_84:                               # %for.cond.78.preheader.if.end.99.loopexit_crit_edge
	movq	56(%r13), %r8
	movq	%r12, %r11
	movl	%r11d, %eax
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	jmp	.LBB2_104
.LBB2_96:                               # %for.body.81.preheader
	leal	1(%r10), %esi
	movl	%edi, %ebx
	orl	$1, %ebx
	subl	%ebx, %esi
	movl	%r10d, %r9d
	subl	%ebx, %r9d
	testb	$3, %sil
	je	.LBB2_97
# BB#98:                                # %for.body.81.prol.preheader
	leaq	(%rax,%rax,4), %rsi
	shlq	$5, %rsi
	leaq	(%rsi,%r8), %rsi
	leal	1(%r10), %ebx
	leal	1(%rdi), %edx
	subl	%edx, %ebx
	andl	$3, %ebx
	negl	%ebx
	movq	%r12, %r11
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	.align	16, 0x90
.LBB2_99:                               # %for.body.81.prol
                                        # =>This Inner Loop Header: Depth=1
	movw	8(%rbp,%rdi,2), %dx
	movw	%dx, (%rsi,%rdi,2)
	incq	%rdi
	incl	%ebx
	jne	.LBB2_99
	jmp	.LBB2_100
.LBB2_28:                               # %if.else.i.88.i
	movl	%ebp, (%rax)
	movl	%ebp, (%r8)
	movl	%ebp, 64(%r13)
.LBB2_25:
	movl	%ebp, %r11d
	movq	8(%rsp), %rdx           # 8-byte Reload
.LBB2_43:                               # %if.then
	testq	%r10, %r10
	je	.LBB2_64
# BB#44:                                # %if.then.3
	movl	%r11d, %r9d
	movq	56(%r13), %r8
	leaq	(%r9,%r9,4), %rbp
	shlq	$5, %rbp
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, 128(%r8,%rbp)
	je	.LBB2_122
# BB#45:                                # %for.cond.preheader
	movq	%r11, 40(%rsp)          # 8-byte Spill
	testl	%edx, %edx
	je	.LBB2_62
# BB#46:                                # %for.body.lr.ph
	movq	%r14, %r11
	leal	-1(%rdx), %r14d
	incq	%r14
	xorl	%edi, %edi
	movq	%r14, %r12
	andq	%r15, %r12
	je	.LBB2_55
# BB#47:                                # %vector.memcheck
	movq	%r10, %rax
	leaq	8(%rax), %r10
	leal	-1(%rdx), %ebx
	leaq	(%r9,%r9,4), %rsi
	shlq	$5, %rsi
	leaq	(%rsi,%r8), %rsi
	leaq	(%rsi,%rbx,2), %rcx
	xorl	%edi, %edi
	cmpq	%rcx, %r10
	movq	%rax, %r10
	ja	.LBB2_49
# BB#48:                                # %vector.memcheck
	leaq	8(%r10,%rbx,2), %rcx
	cmpq	%rcx, %rsi
	jbe	.LBB2_55
.LBB2_49:                               # %vector.body.preheader
	leal	-1(%rdx), %ecx
	incq	%rcx
	andq	%r15, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rdi
	shrq	$4, %rdi
	xorl	%ebx, %ebx
	btq	$4, %rcx
	jb	.LBB2_51
# BB#50:                                # %vector.body.prol
	leaq	(%r8,%rbp), %rcx
	movups	(%rcx), %xmm0
	movups	16(%r8,%rbp), %xmm1
	movups	%xmm0, 8(%r10)
	movups	%xmm1, 24(%r10)
	movl	$16, %ebx
.LBB2_51:                               # %vector.body.preheader.split
	testq	%rdi, %rdi
	je	.LBB2_54
# BB#52:                                # %vector.body.preheader.split.split
	leal	-1(%rdx), %edi
	incq	%rdi
	andq	%r15, %rdi
	subq	%rbx, %rdi
	leaq	(%r9,%r9,4), %rcx
	shlq	$5, %rcx
	leaq	(%rcx,%r8), %rcx
	leaq	48(%rcx,%rbx,2), %rbp
	leaq	56(%r10,%rbx,2), %rbx
	.align	16, 0x90
.LBB2_53:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rbp), %xmm0
	movups	-32(%rbp), %xmm1
	movups	%xmm0, -48(%rbx)
	movups	%xmm1, -32(%rbx)
	movups	-16(%rbp), %xmm0
	movups	(%rbp), %xmm1
	movups	%xmm0, -16(%rbx)
	movups	%xmm1, (%rbx)
	addq	$64, %rbp
	addq	$64, %rbx
	addq	$-32, %rdi
	jne	.LBB2_53
.LBB2_54:
	movq	%r12, %rdi
.LBB2_55:                               # %middle.block
	cmpq	%rdi, %r14
	movq	%r11, %r14
	je	.LBB2_62
# BB#56:                                # %for.body.preheader
	leal	1(%rdx), %ecx
	movl	%edi, %esi
	orl	$1, %esi
	subl	%esi, %ecx
	movl	%edx, %eax
	subl	%esi, %eax
	testb	$3, %cl
	je	.LBB2_59
# BB#57:                                # %for.body.prol.preheader
	leaq	(%r9,%r9,4), %rcx
	shlq	$5, %rcx
	leaq	(%rcx,%r8), %rsi
	leal	1(%rdx), %ebp
	leal	1(%rdi), %ecx
	subl	%ecx, %ebp
	andl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB2_58:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rsi,%rdi,2), %cx
	movw	%cx, 8(%r10,%rdi,2)
	incq	%rdi
	incl	%ebp
	jne	.LBB2_58
.LBB2_59:                               # %for.body.preheader.split
	cmpl	$3, %eax
	jb	.LBB2_62
# BB#60:                                # %for.body.preheader.split.split
	movl	%edx, %ebp
	subl	%edi, %ebp
	leaq	14(%r10,%rdi,2), %rsi
	leaq	(%r9,%r9,4), %rcx
	shlq	$5, %rcx
	addq	%rcx, %r8
	leaq	6(%r8,%rdi,2), %rax
	.align	16, 0x90
.LBB2_61:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	-6(%rax), %cx
	movw	%cx, -6(%rsi)
	movw	-4(%rax), %cx
	movw	%cx, -4(%rsi)
	movw	-2(%rax), %cx
	movw	%cx, -2(%rsi)
	movw	(%rax), %cx
	movw	%cx, (%rsi)
	addq	$8, %rsi
	addq	$8, %rax
	addl	$-4, %ebp
	jne	.LBB2_61
.LBB2_62:                               # %for.end
	movq	%r15, %r12
	movq	%rdx, %r15
	movq	$gx_dc_type_data_devn, (%r10)
	leaq	376(%r10), %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	%r10, %rbx
	callq	memcpy
	movq	%rbx, %rax
	movq	40(%rsp), %r11          # 8-byte Reload
	jmp	.LBB2_63
.LBB2_122:                              # %if.then.5
	movq	%r15, %r12
	movq	%rdx, %r15
	movq	(%r8,%rbp), %rax
	movq	%rax, 8(%r10)
	movq	$gx_dc_type_data_pure, (%r10)
	leaq	376(%r10), %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	%r11, %rbx
	movq	%r10, %rbp
	callq	memcpy
	movq	%rbp, %rax
	movq	%rbx, %r11
.LBB2_63:                               # %if.end
	movl	$1, 360(%rax)
	movq	%r15, %rdx
	movq	%r12, %r15
.LBB2_64:                               # %if.end.31
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB2_121
# BB#65:                                # %land.lhs.true
	movl	%r11d, %ecx
	movq	56(%r13), %rax
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$5, %rcx
	cmpl	$0, 156(%rax,%rcx)
	jne	.LBB2_120
# BB#66:                                # %if.then.38
	leaq	156(%rax,%rcx), %r8
	movl	36(%r13), %esi
	movl	$gx_dc_type_data_pure, %edi
	cmpq	%rdi, 128(%rax,%rcx)
	je	.LBB2_74
# BB#67:                                # %for.cond.21.preheader.i
	movq	%rdx, %r12
	movq	%r14, %r10
	testl	%esi, %esi
	movabsq	$4294967296, %r14       # imm = 0x100000000
	jle	.LBB2_73
# BB#68:                                # %for.body.24.lr.ph.i
	addq	%rcx, %rax
	movl	%esi, %ecx
	imull	%r11d, %ecx
	movq	80(%r13), %r9
	xorl	%edx, %edx
	testb	$1, %sil
	je	.LBB2_70
# BB#69:                                # %for.body.24.i.prol
	movzwl	(%rax), %ebp
	movl	%ebp, %edx
	shrl	%edx
	shrl	$13, %ebp
	subl	%ebp, %edx
	movswl	%dx, %edx
	movl	%ecx, %ebp
	movl	%edx, (%r9,%rbp,4)
	movl	$1, %edx
.LBB2_70:                               # %for.body.24.lr.ph.i.split
	cmpl	$1, %esi
	je	.LBB2_73
# BB#71:                                # %for.body.24.lr.ph.i.split.split
	subl	%edx, %esi
	movq	%rdx, %rbp
	shlq	$32, %rbp
	leal	1(%rcx,%rdx), %ebx
	addl	%edx, %ecx
	.align	16, 0x90
.LBB2_72:                               # %for.body.24.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdx
	sarq	$31, %rdx
	movzwl	(%rax,%rdx), %edi
	movl	%edi, %edx
	shrl	%edx
	shrl	$13, %edi
	subl	%edi, %edx
	movswl	%dx, %edx
	movl	%ecx, %edi
	movl	%edx, (%r9,%rdi,4)
	leaq	(%rbp,%r14), %rdx
	sarq	$31, %rdx
	movzwl	(%rax,%rdx), %edx
	movl	%edx, %edi
	shrl	%edi
	shrl	$13, %edx
	subl	%edx, %edi
	movswl	%di, %edx
	movl	%ebx, %edi
	movl	%edx, (%r9,%rdi,4)
	addl	$2, %ebx
	addl	$2, %ecx
	addl	$-2, %esi
	leaq	16(%r15,%rbp), %rbp
	jne	.LBB2_72
.LBB2_73:                               # %for.end.52.i
	movl	$1, (%r8)
	movq	%r10, %r14
	movq	%r12, %rdx
	jmp	.LBB2_119
.LBB2_74:                               # %if.then.i.62
	movq	%r11, %r12
	testl	%esi, %esi
	movabsq	$4294967296, %r14       # imm = 0x100000000
	jle	.LBB2_77
# BB#75:                                # %for.body.lr.ph.i
	movq	24(%r13), %r11
	movq	(%rax,%rcx), %r9
	movq	80(%r13), %r10
	movl	%r12d, %edx
	imull	%esi, %edx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_76:                               # %for.body.i.65
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rax
	sarq	$32, %rax
	movb	140(%r11,%rax), %cl
	movzbl	204(%r11,%rax), %eax
	movq	%r9, %rbx
	shrq	%cl, %rbx
	movl	$1, %edi
	movb	%al, %cl
	shll	%cl, %edi
	decl	%edi
	movslq	%edi, %rdi
	andq	%rbx, %rdi
	movl	$31, %ecx
	subl	%eax, %ecx
	shlq	%cl, %rdi
	movl	%edx, %eax
	movl	%edi, (%r10,%rax,4)
	addq	%r14, %rbp
	incl	%edx
	decl	%esi
	jne	.LBB2_76
.LBB2_77:                               # %for.end.i
	movl	$1, (%r8)
	movq	%r12, %r11
	movq	32(%rsp), %r14          # 8-byte Reload
	jmp	.LBB2_118
.LBB2_97:
	movq	%r12, %r11
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
.LBB2_100:                              # %for.body.81.preheader.split
	cmpl	$3, %r9d
	jae	.LBB2_102
# BB#101:
	movq	32(%rsp), %r14          # 8-byte Reload
	jmp	.LBB2_104
.LBB2_102:                              # %for.body.81.preheader.split.split
	movl	%r10d, %edx
	subl	%edi, %edx
	leaq	(%rax,%rax,4), %rsi
	shlq	$5, %rsi
	leaq	(%rsi,%r8), %rsi
	leaq	6(%rsi,%rdi,2), %rsi
	leaq	14(%rbp,%rdi,2), %rdi
	movq	32(%rsp), %r14          # 8-byte Reload
	.align	16, 0x90
.LBB2_103:                              # %for.body.81
                                        # =>This Inner Loop Header: Depth=1
	movw	-6(%rdi), %bp
	movw	%bp, -6(%rsi)
	movw	-4(%rdi), %bp
	movw	%bp, -4(%rsi)
	movw	-2(%rdi), %bp
	movw	%bp, -2(%rsi)
	movw	(%rdi), %bp
	movw	%bp, (%rsi)
	addq	$8, %rsi
	addq	$8, %rdi
	addl	$-4, %edx
	jne	.LBB2_103
.LBB2_104:                              # %if.end.99
	leaq	(%rax,%rax,4), %r9
	shlq	$5, %r9
	movq	%rcx, 128(%r8,%r9)
	testq	%r14, %r14
	je	.LBB2_117
# BB#105:                               # %if.then.107
	movl	36(%r13), %edi
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, %rcx
	je	.LBB2_113
# BB#106:                               # %for.cond.21.preheader.i.74
	testl	%edi, %edi
	jle	.LBB2_112
# BB#107:                               # %for.body.24.lr.ph.i.79
	leaq	(%r8,%r9), %r10
	movl	%edi, %ecx
	imull	%r11d, %ecx
	movq	80(%r13), %rbp
	xorl	%esi, %esi
	testb	$1, %dil
	je	.LBB2_109
# BB#108:                               # %for.body.24.i.126.prol
	movzwl	(%r10), %edx
	movl	%edx, %esi
	shrl	%esi
	shrl	$13, %edx
	subl	%edx, %esi
	movswl	%si, %edx
	movl	%ecx, %esi
	movl	%edx, (%rbp,%rsi,4)
	movl	$1, %esi
.LBB2_109:                              # %for.body.24.lr.ph.i.79.split
	cmpl	$1, %edi
	je	.LBB2_112
# BB#110:                               # %for.body.24.lr.ph.i.79.split.split
	subl	%esi, %edi
	movq	%rsi, %rbx
	shlq	$32, %rbx
	leal	1(%rcx,%rsi), %edx
	addl	%esi, %ecx
	.align	16, 0x90
.LBB2_111:                              # %for.body.24.i.126
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rsi
	sarq	$31, %rsi
	movzwl	(%r10,%rsi), %eax
	movl	%eax, %esi
	shrl	%esi
	shrl	$13, %eax
	subl	%eax, %esi
	movswl	%si, %eax
	movl	%ecx, %esi
	movl	%eax, (%rbp,%rsi,4)
	leaq	(%rbx,%r15), %rax
	sarq	$31, %rax
	movzwl	(%r10,%rax), %eax
	movl	%eax, %esi
	shrl	%esi
	shrl	$13, %eax
	subl	%eax, %esi
	movswl	%si, %eax
	movl	%edx, %esi
	movl	%eax, (%rbp,%rsi,4)
	addl	$2, %edx
	addl	$2, %ecx
	addl	$-2, %edi
	leaq	16(%r12,%rbx), %rbx
	jne	.LBB2_111
.LBB2_112:                              # %for.end.52.i.128
	movl	$1, 156(%r8,%r9)
	movq	32(%rsp), %r14          # 8-byte Reload
	jmp	.LBB2_118
.LBB2_117:                              # %if.else.108
	movl	$0, 156(%r8,%r9)
.LBB2_118:                              # %cleanup.thread
	movq	8(%rsp), %rdx           # 8-byte Reload
	jmp	.LBB2_119
.LBB2_113:                              # %if.then.i.82
	movq	%r11, %r12
	testl	%edi, %edi
	jle	.LBB2_116
# BB#114:                               # %for.body.lr.ph.i.86
	movq	24(%r13), %r14
	movq	(%r8,%r9), %r10
	movq	80(%r13), %r11
	movl	%r12d, %esi
	imull	%edi, %esi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_115:                              # %for.body.i.109
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rax
	sarq	$32, %rax
	movb	140(%r14,%rax), %cl
	movzbl	204(%r14,%rax), %eax
	movq	%r10, %rbx
	shrq	%cl, %rbx
	movl	$1, %ebp
	movb	%al, %cl
	shll	%cl, %ebp
	decl	%ebp
	movslq	%ebp, %rbp
	andq	%rbx, %rbp
	movl	$31, %ecx
	subl	%eax, %ecx
	shlq	%cl, %rbp
	movl	%esi, %eax
	movl	%ebp, (%r11,%rax,4)
	addq	%r15, %rdx
	incl	%esi
	decl	%edi
	jne	.LBB2_115
.LBB2_116:                              # %for.end.i.111
	movl	$1, 156(%r8,%r9)
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%r12, %r11
	movq	32(%rsp), %r14          # 8-byte Reload
.LBB2_119:                              # %if.end.115
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB2_121
.LBB2_120:                              # %if.then.118
	movq	80(%r13), %rax
	movl	%edx, %ecx
	imull	%r11d, %ecx
	leaq	(%rax,%rcx,4), %rsi
	shlq	$2, %rdx
	movq	%r14, %rdi
	callq	memcpy
	xorl	%eax, %eax
.LBB2_121:                              # %cleanup.127
	addq	$984, %rsp              # imm = 0x3D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_cached_color_index, .Lfunc_end2-gs_cached_color_index
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_color_index_cache_create"
	.size	.L.str, 28

	.type	st_color_index_cache,@object # @st_color_index_cache
	.section	.rodata,"a",@progbits
	.align	8
st_color_index_cache:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gs_color_index_cache_reloc_ptrs
	.size	st_color_index_cache, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_color_index_cache_t"
	.size	.L.str.1, 23

	.type	gs_color_index_cache_reloc_ptrs,@object # @gs_color_index_cache_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gs_color_index_cache_reloc_ptrs:
	.short	6                       # 0x6
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gs_color_index_cache_elem_ptrs
	.size	gs_color_index_cache_reloc_ptrs, 24

	.type	gs_color_index_cache_elem_ptrs,@object # @gs_color_index_cache_elem_ptrs
	.align	16
gs_color_index_cache_elem_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	40                      # 0x28
	.short	0                       # 0x0
	.short	56                      # 0x38
	.short	0                       # 0x0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.short	80                      # 0x50
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	gs_color_index_cache_elem_ptrs, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
