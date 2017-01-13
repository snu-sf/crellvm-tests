	.text
	.file	"iname.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.zero	16
	.text
	.globl	names_init
	.align	16, 0x90
	.type	names_init,@function
names_init:                             # @names_init
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
	movq	%rsi, %r14
	movl	$1048576, %r15d         # imm = 0x100000
	testq	%rdi, %rdi
	je	.LBB0_2
# BB#1:                                 # %if.else
	leaq	-1(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	$1048575, %rcx          # imm = 0xFFFFF
	movq	%rdi, %r15
	ja	.LBB0_13
.LBB0_2:                                # %if.end.3
	movl	$st_name_table, %esi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB0_13
# BB#3:                                 # %if.end.6
	xorl	%esi, %esi
	movl	$49184, %edx            # imm = 0xC020
	movq	%r12, %rdi
	callq	memset
	movabsq	$2199023255551, %rax    # imm = 0x1FFFFFFFFFF
	addq	%rax, %r15
	shrq	$9, %r15
	movl	%r15d, 16(%r12)
	movq	%r14, %rdi
	callq	imemory_space
	orl	$96, %eax
	movl	%eax, 20(%r12)
	movq	%r14, 24(%r12)
	movq	%r12, %rdi
	callq	name_alloc_sub
	testl	%eax, %eax
	js	.LBB0_8
# BB#4:                                 # %for.cond
	movq	%r12, %r9
	addq	$16416, %r9             # imm = 0x4020
	movq	$-1, %rcx
	movl	$23, %edx
	movl	$4194303, %r8d          # imm = 0x3FFFFF
	.align	16, 0x90
.LBB0_5:                                # %for.body.25
                                        # =>This Inner Loop Header: Depth=1
	leal	2(%rcx), %eax
	shrl	$5, %eax
	movl	%edx, %ebx
	andl	$511, %ebx              # imm = 0x1FF
	andl	$134217712, %eax        # imm = 0x7FFFFF0
	movq	(%r9,%rax), %r10
	movq	8(%r9,%rax), %rax
	movq	%rbx, %rdi
	shlq	$4, %rdi
	leaq	(%rax,%rdi), %r11
	testq	%rcx, %rcx
	js	.LBB0_6
# BB#10:                                # %if.else.45
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	nt_1char_names(%rcx), %rsi
	movq	%rsi, 8(%rax,%rdi)
	movl	(%r11), %eax
	andl	%r8d, %eax
	orl	$4194304, %eax          # imm = 0x400000
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_6:                                # %if.then.44
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	$nt_1char_names, 8(%rax,%rdi)
	movl	(%r11), %eax
	andl	%r8d, %eax
.LBB0_11:                               # %if.end.51
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, (%r11)
	orl	$3145728, %eax          # imm = 0x300000
	movl	%eax, (%r11)
	movq	$0, (%r10,%rbx,8)
	incq	%rcx
	addq	$23, %rdx
	cmpq	$128, %rcx
	jne	.LBB0_5
# BB#12:                                # %for.end.59
	movl	$130, 8(%r12)
	movl	$0, (%r12)
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	names_trace_finish
	movq	%r12, %rax
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_7:                                # %while.body
                                        #   in Loop: Header=BB0_8 Depth=1
	decl	%ebx
	movl	%ebx, 4(%r12)
	shlq	$4, %rbx
	movq	24(%r12), %rdi
	movq	16424(%r12,%rbx), %rsi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	movq	24(%r12), %rdi
	movq	16416(%r12,%rbx), %rsi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16416(%r12,%rbx)
.LBB0_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%r12), %ebx
	testl	%ebx, %ebx
	jne	.LBB0_7
# BB#9:                                 # %while.end
	movl	$.L.str, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*24(%r14)
	xorl	%eax, %eax
.LBB0_13:                               # %cleanup.60
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	names_init, .Lfunc_end0-names_init
	.cfi_endproc

	.align	16, 0x90
	.type	name_alloc_sub,@function
name_alloc_sub:                         # @name_alloc_sub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 64
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	24(%r14), %r15
	movl	4(%r14), %ecx
	movl	16(%r14), %eax
	movl	$-13, %ebp
	.align	16, 0x90
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %ebx
	cmpl	%eax, %ebx
	ja	.LBB1_9
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%ebx, %r12d
	shlq	$4, %r12
	leal	1(%rbx), %ecx
	cmpq	$0, 16416(%r14,%r12)
	jne	.LBB1_1
# BB#3:                                 # %for.end
	movl	%ecx, 4(%r14)
	cmpl	12(%r14), %ecx
	jbe	.LBB1_5
# BB#4:                                 # %if.then.8
	movl	%ecx, 12(%r14)
.LBB1_5:                                # %if.end.11
	movl	$st_name_sub_table, %esi
	movl	$.L.str.3, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbp
	movl	$st_name_string_sub_table, %esi
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %r13
	testq	%rbp, %rbp
	je	.LBB1_7
# BB#6:                                 # %if.end.11
	testq	%r13, %r13
	je	.LBB1_7
# BB#8:                                 # %if.end.21
	leaq	16416(%r14,%r12), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%rbp, %r15
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$4104, %edx             # imm = 0x1008
	movq	%r15, %rdi
	callq	memset
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	movq	%r13, %rdi
	callq	memset
	movl	%ebx, %eax
	andl	$-128, %eax
	shll	$9, %eax
	movl	%eax, 4096(%r15)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%r15, (%rax)
	movq	%r13, 16424(%r14,%r12)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	name_scan_sub
	jmp	.LBB1_9
.LBB1_7:                                # %if.then.17
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*24(%r15)
	movl	$.L.str.3, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*24(%r15)
	movl	$-25, %ebp
.LBB1_9:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	name_alloc_sub, .Lfunc_end1-name_alloc_sub
	.cfi_endproc

	.globl	names_trace_finish
	.align	16, 0x90
	.type	names_trace_finish,@function
names_trace_finish:                     # @names_trace_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 64
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	leaq	32(%r13), %r9
	xorl	%r8d, %r8d
	movl	$-1048576, %r10d        # imm = 0xFFFFFFFFFFF00000
	.align	16, 0x90
.LBB2_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #       Child Loop BB2_4 Depth 3
                                        #         Child Loop BB2_5 Depth 4
	movl	(%r9), %edx
	testl	%edx, %edx
	movl	$0, %eax
	movl	$0, %edi
	je	.LBB2_9
.LBB2_3:                                # %while.body.lr.ph.lr.ph
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_4 Depth 3
                                        #         Child Loop BB2_5 Depth 4
	movq	%rdi, %r14
	movl	%eax, %r11d
.LBB2_4:                                # %while.body.lr.ph
                                        #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_5 Depth 4
	movl	%edx, %eax
	.align	16, 0x90
.LBB2_5:                                # %while.body
                                        #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        #       Parent Loop BB2_4 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%eax, %ecx
	shrl	$9, %ecx
	shlq	$4, %rcx
	movq	16424(%r13,%rcx), %rbx
	movl	%eax, %ecx
	andl	$511, %ecx              # imm = 0x1FF
	shlq	$4, %rcx
	leaq	(%rbx,%rcx), %rdi
	movl	(%rbx,%rcx), %ebp
	movl	%ebp, %edx
	andl	$1048575, %edx          # imm = 0xFFFFF
	testl	$2097152, %ebp          # imm = 0x200000
	jne	.LBB2_2
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB2_5 Depth=4
	movq	$0, 8(%rbx,%rcx)
	andl	$4194303, %ebp          # imm = 0x3FFFFF
	movl	%ebp, (%rdi)
	testl	%r11d, %r11d
	je	.LBB2_7
# BB#8:                                 # %if.else.10
                                        #   in Loop: Header=BB2_5 Depth=4
	movl	(%r14), %eax
	andl	%r10d, %eax
	orl	%edx, %eax
	movl	%eax, (%r14)
	testl	%edx, %edx
	movl	%edx, %eax
	jne	.LBB2_5
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_7:                                # %if.then.9
                                        #   in Loop: Header=BB2_4 Depth=3
	movl	%edx, (%r9)
	xorl	%r11d, %r11d
	testl	%edx, %edx
	jne	.LBB2_4
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_2:                                # %while.cond.outer.loopexit
                                        #   in Loop: Header=BB2_3 Depth=2
	testl	%edx, %edx
	jne	.LBB2_3
	.align	16, 0x90
.LBB2_9:                                # %while.end
                                        #   in Loop: Header=BB2_1 Depth=1
	addq	$4, %r9
	incl	%r8d
	cmpl	$4096, %r8d             # imm = 0x1000
	jne	.LBB2_1
# BB#10:                                # %for.end
	movl	$0, (%r13)
	movslq	12(%r13), %rax
	testq	%rax, %rax
	jle	.LBB2_14
# BB#11:                                # %for.body.16.lr.ph
	testq	%rsi, %rsi
	setne	%cl
	movzbl	%cl, %r14d
	leal	-1(%rax), %r15d
	leaq	1(%rax), %r12
	shlq	$4, %rax
	leaq	16400(%rax,%r13), %rbp
	.align	16, 0x90
.LBB2_12:                               # %for.body.16
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rbp)
	je	.LBB2_13
# BB#15:                                # %if.then.22
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	$1, %edx
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	%r14d, %ecx
	callq	name_scan_sub
.LBB2_13:                               # %for.cond.14.backedge
                                        #   in Loop: Header=BB2_12 Depth=1
	decq	%r12
	decl	%r15d
	addq	$-16, %rbp
	cmpq	$1, %r12
	jg	.LBB2_12
.LBB2_14:                               # %for.end.25
	movl	$0, 4(%r13)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	names_trace_finish, .Lfunc_end2-names_trace_finish
	.cfi_endproc

	.globl	names_memory
	.align	16, 0x90
	.type	names_memory,@function
names_memory:                           # @names_memory
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rax
	retq
.Lfunc_end3:
	.size	names_memory, .Lfunc_end3-names_memory
	.cfi_endproc

	.globl	names_ref
	.align	16, 0x90
	.type	names_ref,@function
names_ref:                              # @names_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 112
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movl	%edx, %r9d
	movq	%rsi, %r13
	movq	%rdi, %r10
	cmpl	$1, %r9d
	jne	.LBB4_1
# BB#3:                                 # %sw.bb.2
	movzbl	(%r13), %eax
	testb	%al, %al
	js	.LBB4_4
# BB#5:                                 # %if.then
	imull	$23, %eax, %edi
	addl	$46, %edi
	andl	$511, %edi              # imm = 0x1FF
	leaq	(,%rdi,8), %r14
	addq	16416(%r10), %r14
	jmp	.LBB4_30
.LBB4_1:                                # %entry
	testl	%r9d, %r9d
	jne	.LBB4_6
# BB#2:                                 # %sw.bb
	movl	$184, %r14d
	addq	16416(%r10), %r14
	movl	$23, %edi
	jmp	.LBB4_30
.LBB4_6:                                # %sw.default
	movzbl	(%r13), %eax
	movzbl	hash_permutation(%rax), %esi
	movl	%r9d, %ebp
	decl	%ebp
	je	.LBB4_7
# BB#8:                                 # %while.body.preheader
	testb	$1, %r9b
	jne	.LBB4_9
# BB#10:                                # %while.body.prol
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	1(%r13), %rax
	movl	%esi, %ecx
	shll	$8, %ecx
	movb	1(%r13), %dl
	xorb	%sil, %dl
	movzbl	%dl, %edx
	movzbl	hash_permutation(%rdx), %esi
	orl	%ecx, %esi
	leal	-2(%r9), %ebp
	jmp	.LBB4_11
.LBB4_4:                                # %sw.default.thread
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movzbl	hash_permutation(%rax), %esi
	jmp	.LBB4_14
.LBB4_7:
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	jmp	.LBB4_14
.LBB4_9:
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%r13, %rax
.LBB4_11:                               # %while.body.preheader.split
	cmpl	$2, %r9d
	je	.LBB4_14
# BB#12:                                # %while.body.preheader.split.split
	addq	$2, %rax
	.align	16, 0x90
.LBB4_13:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %edx
	shll	$8, %edx
	movzbl	%sil, %esi
	movzbl	-1(%rax), %edi
	xorl	%esi, %edi
	movzbl	hash_permutation(%rdi), %esi
	orl	%esi, %edx
	shll	$8, %edx
	movb	(%rax), %bl
	xorb	%sil, %bl
	movzbl	%bl, %esi
	movzbl	hash_permutation(%rsi), %esi
	orl	%edx, %esi
	addq	$2, %rax
	addl	$-2, %ebp
	jne	.LBB4_13
.LBB4_14:                               # %while.end
	andl	$4095, %esi             # imm = 0xFFF
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	32(%r10,%rsi,4), %edi
	testl	%edi, %edi
	je	.LBB4_20
# BB#15:                                # %for.body.lr.ph
	movl	%r9d, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB4_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %r12d
	shrl	$9, %r12d
	shlq	$4, %r12
	movq	16424(%r10,%r12), %rax
	movl	%edi, %r14d
	andl	$511, %r14d             # imm = 0x1FF
	movq	%r14, %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %ebx
	movl	%ebx, %edx
	shrl	$22, %edx
	cmpl	%r9d, %edx
	jne	.LBB4_19
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	8(%rax,%rcx), %rsi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%r10, %rbp
	movq	%r13, %r15
	movq	%r9, %r13
	callq	memcmp
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %r9
	movq	%r15, %r13
	movq	%rbp, %r10
	testl	%eax, %eax
	je	.LBB4_18
.LBB4_19:                               # %for.inc
                                        #   in Loop: Header=BB4_16 Depth=1
	andl	$1048575, %ebx          # imm = 0xFFFFF
	movl	%ebx, %edi
	jne	.LBB4_16
.LBB4_20:                               # %for.end
	movl	$-21, %eax
	movl	32(%rsp), %ebp          # 4-byte Reload
	testl	%ebp, %ebp
	js	.LBB4_31
# BB#21:                                # %if.end.66
	movl	$-13, %eax
	cmpl	$1023, %r9d             # imm = 0x3FF
	ja	.LBB4_31
# BB#22:                                # %if.end.70
	movq	%r9, %r12
	movl	(%r10), %edi
	testl	%edi, %edi
	jne	.LBB4_25
# BB#23:                                # %if.then.73
	movq	%r10, %rdi
	movq	%r10, %r14
	callq	name_alloc_sub
	movq	%r14, %r10
	testl	%eax, %eax
	movq	%r12, %rbx
	js	.LBB4_31
# BB#24:                                # %cleanup.thread
	movq	%rbx, %r12
	movl	(%r10), %edi
.LBB4_25:                               # %if.end.80
	movl	%edi, %r15d
	shrl	$9, %r15d
	shlq	$4, %r15
	movq	16424(%r10,%r15), %rax
	movl	%edi, %edx
	andl	$511, %edx              # imm = 0x1FF
	movq	%rdx, %r14
	shlq	$4, %r14
	leaq	(%rax,%r14), %rbx
	cmpl	$1, %ebp
	movq	%r12, %rsi
	jne	.LBB4_28
# BB#26:                                # %if.then.93
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	24(%r10), %rdi
	movl	$.L.str.1, %edx
	movq	%r10, %rbx
	movq	%rsi, %r12
	callq	*136(%rdi)
	movq	%r12, %rcx
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB4_31
# BB#27:                                # %cleanup.105.thread
	movl	%ecx, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rcx, %r12
	callq	memcpy
	movq	%r12, %rsi
	movq	%rbx, %r10
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbp, 8(%rax,%r14)
	movl	$-1048577, %eax         # imm = 0xFFFFFFFFFFEFFFFF
	movq	32(%rsp), %rbx          # 8-byte Reload
	andl	(%rbx), %eax
	movl	%eax, (%rbx)
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB4_29
.LBB4_18:                               # %if.then.50
	shlq	$3, %r14
	addq	16416(%r10,%r12), %r14
	movq	24(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB4_30
.LBB4_28:                               # %if.else
	movq	%r13, 8(%rax,%r14)
	testl	%ebp, %ebp
	sete	%al
	movzbl	%al, %ecx
	shll	$20, %ecx
	movl	$-1048577, %eax         # imm = 0xFFFFFFFFFFEFFFFF
	andl	(%rbx), %eax
	orl	%ecx, %eax
	movl	%eax, (%rbx)
	movq	24(%rsp), %rcx          # 8-byte Reload
.LBB4_29:                               # %if.end.113
	shll	$22, %esi
	andl	$4194303, %eax          # imm = 0x3FFFFF
	orl	%esi, %eax
	movl	%eax, (%rbx)
	movq	16416(%r10,%r15), %rax
	leaq	(%rax,%rdx,8), %r14
	movq	$0, (%rax,%rdx,8)
	movl	$1048575, %eax          # imm = 0xFFFFF
	movl	(%rbx), %edx
	andl	%eax, %edx
	movl	%edx, (%r10)
	movq	16(%rsp), %rsi          # 8-byte Reload
	andl	32(%r10,%rsi,4), %eax
	movl	$-1048576, %edx         # imm = 0xFFFFFFFFFFF00000
	andl	(%rbx), %edx
	orl	%eax, %edx
	movl	%edx, (%rbx)
	movl	%edi, 32(%r10,%rsi,4)
.LBB4_30:                               # %mkn
	movq	%r14, 8(%rcx)
	movw	$3332, (%rcx)           # imm = 0xD04
	movzwl	%di, %eax
	movl	%eax, 4(%rcx)
	xorl	%eax, %eax
.LBB4_31:                               # %cleanup.144
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	names_ref, .Lfunc_end4-names_ref
	.cfi_endproc

	.globl	names_string_ref
	.align	16, 0x90
	.type	names_string_ref,@function
names_string_ref:                       # @names_string_ref
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	movl	4(%rsi), %esi
	movl	%esi, %ecx
	andl	$511, %ecx              # imm = 0x1FF
	shlq	$3, %rcx
	negq	%rcx
	addl	4096(%rax,%rcx), %esi
	movl	%esi, %eax
	shrl	$9, %eax
	shlq	$4, %rax
	movq	16424(%rdi,%rax), %rax
	andl	$511, %esi              # imm = 0x1FF
	shlq	$4, %rsi
	leaq	(%rax,%rsi), %r8
	movq	8(%rax,%rsi), %rcx
	movq	%rcx, 8(%rdx)
	movw	$4704, %cx              # imm = 0x1260
	testb	$16, 2(%rax,%rsi)
	jne	.LBB5_2
# BB#1:                                 # %cond.false
	movl	$4608, %ecx             # imm = 0x1200
	addl	20(%rdi), %ecx
.LBB5_2:                                # %cond.end
	movw	%cx, (%rdx)
	movl	(%r8), %eax
	shrl	$22, %eax
	movl	%eax, 4(%rdx)
	retq
.Lfunc_end5:
	.size	names_string_ref, .Lfunc_end5-names_string_ref
	.cfi_endproc

	.globl	names_from_string
	.align	16, 0x90
	.type	names_from_string,@function
names_from_string:                      # @names_from_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp50:
	.cfi_def_cfa_offset 32
.Ltmp51:
	.cfi_offset %rbx, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movzwl	(%rsi), %ebp
	movq	8(%rsi), %rax
	movl	4(%rsi), %edx
	movl	$1, %r8d
	movq	%rax, %rsi
	movq	%rbx, %rcx
	callq	names_ref
	testb	$-128, %bpl
	je	.LBB6_3
# BB#1:                                 # %entry
	testl	%eax, %eax
	js	.LBB6_3
# BB#2:                                 # %if.then.3
	orb	$-128, (%rbx)
.LBB6_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	names_from_string, .Lfunc_end6-names_from_string
	.cfi_endproc

	.globl	names_enter_string
	.align	16, 0x90
	.type	names_enter_string,@function
names_enter_string:                     # @names_enter_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 32
.Ltmp56:
	.cfi_offset %rbx, -32
.Ltmp57:
	.cfi_offset %r14, -24
.Ltmp58:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	strlen
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	names_ref               # TAILCALL
.Lfunc_end7:
	.size	names_enter_string, .Lfunc_end7-names_enter_string
	.cfi_endproc

	.globl	names_invalidate_value_cache
	.align	16, 0x90
	.type	names_invalidate_value_cache,@function
names_invalidate_value_cache:           # @names_invalidate_value_cache
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	movq	$1, (%rax)
	retq
.Lfunc_end8:
	.size	names_invalidate_value_cache, .Lfunc_end8-names_invalidate_value_cache
	.cfi_endproc

	.globl	names_index
	.align	16, 0x90
	.type	names_index,@function
names_index:                            # @names_index
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rcx
	movl	4(%rsi), %eax
	movl	%eax, %edx
	andl	$511, %edx              # imm = 0x1FF
	shlq	$3, %rdx
	subq	%rdx, %rcx
	addl	4096(%rcx), %eax
	retq
.Lfunc_end9:
	.size	names_index, .Lfunc_end9-names_index
	.cfi_endproc

	.globl	names_index_ref
	.align	16, 0x90
	.type	names_index_ref,@function
names_index_ref:                        # @names_index_ref
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	movzwl	%si, %ecx
	shrl	$9, %esi
	shlq	$4, %rsi
	andl	$511, %eax              # imm = 0x1FF
	shlq	$3, %rax
	addq	16416(%rdi,%rsi), %rax
	movq	%rax, 8(%rdx)
	movw	$3332, (%rdx)           # imm = 0xD04
	movl	%ecx, 4(%rdx)
	retq
.Lfunc_end10:
	.size	names_index_ref, .Lfunc_end10-names_index_ref
	.cfi_endproc

	.globl	names_index_ptr
	.align	16, 0x90
	.type	names_index_ptr,@function
names_index_ptr:                        # @names_index_ptr
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %ecx
	shrl	$9, %ecx
	shlq	$4, %rcx
	andl	$511, %esi              # imm = 0x1FF
	leaq	(,%rsi,8), %rax
	addq	16416(%rdi,%rcx), %rax
	retq
.Lfunc_end11:
	.size	names_index_ptr, .Lfunc_end11-names_index_ptr
	.cfi_endproc

	.globl	names_next_valid_index
	.align	16, 0x90
	.type	names_next_valid_index,@function
names_next_valid_index:                 # @names_next_valid_index
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	shrl	$9, %eax
	shlq	$4, %rax
	movq	16424(%rdi,%rax), %rcx
.LBB12_1:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	leal	1(%rsi), %eax
	testw	$511, %ax               # imm = 0x1FF
	jne	.LBB12_6
# BB#2:                                 # %for.cond.preheader
                                        #   in Loop: Header=BB12_1 Depth=1
	shrl	$9, %eax
	movl	12(%rdi), %edx
	cmpl	%edx, %eax
	jae	.LBB12_8
# BB#3:                                 # %if.end.preheader
                                        #   in Loop: Header=BB12_1 Depth=1
	addl	$513, %esi              # imm = 0x201
	.align	16, 0x90
.LBB12_4:                               # %if.end
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %eax
	shlq	$4, %rax
	movq	16424(%rdi,%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB12_5
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	%esi, %eax
	shrl	$9, %eax
	addl	$512, %esi              # imm = 0x200
	cmpl	%edx, %eax
	jb	.LBB12_4
	jmp	.LBB12_8
	.align	16, 0x90
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	addl	$-512, %esi             # imm = 0xFFFFFFFFFFFFFE00
	movl	%esi, %eax
.LBB12_6:                               # %if.end.12
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	%eax, %edx
	andl	$511, %edx              # imm = 0x1FF
	shlq	$4, %rdx
	cmpq	$0, 8(%rcx,%rdx)
	movl	%eax, %esi
	je	.LBB12_1
	jmp	.LBB12_9
.LBB12_8:
	xorl	%eax, %eax
.LBB12_9:                               # %cleanup
	retq
.Lfunc_end12:
	.size	names_next_valid_index, .Lfunc_end12-names_next_valid_index
	.cfi_endproc

	.globl	names_unmark_all
	.align	16, 0x90
	.type	names_unmark_all,@function
names_unmark_all:                       # @names_unmark_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbx, -16
	cmpl	$0, 12(%rdi)
	je	.LBB13_7
# BB#1:                                 # %for.body.lr.ph
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB13_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movl	%r10d, %eax
	shlq	$4, %rax
	movq	16424(%rdi,%rax), %r11
	testq	%r11, %r11
	movl	%r8d, %esi
	movl	%r9d, %ecx
	movl	$0, %edx
	je	.LBB13_6
	.align	16, 0x90
.LBB13_3:                               # %for.body.4
                                        #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, %eax
	andl	$-512, %eax             # imm = 0xFFFFFFFFFFFFFE00
	movl	%ecx, %ebx
	andl	$511, %ebx              # imm = 0x1FF
	orl	%eax, %ebx
	cmpl	8(%rdi), %ebx
	jb	.LBB13_5
# BB#4:                                 # %if.then.10
                                        #   in Loop: Header=BB13_3 Depth=2
	andb	$-33, 2(%r11,%rdx)
.LBB13_5:                               # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=2
	addq	$16, %rdx
	addl	$1959, %ecx             # imm = 0x7A7
	incl	%esi
	cmpq	$8192, %rdx             # imm = 0x2000
	jne	.LBB13_3
.LBB13_6:                               # %for.inc.15
                                        #   in Loop: Header=BB13_2 Depth=1
	incl	%r10d
	addl	$1003008, %r9d          # imm = 0xF4E00
	addl	$512, %r8d              # imm = 0x200
	cmpl	12(%rdi), %r10d
	jb	.LBB13_2
.LBB13_7:                               # %for.end.17
	popq	%rbx
	retq
.Lfunc_end13:
	.size	names_unmark_all, .Lfunc_end13-names_unmark_all
	.cfi_endproc

	.globl	names_mark_index
	.align	16, 0x90
	.type	names_mark_index,@function
names_mark_index:                       # @names_mark_index
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	shrl	$9, %eax
	shlq	$4, %rax
	movq	16424(%rdi,%rax), %rcx
	andl	$511, %esi              # imm = 0x1FF
	shlq	$4, %rsi
	movl	(%rcx,%rsi), %edx
	xorl	%eax, %eax
	testl	$2097152, %edx          # imm = 0x200000
	jne	.LBB14_2
# BB#1:                                 # %if.end
	addq	%rsi, %rcx
	orl	$2097152, %edx          # imm = 0x200000
	movl	%edx, (%rcx)
	movl	$1, %eax
.LBB14_2:                               # %cleanup
	retq
.Lfunc_end14:
	.size	names_mark_index, .Lfunc_end14-names_mark_index
	.cfi_endproc

	.globl	names_ref_sub_table
	.align	16, 0x90
	.type	names_ref_sub_table,@function
names_ref_sub_table:                    # @names_ref_sub_table
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	movl	4(%rsi), %ecx
	andl	$511, %ecx              # imm = 0x1FF
	shlq	$3, %rcx
	subq	%rcx, %rax
	retq
.Lfunc_end15:
	.size	names_ref_sub_table, .Lfunc_end15-names_ref_sub_table
	.cfi_endproc

	.globl	names_index_sub_table
	.align	16, 0x90
	.type	names_index_sub_table,@function
names_index_sub_table:                  # @names_index_sub_table
	.cfi_startproc
# BB#0:                                 # %entry
	shrl	$9, %esi
	shlq	$4, %rsi
	movq	16416(%rdi,%rsi), %rax
	retq
.Lfunc_end16:
	.size	names_index_sub_table, .Lfunc_end16-names_index_sub_table
	.cfi_endproc

	.globl	names_index_string_sub_table
	.align	16, 0x90
	.type	names_index_string_sub_table,@function
names_index_string_sub_table:           # @names_index_string_sub_table
	.cfi_startproc
# BB#0:                                 # %entry
	shrl	$9, %esi
	shlq	$4, %rsi
	movq	16424(%rdi,%rsi), %rax
	retq
.Lfunc_end17:
	.size	names_index_string_sub_table, .Lfunc_end17-names_index_string_sub_table
	.cfi_endproc

	.align	16, 0x90
	.type	name_scan_sub,@function
name_scan_sub:                          # @name_scan_sub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 64
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movl	%esi, %r13d
	movq	%rdi, %r14
	movl	%r13d, %r15d
	shlq	$4, %r15
	movq	16424(%r14,%r15), %r10
	testq	%r10, %r10
	je	.LBB18_16
# BB#1:                                 # %if.end
	leaq	16424(%r14,%r15), %r12
	movl	%r13d, %edi
	shll	$9, %edi
	movl	(%r14), %r11d
	testl	%edx, %edx
	sete	%al
	movzbl	%al, %r8d
	testl	%edi, %edi
	movl	$1, %r9d
	cmovel	%r9d, %r8d
	cmpl	$1, %edi
	cmoval	%edi, %r9d
	addl	$-512, %r9d             # imm = 0xFFFFFFFFFFFFFE00
	imull	$11776, %r13d, %edx     # imm = 0x2E00
	addl	$11753, %edx            # imm = 0x2DE9
	.align	16, 0x90
.LBB18_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	andl	$511, %esi              # imm = 0x1FF
	movq	%rsi, %rbx
	shlq	$4, %rbx
	movl	(%r10,%rbx), %eax
	testl	$2097152, %eax          # imm = 0x200000
	jne	.LBB18_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB18_2 Depth=1
	leal	511(%rdi), %ebp
	leaq	(%rbx,%r10), %rbx
	andl	$-512, %ebp             # imm = 0xFFFFFFFFFFFFFE00
	orl	%ebp, %esi
	andl	$1048575, %r11d         # imm = 0xFFFFF
	andl	$-1048576, %eax         # imm = 0xFFFFFFFFFFF00000
	orl	%r11d, %eax
	movl	%eax, (%rbx)
	movl	%esi, %r11d
	jmp	.LBB18_5
	.align	16, 0x90
.LBB18_3:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$1, %r8d
.LBB18_5:                               # %if.end.15
                                        #   in Loop: Header=BB18_2 Depth=1
	decl	%edi
	addl	$-23, %edx
	cmpl	%edi, %r9d
	jne	.LBB18_2
# BB#6:                                 # %for.end
	testl	%r8d, %r8d
	je	.LBB18_8
# BB#7:                                 # %if.then.21
	movl	%r11d, (%r14)
	jmp	.LBB18_16
.LBB18_8:                               # %if.else.23
	testl	%ecx, %ecx
	je	.LBB18_10
# BB#9:                                 # %if.then.i
	movq	16416(%r14,%r15), %rax
	movq	(%r12), %rcx
	orl	$-2, -24(%rax)
	orl	$-2, -24(%rcx)
.LBB18_10:                              # %name_free_sub.exit
	movq	24(%r14), %rdi
	movq	(%r12), %rsi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	movq	24(%r14), %rdi
	movq	16416(%r14,%r15), %rsi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
	movq	$0, 16416(%r14,%r15)
	movq	$0, (%r12)
	movl	12(%r14), %eax
	decl	%eax
	cmpl	%r13d, %eax
	jne	.LBB18_13
	.align	16, 0x90
.LBB18_11:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r13d, %eax
	leal	-1(%rax), %r13d
	movq	%r13, %rcx
	shlq	$4, %rcx
	cmpq	$0, 16416(%r14,%rcx)
	je	.LBB18_11
# BB#12:                                # %do.end
	movl	%eax, 12(%r14)
	cmpl	%r13d, 4(%r14)
	ja	.LBB18_15
	jmp	.LBB18_16
.LBB18_13:                              # %if.else.38
	cmpl	%r13d, 4(%r14)
	jne	.LBB18_16
# BB#14:                                # %if.then.41
	decl	%r13d
.LBB18_15:                              # %cleanup.47
	movl	%r13d, 4(%r14)
.LBB18_16:                              # %cleanup.47
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	name_scan_sub, .Lfunc_end18-name_scan_sub
	.cfi_endproc

	.globl	names_restore
	.align	16, 0x90
	.type	names_restore,@function
names_restore:                          # @names_restore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp80:
	.cfi_def_cfa_offset 64
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %rbx
	cmpl	$0, 12(%rbx)
	je	.LBB19_11
# BB#1:
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB19_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_3 Depth 2
	movl	%r13d, %eax
	shlq	$4, %rax
	cmpq	$0, 16424(%rbx,%rax)
	movl	%r12d, %ebp
	movl	$0, %r15d
	je	.LBB19_10
	.align	16, 0x90
.LBB19_3:                               # %for.body.4
                                        #   Parent Loop BB19_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %eax
	shrl	$9, %eax
	shlq	$4, %rax
	movq	16424(%rbx,%rax), %r14
	movq	8(%r14,%r15), %rdi
	movl	(%r14,%r15), %eax
	testq	%rdi, %rdi
	je	.LBB19_4
# BB#5:                                 # %if.else
                                        #   in Loop: Header=BB19_3 Depth=2
	testl	$1048576, %eax          # imm = 0x100000
	jne	.LBB19_6
# BB#8:                                 # %if.else.24
                                        #   in Loop: Header=BB19_3 Depth=2
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	alloc_is_since_save
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	shll	$21, %eax
	movl	(%r14,%r15), %ecx
	movl	$-2097153, %edx         # imm = 0xFFFFFFFFFFDFFFFF
	andl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, (%r14,%r15)
	jmp	.LBB19_9
	.align	16, 0x90
.LBB19_4:                               # %if.then.13
                                        #   in Loop: Header=BB19_3 Depth=2
	andl	$-2097153, %eax         # imm = 0xFFFFFFFFFFDFFFFF
	movl	%eax, (%r14,%r15)
	jmp	.LBB19_9
	.align	16, 0x90
.LBB19_6:                               # %if.then.16
                                        #   in Loop: Header=BB19_3 Depth=2
	testl	$2097152, %eax          # imm = 0x200000
	jne	.LBB19_9
# BB#7:                                 # %if.then.21
                                        #   in Loop: Header=BB19_3 Depth=2
	orl	$2097152, %eax          # imm = 0x200000
	movl	%eax, (%r14,%r15)
	.align	16, 0x90
.LBB19_9:                               # %if.end.31
                                        #   in Loop: Header=BB19_3 Depth=2
	addq	$16, %r15
	incl	%ebp
	cmpq	$8192, %r15             # imm = 0x2000
	jne	.LBB19_3
.LBB19_10:                              # %for.inc.33
                                        #   in Loop: Header=BB19_2 Depth=1
	incl	%r13d
	addl	$512, %r12d             # imm = 0x200
	cmpl	12(%rbx), %r13d
	jb	.LBB19_2
.LBB19_11:                              # %for.end.35
	xorl	%esi, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	names_trace_finish      # TAILCALL
.Lfunc_end19:
	.size	names_restore, .Lfunc_end19-names_restore
	.cfi_endproc

	.align	16, 0x90
	.type	name_table_enum_ptrs,@function
name_table_enum_ptrs:                   # @name_table_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %edx
	sarl	%edx
	xorl	%eax, %eax
	cmpl	12(%rsi), %edx
	jae	.LBB20_5
# BB#1:                                 # %if.end
	addq	$16416, %rsi            # imm = 0x4020
	testb	$1, %cl
	movl	%edx, %eax
	jne	.LBB20_2
# BB#3:                                 # %if.else
	shlq	$4, %rax
	movq	(%rsi,%rax), %rax
	jmp	.LBB20_4
.LBB20_2:                               # %if.then.1
	shlq	$4, %rax
	movq	8(%rsi,%rax), %rax
.LBB20_4:                               # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB20_5:                               # %cleanup
	retq
.Lfunc_end20:
	.size	name_table_enum_ptrs, .Lfunc_end20-name_table_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	name_table_reloc_ptrs,@function
name_table_reloc_ptrs:                  # @name_table_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 32
.Ltmp90:
	.cfi_offset %rbx, -32
.Ltmp91:
	.cfi_offset %r14, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	12(%rbx), %ebp
	testl	%ebp, %ebp
	je	.LBB21_3
# BB#1:                                 # %for.body.lr.ph
	addq	$16424, %rbx            # imm = 0x4028
	.align	16, 0x90
.LBB21_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	-8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, -8(%rbx)
	movq	(%r14), %rax
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	addq	$16, %rbx
	decl	%ebp
	jne	.LBB21_2
.LBB21_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	name_table_reloc_ptrs, .Lfunc_end21-name_table_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gs_names_finalize,@function
gs_names_finalize:                      # @gs_names_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	movq	$0, 120(%rax)
	retq
.Lfunc_end22:
	.size	gs_names_finalize, .Lfunc_end22-gs_names_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	name_string_sub_enum_ptrs,@function
name_string_sub_enum_ptrs:              # @name_string_sub_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	name_string_sub_enum_ptrs, .Lfunc_end23-name_string_sub_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	name_string_sub_reloc_ptrs,@function
name_string_sub_reloc_ptrs:             # @name_string_sub_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp97:
	.cfi_def_cfa_offset 64
.Ltmp98:
	.cfi_offset %rbx, -40
.Ltmp99:
	.cfi_offset %r12, -32
.Ltmp100:
	.cfi_offset %r14, -24
.Ltmp101:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB24_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12,%rbx), %rax
	testq	%rax, %rax
	je	.LBB24_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB24_1 Depth=1
	testb	$16, 2(%r12,%rbx)
	jne	.LBB24_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	%rax, 8(%rsp)
	movl	(%r12,%rbx), %eax
	shrl	$22, %eax
	movl	%eax, 16(%rsp)
	movq	(%r14), %rax
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
	movq	8(%rsp), %rax
	movq	%rax, 8(%r12,%rbx)
.LBB24_4:                               # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	addq	$16, %rbx
	cmpl	$8192, %ebx             # imm = 0x2000
	jne	.LBB24_1
# BB#5:                                 # %for.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end24:
	.size	name_string_sub_reloc_ptrs, .Lfunc_end24-name_string_sub_reloc_ptrs
	.cfi_endproc

	.type	name_max_string,@object # @name_max_string
	.section	.rodata,"a",@progbits
	.globl	name_max_string
	.align	4
name_max_string:
	.long	1023                    # 0x3ff
	.size	name_max_string, 4

	.type	st_name_table,@object   # @st_name_table
	.align	8
st_name_table:
	.long	49184                   # 0xc020
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	name_table_enum_ptrs
	.quad	name_table_reloc_ptrs
	.quad	gs_names_finalize
	.quad	0
	.size	st_name_table, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"name_init(nt)"
	.size	.L.str, 14

	.type	nt_1char_names,@object  # @nt_1char_names
	.section	.rodata,"a",@progbits
	.align	16
nt_1char_names:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\177"
	.size	nt_1char_names, 128

	.type	hash_permutation,@object # @hash_permutation
	.align	16
hash_permutation:
	.ascii	"\001W1\f\260\262f\246y\301\006T\371\346,\243\016\305\325\265\241U\332P@\357\030\342\354\216&\310n\261hg\215\375\3772MeQ\022-`\037\336\031k\276FV\355\360\"H\362\024\326\364\343\225\353a\3529\026<\372R\257\320\005\177\307o>\207\370\256\251\323:B\232j\303\365\253\021\273\266\263\000\363\2048\224K\200\205\236d\202~[\r\231\366\330\333wD\337NSX\311cz\013\\ \210r4\n\212\0360\267\234#=\032\217J\373^\201\242?\230\252\007s\247\361\316\003\2267;\227\334Z5\027\203}\255\017\356O_Y\020i\211\341\340\331\240%{vI\002\235.t\t\221\206\344\317\324\312\327E\345\033\274C|\250\374*\004\035l\025\367\023\315'\313\351(\272\223\306\300\233!\244\277b\314\245\264uL\214$\322\254)6\237\b\271\350q\304\347/\222x3A\034\220\376\335]\275\302\213p+Gm\270\321"
	.size	hash_permutation, 256

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"names_ref(string)"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name_table"
	.size	.L.str.2, 11

	.type	st_name_sub_table,@object # @st_name_sub_table
	.section	.rodata,"a",@progbits
	.align	8
st_name_sub_table:
	.long	4104                    # 0x1008
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_name_sub_table, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"name_alloc_sub(sub-table)"
	.size	.L.str.3, 26

	.type	st_name_string_sub_table,@object # @st_name_string_sub_table
	.section	.rodata,"a",@progbits
	.align	8
st_name_string_sub_table:
	.long	8192                    # 0x2000
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	name_string_sub_enum_ptrs
	.quad	name_string_sub_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_name_string_sub_table, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"name_alloc_sub(string sub-table)"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"name_sub_table"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"name_string_sub_table_t"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"name_free_sub(string sub-table)"
	.size	.L.str.7, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"name_free_sub(sub-table)"
	.size	.L.str.8, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
